`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/25 23:04:08
// Design Name: 
// Module Name: rgmii_rx_1000m
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


module rgmii_rx_1000m # (
    parameter IDELAY_VALUE = 0
) (
    input          idelay_clk  ,
                                
    input          rgmii_rxc   ,
    input          rgmii_rx_ctl,
    input [3 : 0]  rgmii_rxd   ,
                                
    output         gmii_rx_dv  ,
    output [7 : 0] gmii_rxd     
);

    wire         rgmii_rxc_bufio;
    wire [3 : 0] rgmii_rxd_delay;
    wire         rgmii_rx_ctl_delay;
    wire [1 : 0] gmii_rxdv_t;
    wire         RDY;

    assign gmii_rx_dv = gmii_rxdv_t[0] & gmii_rxdv_t[1];

    BUFIO BUFIO_inst (
        .I(rgmii_rxc),
        .O(rgmii_rxc_bufio)
    );

    (* IODELAY_GROUP = "rgmii_rx_delay" *)
    IDELAYCTRL IDELAYCTRL_inst (
        .RDY(RDY),
        .REFCLK(idelay_clk),
        .RST(1'b0)
    );

    (* IODELAY_GROUP = "rgmii_rx_delay" *)  // Specifies group name for associated IDELAYs/ODELAYs and IDELAYCTRL
    IDELAYE2 # (
        .IDELAY_TYPE     ("FIXED"),         // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
        .IDELAY_VALUE    (IDELAY_VALUE),    // Input delay tap setting (0-31)
        .REFCLK_FREQUENCY(200.0)            // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
    ) u_delay_rx_ctl (
        .CNTVALUEOUT(),                      // 5-bit output: Counter value output
        .DATAOUT    (rgmii_rx_ctl_delay),    // 1-bit output: Delayed data output
        .C          (1'b0),                  // 1-bit input: Clock input
        .CE         (1'b0),                  // 1-bit input: Active high enable increment/decrement input
        .CINVCTRL   (1'b0),                  // 1-bit input: Dynamic clock inversion input
        .CNTVALUEIN (5'b0),                  // 5-bit input: Counter value input
        .DATAIN     (1'b0),                  // 1-bit input: Internal delay data input
        .IDATAIN    (rgmii_rx_ctl),          // 1-bit input: Data input from the I/O
        .INC        (1'b0),                  // 1-bit input: Increment / Decrement tap delay input
        .LD         (1'b0),                  // 1-bit input: Load IDELAY_VALUE input
        .LDPIPEEN   (1'b0),                  // 1-bit input: Enable PIPELINE register to load data input
        .REGRST     (1'b0)                   // 1-bit input: Active-high reset tap-delay input
    );

    IDDR #(
        .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"), // "OPPOSITE_EDGE", "SAME_EDGE" 
                                              //    or "SAME_EDGE_PIPELINED" 
        .INIT_Q1(1'b0),                       // Initial value of Q1: 1'b0 or 1'b1
        .INIT_Q2(1'b0),                       // Initial value of Q2: 1'b0 or 1'b1
        .SRTYPE("SYNC")                       // Set/Reset type: "SYNC" or "ASYNC" 
    ) u_iddr_rx_ctl (
        .Q1(gmii_rxdv_t[0]),      // 1-bit output for positive edge of clock
        .Q2(gmii_rxdv_t[1]),      // 1-bit output for negative edge of clock
        .C(rgmii_rxc_bufio),      // 1-bit clock input
        .CE(1'b1),                // 1-bit clock enable input
        // .D(rgmii_rx_ctl),   // 1-bit DDR data input
        .D(rgmii_rx_ctl_delay),   // 1-bit DDR data input
        .R(1'b0),                 // 1-bit reset
        .S(1'b0)                  // 1-bit set
    );

genvar i;
generate
    for (i = 0; i < 4; i = i + 1) begin : rxdata_bus
        (* IODELAY_GROUP = "rgmii_rx_delay" *)  // Specifies group name for associated IDELAYs/ODELAYs and IDELAYCTRL
        IDELAYE2 # (
            .IDELAY_TYPE     ("FIXED"),         // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
            .IDELAY_VALUE    (IDELAY_VALUE),    // Input delay tap setting (0-31)
            .REFCLK_FREQUENCY(200.0)            // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
        ) u_delay_rx_ctl (
            .CNTVALUEOUT(),                      // 5-bit output: Counter value output
            .DATAOUT    (rgmii_rxd_delay[i]),    // 1-bit output: Delayed data output
            .C          (1'b0),                  // 1-bit input: Clock input
            .CE         (1'b0),                  // 1-bit input: Active high enable increment/decrement input
            .CINVCTRL   (1'b0),                  // 1-bit input: Dynamic clock inversion input
            .CNTVALUEIN (5'b0),                  // 5-bit input: Counter value input
            .DATAIN     (1'b0),                  // 1-bit input: Internal delay data input
            .IDATAIN    (rgmii_rxd[i]),          // 1-bit input: Data input from the I/O
            .INC        (1'b0),                  // 1-bit input: Increment / Decrement tap delay input
            .LD         (1'b0),                  // 1-bit input: Load IDELAY_VALUE input
            .LDPIPEEN   (1'b0),                  // 1-bit input: Enable PIPELINE register to load data input
            .REGRST     (1'b0)                   // 1-bit input: Active-high reset tap-delay input
        );

        IDDR #(
            .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"), // "OPPOSITE_EDGE", "SAME_EDGE" 
                                                  //    or "SAME_EDGE_PIPELINED" 
            .INIT_Q1(1'b0),                       // Initial value of Q1: 1'b0 or 1'b1
            .INIT_Q2(1'b0),                       // Initial value of Q2: 1'b0 or 1'b1
            .SRTYPE("SYNC")                       // Set/Reset type: "SYNC" or "ASYNC" 
        ) u_iddr_rxd (
            .Q1(gmii_rxd[i]),      // 1-bit output for positive edge of clock
            .Q2(gmii_rxd[i + 4]),      // 1-bit output for negative edge of clock
            .C(rgmii_rxc_bufio),      // 1-bit clock input
            .CE(1'b1),                // 1-bit clock enable input
            // .D(rgmii_rxd[i]),   // 1-bit DDR data input
            .D(rgmii_rxd_delay[i]),   // 1-bit DDR data input
            .R(1'b0),                 // 1-bit reset
            .S(1'b0)                  // 1-bit set
        );
    end
endgenerate

endmodule
