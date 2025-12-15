`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/02 18:25:13
// Design Name: 
// Module Name: icmp_rx
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


module icmp_rx # (
    parameter BOARD_MAC = 48'h00_11_22_33_44_55,
    parameter BOARD_IP  = {8'd192, 8'd168, 8'd1, 8'd10}
) (
    input               clk           ,
    input               rst_n         ,
    input               gmii_rx_dv    ,
    input [7 : 0]       gmii_rxd      ,
                                       
    output reg          rec_pkt_done  ,
    output reg          rec_en        ,
    output reg [7 : 0]  rec_data      ,
    output reg [15 : 0] rec_byte_num  ,
    output reg [15 : 0] icmp_id       ,
    output reg [15 : 0] icmp_seq      ,
    output reg [31 : 0] reply_checksum 
);

    localparam st_idle      = 7'b0000001;
    localparam st_preamble  = 7'b0000010;
    localparam st_eth_head  = 7'b0000100;
    localparam st_ip_head   = 7'b0001000;
    localparam st_icmp_head = 7'b0010000;
    localparam st_rx_data   = 7'b0100000;
    localparam st_rx_end    = 7'b1000000;
    localparam ETH_TYPE     = 16'h0800;
    localparam ICMP_TYPE    = 8'd1;
    localparam ECHO_REQUEST = 8'h08;

    reg [2 : 0]  rst_n_delay;
    reg [6 : 0]  cur_state;
    reg [6 : 0]  next_state;
    reg          skip_en;
    reg          error_en;
    reg [4 : 0]  cnt;
    reg [47 : 0] des_mac;
    reg [15 : 0] eth_type;
    reg [31 : 0] des_ip;
    reg [5 : 0]  ip_head_byte_num;
    reg [15 : 0] total_length;
    reg [1 : 0]  rec_en_cnt;
    reg [7 : 0]  icmp_type;
    reg [7 : 0]  icmp_code;
    reg [15 : 0] icmp_checksum;
    reg [15 : 0] icmp_data_length;
    reg [15 : 0] icmp_rx_cnt;
    reg [7 : 0]  icmp_rx_data_d0;
    reg [31 : 0] reply_checksum_add;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            rst_n_delay <= 3'b0;
        end else begin
            rst_n_delay <= {rst_n_delay[1 : 0], 1'b1};
        end
    end

    always @(posedge clk or negedge rst_n_delay[2]) begin
        if (!rst_n_delay[2]) begin
            cur_state <= st_idle;
        end else begin
            cur_state <= next_state;
        end
    end

    always @(*) begin
        next_state = st_idle;
        case (cur_state)
            st_idle: begin
                if (skip_en) begin
                    next_state = st_preamble;
                end else begin
                    next_state = st_idle;
                end
            end
            st_preamble: begin
                if (skip_en) begin
                    next_state = st_eth_head;
                end else if (error_en) begin
                    next_state = st_rx_end;
                end else begin
                    next_state = st_preamble;
                end
            end
            st_eth_head: begin
                if (skip_en) begin
                    next_state = st_ip_head;
                end else if (error_en) begin
                    next_state = st_rx_end;
                end else begin
                    next_state = st_eth_head;
                end
            end
            st_ip_head: begin
                if (skip_en) begin
                    next_state = st_icmp_head;
                end else if (error_en) begin
                    next_state = st_rx_end;
                end else begin
                    next_state = st_ip_head;
                end
            end
            st_icmp_head: begin
                if (skip_en) begin
                    next_state = st_rx_data;
                end else if (error_en) begin
                    next_state = st_rx_end;
                end else begin
                    next_state = st_icmp_head;
                end
            end
            st_rx_data: begin
                if (skip_en) begin
                    next_state = st_rx_end;
                end else begin
                    next_state = st_rx_data;
                end
            end
            st_rx_end: begin
                if (skip_en) begin
                    next_state = st_idle;
                end else begin
                    next_state = st_rx_end;
                end
            end
            default: next_state = st_idle;
        endcase
    end

    always @(posedge clk or negedge rst_n_delay[2]) begin
        if (!rst_n_delay[2]) begin
            skip_en <= 1'b0;
            error_en <= 1'b0;
            cnt <= 5'b0;
            des_mac <= 48'b0;
            eth_type <= 16'b0;
            des_ip <= 32'b0;
            ip_head_byte_num <= 6'b0;
            total_length <= 16'b0;

            icmp_type <= 8'b0;
            icmp_code <= 8'b0;
            icmp_checksum <= 16'b0;
            icmp_id <= 16'b0;
            icmp_seq <= 16'b0;

            icmp_rx_data_d0 <= 8'b0;
            reply_checksum <= 32'b0;
            reply_checksum_add <= 32'b0;
            icmp_rx_cnt <= 16'b0;
            icmp_data_length <= 16'b0;

            rec_en_cnt <= 2'b0;
            rec_en <= 1'b0;
            rec_data <= 32'b0;
            rec_pkt_done <= 1'b0;
            rec_byte_num <= 16'b0;
        end else begin
            skip_en <= 1'b0;
            error_en <= 1'b0;
            rec_pkt_done <= 1'b0;
            case (cur_state) 
                st_idle: begin
                    cnt <= 5'b0;
                    if ((gmii_rx_dv == 1'b1) && (gmii_rxd == 8'h55) && (skip_en == 1'b0)) begin
                        skip_en <= 1'b1;
                    end
                end
                st_preamble: begin
                    if (gmii_rx_dv) begin
                        cnt <= cnt + 1'b1;
                        if (cnt < 5'd5) begin
                            if (gmii_rxd != 8'h55) begin
                                error_en <= 1'b1;
                            end else if (cnt == 5'd4) begin
                                skip_en <= 1'b1;
                            end
                        end else if (cnt == 5'd5) begin
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
                            des_mac <= {des_mac[39 : 0], gmii_rxd};
                        end else if (cnt == 5'd12) begin
                            eth_type[15 : 8] <= gmii_rxd;
                            if (des_mac != BOARD_MAC && des_mac != 48'hff_ff_ff_ff_ff_ff) begin
                                error_en <= 1'b1;
                            end else begin
                                skip_en <= 1'b1;
                            end
                        end else if (cnt == 5'd13) begin
                            cnt <= 5'b0;
                            eth_type[7 : 0] <= gmii_rxd;
                            if (eth_type[15 : 8] != ETH_TYPE[15 : 8] || gmii_rxd != ETH_TYPE[7 : 0]) begin
                                error_en <= 1'b1;
                            end
                        end
                    end
                end
                st_ip_head: begin
                    if (gmii_rx_dv) begin
                        cnt <= cnt + 1'b1;
                        if (cnt == 5'd0) begin
                            ip_head_byte_num <= {gmii_rxd[3 : 0], 2'b00};
                        end else if (cnt == 5'd2) begin
                            total_length[15 : 8] <= gmii_rxd;
                        end else if (cnt == 5'd3) begin
                            total_length[7 : 0] <= gmii_rxd;
                        end else if (cnt == 5'd4) begin
                            // icmp_data_length = total_length - IP Header (20) - ICMP Header (8)
                            // @note icmp_data_length will be wrong if IP Header is more than 20 bytes.
                            icmp_data_length <= total_length - 16'd28;
                        end else if (cnt == 5'd9) begin
                            if (gmii_rxd != ICMP_TYPE) begin
                                cnt <= 5'b0;
                                error_en <= 1'b1;
                            end
                        end else if (cnt >= 5'd16 && cnt <= 5'd17) begin
                            des_ip <= {des_ip[23 : 0], gmii_rxd};
                        end else if (cnt == 5'd18) begin
                            des_ip <= {des_ip[23 : 0], gmii_rxd};
                            skip_en <= 1'b1;
                        end else if (cnt == 5'd19) begin
                            des_ip <= {des_ip[23 : 0], gmii_rxd};
                            cnt <= 5'b0;
                            if (des_ip[23 : 0] != BOARD_IP[31 : 8] || gmii_rxd != BOARD_IP[7 : 0]) begin
                                error_en <= 1'b1;
                            end
                        end
                    end
                end
                st_icmp_head: begin
                    if (gmii_rx_dv) begin
                        cnt <= cnt + 1'b1;
                        if (cnt == 5'd0) begin
                            icmp_type <= gmii_rxd;
                        end else if (cnt == 5'd1) begin
                            icmp_code <= gmii_rxd;
                            if (icmp_type != ECHO_REQUEST) begin
                                error_en <= 1'b1;
                            end
                        end else if (cnt == 5'd2) begin
                            icmp_checksum[15 : 8] <= gmii_rxd;
                        end else if (cnt == 5'd3) begin
                            icmp_checksum[7 : 0] <= gmii_rxd;
                        end else if (cnt == 5'd4) begin
                            icmp_id[15 : 8] <= gmii_rxd;
                        end else if (cnt == 5'd5) begin
                            icmp_id[7 : 0] <= gmii_rxd;
                        end else if (cnt ==5'd6) begin
                            icmp_seq[15 : 8] <= gmii_rxd;
                            skip_en <= 1'b1;
                        end else if (cnt == 5'd7) begin
                            cnt <= 5'b0;
                            icmp_seq[7 : 0] <= gmii_rxd;
                        end
                    end
                end
                st_rx_data: begin
                    if (gmii_rx_dv) begin
                        rec_en_cnt <= rec_en_cnt + 1'b1;
                        icmp_rx_cnt <= icmp_rx_cnt + 1'b1;
                        rec_data <= gmii_rxd;
                        rec_en <= 1'b1;

                        if (icmp_rx_cnt <= icmp_data_length - 2'd2) begin
                            icmp_rx_data_d0 <= gmii_rxd;
                            if (icmp_rx_cnt[0]) begin
                                reply_checksum_add <= {icmp_rx_data_d0, gmii_rxd} + reply_checksum_add;
                            end else begin
                                reply_checksum_add <= reply_checksum_add;
                            end
                            if (icmp_rx_cnt == icmp_data_length - 2'd2) begin
                                skip_en <= 1'b1;
                            end
                        end else if (icmp_rx_cnt == icmp_data_length - 1'b1) begin
                            icmp_rx_data_d0 <= 8'b0;
                            if (icmp_data_length[0]) begin
                                reply_checksum_add <= {8'd0, gmii_rxd} + reply_checksum_add;
                            end else begin
                                reply_checksum_add <= {icmp_rx_data_d0, gmii_rxd} + reply_checksum_add;
                            end
                            rec_pkt_done <= 1'b1;
                            icmp_rx_cnt <= 16'b0;
                            rec_en_cnt <= 2'b0;
                            rec_byte_num <= icmp_data_length;
                        end
                    end
                end
                st_rx_end: begin
                    rec_en <= 1'b0;
                    if (gmii_rx_dv == 1'b0 && skip_en == 1'b0) begin
                        reply_checksum <= reply_checksum_add;
                        reply_checksum_add <= 32'b0;
                        skip_en <= 1'b1;
                    end
                end
            endcase
        end
    end

endmodule
