`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/23 18:42:59
// Design Name: 
// Module Name: tb_adaptive_arp
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

module tb_adaptive_arp;

    parameter TCLK_50M_HALF = 10;

    reg sys_clk;
    reg sys_rst_n;
    reg touch_key;

    wire eth_rst_n;
    wire [1 : 0] led;
    wire eth_rxc;
    wire eth_rx_ctl;
    wire [3 : 0] eth_rxd;
    wire eth_txc;
    wire eth_tx_ctl;
    wire [3 : 0] eth_txd;

    initial begin
        sys_clk = 1'b0;
        sys_rst_n = 1'b0;
        fork
            #30 sys_rst_n = 1'b1;
            forever #TCLK_50M_HALF sys_clk = ~sys_clk;
        join
    end

    initial begin
        force u_adaptive_arp.phy_speed = 2'b10;
        #20_000;
        force u_adaptive_arp.phy_speed = 2'b01;
    end

    initial begin
        touch_key = 1'b0;
        // #1000 touch_key = 1'b1;
    end

    adaptive_arp u_adaptive_arp (
        .sys_clk   (sys_clk),
        .sys_rst_n (sys_rst_n),
        .eth_rst_n (eth_rst_n),
     
        .eth_mdc   (),
        .eth_mdio  (),
        .led       (led),
       
        .touch_key (touch_key),
        .eth_rxc   (eth_rxc   ),
        .eth_rx_ctl(eth_rx_ctl),
        .eth_rxd   (eth_rxd   ),
        .eth_txc   (eth_txc   ),
        .eth_tx_ctl(eth_tx_ctl),
        .eth_txd   (eth_txd   ) 
    );

    tb_PHY u_tb_PHY (
        .eth_rst_n (eth_rst_n),

        .eth_rxc   (eth_rxc),
        .eth_rx_ctl(eth_rx_ctl),
        .eth_rxd   (eth_rxd),
      
        .eth_txc   (eth_txc   ),
        .eth_tx_ctl(eth_tx_ctl),
        .eth_txd   (eth_txd   ) 
    );

endmodule

module tb_PHY (
    input          eth_rst_n , 

    output         eth_rxc   ,
    output         eth_rx_ctl,
    output [3 : 0] eth_rxd   ,
                              
    input          eth_txc   ,
    input          eth_tx_ctl,
    input [3 : 0]  eth_txd     
);

    parameter TCLK_25M_HALF = 20;
    parameter TCLK_125M_HALF = 4;

    event print;

    reg eth_rxc_100m_r;
    reg eth_rxc_1000m_r;
    reg [3 : 0] eth_rxd_r;
    reg eth_rx_ctl_r;

    reg [7 : 0] tx_byte;
    reg cur_pos;
    reg [3 : 0] arp_data[0 : 143];
    reg start_arp_data;
    reg [7 : 0] arp_data_idx;

    assign #2 eth_rxc = (u_adaptive_arp.phy_speed == 2'b01) ? eth_rxc_100m_r : eth_rxc_1000m_r;
    assign eth_rxc_t = (u_adaptive_arp.phy_speed == 2'b01) ? eth_rxc_100m_r : eth_rxc_1000m_r;
    assign eth_rxd = eth_rxd_r;
    assign eth_rx_ctl = eth_rx_ctl_r;

    initial begin
        $readmemh("C:/Users/LYG/Desktop/arp.txt", arp_data);
        eth_rxd_r = 4'b0;
        eth_rx_ctl_r = 1'b0;
        arp_data_idx = 8'b0;
        start_arp_data = 1'b0;
        // wait (eth_rst_n);
        #2800 start_arp_data = 1'b1;

        wait (u_adaptive_arp.phy_speed == 2'b01);
        eth_rxd_r = 4'b0;
        eth_rx_ctl_r = 1'b0;
        #100;
        wait (u_adaptive_arp.u_gmii2rgmii.local_rst_n);
        #100 start_arp_data = 1'b1;
    end
    
    initial begin
        wait (start_arp_data);
        for (int i = 0; i < 144; i = i + 2) begin
            @(posedge eth_rxc_t);
            eth_rxd_r = arp_data[i];
            eth_rx_ctl_r = 1'b1;
            @(negedge eth_rxc_t);
            eth_rxd_r = arp_data[i + 1];
            eth_rx_ctl_r = 1'b1;
        end
        @(posedge eth_rxc_t);
        eth_rxd_r = 4'b0;
        eth_rx_ctl_r = 1'b0;
        start_arp_data = 1'b0;
    end

    always #TCLK_125M_HALF begin 
        eth_rxc_1000m_r <= (!eth_rst_n) ? 1'b0 : ~eth_rxc_1000m_r;
    end
    always #TCLK_25M_HALF eth_rxc_100m_r <= (!eth_rst_n) ? 1'b0 : ~eth_rxc_100m_r;

    always @(posedge eth_txc) begin
        if (u_adaptive_arp.phy_speed == 2'b01) begin    
            if (eth_tx_ctl) begin
                case (cur_pos)
                    1'b0: begin
                        cur_pos <= 1'b1;
                        tx_byte[3 : 0] <= eth_txd;
                    end
                    1'b1: begin
                        cur_pos <= 1'b0;
                        tx_byte[7 : 4] <= eth_txd;
                        -> print;
                    end
                endcase
            end
            else begin
                cur_pos <= 1'b0;
                tx_byte <= 8'b0;
            end
        end
    end

    always @(print) begin
        #3 $write("%h ", tx_byte);
    end

    always @(posedge eth_rxc_t) begin
        if (u_adaptive_arp.phy_speed == 2'b01) begin    
            if (arp_data_idx >= 8'd144) begin
                arp_data_idx <= 8'b0;
                start_arp_data <= 1'b0;
                eth_rxd_r <= 4'b0;
                eth_rx_ctl_r <= 1'b0;
            end
            else if (start_arp_data) begin
                arp_data_idx <= arp_data_idx + 1'b1;
                eth_rxd_r <= arp_data[arp_data_idx];
                eth_rx_ctl_r <= 1'b1;
            end
            else begin
                arp_data_idx <= 8'b0;
                eth_rxd_r <= 4'b0;
                eth_rx_ctl_r <= 1'b0;
            end
        end
    end

endmodule