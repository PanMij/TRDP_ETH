`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/18 12:44:49
// Design Name: 
// Module Name: tb_mdio_dri
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


module tb_mdio_dri;

    parameter TCLK_100M_HALF = 5;

    reg clk, rstn;

    wire op_done;
    wire [15 : 0] op_rd_data;
    wire op_rd_ack;
    wire dri_clk;
    wire eth_mdc;
    wire eth_mdio;

    initial begin
        clk = 1'b0;
        rstn = 1'b0;
        fork
            #30 rstn = 1'b1;
            forever #TCLK_100M_HALF clk = ~clk;
        join
    end

    mdio_dri # (
        .PHY_ADDR(5'b00001),
        .CLK_DIV (6'd16)
    ) u_mdio_dri (
        .clk       (clk),
        .rst_n     (rstn),
        .op_exec   (1'b0),
        .op_rh_wl  (1'b0),
        .op_addr   (5'b0),
        .op_wr_data(16'b0),
        .op_done   (op_done),
        .op_rd_data(op_rd_data),
        .op_rd_ack (op_rd_ack),
        .dri_clk   (dri_clk),
        .eth_mdc   (eth_mdc),
        .eth_mdio  (eth_mdio)
    );

endmodule
