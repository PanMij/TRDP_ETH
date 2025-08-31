`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/18 19:23:22
// Design Name: 
// Module Name: rgmii_tx
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


module rgmii_tx_100m (
    input          gmii_tx_clk  ,
    input          gmii_tx_en   ,
    input [7 : 0]  gmii_txd     ,
                                 
    output         rgmii_txc    ,
    output         rgmii_tx_ctl ,
    output [3 : 0] rgmii_txd         
);

    reg [3 : 0] rgmii_txd_r;
    reg         cur_pos; // 0: lower, 1: upper
    reg         gmii_tx_en_delay;

    assign rgmii_txc = gmii_tx_clk;
    assign rgmii_txd = rgmii_txd_r;
    assign rgmii_tx_ctl = gmii_tx_en_delay;

    always @(posedge gmii_tx_clk) begin
        if (gmii_tx_en) begin
            gmii_tx_en_delay <= 1'b1;
            case (cur_pos)
                1'b0: begin
                    rgmii_txd_r <= gmii_txd[3 : 0];
                    cur_pos <= 1'b1;
                end
                1'b1: begin
                    rgmii_txd_r <= gmii_txd[7 : 4];
                    cur_pos <= 1'b0;
                end
            endcase
        end
        else begin
            rgmii_txd_r <= 4'b0;
            cur_pos <= 1'b0;
            gmii_tx_en_delay <= 1'b0;
        end
    end

endmodule
