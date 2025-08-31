`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/18 16:30:37
// Design Name: 
// Module Name: tb_rgmii_rx
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
    rand bit [3 : 0] rgmii_rxd_pos;
    rand bit [3 : 0] rgmii_rxd_neg;
    rand bit [3 : 0] prob_pos;
    rand bit [3 : 0] prob_neg;
    bit              rgmii_rx_ctl_pos;
    bit              rgmii_rx_ctl_neg;

    task gen_ctl;
        if (!this.randomize()) $stop;
        else begin
            this.rgmii_rx_ctl_pos = prob_pos > 4'd1;
            this.rgmii_rx_ctl_neg = prob_neg > 4'd1;
        end
    endtask
endclass

module tb_rgmii_rx;

    parameter TCLK_200M_HALF = 2.5;
    parameter TCLK_125M_HALF = 4;
    parameter TCLK_25M_HALF = 20;

    reg clk_200m, clk_125m, clk_25m, rstn;
    reg rgmii_rx_ctl;
    reg [3 : 0] rgmii_rxd;

    wire gmii_rx_clk;
    wire gmii_rx_dv;
    wire [7 : 0] gmii_rxd;

    Stimulus sti;

    initial begin
        clk_200m = 1'b0;
        clk_125m = 1'b0;
        clk_25m = 1'b0;
        rstn = 1'b0;
        fork
            #30 rstn = 1'b1;
            forever #TCLK_200M_HALF clk_200m = ~clk_200m;
            forever #TCLK_125M_HALF clk_125m = ~clk_125m;
            forever #TCLK_25M_HALF clk_25m = ~clk_25m;
        join
    end

    initial begin
        sti = new();
        wait (rstn);
        forever begin
            sti.gen_ctl();
            @(posedge clk_25m);
            rgmii_rxd = sti.rgmii_rxd_pos;
            rgmii_rx_ctl = sti.rgmii_rx_ctl_pos;
            // rgmii_rx_ctl = 1'b1;
            @(negedge clk_25m);
            // rgmii_rxd = sti.rgmii_rxd_neg;
            rgmii_rx_ctl = sti.rgmii_rx_ctl_neg;
        end
    end

    rgmii_rx # (
        .IDELAY_VALUE(25)
    ) u_rgmii_rx (
        .idelay_clk  (clk_200m),
        .rst_n       (rstn),
        
        .rgmii_rxc   (clk_25m),
        .rgmii_rx_ctl(rgmii_rx_ctl),
        .rgmii_rxd   (rgmii_rxd), 
        
        .gmii_rx_clk (gmii_rx_clk),
        .gmii_rx_dv  (gmii_rx_dv),
        .gmii_rxd    (gmii_rxd) 
    );

endmodule
