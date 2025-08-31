`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/20 09:18:46
// Design Name: 
// Module Name: tb_arp
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


module tb_arp;

    parameter TCLK_125M_HALF = 4;
    parameter OP_CYCLE = 100;

    parameter BOARD_MAC = 48'h00_11_22_33_44_55;
    parameter BOARD_IP = {8'd192, 8'd168, 8'd1, 8'd10};
    parameter DES_MAC = 48'hff_ff_ff_ff_ff_ff;
    parameter DES_IP = {8'd192, 8'd168, 8'd1, 8'd10};

    reg gmii_clk;
    reg sys_rst_n;
    reg arp_tx_en;
    reg arp_tx_type;
    reg [3 : 0] flow_cnt;
    reg [13 : 0] delay_cnt;
    reg write_flag;

    wire gmii_rx_clk;
    wire gmii_rx_dv;
    wire [7 : 0] gmii_rxd;
    wire gmii_tx_clk;
    wire gmii_tx_en;
    wire [7 : 0] gmii_txd;
    wire arp_rx_done;
    wire arp_rx_type;
    wire [47 : 0] src_mac;
    wire [31 : 0] src_ip;
    wire [47 : 0] des_mac;
    wire [31 : 0] des_ip;
    wire tx_done;
    // wire [31 : 0] crc_out;

    // assign crc_out[31 : 24] = {~u_arp.u_crc32_d8.crc_data[24], ~u_arp.u_crc32_d8.crc_data[25], ~u_arp.u_crc32_d8.crc_data[26], ~u_arp.u_crc32_d8.crc_data[27], ~u_arp.u_crc32_d8.crc_data[28], ~u_arp.u_crc32_d8.crc_data[29], ~u_arp.u_crc32_d8.crc_data[30], ~u_arp.u_crc32_d8.crc_data[31]};
    // assign crc_out[23 : 16] = {~u_arp.u_crc32_d8.crc_data[16], ~u_arp.u_crc32_d8.crc_data[17], ~u_arp.u_crc32_d8.crc_data[18], ~u_arp.u_crc32_d8.crc_data[19], ~u_arp.u_crc32_d8.crc_data[20], ~u_arp.u_crc32_d8.crc_data[21], ~u_arp.u_crc32_d8.crc_data[22], ~u_arp.u_crc32_d8.crc_data[23]};
    // assign crc_out[15 : 8] = {~u_arp.u_crc32_d8.crc_data[8], ~u_arp.u_crc32_d8.crc_data[9], ~u_arp.u_crc32_d8.crc_data[10], ~u_arp.u_crc32_d8.crc_data[11], ~u_arp.u_crc32_d8.crc_data[12], ~u_arp.u_crc32_d8.crc_data[13], ~u_arp.u_crc32_d8.crc_data[14], ~u_arp.u_crc32_d8.crc_data[15]};
    // assign crc_out[7 : 0] = {~u_arp.u_crc32_d8.crc_data[0], ~u_arp.u_crc32_d8.crc_data[1], ~u_arp.u_crc32_d8.crc_data[2], ~u_arp.u_crc32_d8.crc_data[3], ~u_arp.u_crc32_d8.crc_data[4], ~u_arp.u_crc32_d8.crc_data[5], ~u_arp.u_crc32_d8.crc_data[6], ~u_arp.u_crc32_d8.crc_data[7]};

    assign gmii_rx_clk = gmii_clk;
    assign gmii_tx_clk = gmii_clk;
    assign gmii_rx_dv = gmii_tx_en;
    assign gmii_rxd = gmii_txd;
    assign des_mac = src_mac;
    assign des_ip = src_ip;

    initial begin
        gmii_clk = 1'b0;
        sys_rst_n = 1'b0;
        #(2 * TCLK_125M_HALF + 1) sys_rst_n = 1'b1;
    end

    always #TCLK_125M_HALF gmii_clk = ~gmii_clk;

    always @(posedge gmii_clk or negedge sys_rst_n) begin
        if (!sys_rst_n) begin
            flow_cnt <= 4'b0;
            delay_cnt <= 14'b0;
            arp_tx_en <= 1'b0;
            arp_tx_type <= 1'b0;
            write_flag <= 1'b0;
        end
        else begin
            case (flow_cnt)
                4'd0: begin
                    flow_cnt <= flow_cnt + 1'b1;
                end
                4'd1: begin
                    arp_tx_en <= 1'b1;
                    arp_tx_type <= 1'b0;
                    flow_cnt <= flow_cnt + 1'b1;
                end
                4'd2: begin
                    arp_tx_en <= 1'b0;
                    flow_cnt <= flow_cnt + 1'b1;
                end
                4'd3: begin
                    if (gmii_txd == 8'hd5) begin
                        write_flag <= 1'b1;
                    end
                    if (tx_done) begin
                        flow_cnt <= flow_cnt + 1'b1;
                        write_flag <= 1'b0;
                        $write("\n");
                    end
                end
                4'd4: begin
                    delay_cnt <= delay_cnt + 1'b1;
                    if (delay_cnt == OP_CYCLE - 1'b1) begin
                        flow_cnt <= flow_cnt + 1'b1;
                    end
                end
                4'd5: begin
                    arp_tx_en <= 1'b1;
                    arp_tx_type <= 1'b1;
                    flow_cnt <= flow_cnt + 1'b1;
                end
                4'd6: begin
                    arp_tx_en <= 1'b0;
                    flow_cnt <= flow_cnt + 1'b1;
                end
                4'd7: begin
                    if (tx_done) begin
                        flow_cnt <= flow_cnt + 1'b1;
                    end
                end
            endcase
        end
    end

    always @(posedge gmii_clk) begin
        if (write_flag) begin
            $write("%h ", gmii_txd);
        end
    end

    arp # (
        .BOARD_MAC(BOARD_MAC),
        .BOARD_IP (BOARD_IP),
        .DES_MAC  (DES_MAC),
        .DES_IP   (DES_IP)
    ) u_arp (
        .rst_n      (sys_rst_n),

        .gmii_rx_clk(gmii_rx_clk),
        .gmii_rx_dv (gmii_rx_dv),
        .gmii_rxd   (gmii_rxd),
        .gmii_tx_clk(gmii_tx_clk),
        .gmii_tx_en (gmii_tx_en),
        .gmii_txd   (gmii_txd),

        .arp_tx_en  (arp_tx_en),
        .arp_tx_type(arp_tx_type),
        .des_mac    (des_mac),
        .des_ip     (des_ip),
        .arp_rx_done(arp_rx_done),
        .arp_rx_type(arp_rx_type),
        .src_mac    (src_mac),
        .src_ip     (src_ip),
        .tx_done    (tx_done) 
    );

endmodule
