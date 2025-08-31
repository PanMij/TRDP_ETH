`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/18 20:05:03
// Design Name: 
// Module Name: arp_rx
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module arp_rx # (
    parameter BOARD_MAC = 48'h00_11_22_33_44_55,
    parameter BOARD_IP  = {8'd192, 8'd168, 8'd1, 8'd10}
) (
    input               clk        ,
    input               rst_n      ,
    input               gmii_rx_dv ,
    input [7 : 0]       gmii_rxd   ,
                                      
    output reg          arp_rx_done,
    output reg          arp_rx_type, // 0: request, 1 : reply
    output reg [31 : 0] src_ip     ,
    output reg [47 : 0] src_mac     
);

    localparam st_idle     = 5'b00001;
    localparam st_preamble = 5'b00010;
    localparam st_eth_head = 5'b00100;
    localparam st_arp_data = 5'b01000;
    localparam st_rx_end   = 5'b10000;
    localparam ETH_TYPE    = 16'h0806;

    reg [4 : 0]  cur_state;
    reg [4 : 0]  next_state;
    reg          skip_en;
    reg          error_en;
    reg [4 : 0]  cnt;
    reg [47 : 0] src_mac_t;
    reg [47 : 0] des_mac_t;
    reg [31 : 0] src_ip_t;
    reg [31 : 0] des_ip_t;
    reg [15 : 0] eth_type;
    reg [15 : 0] op_data;

    // state machine step 1
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cur_state <= st_idle;
        end
        else begin
            cur_state <= next_state;
        end
    end

    // state machine step 2
    always @(*) begin
        next_state = st_idle;
        case (cur_state)
            st_idle: begin
                if (skip_en) begin
                    next_state = st_preamble;
                end
                else begin
                    next_state = st_idle;
                end
            end
            st_preamble: begin
                if (skip_en) begin
                    next_state = st_eth_head;
                end
                else if (error_en) begin
                    next_state = st_rx_end;
                end
                else begin
                    next_state = st_preamble;
                end
            end
            st_eth_head: begin
                if (skip_en) begin
                    next_state = st_arp_data;
                end
                else if (error_en) begin
                    next_state = st_rx_end;
                end
                else begin
                    next_state = st_eth_head;
                end
            end
            st_arp_data: begin
                if (skip_en) begin
                    next_state = st_rx_end;
                end
                else if (error_en) begin
                    next_state = st_rx_end;
                end
                else begin
                    next_state = st_arp_data;
                end
            end
            st_rx_end: begin
                if (skip_en) begin
                    next_state = st_idle;
                end
                else begin
                    next_state = st_rx_end;
                end
            end
            default: next_state = st_idle;
        endcase
    end

    // state machine step 3
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            skip_en <= 1'b0;
            error_en <= 1'b0;
            cnt <= 5'b0;
            src_mac_t <= 48'b0;
            des_mac_t <= 48'b0;
            src_ip_t <= 32'b0;
            des_ip_t <= 32'b0;
            eth_type <= 16'b0;
            op_data <= 16'b0;
            arp_rx_done <= 1'b0;
            arp_rx_type <= 1'b0;
            src_ip <= 32'b0;
            src_mac <= 48'b0;
        end
        else begin
            skip_en <= 1'b0;
            error_en <= 1'b0;
            arp_rx_done <= 1'b0;
            case (cur_state) // Why not cur_state?
                st_idle: begin
                    if (gmii_rx_dv && (gmii_rxd == 8'h55) && (skip_en == 1'b0)) begin
                        skip_en <= 1'b1;
                        cnt <= 5'd1;
                    end
                end
                st_preamble: begin
                    if (gmii_rx_dv) begin
                        cnt <= cnt + 1'b1;
                        if (cnt < 5'd6 && (gmii_rxd != 8'h55)) begin
                            error_en <= 1'b1;
                        end
                        else if (cnt == 5'd5) begin
                            skip_en <= 1'b1;
                        end
                        else if (cnt == 5'd6) begin
                            cnt <= 5'b0;
                            if (gmii_rxd != 8'hd5) begin
                                error_en <= 1'b1;
                            end
                        end
                    end
                end
                st_eth_head: begin
                    if (gmii_rx_dv) begin
                        cnt <= cnt + 1'b1;
                        if (cnt < 5'd6) begin
                            des_mac_t <= {des_mac_t[39 : 0], gmii_rxd};
                        end
                        else if (cnt == 5'd6) begin
                            if (des_mac_t != BOARD_MAC && des_mac_t != 48'hff_ff_ff_ff_ff_ff) begin
                                error_en <= 1'b1;
                            end
                        end
                        else if (cnt == 5'd12) begin
                            eth_type[15 : 8] <= gmii_rxd;
                            skip_en <= 1'b1;
                        end
                        else if (cnt == 5'd13) begin
                            eth_type[7 : 0] <= gmii_rxd;
                            cnt <= 5'b0;
                            if (eth_type[15 : 8] != ETH_TYPE[15 : 8] || gmii_rxd != ETH_TYPE[7 : 0]) begin
                                error_en <= 1'b1;
                            end
                        end
                    end
                end
                st_arp_data: begin
                    if (gmii_rx_dv) begin
                        cnt <= cnt + 1'b1;
                        if (cnt == 5'd6) begin
                            op_data[15 : 8] <= gmii_rxd;
                        end
                        else if (cnt == 5'd7) begin
                            op_data[7 : 0] <= gmii_rxd;
                        end
                        else if (cnt >= 5'd8 && cnt <= 5'd13) begin
                            src_mac_t <= {src_mac_t[39 : 0], gmii_rxd};
                        end
                        else if (cnt >= 5'd14 && cnt <= 5'd17) begin
                            src_ip_t <= {src_ip_t[23 : 0], gmii_rxd};
                        end
                        else if (cnt >= 5'd18 && cnt <= 5'd23) begin
                            des_mac_t <= {des_mac_t[39 : 0], gmii_rxd};
                        end
                        else if (cnt >= 5'd24 && cnt < 5'd27) begin
                            des_ip_t <= {des_ip_t[23 : 0], gmii_rxd};
                        end
                        else if (cnt == 5'd27) begin
                            des_ip_t <= {des_ip_t[23 : 0], gmii_rxd};
                            skip_en <= 1'b1;
                        end
                        else if (cnt == 5'd28) begin
                            cnt <= 5'b0;
                            if (des_ip_t == BOARD_IP) begin
                                if ((op_data == 16'h1) || (op_data == 16'h2)) begin
                                    arp_rx_done <= 1'b1;
                                    src_mac <= src_mac_t;
                                    src_ip <= src_ip_t;
                                    src_mac_t <= 48'b0;
                                    src_ip_t <= 32'b0;
                                    des_mac_t <= 48'b0;
                                    des_ip_t <= 32'b0;
                                    arp_rx_type <= (op_data == 16'h1) ? 1'b0 : 1'b1;
                                end
                                else begin
                                    error_en <= 1'b1;
                                end
                            end
                            else begin
                                error_en <= 1'b1;
                            end
                        end
                    end
                end
                st_rx_end: begin
                    cnt <= 5'b0;
                    if (gmii_rx_dv == 1'b0 && skip_en == 1'b0) begin
                        skip_en <= 1'b1;
                    end
                end
            endcase
        end
    end
    
endmodule
