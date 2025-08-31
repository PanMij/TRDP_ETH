`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/18 19:36:04
// Design Name: 
// Module Name: tb_rgmii_tx
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

class Stimulus;
    rand bit [7 : 0] gmii_txd_i;
    rand bit [3 : 0] prob;
    bit              gmii_tx_en_i;

    task gen;
        if (!this.randomize()) $stop;
        else gmii_tx_en_i = prob > 1;
    endtask
endclass

module tb_rgmii_tx;

    parameter TCLK_125M_HALF = 4;
    parameter TCLK_25M_HALF = 20;
    parameter TCLK_12P5M_HALF = 40;
    
    reg clk_125m, clk_25m, clk_12p5m, rstn;
    reg gmii_tx_en;
    reg [7 : 0] gmii_txd;

    wire rgmii_txc;
    wire rgmii_tx_ctl;
    wire [3 : 0] rgmii_txd;

    Stimulus sti;

    initial begin
        clk_125m = 1'b0;
        clk_25m = 1'b0;
        clk_12p5m = 1'b0;
        rstn = 1'b0;
        fork
            #30 rstn = 1'b1;
            forever #TCLK_125M_HALF clk_125m = ~clk_125m;
            forever #TCLK_25M_HALF clk_25m = ~clk_25m;
            forever begin
                @(posedge clk_25m);
                clk_12p5m = ~clk_12p5m;
            end
        join
    end

    initial begin
        sti = new();
        wait (rstn);
        forever begin
            sti.gen();
            @(posedge clk_12p5m);
            gmii_tx_en = sti.gmii_tx_en_i;
            gmii_txd = sti.gmii_txd_i;
        end
    end

    rgmii_tx u_rgmii_tx (
        .gmii_tx_clk  (clk_25m),
        .gmii_tx_en   (gmii_tx_en),
        .gmii_txd     (gmii_txd),
                   
        .rgmii_txc    (rgmii_txc),
        .rgmii_tx_ctl (rgmii_tx_ctl),
        .rgmii_txd    (rgmii_txd) 
    );

endmodule
