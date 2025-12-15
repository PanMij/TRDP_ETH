`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/20 14:21:54
// Design Name: 
// Module Name: gmii2rgmii
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

module gmii2rgmii # (
    parameter IDELAY_VALUE = 0
) (
    input          idelay_clk    ,
    input          rst_n         ,
    input [1 : 0]  phy_speed     ,
    // gmii interface             
    input          gmii_tx_en    ,
    input [7 : 0]  gmii_txd      ,
    output         gmii_rx_dv    ,
    output [7 : 0] gmii_rxd      ,
    (* x_interface_parameter = "FREQ_HZ 125000000" *)
    output         gmii_rx_clk   ,
    // rgmii interface            
    input          rgmii_rxc     ,
    input          rgmii_rx_ctl  ,
    input [3 : 0]  rgmii_rxd     ,
    output         rgmii_txc     ,
    output         rgmii_tx_ctl  ,
    output [3 : 0] rgmii_txd      
);

    reg [3 : 0]  local_rst_n_delay;
    reg [3 : 0]  rgmii_rxd_d[1 : 0];
    reg          rgmii_rx_ctl_d[1 : 0];
    reg          gmii_tx_en_delay;
    reg [7 : 0]  gmii_txd_delay;
    reg          gmii_rx_dv_r;
    reg [7 : 0]  gmii_rxd_r;

    wire         clk_ila_125m;
    wire         rgmii_rxc_bufg;
    wire         clk_25m_90d;

    /*************************************************************/
    /*                  100M interfaces                          */
    /*************************************************************/
    wire         gmii_rx_dv_100m;
    wire [7 : 0] gmii_rxd_100m;
    wire         rgmii_txc_100m;
    wire         rgmii_tx_ctl_100m;
    wire [3 : 0] rgmii_txd_100m;
    wire         local_rst_n;
    wire         eth_rxc_sample;
    wire         clk_wiz_1_locked;

    // assign local_rst_n = rst_n & ~(phy_speed == 2'b01 && !clk_wiz_1_locked);
    assign local_rst_n = rst_n;
    /*************************************************************/
    /*               100M interfaces end                         */
    /*************************************************************/


    /*************************************************************/
    /*                 1000M interfaces                          */
    /*************************************************************/
    wire         gmii_rx_dv_1000m;
    wire [7 : 0] gmii_rxd_1000m;
    wire         rgmii_txc_1000m;
    wire         rgmii_tx_ctl_1000m;
    /*************************************************************/
    /*               1000M interfaces end                        */
    /*************************************************************/

    assign gmii_rx_dv = gmii_rx_dv_r;
    assign gmii_rxd   = gmii_rxd_r;
    assign gmii_rx_clk = rgmii_rxc_bufg;

    wire         gmii_tx_en_t;
    wire [7 : 0] gmii_txd_t;

    assign gmii_tx_en_t = (phy_speed == 2'b01) ? rgmii_tx_ctl_100m : gmii_tx_en_delay;
    assign gmii_txd_t = (phy_speed == 2'b01) ? {rgmii_txd_100m, rgmii_txd_100m} : gmii_txd_delay; 
    assign rgmii_txc = (phy_speed == 2'b01) ? clk_25m_90d : rgmii_txc_1000m;

    BUFG BUFG_inst (
        .O(rgmii_rxc_bufg), // 1-bit output: Clock output
        .I(rgmii_rxc)  // 1-bit input: Clock input
    );

    clk_wiz_1 u_clk_wiz_1 (
        // Clock out ports
        .clk_25m_90d(clk_25m_90d),     // output clk_25m_90d
        // Status and control signals
        .reset(~local_rst_n_delay[3]), // input reset
        .locked(),       // output locked
    // Clock in ports
        .clk_in1(rgmii_rxc_bufg)      // input clk_in1
    );

    always @(posedge rgmii_rxc_bufg or negedge local_rst_n) begin
        if (!local_rst_n) begin
            local_rst_n_delay <= 4'b0;
        end
        else begin
            local_rst_n_delay <= {local_rst_n_delay[2 : 0], 1'b1};
        end
    end

    // rgmii input clap
    always @(posedge rgmii_rxc_bufg or negedge local_rst_n_delay[3]) begin
        if (!local_rst_n_delay[3]) begin
            rgmii_rx_ctl_d[0] <= 1'b0;
            rgmii_rx_ctl_d[1] <= 1'b0;
            rgmii_rxd_d[0] <= 4'b0;
            rgmii_rxd_d[1] <= 4'b0;
        end else begin
            rgmii_rx_ctl_d[1] <= rgmii_rx_ctl_d[0];
            rgmii_rx_ctl_d[0] <= rgmii_rx_ctl;
            rgmii_rxd_d[1] <= rgmii_rxd_d[0];
            rgmii_rxd_d[0] <= rgmii_rxd;
        end
    end

    always @(posedge rgmii_rxc_bufg or negedge local_rst_n_delay[3]) begin
        if (!local_rst_n_delay[3]) begin
            gmii_tx_en_delay <= 1'b0;
            gmii_txd_delay <= 8'b0;
        end
        else begin
            gmii_tx_en_delay <= gmii_tx_en;
            gmii_txd_delay <= gmii_txd;
        end
    end

    always @(posedge rgmii_rxc_bufg or negedge local_rst_n_delay[3]) begin
        if (!local_rst_n_delay[3]) begin
            gmii_rx_dv_r <= 1'b0;
            gmii_rxd_r <= 8'b0;
        end
        else if (phy_speed == 2'b01) begin
            gmii_rx_dv_r <= gmii_rx_dv_100m;
            gmii_rxd_r <= gmii_rxd_100m;
        end
        else begin
            gmii_rx_dv_r <= gmii_rx_dv_1000m;
            gmii_rxd_r <= gmii_rxd_1000m;
        end
    end

    // BUFGMUX BUFGMUX_inst (
    //     .O(gmii_rx_clk),                    // 1-bit output: Clock output
    //     .I0(rgmii_rxc),                   // 1-bit input: Clock input (S=0)
    //     .I1(eth_rxc_sample),                 // 1-bit input: Clock input (S=1)
    //     .S(phy_speed == 2'b01) // 1-bit input: Clock select
    // );

    rgmii_rx_1000m # (
        .IDELAY_VALUE(IDELAY_VALUE)
    ) u_rgmii_rx_1000m (
        .idelay_clk  (idelay_clk),
        
        .rgmii_rxc   (rgmii_rxc),
        .rgmii_rx_ctl(rgmii_rx_ctl),
        .rgmii_rxd   (rgmii_rxd),
        
        .gmii_rx_dv  (gmii_rx_dv_1000m),
        .gmii_rxd    (gmii_rxd_1000m) 
    );

    rgmii_tx_1000m u_rgmii_tx_1000m (
        .gmii_tx_clk (rgmii_rxc_bufg),
        .gmii_tx_en  (gmii_tx_en_t),
        .gmii_txd    (gmii_txd_t),
        
        .rgmii_txc   (rgmii_txc_1000m),
        .rgmii_tx_ctl(rgmii_tx_ctl),
        .rgmii_txd   (rgmii_txd) 
    );

    rgmii_rx_100m u_rgmii_rx_100m (
        .idelay_clk    (idelay_clk),
        .rst_n         (local_rst_n_delay[3]),
        
        .rgmii_rx_ctl  (rgmii_rx_ctl_d[1]),
        .rgmii_rxd     (rgmii_rxd_d[1]),
          
        // .eth_rxc_sample(eth_rxc_sample),
        .eth_rxc_sample(rgmii_rxc_bufg),
        .gmii_rx_dv    (gmii_rx_dv_100m),
        .gmii_rxd      (gmii_rxd_100m) 
    );

    rgmii_tx_100m u_rgmii_tx_100m (
        // .gmii_tx_clk  (eth_rxc_sample),
        .gmii_tx_clk  (rgmii_rxc_bufg),
        .gmii_tx_en   (gmii_tx_en_delay),
        .gmii_txd     (gmii_txd_delay),
      
        .rgmii_txc    (rgmii_txc_100m),
        .rgmii_tx_ctl (rgmii_tx_ctl_100m),
        .rgmii_txd    (rgmii_txd_100m) 
    );

endmodule
