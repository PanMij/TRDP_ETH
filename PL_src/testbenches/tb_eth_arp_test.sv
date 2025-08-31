`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/20 14:13:34
// Design Name: 
// Module Name: tb_eth_arp_test
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


module tb_eth_arp_test;

    parameter TCLK_50M_HALF  = 10;
    parameter TCLK_125M_HALF = 4;

    reg clk_50m, rstn, clk_125m;

    initial begin
        clk_50m = 1'b0;
        clk_125m = 1'b0;
        rstn = 1'b0;
        fork
            #30 rstn = 1'b1;
            forever #TCLK_125M_HALF clk_125m = ~clk_125m;
            forever #TCLK_50M_HALF clk_50m = ~clk_50m;
        join
    end

    eth_arp_test u_eth_arp_test (
        .sys_clk   (clk_50m),
        .sys_rst_n (rstn),
        .touch_key (1'b0),
  
        .eth_rxc   (clk_125m),
        .eth_rx_ctl(1'b0),
        .eth_rxd   (4'b1111),
        .eth_txc   (),
        .eth_tx_ctl(),
        .eth_txd   (),
        .eth_rst_n () 
    );

endmodule
