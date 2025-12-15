`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/25 23:05:10
// Design Name: 
// Module Name: rgmii_tx_1000m
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


module rgmii_tx_1000m (
    input          gmii_tx_clk ,
    input          gmii_tx_en  ,
    input [7 : 0]  gmii_txd    ,
                                 
    output         rgmii_txc   ,
    output         rgmii_tx_ctl,
    output [3 : 0] rgmii_txd    
);

    assign rgmii_txc = gmii_tx_clk;

    ODDR #(
        .DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
        .INIT(1'b0),                // Initial value of Q: 1'b0 or 1'b1
        .SRTYPE("SYNC")             // Set/Reset type: "SYNC" or "ASYNC" 
    ) u_oddr_tx_ctl (
        .Q(rgmii_tx_ctl),    // 1-bit DDR output
        .C(gmii_tx_clk),     // 1-bit clock input
        .CE(1'b1),           // 1-bit clock enable input
        .D1(gmii_tx_en),     // 1-bit data input (positive edge)
        .D2(gmii_tx_en),     // 1-bit data input (negative edge)
        .R(1'b0),            // 1-bit reset
        .S(1'b0)             // 1-bit set
    );

genvar i;
generate
    for (i = 0; i < 4; i = i + 1) begin : txdata_bus
        ODDR #(
            .DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
            .INIT(1'b0),                // Initial value of Q: 1'b0 or 1'b1
            .SRTYPE("SYNC")             // Set/Reset type: "SYNC" or "ASYNC" 
        ) u_oddr_tx (
            .Q(rgmii_txd[i]),         // 1-bit DDR output
            .C(gmii_tx_clk),          // 1-bit clock input
            .CE(1'b1),                // 1-bit clock enable input
            .D1(gmii_txd[i]),         // 1-bit data input (positive edge)
            .D2(gmii_txd[i + 4]),     // 1-bit data input (negative edge)
            .R(1'b0),                 // 1-bit reset
            .S(1'b0)                  // 1-bit set
        );
    end
endgenerate

endmodule
