// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Tue Dec 24 12:04:37 2024
// Host        : LAPTOP-90OVKT21 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/LYG/Desktop/testV/ADP_ARP/ADP_ARP.sim/sim_1/synth/timing/modelsim/tb_adaptive_arp_time_synth.v
// Design      : adaptive_arp
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module IOBUF_UNIQ_BASE_
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module dbg_hub_CV
   (clk,
    sl_iport0_o,
    sl_oport0_i);
  input clk;
  output [36:0]sl_iport0_o;
  input [16:0]sl_oport0_i;


endmodule

module u_ila_0_CV
   (clk,
    SL_IPORT_I,
    SL_OPORT_O,
    probe0,
    probe1,
    probe2,
    probe3,
    probe4,
    probe5,
    probe6,
    probe7,
    probe8);
  input clk;
  input [36:0]SL_IPORT_I;
  output [16:0]SL_OPORT_O;
  input [0:4]probe0;
  input [0:4]probe1;
  input [0:7]probe2;
  input [0:47]probe3;
  input [0:31]probe4;
  input [0:4]probe5;
  input [0:0]probe6;
  input [0:0]probe7;
  input [0:0]probe8;


endmodule

(* BOARD_IP = "-1062731510" *) (* BOARD_MAC = "48'b000000000001000100100010001100110100010001010101" *) (* DES_IP = "-1062731311" *) 
(* DES_MAC = "48'b111111111111111111111111111111111111111111111111" *) (* IDELAY_VALUE = "0" *) (* PHY_ADDR = "5'b00100" *) 
(* NotValidForBitStream *)
module adaptive_arp
   (sys_clk,
    sys_rst_n,
    eth_rst_n,
    eth_mdc,
    eth_mdio,
    led,
    touch_key,
    eth_rxc,
    eth_rx_ctl,
    eth_rxd,
    eth_txc,
    eth_tx_ctl,
    eth_txd);
  input sys_clk;
  input sys_rst_n;
  output eth_rst_n;
  output eth_mdc;
  inout eth_mdio;
  output [1:0]led;
  input touch_key;
  input eth_rxc;
  input eth_rx_ctl;
  input [3:0]eth_rxd;
  output eth_txc;
  output eth_tx_ctl;
  output [3:0]eth_txd;

  wire arp_rx_done;
  wire arp_rx_type;
  wire arp_tx_en;
  wire arp_tx_type;
  wire clk_200m;
  wire clk_rx_sample;
  wire clk_rx_sample_BUFG;
  wire clk_rx_sample_i_1_n_0;
  wire clk_wiz_1_locked;
  wire dri_clk;
  wire eth_mdc;
  wire eth_mdc_OBUF;
  wire eth_mdio;
  wire eth_mdio_IBUF;
  wire eth_mdio_OBUF;
  wire eth_mdio_TRI;
  wire eth_rst_n;
  wire eth_rst_n_OBUF;
  wire eth_rx_ctl;
  wire eth_rx_ctl_IBUF;
  (* IBUF_LOW_PWR *) wire eth_rxc;
  wire eth_rxc_sample_out;
  wire [3:0]eth_rxd;
  wire [3:0]eth_rxd_IBUF;
  wire eth_tx_ctl;
  wire eth_tx_ctl_OBUF;
  wire eth_txc;
  wire eth_txc_OBUF;
  wire [3:0]eth_txd;
  wire [3:0]eth_txd_OBUF;
  wire gmii_rx_dv;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire [1:0]led;
  wire [1:0]led_OBUF;
  wire [1:0]phy_speed;
  wire [36:0]sl_iport0_o_0;
  wire [16:0]sl_oport0_i_0;
  wire sys_clk;
  wire sys_clk_IBUF;
  wire sys_rst_n;
  wire touch_key;
  wire touch_key_IBUF;
  wire u_arp_n_10;
  wire u_arp_n_11;
  wire u_arp_n_3;
  wire u_arp_n_4;
  wire u_arp_n_7;
  wire u_arp_n_8;
  wire u_arp_n_9;
  wire \u_ila_0_cnt[0] ;
  wire \u_ila_0_cnt[1] ;
  wire \u_ila_0_cnt[2] ;
  wire \u_ila_0_cnt[3] ;
  wire \u_ila_0_cnt[4] ;
  wire \u_ila_0_cur_state[0] ;
  wire \u_ila_0_cur_state[1] ;
  wire \u_ila_0_cur_state[2] ;
  wire \u_ila_0_cur_state[3] ;
  wire \u_ila_0_cur_state[4] ;
  wire u_ila_0_error_en;
  wire \u_ila_0_next_state[0] ;
  wire \u_ila_0_next_state[1] ;
  wire \u_ila_0_next_state[2] ;
  wire \u_ila_0_next_state[3] ;
  wire \u_ila_0_next_state[4] ;
  wire u_ila_0_skip_en;
  wire \u_ila_0_src_ip_t[0] ;
  wire \u_ila_0_src_ip_t[10] ;
  wire \u_ila_0_src_ip_t[11] ;
  wire \u_ila_0_src_ip_t[12] ;
  wire \u_ila_0_src_ip_t[13] ;
  wire \u_ila_0_src_ip_t[14] ;
  wire \u_ila_0_src_ip_t[15] ;
  wire \u_ila_0_src_ip_t[16] ;
  wire \u_ila_0_src_ip_t[17] ;
  wire \u_ila_0_src_ip_t[18] ;
  wire \u_ila_0_src_ip_t[19] ;
  wire \u_ila_0_src_ip_t[1] ;
  wire \u_ila_0_src_ip_t[20] ;
  wire \u_ila_0_src_ip_t[21] ;
  wire \u_ila_0_src_ip_t[22] ;
  wire \u_ila_0_src_ip_t[23] ;
  wire \u_ila_0_src_ip_t[24] ;
  wire \u_ila_0_src_ip_t[25] ;
  wire \u_ila_0_src_ip_t[26] ;
  wire \u_ila_0_src_ip_t[27] ;
  wire \u_ila_0_src_ip_t[28] ;
  wire \u_ila_0_src_ip_t[29] ;
  wire \u_ila_0_src_ip_t[2] ;
  wire \u_ila_0_src_ip_t[30] ;
  wire \u_ila_0_src_ip_t[31] ;
  wire \u_ila_0_src_ip_t[3] ;
  wire \u_ila_0_src_ip_t[4] ;
  wire \u_ila_0_src_ip_t[5] ;
  wire \u_ila_0_src_ip_t[6] ;
  wire \u_ila_0_src_ip_t[7] ;
  wire \u_ila_0_src_ip_t[8] ;
  wire \u_ila_0_src_ip_t[9] ;
  wire \u_ila_0_src_mac_t[0] ;
  wire \u_ila_0_src_mac_t[10] ;
  wire \u_ila_0_src_mac_t[11] ;
  wire \u_ila_0_src_mac_t[12] ;
  wire \u_ila_0_src_mac_t[13] ;
  wire \u_ila_0_src_mac_t[14] ;
  wire \u_ila_0_src_mac_t[15] ;
  wire \u_ila_0_src_mac_t[16] ;
  wire \u_ila_0_src_mac_t[17] ;
  wire \u_ila_0_src_mac_t[18] ;
  wire \u_ila_0_src_mac_t[19] ;
  wire \u_ila_0_src_mac_t[1] ;
  wire \u_ila_0_src_mac_t[20] ;
  wire \u_ila_0_src_mac_t[21] ;
  wire \u_ila_0_src_mac_t[22] ;
  wire \u_ila_0_src_mac_t[23] ;
  wire \u_ila_0_src_mac_t[24] ;
  wire \u_ila_0_src_mac_t[25] ;
  wire \u_ila_0_src_mac_t[26] ;
  wire \u_ila_0_src_mac_t[27] ;
  wire \u_ila_0_src_mac_t[28] ;
  wire \u_ila_0_src_mac_t[29] ;
  wire \u_ila_0_src_mac_t[2] ;
  wire \u_ila_0_src_mac_t[30] ;
  wire \u_ila_0_src_mac_t[31] ;
  wire \u_ila_0_src_mac_t[32] ;
  wire \u_ila_0_src_mac_t[33] ;
  wire \u_ila_0_src_mac_t[34] ;
  wire \u_ila_0_src_mac_t[35] ;
  wire \u_ila_0_src_mac_t[36] ;
  wire \u_ila_0_src_mac_t[37] ;
  wire \u_ila_0_src_mac_t[38] ;
  wire \u_ila_0_src_mac_t[39] ;
  wire \u_ila_0_src_mac_t[3] ;
  wire \u_ila_0_src_mac_t[40] ;
  wire \u_ila_0_src_mac_t[41] ;
  wire \u_ila_0_src_mac_t[42] ;
  wire \u_ila_0_src_mac_t[43] ;
  wire \u_ila_0_src_mac_t[44] ;
  wire \u_ila_0_src_mac_t[45] ;
  wire \u_ila_0_src_mac_t[46] ;
  wire \u_ila_0_src_mac_t[47] ;
  wire \u_ila_0_src_mac_t[4] ;
  wire \u_ila_0_src_mac_t[5] ;
  wire \u_ila_0_src_mac_t[6] ;
  wire \u_ila_0_src_mac_t[7] ;
  wire \u_ila_0_src_mac_t[8] ;
  wire \u_ila_0_src_mac_t[9] ;
  wire u_mdio_rw_test_n_1;
  wire \u_rgmii_tx/cur_pos ;
  wire NLW_i_365_O_UNCONNECTED;

initial begin
 $sdf_annotate("tb_adaptive_arp_time_synth.sdf",,,,"tool_control");
end
  BUFG clk_rx_sample_BUFG_inst
       (.I(clk_rx_sample),
        .O(clk_rx_sample_BUFG));
  LUT1 #(
    .INIT(2'h1)) 
    clk_rx_sample_i_1
       (.I0(clk_rx_sample),
        .O(clk_rx_sample_i_1_n_0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    clk_rx_sample_reg
       (.C(eth_txc_OBUF),
        .CE(1'b1),
        .CLR(u_arp_n_3),
        .D(clk_rx_sample_i_1_n_0),
        .Q(clk_rx_sample));
  BUFG \cur_state_reg[5]_i_2 
       (.I(u_mdio_rw_test_n_1),
        .O(dri_clk));
  (* DEBUG_CORE_INFO = "dbg_hub,labtools_xsdbm_v3_00_a,{C_BSCAN_MODE=false,C_BSCAN_MODE_WITH_CORE=false,C_CLK_INPUT_FREQ_HZ=300000000,C_ENABLE_CLK_DIVIDER=false,C_EN_BSCANID_VEC=false,C_NUM_BSCAN_MASTER_PORTS=0,C_TWO_PRIM_MODE=false,C_USER_SCAN_CHAIN=1,C_USE_EXT_BSCAN=false,C_XSDB_NUM_SLAVES=1,component_name=dbg_hub_CV}" *) 
  (* DEBUG_PORT_clk = "" *) 
  (* IS_DEBUG_CORE *) 
  dbg_hub_CV dbg_hub
       (.clk(clk_rx_sample_BUFG),
        .sl_iport0_o(sl_iport0_o_0),
        .sl_oport0_i(sl_oport0_i_0));
  OBUF eth_mdc_OBUF_inst
       (.I(eth_mdc_OBUF),
        .O(eth_mdc));
  IOBUF_UNIQ_BASE_ eth_mdio_IOBUF_inst
       (.I(eth_mdio_OBUF),
        .IO(eth_mdio),
        .O(eth_mdio_IBUF),
        .T(eth_mdio_TRI));
  OBUF eth_rst_n_OBUF_inst
       (.I(eth_rst_n_OBUF),
        .O(eth_rst_n));
  IBUF eth_rx_ctl_IBUF_inst
       (.I(eth_rx_ctl),
        .O(eth_rx_ctl_IBUF));
  IBUF \eth_rxd_IBUF[0]_inst 
       (.I(eth_rxd[0]),
        .O(eth_rxd_IBUF[0]));
  IBUF \eth_rxd_IBUF[1]_inst 
       (.I(eth_rxd[1]),
        .O(eth_rxd_IBUF[1]));
  IBUF \eth_rxd_IBUF[2]_inst 
       (.I(eth_rxd[2]),
        .O(eth_rxd_IBUF[2]));
  IBUF \eth_rxd_IBUF[3]_inst 
       (.I(eth_rxd[3]),
        .O(eth_rxd_IBUF[3]));
  OBUF eth_tx_ctl_OBUF_inst
       (.I(eth_tx_ctl_OBUF),
        .O(eth_tx_ctl));
  OBUF eth_txc_OBUF_inst
       (.I(eth_txc_OBUF),
        .O(eth_txc));
  OBUF \eth_txd_OBUF[0]_inst 
       (.I(eth_txd_OBUF[0]),
        .O(eth_txd[0]));
  OBUF \eth_txd_OBUF[1]_inst 
       (.I(eth_txd_OBUF[1]),
        .O(eth_txd[1]));
  OBUF \eth_txd_OBUF[2]_inst 
       (.I(eth_txd_OBUF[2]),
        .O(eth_txd[2]));
  OBUF \eth_txd_OBUF[3]_inst 
       (.I(eth_txd_OBUF[3]),
        .O(eth_txd[3]));
  LUT1 #(
    .INIT(2'h1)) 
    i_365
       (.I0(clk_rx_sample_BUFG),
        .O(NLW_i_365_O_UNCONNECTED));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  (* OPT_INSERTED *) 
  (* OPT_MODIFIED = "MLO" *) 
  IBUF sys_clk_IBUF_inst
       (.I(sys_clk),
        .O(sys_clk_IBUF));
  IBUF sys_rst_n_IBUF_inst
       (.I(sys_rst_n),
        .O(eth_rst_n_OBUF));
  IBUF touch_key_IBUF_inst
       (.I(touch_key),
        .O(touch_key_IBUF));
  arp u_arp
       (.CLK(clk_rx_sample_BUFG),
        .D(arp_tx_en),
        .Q(gmii_rxd),
        .arp_rx_done(arp_rx_done),
        .arp_rx_type(arp_rx_type),
        .arp_tx_type(arp_tx_type),
        .cur_pos(\u_rgmii_tx/cur_pos ),
        .eth_rst_n_OBUF(eth_rst_n_OBUF),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_en_reg(u_arp_n_4),
        .gmii_tx_en_reg_0(u_arp_n_7),
        .\gmii_txd_reg[4] (u_arp_n_11),
        .\gmii_txd_reg[5] (u_arp_n_10),
        .\gmii_txd_reg[6] (u_arp_n_9),
        .\gmii_txd_reg[7] (u_arp_n_8),
        .\phy_speed_delay_reg[0][1]_0 (phy_speed),
        .\phy_speed_delay_reg[1][1]_0 (led_OBUF),
        .reset(u_arp_n_3),
        .\u_ila_0_cnt[0] (\u_ila_0_cnt[0] ),
        .\u_ila_0_cnt[1] (\u_ila_0_cnt[1] ),
        .\u_ila_0_cnt[2] (\u_ila_0_cnt[2] ),
        .\u_ila_0_cnt[3] (\u_ila_0_cnt[3] ),
        .\u_ila_0_cnt[4] (\u_ila_0_cnt[4] ),
        .\u_ila_0_cur_state[0] (\u_ila_0_cur_state[0] ),
        .\u_ila_0_cur_state[1] (\u_ila_0_cur_state[1] ),
        .\u_ila_0_cur_state[2] (\u_ila_0_cur_state[2] ),
        .\u_ila_0_cur_state[3] (\u_ila_0_cur_state[3] ),
        .\u_ila_0_cur_state[4] (\u_ila_0_cur_state[4] ),
        .u_ila_0_error_en(u_ila_0_error_en),
        .\u_ila_0_next_state[0] (\u_ila_0_next_state[0] ),
        .\u_ila_0_next_state[1] (\u_ila_0_next_state[1] ),
        .\u_ila_0_next_state[2] (\u_ila_0_next_state[2] ),
        .\u_ila_0_next_state[3] (\u_ila_0_next_state[3] ),
        .\u_ila_0_next_state[4] (\u_ila_0_next_state[4] ),
        .u_ila_0_skip_en(u_ila_0_skip_en),
        .\u_ila_0_src_ip_t[0] (\u_ila_0_src_ip_t[0] ),
        .\u_ila_0_src_ip_t[10] (\u_ila_0_src_ip_t[10] ),
        .\u_ila_0_src_ip_t[11] (\u_ila_0_src_ip_t[11] ),
        .\u_ila_0_src_ip_t[12] (\u_ila_0_src_ip_t[12] ),
        .\u_ila_0_src_ip_t[13] (\u_ila_0_src_ip_t[13] ),
        .\u_ila_0_src_ip_t[14] (\u_ila_0_src_ip_t[14] ),
        .\u_ila_0_src_ip_t[15] (\u_ila_0_src_ip_t[15] ),
        .\u_ila_0_src_ip_t[16] (\u_ila_0_src_ip_t[16] ),
        .\u_ila_0_src_ip_t[17] (\u_ila_0_src_ip_t[17] ),
        .\u_ila_0_src_ip_t[18] (\u_ila_0_src_ip_t[18] ),
        .\u_ila_0_src_ip_t[19] (\u_ila_0_src_ip_t[19] ),
        .\u_ila_0_src_ip_t[1] (\u_ila_0_src_ip_t[1] ),
        .\u_ila_0_src_ip_t[20] (\u_ila_0_src_ip_t[20] ),
        .\u_ila_0_src_ip_t[21] (\u_ila_0_src_ip_t[21] ),
        .\u_ila_0_src_ip_t[22] (\u_ila_0_src_ip_t[22] ),
        .\u_ila_0_src_ip_t[23] (\u_ila_0_src_ip_t[23] ),
        .\u_ila_0_src_ip_t[24] (\u_ila_0_src_ip_t[24] ),
        .\u_ila_0_src_ip_t[25] (\u_ila_0_src_ip_t[25] ),
        .\u_ila_0_src_ip_t[26] (\u_ila_0_src_ip_t[26] ),
        .\u_ila_0_src_ip_t[27] (\u_ila_0_src_ip_t[27] ),
        .\u_ila_0_src_ip_t[28] (\u_ila_0_src_ip_t[28] ),
        .\u_ila_0_src_ip_t[29] (\u_ila_0_src_ip_t[29] ),
        .\u_ila_0_src_ip_t[2] (\u_ila_0_src_ip_t[2] ),
        .\u_ila_0_src_ip_t[30] (\u_ila_0_src_ip_t[30] ),
        .\u_ila_0_src_ip_t[31] (\u_ila_0_src_ip_t[31] ),
        .\u_ila_0_src_ip_t[3] (\u_ila_0_src_ip_t[3] ),
        .\u_ila_0_src_ip_t[4] (\u_ila_0_src_ip_t[4] ),
        .\u_ila_0_src_ip_t[5] (\u_ila_0_src_ip_t[5] ),
        .\u_ila_0_src_ip_t[6] (\u_ila_0_src_ip_t[6] ),
        .\u_ila_0_src_ip_t[7] (\u_ila_0_src_ip_t[7] ),
        .\u_ila_0_src_ip_t[8] (\u_ila_0_src_ip_t[8] ),
        .\u_ila_0_src_ip_t[9] (\u_ila_0_src_ip_t[9] ),
        .\u_ila_0_src_mac_t[0] (\u_ila_0_src_mac_t[0] ),
        .\u_ila_0_src_mac_t[10] (\u_ila_0_src_mac_t[10] ),
        .\u_ila_0_src_mac_t[11] (\u_ila_0_src_mac_t[11] ),
        .\u_ila_0_src_mac_t[12] (\u_ila_0_src_mac_t[12] ),
        .\u_ila_0_src_mac_t[13] (\u_ila_0_src_mac_t[13] ),
        .\u_ila_0_src_mac_t[14] (\u_ila_0_src_mac_t[14] ),
        .\u_ila_0_src_mac_t[15] (\u_ila_0_src_mac_t[15] ),
        .\u_ila_0_src_mac_t[16] (\u_ila_0_src_mac_t[16] ),
        .\u_ila_0_src_mac_t[17] (\u_ila_0_src_mac_t[17] ),
        .\u_ila_0_src_mac_t[18] (\u_ila_0_src_mac_t[18] ),
        .\u_ila_0_src_mac_t[19] (\u_ila_0_src_mac_t[19] ),
        .\u_ila_0_src_mac_t[1] (\u_ila_0_src_mac_t[1] ),
        .\u_ila_0_src_mac_t[20] (\u_ila_0_src_mac_t[20] ),
        .\u_ila_0_src_mac_t[21] (\u_ila_0_src_mac_t[21] ),
        .\u_ila_0_src_mac_t[22] (\u_ila_0_src_mac_t[22] ),
        .\u_ila_0_src_mac_t[23] (\u_ila_0_src_mac_t[23] ),
        .\u_ila_0_src_mac_t[24] (\u_ila_0_src_mac_t[24] ),
        .\u_ila_0_src_mac_t[25] (\u_ila_0_src_mac_t[25] ),
        .\u_ila_0_src_mac_t[26] (\u_ila_0_src_mac_t[26] ),
        .\u_ila_0_src_mac_t[27] (\u_ila_0_src_mac_t[27] ),
        .\u_ila_0_src_mac_t[28] (\u_ila_0_src_mac_t[28] ),
        .\u_ila_0_src_mac_t[29] (\u_ila_0_src_mac_t[29] ),
        .\u_ila_0_src_mac_t[2] (\u_ila_0_src_mac_t[2] ),
        .\u_ila_0_src_mac_t[30] (\u_ila_0_src_mac_t[30] ),
        .\u_ila_0_src_mac_t[31] (\u_ila_0_src_mac_t[31] ),
        .\u_ila_0_src_mac_t[32] (\u_ila_0_src_mac_t[32] ),
        .\u_ila_0_src_mac_t[33] (\u_ila_0_src_mac_t[33] ),
        .\u_ila_0_src_mac_t[34] (\u_ila_0_src_mac_t[34] ),
        .\u_ila_0_src_mac_t[35] (\u_ila_0_src_mac_t[35] ),
        .\u_ila_0_src_mac_t[36] (\u_ila_0_src_mac_t[36] ),
        .\u_ila_0_src_mac_t[37] (\u_ila_0_src_mac_t[37] ),
        .\u_ila_0_src_mac_t[38] (\u_ila_0_src_mac_t[38] ),
        .\u_ila_0_src_mac_t[39] (\u_ila_0_src_mac_t[39] ),
        .\u_ila_0_src_mac_t[3] (\u_ila_0_src_mac_t[3] ),
        .\u_ila_0_src_mac_t[40] (\u_ila_0_src_mac_t[40] ),
        .\u_ila_0_src_mac_t[41] (\u_ila_0_src_mac_t[41] ),
        .\u_ila_0_src_mac_t[42] (\u_ila_0_src_mac_t[42] ),
        .\u_ila_0_src_mac_t[43] (\u_ila_0_src_mac_t[43] ),
        .\u_ila_0_src_mac_t[44] (\u_ila_0_src_mac_t[44] ),
        .\u_ila_0_src_mac_t[45] (\u_ila_0_src_mac_t[45] ),
        .\u_ila_0_src_mac_t[46] (\u_ila_0_src_mac_t[46] ),
        .\u_ila_0_src_mac_t[47] (\u_ila_0_src_mac_t[47] ),
        .\u_ila_0_src_mac_t[4] (\u_ila_0_src_mac_t[4] ),
        .\u_ila_0_src_mac_t[5] (\u_ila_0_src_mac_t[5] ),
        .\u_ila_0_src_mac_t[6] (\u_ila_0_src_mac_t[6] ),
        .\u_ila_0_src_mac_t[7] (\u_ila_0_src_mac_t[7] ),
        .\u_ila_0_src_mac_t[8] (\u_ila_0_src_mac_t[8] ),
        .\u_ila_0_src_mac_t[9] (\u_ila_0_src_mac_t[9] ));
  arp_ctrl u_arp_ctrl
       (.CLK(clk_rx_sample_BUFG),
        .D(arp_tx_en),
        .arp_rx_done(arp_rx_done),
        .arp_rx_type(arp_rx_type),
        .arp_tx_type(arp_tx_type),
        .reset(u_arp_n_3),
        .\touch_key_delay_reg[0]_0 (touch_key_IBUF));
  (* IMPORTED_FROM = "c:/Users/LYG/Desktop/testV/ADP_ARP/ADP_ARP.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  clk_wiz_0 u_clk_wiz_0
       (.clk_in1(sys_clk_IBUF),
        .clk_out1(clk_200m),
        .reset(u_arp_n_3));
  (* IMPORTED_FROM = "c:/Users/LYG/Desktop/testV/ADP_ARP/ADP_ARP.gen/sources_1/ip/clk_wiz_1_1/clk_wiz_1.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  clk_wiz_1 u_clk_wiz_1
       (.clk_in1(eth_rxc),
        .eth_rxc_sample(eth_rxc_sample_out),
        .locked(clk_wiz_1_locked),
        .reset(u_arp_n_3));
  gmii2rgmii u_gmii2rgmii
       (.Q(gmii_rxd),
        .cur_pos(\u_rgmii_tx/cur_pos ),
        .cur_pos_reg(u_arp_n_4),
        .eth_rx_ctl_IBUF(eth_rx_ctl_IBUF),
        .eth_rxc_sample(eth_rxc_sample_out),
        .eth_rxd_IBUF(eth_rxd_IBUF),
        .eth_tx_ctl_OBUF(eth_tx_ctl_OBUF),
        .eth_txc_OBUF(eth_txc_OBUF),
        .eth_txd_OBUF(eth_txd_OBUF),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_tx_en(gmii_tx_en),
        .locked(clk_wiz_1_locked),
        .reset(u_arp_n_3),
        .\rgmii_txd_r_reg[0] (u_arp_n_7),
        .\rgmii_txd_r_reg[0]_0 (u_arp_n_11),
        .\rgmii_txd_r_reg[1] (u_arp_n_10),
        .\rgmii_txd_r_reg[2] (u_arp_n_9),
        .\rgmii_txd_r_reg[3] (u_arp_n_8));
  (* DEBUG_CORE_INFO = "u_ila_0,labtools_ila_v6_00_a,{ALL_PROBE_SAME_MU=true,ALL_PROBE_SAME_MU_CNT=1,C_ADV_TRIGGER=false,C_DATA_DEPTH=2048,C_EN_STRG_QUAL=false,C_INPUT_PIPE_STAGES=0,C_NUM_OF_PROBES=9,C_PROBE0_TYPE=0,C_PROBE0_WIDTH=5,C_PROBE1_TYPE=0,C_PROBE1_WIDTH=5,C_PROBE2_TYPE=0,C_PROBE2_WIDTH=8,C_PROBE3_TYPE=0,C_PROBE3_WIDTH=48,C_PROBE4_TYPE=0,C_PROBE4_WIDTH=32,C_PROBE5_TYPE=0,C_PROBE5_WIDTH=5,C_PROBE6_TYPE=0,C_PROBE6_WIDTH=1,C_PROBE7_TYPE=0,C_PROBE7_WIDTH=1,C_PROBE8_TYPE=0,C_PROBE8_WIDTH=1,C_TRIGIN_EN=0,C_TRIGOUT_EN=0,component_name=u_ila_0_CV}" *) 
  (* DEBUG_PORT_clk = "n:clk_rx_sample_BUFG" *) 
  (* DEBUG_PORT_probe0 = "n:u_arp/u_arp_rx/cnt[4],n:u_arp/u_arp_rx/cnt[3],n:u_arp/u_arp_rx/cnt[2],n:u_arp/u_arp_rx/cnt[1],n:u_arp/u_arp_rx/cnt[0]" *) 
  (* DEBUG_PORT_probe1 = "n:u_arp/u_arp_rx/cur_state[4],n:u_arp/u_arp_rx/cur_state[3],n:u_arp/u_arp_rx/cur_state[2],n:u_arp/u_arp_rx/cur_state[1],n:u_arp/u_arp_rx/cur_state[0]" *) 
  (* DEBUG_PORT_probe2 = "n:u_arp/u_arp_rx/gmii_rxd[7],n:u_arp/u_arp_rx/gmii_rxd[6],n:u_arp/u_arp_rx/gmii_rxd[5],n:u_arp/u_arp_rx/gmii_rxd[4],n:u_arp/u_arp_rx/gmii_rxd[3],n:u_arp/u_arp_rx/gmii_rxd[2],n:u_arp/u_arp_rx/gmii_rxd[1],n:u_arp/u_arp_rx/gmii_rxd[0]" *) 
  (* DEBUG_PORT_probe3 = "n:u_arp/u_arp_rx/src_mac_t[47],n:u_arp/u_arp_rx/src_mac_t[46],n:u_arp/u_arp_rx/src_mac_t[45],n:u_arp/u_arp_rx/src_mac_t[44],n:u_arp/u_arp_rx/src_mac_t[43],n:u_arp/u_arp_rx/src_mac_t[42],n:u_arp/u_arp_rx/src_mac_t[41],n:u_arp/u_arp_rx/src_mac_t[40],n:u_arp/u_arp_rx/src_mac_t[39],n:u_arp/u_arp_rx/src_mac_t[38],n:u_arp/u_arp_rx/src_mac_t[37],n:u_arp/u_arp_rx/src_mac_t[36],n:u_arp/u_arp_rx/src_mac_t[35],n:u_arp/u_arp_rx/src_mac_t[34],n:u_arp/u_arp_rx/src_mac_t[33],n:u_arp/u_arp_rx/src_mac_t[32],n:u_arp/u_arp_rx/src_mac_t[31],n:u_arp/u_arp_rx/src_mac_t[30],n:u_arp/u_arp_rx/src_mac_t[29],n:u_arp/u_arp_rx/src_mac_t[28],n:u_arp/u_arp_rx/src_mac_t[27],n:u_arp/u_arp_rx/src_mac_t[26],n:u_arp/u_arp_rx/src_mac_t[25],n:u_arp/u_arp_rx/src_mac_t[24],n:u_arp/u_arp_rx/src_mac_t[23],n:u_arp/u_arp_rx/src_mac_t[22],n:u_arp/u_arp_rx/src_mac_t[21],n:u_arp/u_arp_rx/src_mac_t[20],n:u_arp/u_arp_rx/src_mac_t[19],n:u_arp/u_arp_rx/src_mac_t[18],n:u_arp/u_arp_rx/src_mac_t[17],n:u_arp/u_arp_rx/src_mac_t[16],n:u_arp/u_arp_rx/src_mac_t[15],n:u_arp/u_arp_rx/src_mac_t[14],n:u_arp/u_arp_rx/src_mac_t[13],n:u_arp/u_arp_rx/src_mac_t[12],n:u_arp/u_arp_rx/src_mac_t[11],n:u_arp/u_arp_rx/src_mac_t[10],n:u_arp/u_arp_rx/src_mac_t[9],n:u_arp/u_arp_rx/src_mac_t[8],n:u_arp/u_arp_rx/src_mac_t[7],n:u_arp/u_arp_rx/src_mac_t[6],n:u_arp/u_arp_rx/src_mac_t[5],n:u_arp/u_arp_rx/src_mac_t[4],n:u_arp/u_arp_rx/src_mac_t[3],n:u_arp/u_arp_rx/src_mac_t[2],n:u_arp/u_arp_rx/src_mac_t[1],n:u_arp/u_arp_rx/src_mac_t[0]" *) 
  (* DEBUG_PORT_probe4 = "n:u_arp/u_arp_rx/src_ip_t[31],n:u_arp/u_arp_rx/src_ip_t[30],n:u_arp/u_arp_rx/src_ip_t[29],n:u_arp/u_arp_rx/src_ip_t[28],n:u_arp/u_arp_rx/src_ip_t[27],n:u_arp/u_arp_rx/src_ip_t[26],n:u_arp/u_arp_rx/src_ip_t[25],n:u_arp/u_arp_rx/src_ip_t[24],n:u_arp/u_arp_rx/src_ip_t[23],n:u_arp/u_arp_rx/src_ip_t[22],n:u_arp/u_arp_rx/src_ip_t[21],n:u_arp/u_arp_rx/src_ip_t[20],n:u_arp/u_arp_rx/src_ip_t[19],n:u_arp/u_arp_rx/src_ip_t[18],n:u_arp/u_arp_rx/src_ip_t[17],n:u_arp/u_arp_rx/src_ip_t[16],n:u_arp/u_arp_rx/src_ip_t[15],n:u_arp/u_arp_rx/src_ip_t[14],n:u_arp/u_arp_rx/src_ip_t[13],n:u_arp/u_arp_rx/src_ip_t[12],n:u_arp/u_arp_rx/src_ip_t[11],n:u_arp/u_arp_rx/src_ip_t[10],n:u_arp/u_arp_rx/src_ip_t[9],n:u_arp/u_arp_rx/src_ip_t[8],n:u_arp/u_arp_rx/src_ip_t[7],n:u_arp/u_arp_rx/src_ip_t[6],n:u_arp/u_arp_rx/src_ip_t[5],n:u_arp/u_arp_rx/src_ip_t[4],n:u_arp/u_arp_rx/src_ip_t[3],n:u_arp/u_arp_rx/src_ip_t[2],n:u_arp/u_arp_rx/src_ip_t[1],n:u_arp/u_arp_rx/src_ip_t[0]" *) 
  (* DEBUG_PORT_probe5 = "n:u_arp/u_arp_rx/next_state[4],n:u_arp/u_arp_rx/next_state[3],n:u_arp/u_arp_rx/next_state[2],n:u_arp/u_arp_rx/next_state[1],n:u_arp/u_arp_rx/next_state[0]" *) 
  (* DEBUG_PORT_probe6 = "n:u_arp/u_arp_rx/error_en" *) 
  (* DEBUG_PORT_probe7 = "n:u_arp/u_arp_rx/gmii_rx_dv" *) 
  (* DEBUG_PORT_probe8 = "n:u_arp/u_arp_rx/skip_en" *) 
  (* IS_DEBUG_CORE *) 
  u_ila_0_CV u_ila_0
       (.SL_IPORT_I(sl_iport0_o_0),
        .SL_OPORT_O(sl_oport0_i_0),
        .clk(clk_rx_sample_BUFG),
        .probe0({\u_ila_0_cnt[0] ,\u_ila_0_cnt[1] ,\u_ila_0_cnt[2] ,\u_ila_0_cnt[3] ,\u_ila_0_cnt[4] }),
        .probe1({\u_ila_0_cur_state[0] ,\u_ila_0_cur_state[1] ,\u_ila_0_cur_state[2] ,\u_ila_0_cur_state[3] ,\u_ila_0_cur_state[4] }),
        .probe2({gmii_rxd[0],gmii_rxd[1],gmii_rxd[2],gmii_rxd[3],gmii_rxd[4],gmii_rxd[5],gmii_rxd[6],gmii_rxd[7]}),
        .probe3({\u_ila_0_src_mac_t[0] ,\u_ila_0_src_mac_t[1] ,\u_ila_0_src_mac_t[2] ,\u_ila_0_src_mac_t[3] ,\u_ila_0_src_mac_t[4] ,\u_ila_0_src_mac_t[5] ,\u_ila_0_src_mac_t[6] ,\u_ila_0_src_mac_t[7] ,\u_ila_0_src_mac_t[8] ,\u_ila_0_src_mac_t[9] ,\u_ila_0_src_mac_t[10] ,\u_ila_0_src_mac_t[11] ,\u_ila_0_src_mac_t[12] ,\u_ila_0_src_mac_t[13] ,\u_ila_0_src_mac_t[14] ,\u_ila_0_src_mac_t[15] ,\u_ila_0_src_mac_t[16] ,\u_ila_0_src_mac_t[17] ,\u_ila_0_src_mac_t[18] ,\u_ila_0_src_mac_t[19] ,\u_ila_0_src_mac_t[20] ,\u_ila_0_src_mac_t[21] ,\u_ila_0_src_mac_t[22] ,\u_ila_0_src_mac_t[23] ,\u_ila_0_src_mac_t[24] ,\u_ila_0_src_mac_t[25] ,\u_ila_0_src_mac_t[26] ,\u_ila_0_src_mac_t[27] ,\u_ila_0_src_mac_t[28] ,\u_ila_0_src_mac_t[29] ,\u_ila_0_src_mac_t[30] ,\u_ila_0_src_mac_t[31] ,\u_ila_0_src_mac_t[32] ,\u_ila_0_src_mac_t[33] ,\u_ila_0_src_mac_t[34] ,\u_ila_0_src_mac_t[35] ,\u_ila_0_src_mac_t[36] ,\u_ila_0_src_mac_t[37] ,\u_ila_0_src_mac_t[38] ,\u_ila_0_src_mac_t[39] ,\u_ila_0_src_mac_t[40] ,\u_ila_0_src_mac_t[41] ,\u_ila_0_src_mac_t[42] ,\u_ila_0_src_mac_t[43] ,\u_ila_0_src_mac_t[44] ,\u_ila_0_src_mac_t[45] ,\u_ila_0_src_mac_t[46] ,\u_ila_0_src_mac_t[47] }),
        .probe4({\u_ila_0_src_ip_t[0] ,\u_ila_0_src_ip_t[1] ,\u_ila_0_src_ip_t[2] ,\u_ila_0_src_ip_t[3] ,\u_ila_0_src_ip_t[4] ,\u_ila_0_src_ip_t[5] ,\u_ila_0_src_ip_t[6] ,\u_ila_0_src_ip_t[7] ,\u_ila_0_src_ip_t[8] ,\u_ila_0_src_ip_t[9] ,\u_ila_0_src_ip_t[10] ,\u_ila_0_src_ip_t[11] ,\u_ila_0_src_ip_t[12] ,\u_ila_0_src_ip_t[13] ,\u_ila_0_src_ip_t[14] ,\u_ila_0_src_ip_t[15] ,\u_ila_0_src_ip_t[16] ,\u_ila_0_src_ip_t[17] ,\u_ila_0_src_ip_t[18] ,\u_ila_0_src_ip_t[19] ,\u_ila_0_src_ip_t[20] ,\u_ila_0_src_ip_t[21] ,\u_ila_0_src_ip_t[22] ,\u_ila_0_src_ip_t[23] ,\u_ila_0_src_ip_t[24] ,\u_ila_0_src_ip_t[25] ,\u_ila_0_src_ip_t[26] ,\u_ila_0_src_ip_t[27] ,\u_ila_0_src_ip_t[28] ,\u_ila_0_src_ip_t[29] ,\u_ila_0_src_ip_t[30] ,\u_ila_0_src_ip_t[31] }),
        .probe5({\u_ila_0_next_state[0] ,\u_ila_0_next_state[1] ,\u_ila_0_next_state[2] ,\u_ila_0_next_state[3] ,\u_ila_0_next_state[4] }),
        .probe6(u_ila_0_error_en),
        .probe7(gmii_rx_dv),
        .probe8(u_ila_0_skip_en));
  mdio_rw_test u_mdio_rw_test
       (.dri_clk(dri_clk),
        .dri_clk_reg(u_mdio_rw_test_n_1),
        .eth_mdc_OBUF(eth_mdc_OBUF),
        .eth_mdio_IBUF(eth_mdio_IBUF),
        .eth_mdio_OBUF(eth_mdio_OBUF),
        .eth_mdio_TRI(eth_mdio_TRI),
        .eth_rst_n_OBUF(eth_rst_n_OBUF),
        .\phy_speed_reg[1] (phy_speed),
        .reset(u_arp_n_3),
        .sys_clk(sys_clk_IBUF));
endmodule

module arp
   (arp_rx_done,
    arp_rx_type,
    gmii_tx_en,
    reset,
    gmii_tx_en_reg,
    \phy_speed_delay_reg[1][1]_0 ,
    gmii_tx_en_reg_0,
    \gmii_txd_reg[7] ,
    \gmii_txd_reg[6] ,
    \gmii_txd_reg[5] ,
    \gmii_txd_reg[4] ,
    CLK,
    eth_rst_n_OBUF,
    gmii_rx_dv,
    Q,
    cur_pos,
    D,
    arp_tx_type,
    \phy_speed_delay_reg[0][1]_0 ,
    \u_ila_0_cnt[0] ,
    \u_ila_0_cnt[1] ,
    \u_ila_0_cnt[2] ,
    \u_ila_0_cnt[3] ,
    \u_ila_0_cnt[4] ,
    \u_ila_0_cur_state[0] ,
    \u_ila_0_cur_state[1] ,
    \u_ila_0_cur_state[2] ,
    \u_ila_0_cur_state[3] ,
    \u_ila_0_cur_state[4] ,
    \u_ila_0_src_mac_t[0] ,
    \u_ila_0_src_mac_t[1] ,
    \u_ila_0_src_mac_t[2] ,
    \u_ila_0_src_mac_t[3] ,
    \u_ila_0_src_mac_t[4] ,
    \u_ila_0_src_mac_t[5] ,
    \u_ila_0_src_mac_t[6] ,
    \u_ila_0_src_mac_t[7] ,
    \u_ila_0_src_mac_t[8] ,
    \u_ila_0_src_mac_t[9] ,
    \u_ila_0_src_mac_t[10] ,
    \u_ila_0_src_mac_t[11] ,
    \u_ila_0_src_mac_t[12] ,
    \u_ila_0_src_mac_t[13] ,
    \u_ila_0_src_mac_t[14] ,
    \u_ila_0_src_mac_t[15] ,
    \u_ila_0_src_mac_t[16] ,
    \u_ila_0_src_mac_t[17] ,
    \u_ila_0_src_mac_t[18] ,
    \u_ila_0_src_mac_t[19] ,
    \u_ila_0_src_mac_t[20] ,
    \u_ila_0_src_mac_t[21] ,
    \u_ila_0_src_mac_t[22] ,
    \u_ila_0_src_mac_t[23] ,
    \u_ila_0_src_mac_t[24] ,
    \u_ila_0_src_mac_t[25] ,
    \u_ila_0_src_mac_t[26] ,
    \u_ila_0_src_mac_t[27] ,
    \u_ila_0_src_mac_t[28] ,
    \u_ila_0_src_mac_t[29] ,
    \u_ila_0_src_mac_t[30] ,
    \u_ila_0_src_mac_t[31] ,
    \u_ila_0_src_mac_t[32] ,
    \u_ila_0_src_mac_t[33] ,
    \u_ila_0_src_mac_t[34] ,
    \u_ila_0_src_mac_t[35] ,
    \u_ila_0_src_mac_t[36] ,
    \u_ila_0_src_mac_t[37] ,
    \u_ila_0_src_mac_t[38] ,
    \u_ila_0_src_mac_t[39] ,
    \u_ila_0_src_mac_t[40] ,
    \u_ila_0_src_mac_t[41] ,
    \u_ila_0_src_mac_t[42] ,
    \u_ila_0_src_mac_t[43] ,
    \u_ila_0_src_mac_t[44] ,
    \u_ila_0_src_mac_t[45] ,
    \u_ila_0_src_mac_t[46] ,
    \u_ila_0_src_mac_t[47] ,
    \u_ila_0_src_ip_t[0] ,
    \u_ila_0_src_ip_t[1] ,
    \u_ila_0_src_ip_t[2] ,
    \u_ila_0_src_ip_t[3] ,
    \u_ila_0_src_ip_t[4] ,
    \u_ila_0_src_ip_t[5] ,
    \u_ila_0_src_ip_t[6] ,
    \u_ila_0_src_ip_t[7] ,
    \u_ila_0_src_ip_t[8] ,
    \u_ila_0_src_ip_t[9] ,
    \u_ila_0_src_ip_t[10] ,
    \u_ila_0_src_ip_t[11] ,
    \u_ila_0_src_ip_t[12] ,
    \u_ila_0_src_ip_t[13] ,
    \u_ila_0_src_ip_t[14] ,
    \u_ila_0_src_ip_t[15] ,
    \u_ila_0_src_ip_t[16] ,
    \u_ila_0_src_ip_t[17] ,
    \u_ila_0_src_ip_t[18] ,
    \u_ila_0_src_ip_t[19] ,
    \u_ila_0_src_ip_t[20] ,
    \u_ila_0_src_ip_t[21] ,
    \u_ila_0_src_ip_t[22] ,
    \u_ila_0_src_ip_t[23] ,
    \u_ila_0_src_ip_t[24] ,
    \u_ila_0_src_ip_t[25] ,
    \u_ila_0_src_ip_t[26] ,
    \u_ila_0_src_ip_t[27] ,
    \u_ila_0_src_ip_t[28] ,
    \u_ila_0_src_ip_t[29] ,
    \u_ila_0_src_ip_t[30] ,
    \u_ila_0_src_ip_t[31] ,
    \u_ila_0_next_state[0] ,
    \u_ila_0_next_state[1] ,
    \u_ila_0_next_state[2] ,
    \u_ila_0_next_state[3] ,
    \u_ila_0_next_state[4] ,
    u_ila_0_error_en,
    u_ila_0_skip_en);
  output arp_rx_done;
  output arp_rx_type;
  output gmii_tx_en;
  output reset;
  output gmii_tx_en_reg;
  output [1:0]\phy_speed_delay_reg[1][1]_0 ;
  output gmii_tx_en_reg_0;
  output \gmii_txd_reg[7] ;
  output \gmii_txd_reg[6] ;
  output \gmii_txd_reg[5] ;
  output \gmii_txd_reg[4] ;
  input CLK;
  input eth_rst_n_OBUF;
  input gmii_rx_dv;
  input [7:0]Q;
  input cur_pos;
  input [0:0]D;
  input arp_tx_type;
  input [1:0]\phy_speed_delay_reg[0][1]_0 ;
  output \u_ila_0_cnt[0] ;
  output \u_ila_0_cnt[1] ;
  output \u_ila_0_cnt[2] ;
  output \u_ila_0_cnt[3] ;
  output \u_ila_0_cnt[4] ;
  output \u_ila_0_cur_state[0] ;
  output \u_ila_0_cur_state[1] ;
  output \u_ila_0_cur_state[2] ;
  output \u_ila_0_cur_state[3] ;
  output \u_ila_0_cur_state[4] ;
  output \u_ila_0_src_mac_t[0] ;
  output \u_ila_0_src_mac_t[1] ;
  output \u_ila_0_src_mac_t[2] ;
  output \u_ila_0_src_mac_t[3] ;
  output \u_ila_0_src_mac_t[4] ;
  output \u_ila_0_src_mac_t[5] ;
  output \u_ila_0_src_mac_t[6] ;
  output \u_ila_0_src_mac_t[7] ;
  output \u_ila_0_src_mac_t[8] ;
  output \u_ila_0_src_mac_t[9] ;
  output \u_ila_0_src_mac_t[10] ;
  output \u_ila_0_src_mac_t[11] ;
  output \u_ila_0_src_mac_t[12] ;
  output \u_ila_0_src_mac_t[13] ;
  output \u_ila_0_src_mac_t[14] ;
  output \u_ila_0_src_mac_t[15] ;
  output \u_ila_0_src_mac_t[16] ;
  output \u_ila_0_src_mac_t[17] ;
  output \u_ila_0_src_mac_t[18] ;
  output \u_ila_0_src_mac_t[19] ;
  output \u_ila_0_src_mac_t[20] ;
  output \u_ila_0_src_mac_t[21] ;
  output \u_ila_0_src_mac_t[22] ;
  output \u_ila_0_src_mac_t[23] ;
  output \u_ila_0_src_mac_t[24] ;
  output \u_ila_0_src_mac_t[25] ;
  output \u_ila_0_src_mac_t[26] ;
  output \u_ila_0_src_mac_t[27] ;
  output \u_ila_0_src_mac_t[28] ;
  output \u_ila_0_src_mac_t[29] ;
  output \u_ila_0_src_mac_t[30] ;
  output \u_ila_0_src_mac_t[31] ;
  output \u_ila_0_src_mac_t[32] ;
  output \u_ila_0_src_mac_t[33] ;
  output \u_ila_0_src_mac_t[34] ;
  output \u_ila_0_src_mac_t[35] ;
  output \u_ila_0_src_mac_t[36] ;
  output \u_ila_0_src_mac_t[37] ;
  output \u_ila_0_src_mac_t[38] ;
  output \u_ila_0_src_mac_t[39] ;
  output \u_ila_0_src_mac_t[40] ;
  output \u_ila_0_src_mac_t[41] ;
  output \u_ila_0_src_mac_t[42] ;
  output \u_ila_0_src_mac_t[43] ;
  output \u_ila_0_src_mac_t[44] ;
  output \u_ila_0_src_mac_t[45] ;
  output \u_ila_0_src_mac_t[46] ;
  output \u_ila_0_src_mac_t[47] ;
  output \u_ila_0_src_ip_t[0] ;
  output \u_ila_0_src_ip_t[1] ;
  output \u_ila_0_src_ip_t[2] ;
  output \u_ila_0_src_ip_t[3] ;
  output \u_ila_0_src_ip_t[4] ;
  output \u_ila_0_src_ip_t[5] ;
  output \u_ila_0_src_ip_t[6] ;
  output \u_ila_0_src_ip_t[7] ;
  output \u_ila_0_src_ip_t[8] ;
  output \u_ila_0_src_ip_t[9] ;
  output \u_ila_0_src_ip_t[10] ;
  output \u_ila_0_src_ip_t[11] ;
  output \u_ila_0_src_ip_t[12] ;
  output \u_ila_0_src_ip_t[13] ;
  output \u_ila_0_src_ip_t[14] ;
  output \u_ila_0_src_ip_t[15] ;
  output \u_ila_0_src_ip_t[16] ;
  output \u_ila_0_src_ip_t[17] ;
  output \u_ila_0_src_ip_t[18] ;
  output \u_ila_0_src_ip_t[19] ;
  output \u_ila_0_src_ip_t[20] ;
  output \u_ila_0_src_ip_t[21] ;
  output \u_ila_0_src_ip_t[22] ;
  output \u_ila_0_src_ip_t[23] ;
  output \u_ila_0_src_ip_t[24] ;
  output \u_ila_0_src_ip_t[25] ;
  output \u_ila_0_src_ip_t[26] ;
  output \u_ila_0_src_ip_t[27] ;
  output \u_ila_0_src_ip_t[28] ;
  output \u_ila_0_src_ip_t[29] ;
  output \u_ila_0_src_ip_t[30] ;
  output \u_ila_0_src_ip_t[31] ;
  output \u_ila_0_next_state[0] ;
  output \u_ila_0_next_state[1] ;
  output \u_ila_0_next_state[2] ;
  output \u_ila_0_next_state[3] ;
  output \u_ila_0_next_state[4] ;
  output u_ila_0_error_en;
  output u_ila_0_skip_en;

  wire CLK;
  wire [0:0]D;
  wire [7:0]Q;
  wire arp_rx_done;
  wire arp_rx_type;
  wire arp_tx_type;
  wire [31:0]crc_data;
  wire cur_pos;
  wire [31:0]des_ip;
  wire [47:0]des_mac;
  wire eth_rst_n_OBUF;
  wire gmii_rx_dv;
  wire gmii_tx_en;
  wire gmii_tx_en_reg;
  wire gmii_tx_en_reg_0;
  wire [7:0]gmii_txd;
  wire \gmii_txd_reg[4] ;
  wire \gmii_txd_reg[5] ;
  wire \gmii_txd_reg[6] ;
  wire \gmii_txd_reg[7] ;
  wire [6:1]p_1_in__0;
  wire [1:0]\phy_speed_delay_reg[0] ;
  wire [1:0]\phy_speed_delay_reg[0][1]_0 ;
  wire [1:0]\phy_speed_delay_reg[1][1]_0 ;
  wire reset;
  wire u_arp_tx_n_2;
  wire u_arp_tx_n_20;
  wire u_arp_tx_n_21;
  wire u_arp_tx_n_22;
  wire u_arp_tx_n_23;
  wire u_arp_tx_n_24;
  wire u_arp_tx_n_25;
  wire u_arp_tx_n_26;
  wire u_arp_tx_n_27;
  wire u_arp_tx_n_28;
  wire u_arp_tx_n_29;
  wire u_arp_tx_n_3;
  wire u_arp_tx_n_30;
  wire u_arp_tx_n_31;
  wire u_arp_tx_n_32;
  wire u_arp_tx_n_33;
  wire u_arp_tx_n_34;
  wire u_arp_tx_n_35;
  wire u_arp_tx_n_36;
  wire u_arp_tx_n_37;
  wire u_arp_tx_n_38;
  wire u_arp_tx_n_39;
  wire u_arp_tx_n_4;
  wire u_arp_tx_n_6;
  wire u_crc32_d8_n_31;
  wire u_crc32_d8_n_32;
  wire u_crc32_d8_n_33;
  wire u_crc32_d8_n_34;
  wire u_crc32_d8_n_35;
  wire u_crc32_d8_n_36;
  wire \u_ila_0_cnt[0] ;
  wire \u_ila_0_cnt[1] ;
  wire \u_ila_0_cnt[2] ;
  wire \u_ila_0_cnt[3] ;
  wire \u_ila_0_cnt[4] ;
  wire \u_ila_0_cur_state[0] ;
  wire \u_ila_0_cur_state[1] ;
  wire \u_ila_0_cur_state[2] ;
  wire \u_ila_0_cur_state[3] ;
  wire \u_ila_0_cur_state[4] ;
  wire u_ila_0_error_en;
  wire \u_ila_0_next_state[0] ;
  wire \u_ila_0_next_state[1] ;
  wire \u_ila_0_next_state[2] ;
  wire \u_ila_0_next_state[3] ;
  wire \u_ila_0_next_state[4] ;
  wire u_ila_0_skip_en;
  wire \u_ila_0_src_ip_t[0] ;
  wire \u_ila_0_src_ip_t[10] ;
  wire \u_ila_0_src_ip_t[11] ;
  wire \u_ila_0_src_ip_t[12] ;
  wire \u_ila_0_src_ip_t[13] ;
  wire \u_ila_0_src_ip_t[14] ;
  wire \u_ila_0_src_ip_t[15] ;
  wire \u_ila_0_src_ip_t[16] ;
  wire \u_ila_0_src_ip_t[17] ;
  wire \u_ila_0_src_ip_t[18] ;
  wire \u_ila_0_src_ip_t[19] ;
  wire \u_ila_0_src_ip_t[1] ;
  wire \u_ila_0_src_ip_t[20] ;
  wire \u_ila_0_src_ip_t[21] ;
  wire \u_ila_0_src_ip_t[22] ;
  wire \u_ila_0_src_ip_t[23] ;
  wire \u_ila_0_src_ip_t[24] ;
  wire \u_ila_0_src_ip_t[25] ;
  wire \u_ila_0_src_ip_t[26] ;
  wire \u_ila_0_src_ip_t[27] ;
  wire \u_ila_0_src_ip_t[28] ;
  wire \u_ila_0_src_ip_t[29] ;
  wire \u_ila_0_src_ip_t[2] ;
  wire \u_ila_0_src_ip_t[30] ;
  wire \u_ila_0_src_ip_t[31] ;
  wire \u_ila_0_src_ip_t[3] ;
  wire \u_ila_0_src_ip_t[4] ;
  wire \u_ila_0_src_ip_t[5] ;
  wire \u_ila_0_src_ip_t[6] ;
  wire \u_ila_0_src_ip_t[7] ;
  wire \u_ila_0_src_ip_t[8] ;
  wire \u_ila_0_src_ip_t[9] ;
  wire \u_ila_0_src_mac_t[0] ;
  wire \u_ila_0_src_mac_t[10] ;
  wire \u_ila_0_src_mac_t[11] ;
  wire \u_ila_0_src_mac_t[12] ;
  wire \u_ila_0_src_mac_t[13] ;
  wire \u_ila_0_src_mac_t[14] ;
  wire \u_ila_0_src_mac_t[15] ;
  wire \u_ila_0_src_mac_t[16] ;
  wire \u_ila_0_src_mac_t[17] ;
  wire \u_ila_0_src_mac_t[18] ;
  wire \u_ila_0_src_mac_t[19] ;
  wire \u_ila_0_src_mac_t[1] ;
  wire \u_ila_0_src_mac_t[20] ;
  wire \u_ila_0_src_mac_t[21] ;
  wire \u_ila_0_src_mac_t[22] ;
  wire \u_ila_0_src_mac_t[23] ;
  wire \u_ila_0_src_mac_t[24] ;
  wire \u_ila_0_src_mac_t[25] ;
  wire \u_ila_0_src_mac_t[26] ;
  wire \u_ila_0_src_mac_t[27] ;
  wire \u_ila_0_src_mac_t[28] ;
  wire \u_ila_0_src_mac_t[29] ;
  wire \u_ila_0_src_mac_t[2] ;
  wire \u_ila_0_src_mac_t[30] ;
  wire \u_ila_0_src_mac_t[31] ;
  wire \u_ila_0_src_mac_t[32] ;
  wire \u_ila_0_src_mac_t[33] ;
  wire \u_ila_0_src_mac_t[34] ;
  wire \u_ila_0_src_mac_t[35] ;
  wire \u_ila_0_src_mac_t[36] ;
  wire \u_ila_0_src_mac_t[37] ;
  wire \u_ila_0_src_mac_t[38] ;
  wire \u_ila_0_src_mac_t[39] ;
  wire \u_ila_0_src_mac_t[3] ;
  wire \u_ila_0_src_mac_t[40] ;
  wire \u_ila_0_src_mac_t[41] ;
  wire \u_ila_0_src_mac_t[42] ;
  wire \u_ila_0_src_mac_t[43] ;
  wire \u_ila_0_src_mac_t[44] ;
  wire \u_ila_0_src_mac_t[45] ;
  wire \u_ila_0_src_mac_t[46] ;
  wire \u_ila_0_src_mac_t[47] ;
  wire \u_ila_0_src_mac_t[4] ;
  wire \u_ila_0_src_mac_t[5] ;
  wire \u_ila_0_src_mac_t[6] ;
  wire \u_ila_0_src_mac_t[7] ;
  wire \u_ila_0_src_mac_t[8] ;
  wire \u_ila_0_src_mac_t[9] ;

  FDCE #(
    .INIT(1'b0)) 
    \phy_speed_delay_reg[0][0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\phy_speed_delay_reg[0][1]_0 [0]),
        .Q(\phy_speed_delay_reg[0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \phy_speed_delay_reg[0][1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\phy_speed_delay_reg[0][1]_0 [1]),
        .Q(\phy_speed_delay_reg[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \phy_speed_delay_reg[1][0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\phy_speed_delay_reg[0] [0]),
        .Q(\phy_speed_delay_reg[1][1]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \phy_speed_delay_reg[1][1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\phy_speed_delay_reg[0] [1]),
        .Q(\phy_speed_delay_reg[1][1]_0 [1]));
  (* BOARD_IP = "-1062731510" *) 
  (* BOARD_MAC = "48'b000000000001000100100010001100110100010001010101" *) 
  (* ETH_TYPE = "16'b0000100000000110" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* st_arp_data = "5'b01000" *) 
  (* st_eth_head = "5'b00100" *) 
  (* st_idle = "5'b00001" *) 
  (* st_preamble = "5'b00010" *) 
  (* st_rx_end = "5'b10000" *) 
  arp_rx u_arp_rx
       (.arp_rx_done(arp_rx_done),
        .arp_rx_type(arp_rx_type),
        .clk(CLK),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rxd(Q),
        .rst_n(eth_rst_n_OBUF),
        .src_ip(des_ip),
        .src_mac(des_mac),
        .\u_ila_0_cnt[0] (\u_ila_0_cnt[0] ),
        .\u_ila_0_cnt[1] (\u_ila_0_cnt[1] ),
        .\u_ila_0_cnt[2] (\u_ila_0_cnt[2] ),
        .\u_ila_0_cnt[3] (\u_ila_0_cnt[3] ),
        .\u_ila_0_cnt[4] (\u_ila_0_cnt[4] ),
        .\u_ila_0_cur_state[0] (\u_ila_0_cur_state[0] ),
        .\u_ila_0_cur_state[1] (\u_ila_0_cur_state[1] ),
        .\u_ila_0_cur_state[2] (\u_ila_0_cur_state[2] ),
        .\u_ila_0_cur_state[3] (\u_ila_0_cur_state[3] ),
        .\u_ila_0_cur_state[4] (\u_ila_0_cur_state[4] ),
        .u_ila_0_error_en(u_ila_0_error_en),
        .\u_ila_0_next_state[0] (\u_ila_0_next_state[0] ),
        .\u_ila_0_next_state[1] (\u_ila_0_next_state[1] ),
        .\u_ila_0_next_state[2] (\u_ila_0_next_state[2] ),
        .\u_ila_0_next_state[3] (\u_ila_0_next_state[3] ),
        .\u_ila_0_next_state[4] (\u_ila_0_next_state[4] ),
        .u_ila_0_skip_en(u_ila_0_skip_en),
        .\u_ila_0_src_ip_t[0] (\u_ila_0_src_ip_t[0] ),
        .\u_ila_0_src_ip_t[10] (\u_ila_0_src_ip_t[10] ),
        .\u_ila_0_src_ip_t[11] (\u_ila_0_src_ip_t[11] ),
        .\u_ila_0_src_ip_t[12] (\u_ila_0_src_ip_t[12] ),
        .\u_ila_0_src_ip_t[13] (\u_ila_0_src_ip_t[13] ),
        .\u_ila_0_src_ip_t[14] (\u_ila_0_src_ip_t[14] ),
        .\u_ila_0_src_ip_t[15] (\u_ila_0_src_ip_t[15] ),
        .\u_ila_0_src_ip_t[16] (\u_ila_0_src_ip_t[16] ),
        .\u_ila_0_src_ip_t[17] (\u_ila_0_src_ip_t[17] ),
        .\u_ila_0_src_ip_t[18] (\u_ila_0_src_ip_t[18] ),
        .\u_ila_0_src_ip_t[19] (\u_ila_0_src_ip_t[19] ),
        .\u_ila_0_src_ip_t[1] (\u_ila_0_src_ip_t[1] ),
        .\u_ila_0_src_ip_t[20] (\u_ila_0_src_ip_t[20] ),
        .\u_ila_0_src_ip_t[21] (\u_ila_0_src_ip_t[21] ),
        .\u_ila_0_src_ip_t[22] (\u_ila_0_src_ip_t[22] ),
        .\u_ila_0_src_ip_t[23] (\u_ila_0_src_ip_t[23] ),
        .\u_ila_0_src_ip_t[24] (\u_ila_0_src_ip_t[24] ),
        .\u_ila_0_src_ip_t[25] (\u_ila_0_src_ip_t[25] ),
        .\u_ila_0_src_ip_t[26] (\u_ila_0_src_ip_t[26] ),
        .\u_ila_0_src_ip_t[27] (\u_ila_0_src_ip_t[27] ),
        .\u_ila_0_src_ip_t[28] (\u_ila_0_src_ip_t[28] ),
        .\u_ila_0_src_ip_t[29] (\u_ila_0_src_ip_t[29] ),
        .\u_ila_0_src_ip_t[2] (\u_ila_0_src_ip_t[2] ),
        .\u_ila_0_src_ip_t[30] (\u_ila_0_src_ip_t[30] ),
        .\u_ila_0_src_ip_t[31] (\u_ila_0_src_ip_t[31] ),
        .\u_ila_0_src_ip_t[3] (\u_ila_0_src_ip_t[3] ),
        .\u_ila_0_src_ip_t[4] (\u_ila_0_src_ip_t[4] ),
        .\u_ila_0_src_ip_t[5] (\u_ila_0_src_ip_t[5] ),
        .\u_ila_0_src_ip_t[6] (\u_ila_0_src_ip_t[6] ),
        .\u_ila_0_src_ip_t[7] (\u_ila_0_src_ip_t[7] ),
        .\u_ila_0_src_ip_t[8] (\u_ila_0_src_ip_t[8] ),
        .\u_ila_0_src_ip_t[9] (\u_ila_0_src_ip_t[9] ),
        .\u_ila_0_src_mac_t[0] (\u_ila_0_src_mac_t[0] ),
        .\u_ila_0_src_mac_t[10] (\u_ila_0_src_mac_t[10] ),
        .\u_ila_0_src_mac_t[11] (\u_ila_0_src_mac_t[11] ),
        .\u_ila_0_src_mac_t[12] (\u_ila_0_src_mac_t[12] ),
        .\u_ila_0_src_mac_t[13] (\u_ila_0_src_mac_t[13] ),
        .\u_ila_0_src_mac_t[14] (\u_ila_0_src_mac_t[14] ),
        .\u_ila_0_src_mac_t[15] (\u_ila_0_src_mac_t[15] ),
        .\u_ila_0_src_mac_t[16] (\u_ila_0_src_mac_t[16] ),
        .\u_ila_0_src_mac_t[17] (\u_ila_0_src_mac_t[17] ),
        .\u_ila_0_src_mac_t[18] (\u_ila_0_src_mac_t[18] ),
        .\u_ila_0_src_mac_t[19] (\u_ila_0_src_mac_t[19] ),
        .\u_ila_0_src_mac_t[1] (\u_ila_0_src_mac_t[1] ),
        .\u_ila_0_src_mac_t[20] (\u_ila_0_src_mac_t[20] ),
        .\u_ila_0_src_mac_t[21] (\u_ila_0_src_mac_t[21] ),
        .\u_ila_0_src_mac_t[22] (\u_ila_0_src_mac_t[22] ),
        .\u_ila_0_src_mac_t[23] (\u_ila_0_src_mac_t[23] ),
        .\u_ila_0_src_mac_t[24] (\u_ila_0_src_mac_t[24] ),
        .\u_ila_0_src_mac_t[25] (\u_ila_0_src_mac_t[25] ),
        .\u_ila_0_src_mac_t[26] (\u_ila_0_src_mac_t[26] ),
        .\u_ila_0_src_mac_t[27] (\u_ila_0_src_mac_t[27] ),
        .\u_ila_0_src_mac_t[28] (\u_ila_0_src_mac_t[28] ),
        .\u_ila_0_src_mac_t[29] (\u_ila_0_src_mac_t[29] ),
        .\u_ila_0_src_mac_t[2] (\u_ila_0_src_mac_t[2] ),
        .\u_ila_0_src_mac_t[30] (\u_ila_0_src_mac_t[30] ),
        .\u_ila_0_src_mac_t[31] (\u_ila_0_src_mac_t[31] ),
        .\u_ila_0_src_mac_t[32] (\u_ila_0_src_mac_t[32] ),
        .\u_ila_0_src_mac_t[33] (\u_ila_0_src_mac_t[33] ),
        .\u_ila_0_src_mac_t[34] (\u_ila_0_src_mac_t[34] ),
        .\u_ila_0_src_mac_t[35] (\u_ila_0_src_mac_t[35] ),
        .\u_ila_0_src_mac_t[36] (\u_ila_0_src_mac_t[36] ),
        .\u_ila_0_src_mac_t[37] (\u_ila_0_src_mac_t[37] ),
        .\u_ila_0_src_mac_t[38] (\u_ila_0_src_mac_t[38] ),
        .\u_ila_0_src_mac_t[39] (\u_ila_0_src_mac_t[39] ),
        .\u_ila_0_src_mac_t[3] (\u_ila_0_src_mac_t[3] ),
        .\u_ila_0_src_mac_t[40] (\u_ila_0_src_mac_t[40] ),
        .\u_ila_0_src_mac_t[41] (\u_ila_0_src_mac_t[41] ),
        .\u_ila_0_src_mac_t[42] (\u_ila_0_src_mac_t[42] ),
        .\u_ila_0_src_mac_t[43] (\u_ila_0_src_mac_t[43] ),
        .\u_ila_0_src_mac_t[44] (\u_ila_0_src_mac_t[44] ),
        .\u_ila_0_src_mac_t[45] (\u_ila_0_src_mac_t[45] ),
        .\u_ila_0_src_mac_t[46] (\u_ila_0_src_mac_t[46] ),
        .\u_ila_0_src_mac_t[47] (\u_ila_0_src_mac_t[47] ),
        .\u_ila_0_src_mac_t[4] (\u_ila_0_src_mac_t[4] ),
        .\u_ila_0_src_mac_t[5] (\u_ila_0_src_mac_t[5] ),
        .\u_ila_0_src_mac_t[6] (\u_ila_0_src_mac_t[6] ),
        .\u_ila_0_src_mac_t[7] (\u_ila_0_src_mac_t[7] ),
        .\u_ila_0_src_mac_t[8] (\u_ila_0_src_mac_t[8] ),
        .\u_ila_0_src_mac_t[9] (\u_ila_0_src_mac_t[9] ));
  arp_tx u_arp_tx
       (.CLK(CLK),
        .D({u_arp_tx_n_21,u_arp_tx_n_22,u_arp_tx_n_23,u_arp_tx_n_24,u_arp_tx_n_25,u_arp_tx_n_26,u_arp_tx_n_27,u_arp_tx_n_28,u_arp_tx_n_29,u_arp_tx_n_30,u_arp_tx_n_31,u_arp_tx_n_32,u_arp_tx_n_33,u_arp_tx_n_34,u_arp_tx_n_35,u_arp_tx_n_36,u_arp_tx_n_37}),
        .E(u_arp_tx_n_6),
        .Q({u_arp_tx_n_3,u_arp_tx_n_4}),
        .arp_tx_type(arp_tx_type),
        .\crc_data_reg[29] (u_crc32_d8_n_32),
        .\crc_data_reg[30] ({crc_data[31:20],crc_data[17:15],crc_data[13:0]}),
        .\crc_data_reg[7] (u_crc32_d8_n_36),
        .cur_pos(cur_pos),
        .eth_rst_n_OBUF(eth_rst_n_OBUF),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_en_reg_0(gmii_tx_en_reg),
        .gmii_tx_en_reg_1(gmii_tx_en_reg_0),
        .\gmii_txd_reg[0]_0 (u_arp_tx_n_20),
        .\gmii_txd_reg[2]_0 (u_arp_tx_n_39),
        .\gmii_txd_reg[2]_1 (u_crc32_d8_n_31),
        .\gmii_txd_reg[3]_0 (u_crc32_d8_n_33),
        .\gmii_txd_reg[4]_0 (\gmii_txd_reg[4] ),
        .\gmii_txd_reg[4]_1 (u_arp_tx_n_38),
        .\gmii_txd_reg[4]_2 (u_crc32_d8_n_34),
        .\gmii_txd_reg[5]_0 (\gmii_txd_reg[5] ),
        .\gmii_txd_reg[5]_1 (u_crc32_d8_n_35),
        .\gmii_txd_reg[6]_0 (\gmii_txd_reg[6] ),
        .\gmii_txd_reg[7]_0 (\gmii_txd_reg[7] ),
        .\gmii_txd_reg[7]_1 (gmii_txd),
        .p_1_in__0({p_1_in__0[6],p_1_in__0[1]}),
        .src_ip(des_ip),
        .src_mac(des_mac),
        .sys_rst_n(reset),
        .tx_done_reg_0(u_arp_tx_n_2),
        .\tx_en_delay_reg[0]_0 (D));
  crc32_d8 u_crc32_d8
       (.CLK(CLK),
        .D({u_arp_tx_n_21,u_arp_tx_n_22,u_arp_tx_n_23,u_arp_tx_n_24,u_arp_tx_n_25,u_arp_tx_n_26,u_arp_tx_n_27,u_arp_tx_n_28,u_arp_tx_n_29,u_arp_tx_n_30,u_arp_tx_n_31,u_arp_tx_n_32,u_arp_tx_n_33,u_arp_tx_n_34,u_arp_tx_n_35,u_arp_tx_n_36,u_arp_tx_n_37}),
        .E(u_arp_tx_n_6),
        .Q({crc_data[31:20],crc_data[17:15],crc_data[13:0]}),
        .\crc_data_reg[10]_0 (u_arp_tx_n_39),
        .\crc_data_reg[16]_0 (gmii_txd),
        .\crc_data_reg[20]_0 (u_crc32_d8_n_33),
        .\crc_data_reg[21]_0 (u_crc32_d8_n_31),
        .\crc_data_reg[25]_0 (u_crc32_d8_n_34),
        .\crc_data_reg[27]_0 (u_crc32_d8_n_36),
        .\crc_data_reg[30]_0 (u_crc32_d8_n_32),
        .\crc_data_reg[30]_1 (u_crc32_d8_n_35),
        .\crc_data_reg[31]_0 (reset),
        .\crc_data_reg[6]_0 (u_arp_tx_n_20),
        .\crc_data_reg[6]_1 (u_arp_tx_n_2),
        .\gmii_txd[2]_i_3 (u_arp_tx_n_38),
        .\gmii_txd[6]_i_3 ({u_arp_tx_n_3,u_arp_tx_n_4}),
        .p_1_in__0({p_1_in__0[6],p_1_in__0[1]}));
endmodule

module arp_ctrl
   (D,
    arp_tx_type,
    CLK,
    reset,
    arp_rx_type,
    arp_rx_done,
    \touch_key_delay_reg[0]_0 );
  output [0:0]D;
  output arp_tx_type;
  input CLK;
  input reset;
  input arp_rx_type;
  input arp_rx_done;
  input [0:0]\touch_key_delay_reg[0]_0 ;

  wire CLK;
  wire [0:0]D;
  wire arp_rx_done;
  wire arp_rx_type;
  wire arp_tx_en_i_1_n_0;
  wire arp_tx_type;
  wire arp_tx_type_i_1_n_0;
  wire p_0_in2_in;
  wire reset;
  wire [0:0]\touch_key_delay_reg[0]_0 ;
  wire \touch_key_delay_reg_n_0_[0] ;
  wire \touch_key_delay_reg_n_0_[2] ;

  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    arp_tx_en_i_1
       (.I0(\touch_key_delay_reg_n_0_[2] ),
        .I1(p_0_in2_in),
        .I2(arp_rx_type),
        .I3(arp_rx_done),
        .O(arp_tx_en_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    arp_tx_en_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(arp_tx_en_i_1_n_0),
        .Q(D));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hBBBB0B00)) 
    arp_tx_type_i_1
       (.I0(\touch_key_delay_reg_n_0_[2] ),
        .I1(p_0_in2_in),
        .I2(arp_rx_type),
        .I3(arp_rx_done),
        .I4(arp_tx_type),
        .O(arp_tx_type_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    arp_tx_type_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(arp_tx_type_i_1_n_0),
        .Q(arp_tx_type));
  FDCE #(
    .INIT(1'b0)) 
    \touch_key_delay_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\touch_key_delay_reg[0]_0 ),
        .Q(\touch_key_delay_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \touch_key_delay_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\touch_key_delay_reg_n_0_[0] ),
        .Q(p_0_in2_in));
  FDCE #(
    .INIT(1'b0)) 
    \touch_key_delay_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in2_in),
        .Q(\touch_key_delay_reg_n_0_[2] ));
endmodule

(* BOARD_IP = "-1062731510" *) (* BOARD_MAC = "48'b000000000001000100100010001100110100010001010101" *) (* ETH_TYPE = "16'b0000100000000110" *) 
(* keep_hierarchy = "soft" *) (* st_arp_data = "5'b01000" *) (* st_eth_head = "5'b00100" *) 
(* st_idle = "5'b00001" *) (* st_preamble = "5'b00010" *) (* st_rx_end = "5'b10000" *) 
module arp_rx
   (clk,
    rst_n,
    gmii_rx_dv,
    gmii_rxd,
    arp_rx_done,
    arp_rx_type,
    src_ip,
    src_mac,
    \u_ila_0_cnt[0] ,
    \u_ila_0_cnt[1] ,
    \u_ila_0_cnt[2] ,
    \u_ila_0_cnt[3] ,
    \u_ila_0_cnt[4] ,
    \u_ila_0_cur_state[0] ,
    \u_ila_0_cur_state[1] ,
    \u_ila_0_cur_state[2] ,
    \u_ila_0_cur_state[3] ,
    \u_ila_0_cur_state[4] ,
    \u_ila_0_src_mac_t[0] ,
    \u_ila_0_src_mac_t[1] ,
    \u_ila_0_src_mac_t[2] ,
    \u_ila_0_src_mac_t[3] ,
    \u_ila_0_src_mac_t[4] ,
    \u_ila_0_src_mac_t[5] ,
    \u_ila_0_src_mac_t[6] ,
    \u_ila_0_src_mac_t[7] ,
    \u_ila_0_src_mac_t[8] ,
    \u_ila_0_src_mac_t[9] ,
    \u_ila_0_src_mac_t[10] ,
    \u_ila_0_src_mac_t[11] ,
    \u_ila_0_src_mac_t[12] ,
    \u_ila_0_src_mac_t[13] ,
    \u_ila_0_src_mac_t[14] ,
    \u_ila_0_src_mac_t[15] ,
    \u_ila_0_src_mac_t[16] ,
    \u_ila_0_src_mac_t[17] ,
    \u_ila_0_src_mac_t[18] ,
    \u_ila_0_src_mac_t[19] ,
    \u_ila_0_src_mac_t[20] ,
    \u_ila_0_src_mac_t[21] ,
    \u_ila_0_src_mac_t[22] ,
    \u_ila_0_src_mac_t[23] ,
    \u_ila_0_src_mac_t[24] ,
    \u_ila_0_src_mac_t[25] ,
    \u_ila_0_src_mac_t[26] ,
    \u_ila_0_src_mac_t[27] ,
    \u_ila_0_src_mac_t[28] ,
    \u_ila_0_src_mac_t[29] ,
    \u_ila_0_src_mac_t[30] ,
    \u_ila_0_src_mac_t[31] ,
    \u_ila_0_src_mac_t[32] ,
    \u_ila_0_src_mac_t[33] ,
    \u_ila_0_src_mac_t[34] ,
    \u_ila_0_src_mac_t[35] ,
    \u_ila_0_src_mac_t[36] ,
    \u_ila_0_src_mac_t[37] ,
    \u_ila_0_src_mac_t[38] ,
    \u_ila_0_src_mac_t[39] ,
    \u_ila_0_src_mac_t[40] ,
    \u_ila_0_src_mac_t[41] ,
    \u_ila_0_src_mac_t[42] ,
    \u_ila_0_src_mac_t[43] ,
    \u_ila_0_src_mac_t[44] ,
    \u_ila_0_src_mac_t[45] ,
    \u_ila_0_src_mac_t[46] ,
    \u_ila_0_src_mac_t[47] ,
    \u_ila_0_src_ip_t[0] ,
    \u_ila_0_src_ip_t[1] ,
    \u_ila_0_src_ip_t[2] ,
    \u_ila_0_src_ip_t[3] ,
    \u_ila_0_src_ip_t[4] ,
    \u_ila_0_src_ip_t[5] ,
    \u_ila_0_src_ip_t[6] ,
    \u_ila_0_src_ip_t[7] ,
    \u_ila_0_src_ip_t[8] ,
    \u_ila_0_src_ip_t[9] ,
    \u_ila_0_src_ip_t[10] ,
    \u_ila_0_src_ip_t[11] ,
    \u_ila_0_src_ip_t[12] ,
    \u_ila_0_src_ip_t[13] ,
    \u_ila_0_src_ip_t[14] ,
    \u_ila_0_src_ip_t[15] ,
    \u_ila_0_src_ip_t[16] ,
    \u_ila_0_src_ip_t[17] ,
    \u_ila_0_src_ip_t[18] ,
    \u_ila_0_src_ip_t[19] ,
    \u_ila_0_src_ip_t[20] ,
    \u_ila_0_src_ip_t[21] ,
    \u_ila_0_src_ip_t[22] ,
    \u_ila_0_src_ip_t[23] ,
    \u_ila_0_src_ip_t[24] ,
    \u_ila_0_src_ip_t[25] ,
    \u_ila_0_src_ip_t[26] ,
    \u_ila_0_src_ip_t[27] ,
    \u_ila_0_src_ip_t[28] ,
    \u_ila_0_src_ip_t[29] ,
    \u_ila_0_src_ip_t[30] ,
    \u_ila_0_src_ip_t[31] ,
    \u_ila_0_next_state[0] ,
    \u_ila_0_next_state[1] ,
    \u_ila_0_next_state[2] ,
    \u_ila_0_next_state[3] ,
    \u_ila_0_next_state[4] ,
    u_ila_0_error_en,
    u_ila_0_skip_en);
  input clk;
  input rst_n;
  (* mark_debug = "true" *) input gmii_rx_dv;
  (* mark_debug = "true" *) input [7:0]gmii_rxd;
  output arp_rx_done;
  output arp_rx_type;
  output [31:0]src_ip;
  output [47:0]src_mac;
  output \u_ila_0_cnt[0] ;
  output \u_ila_0_cnt[1] ;
  output \u_ila_0_cnt[2] ;
  output \u_ila_0_cnt[3] ;
  output \u_ila_0_cnt[4] ;
  output \u_ila_0_cur_state[0] ;
  output \u_ila_0_cur_state[1] ;
  output \u_ila_0_cur_state[2] ;
  output \u_ila_0_cur_state[3] ;
  output \u_ila_0_cur_state[4] ;
  output \u_ila_0_src_mac_t[0] ;
  output \u_ila_0_src_mac_t[1] ;
  output \u_ila_0_src_mac_t[2] ;
  output \u_ila_0_src_mac_t[3] ;
  output \u_ila_0_src_mac_t[4] ;
  output \u_ila_0_src_mac_t[5] ;
  output \u_ila_0_src_mac_t[6] ;
  output \u_ila_0_src_mac_t[7] ;
  output \u_ila_0_src_mac_t[8] ;
  output \u_ila_0_src_mac_t[9] ;
  output \u_ila_0_src_mac_t[10] ;
  output \u_ila_0_src_mac_t[11] ;
  output \u_ila_0_src_mac_t[12] ;
  output \u_ila_0_src_mac_t[13] ;
  output \u_ila_0_src_mac_t[14] ;
  output \u_ila_0_src_mac_t[15] ;
  output \u_ila_0_src_mac_t[16] ;
  output \u_ila_0_src_mac_t[17] ;
  output \u_ila_0_src_mac_t[18] ;
  output \u_ila_0_src_mac_t[19] ;
  output \u_ila_0_src_mac_t[20] ;
  output \u_ila_0_src_mac_t[21] ;
  output \u_ila_0_src_mac_t[22] ;
  output \u_ila_0_src_mac_t[23] ;
  output \u_ila_0_src_mac_t[24] ;
  output \u_ila_0_src_mac_t[25] ;
  output \u_ila_0_src_mac_t[26] ;
  output \u_ila_0_src_mac_t[27] ;
  output \u_ila_0_src_mac_t[28] ;
  output \u_ila_0_src_mac_t[29] ;
  output \u_ila_0_src_mac_t[30] ;
  output \u_ila_0_src_mac_t[31] ;
  output \u_ila_0_src_mac_t[32] ;
  output \u_ila_0_src_mac_t[33] ;
  output \u_ila_0_src_mac_t[34] ;
  output \u_ila_0_src_mac_t[35] ;
  output \u_ila_0_src_mac_t[36] ;
  output \u_ila_0_src_mac_t[37] ;
  output \u_ila_0_src_mac_t[38] ;
  output \u_ila_0_src_mac_t[39] ;
  output \u_ila_0_src_mac_t[40] ;
  output \u_ila_0_src_mac_t[41] ;
  output \u_ila_0_src_mac_t[42] ;
  output \u_ila_0_src_mac_t[43] ;
  output \u_ila_0_src_mac_t[44] ;
  output \u_ila_0_src_mac_t[45] ;
  output \u_ila_0_src_mac_t[46] ;
  output \u_ila_0_src_mac_t[47] ;
  output \u_ila_0_src_ip_t[0] ;
  output \u_ila_0_src_ip_t[1] ;
  output \u_ila_0_src_ip_t[2] ;
  output \u_ila_0_src_ip_t[3] ;
  output \u_ila_0_src_ip_t[4] ;
  output \u_ila_0_src_ip_t[5] ;
  output \u_ila_0_src_ip_t[6] ;
  output \u_ila_0_src_ip_t[7] ;
  output \u_ila_0_src_ip_t[8] ;
  output \u_ila_0_src_ip_t[9] ;
  output \u_ila_0_src_ip_t[10] ;
  output \u_ila_0_src_ip_t[11] ;
  output \u_ila_0_src_ip_t[12] ;
  output \u_ila_0_src_ip_t[13] ;
  output \u_ila_0_src_ip_t[14] ;
  output \u_ila_0_src_ip_t[15] ;
  output \u_ila_0_src_ip_t[16] ;
  output \u_ila_0_src_ip_t[17] ;
  output \u_ila_0_src_ip_t[18] ;
  output \u_ila_0_src_ip_t[19] ;
  output \u_ila_0_src_ip_t[20] ;
  output \u_ila_0_src_ip_t[21] ;
  output \u_ila_0_src_ip_t[22] ;
  output \u_ila_0_src_ip_t[23] ;
  output \u_ila_0_src_ip_t[24] ;
  output \u_ila_0_src_ip_t[25] ;
  output \u_ila_0_src_ip_t[26] ;
  output \u_ila_0_src_ip_t[27] ;
  output \u_ila_0_src_ip_t[28] ;
  output \u_ila_0_src_ip_t[29] ;
  output \u_ila_0_src_ip_t[30] ;
  output \u_ila_0_src_ip_t[31] ;
  output \u_ila_0_next_state[0] ;
  output \u_ila_0_next_state[1] ;
  output \u_ila_0_next_state[2] ;
  output \u_ila_0_next_state[3] ;
  output \u_ila_0_next_state[4] ;
  output u_ila_0_error_en;
  output u_ila_0_skip_en;

  wire arp_rx_done;
  wire arp_rx_done_i_10_n_0;
  wire arp_rx_done_i_11_n_0;
  wire arp_rx_done_i_12_n_0;
  wire arp_rx_done_i_13_n_0;
  wire arp_rx_done_i_14_n_0;
  wire arp_rx_done_i_1_n_0;
  wire arp_rx_done_i_2_n_0;
  wire arp_rx_done_i_3_n_0;
  wire arp_rx_done_i_4_n_0;
  wire arp_rx_done_i_5_n_0;
  wire arp_rx_done_i_6_n_0;
  wire arp_rx_done_i_7_n_0;
  wire arp_rx_done_i_8_n_0;
  wire arp_rx_done_i_9_n_0;
  wire arp_rx_type;
  wire arp_rx_type0;
  wire arp_rx_type_i_2_n_0;
  wire arp_rx_type_i_3_n_0;
  wire arp_rx_type_i_4_n_0;
  wire clk;
  (* MARK_DEBUG *) wire [4:0]cnt;
  wire \cnt[0]_i_2_n_0 ;
  wire \cnt[0]_i_3_n_0 ;
  wire \cnt[0]_i_4_n_0 ;
  wire \cnt[1]_i_2_n_0 ;
  wire \cnt[1]_i_3_n_0 ;
  wire \cnt[2]_i_2_n_0 ;
  wire \cnt[2]_i_3_n_0 ;
  wire \cnt[2]_i_4_n_0 ;
  wire \cnt[2]_i_5_n_0 ;
  wire \cnt[3]_i_2_n_0 ;
  wire \cnt[3]_i_3_n_0 ;
  wire \cnt[3]_i_4_n_0 ;
  wire \cnt[3]_i_5_n_0 ;
  wire \cnt[3]_i_6_n_0 ;
  wire \cnt[4]_i_1_n_0 ;
  wire \cnt[4]_i_3_n_0 ;
  wire \cnt[4]_i_4_n_0 ;
  wire \cnt[4]_i_5_n_0 ;
  wire \cnt[4]_i_6_n_0 ;
  wire [4:0]cnt__0;
  (* MARK_DEBUG *) wire [4:0]cur_state;
  wire [47:8]data0;
  wire \des_ip_t[0]_i_1_n_0 ;
  wire \des_ip_t[10]_i_1_n_0 ;
  wire \des_ip_t[11]_i_1_n_0 ;
  wire \des_ip_t[12]_i_1_n_0 ;
  wire \des_ip_t[13]_i_1_n_0 ;
  wire \des_ip_t[14]_i_1_n_0 ;
  wire \des_ip_t[15]_i_1_n_0 ;
  wire \des_ip_t[16]_i_1_n_0 ;
  wire \des_ip_t[17]_i_1_n_0 ;
  wire \des_ip_t[18]_i_1_n_0 ;
  wire \des_ip_t[19]_i_1_n_0 ;
  wire \des_ip_t[1]_i_1_n_0 ;
  wire \des_ip_t[20]_i_1_n_0 ;
  wire \des_ip_t[21]_i_1_n_0 ;
  wire \des_ip_t[22]_i_1_n_0 ;
  wire \des_ip_t[23]_i_1_n_0 ;
  wire \des_ip_t[24]_i_1_n_0 ;
  wire \des_ip_t[25]_i_1_n_0 ;
  wire \des_ip_t[26]_i_1_n_0 ;
  wire \des_ip_t[27]_i_1_n_0 ;
  wire \des_ip_t[28]_i_1_n_0 ;
  wire \des_ip_t[29]_i_1_n_0 ;
  wire \des_ip_t[2]_i_1_n_0 ;
  wire \des_ip_t[30]_i_1_n_0 ;
  wire \des_ip_t[31]_i_1_n_0 ;
  wire \des_ip_t[31]_i_2_n_0 ;
  wire \des_ip_t[3]_i_1_n_0 ;
  wire \des_ip_t[4]_i_1_n_0 ;
  wire \des_ip_t[5]_i_1_n_0 ;
  wire \des_ip_t[6]_i_1_n_0 ;
  wire \des_ip_t[7]_i_1_n_0 ;
  wire \des_ip_t[8]_i_1_n_0 ;
  wire \des_ip_t[9]_i_1_n_0 ;
  wire [31:0]des_ip_t__0;
  wire \des_mac_t[0]_i_1_n_0 ;
  wire \des_mac_t[10]_i_1_n_0 ;
  wire \des_mac_t[11]_i_1_n_0 ;
  wire \des_mac_t[12]_i_1_n_0 ;
  wire \des_mac_t[13]_i_1_n_0 ;
  wire \des_mac_t[14]_i_1_n_0 ;
  wire \des_mac_t[15]_i_1_n_0 ;
  wire \des_mac_t[16]_i_1_n_0 ;
  wire \des_mac_t[17]_i_1_n_0 ;
  wire \des_mac_t[18]_i_1_n_0 ;
  wire \des_mac_t[19]_i_1_n_0 ;
  wire \des_mac_t[1]_i_1_n_0 ;
  wire \des_mac_t[20]_i_1_n_0 ;
  wire \des_mac_t[21]_i_1_n_0 ;
  wire \des_mac_t[22]_i_1_n_0 ;
  wire \des_mac_t[23]_i_1_n_0 ;
  wire \des_mac_t[24]_i_1_n_0 ;
  wire \des_mac_t[25]_i_1_n_0 ;
  wire \des_mac_t[26]_i_1_n_0 ;
  wire \des_mac_t[27]_i_1_n_0 ;
  wire \des_mac_t[28]_i_1_n_0 ;
  wire \des_mac_t[29]_i_1_n_0 ;
  wire \des_mac_t[2]_i_1_n_0 ;
  wire \des_mac_t[30]_i_1_n_0 ;
  wire \des_mac_t[31]_i_1_n_0 ;
  wire \des_mac_t[32]_i_1_n_0 ;
  wire \des_mac_t[33]_i_1_n_0 ;
  wire \des_mac_t[34]_i_1_n_0 ;
  wire \des_mac_t[35]_i_1_n_0 ;
  wire \des_mac_t[36]_i_1_n_0 ;
  wire \des_mac_t[37]_i_1_n_0 ;
  wire \des_mac_t[38]_i_1_n_0 ;
  wire \des_mac_t[39]_i_1_n_0 ;
  wire \des_mac_t[3]_i_1_n_0 ;
  wire \des_mac_t[40]_i_1_n_0 ;
  wire \des_mac_t[41]_i_1_n_0 ;
  wire \des_mac_t[42]_i_1_n_0 ;
  wire \des_mac_t[43]_i_1_n_0 ;
  wire \des_mac_t[44]_i_1_n_0 ;
  wire \des_mac_t[45]_i_1_n_0 ;
  wire \des_mac_t[46]_i_1_n_0 ;
  wire \des_mac_t[47]_i_1_n_0 ;
  wire \des_mac_t[47]_i_2_n_0 ;
  wire \des_mac_t[47]_i_3_n_0 ;
  wire \des_mac_t[47]_i_4_n_0 ;
  wire \des_mac_t[47]_i_5_n_0 ;
  wire \des_mac_t[47]_i_6_n_0 ;
  wire \des_mac_t[4]_i_1_n_0 ;
  wire \des_mac_t[5]_i_1_n_0 ;
  wire \des_mac_t[6]_i_1_n_0 ;
  wire \des_mac_t[7]_i_1_n_0 ;
  wire \des_mac_t[8]_i_1_n_0 ;
  wire \des_mac_t[9]_i_1_n_0 ;
  wire \des_mac_t_reg_n_0_[40] ;
  wire \des_mac_t_reg_n_0_[41] ;
  wire \des_mac_t_reg_n_0_[42] ;
  wire \des_mac_t_reg_n_0_[43] ;
  wire \des_mac_t_reg_n_0_[44] ;
  wire \des_mac_t_reg_n_0_[45] ;
  wire \des_mac_t_reg_n_0_[46] ;
  wire \des_mac_t_reg_n_0_[47] ;
  (* MARK_DEBUG *) wire error_en;
  wire error_en_i_10_n_0;
  wire error_en_i_11_n_0;
  wire error_en_i_12_n_0;
  wire error_en_i_13_n_0;
  wire error_en_i_14_n_0;
  wire error_en_i_15_n_0;
  wire error_en_i_16_n_0;
  wire error_en_i_17_n_0;
  wire error_en_i_18_n_0;
  wire error_en_i_19_n_0;
  wire error_en_i_1_n_0;
  wire error_en_i_20_n_0;
  wire error_en_i_21_n_0;
  wire error_en_i_22_n_0;
  wire error_en_i_23_n_0;
  wire error_en_i_24_n_0;
  wire error_en_i_25_n_0;
  wire error_en_i_26_n_0;
  wire error_en_i_27_n_0;
  wire error_en_i_28_n_0;
  wire error_en_i_29_n_0;
  wire error_en_i_2_n_0;
  wire error_en_i_30_n_0;
  wire error_en_i_31_n_0;
  wire error_en_i_32_n_0;
  wire error_en_i_33_n_0;
  wire error_en_i_34_n_0;
  wire error_en_i_35_n_0;
  wire error_en_i_36_n_0;
  wire error_en_i_37_n_0;
  wire error_en_i_38_n_0;
  wire error_en_i_39_n_0;
  wire error_en_i_3_n_0;
  wire error_en_i_40_n_0;
  wire error_en_i_41_n_0;
  wire error_en_i_42_n_0;
  wire error_en_i_4_n_0;
  wire error_en_i_5_n_0;
  wire error_en_i_6_n_0;
  wire error_en_i_7_n_0;
  wire error_en_i_8_n_0;
  wire error_en_i_9_n_0;
  wire \eth_type[15]_i_1_n_0 ;
  wire \eth_type[15]_i_2_n_0 ;
  wire \eth_type[15]_i_3_n_0 ;
  wire \eth_type_reg_n_0_[10] ;
  wire \eth_type_reg_n_0_[11] ;
  wire \eth_type_reg_n_0_[12] ;
  wire \eth_type_reg_n_0_[13] ;
  wire \eth_type_reg_n_0_[14] ;
  wire \eth_type_reg_n_0_[15] ;
  wire \eth_type_reg_n_0_[8] ;
  wire \eth_type_reg_n_0_[9] ;
  (* MARK_DEBUG *) wire gmii_rx_dv;
  (* MARK_DEBUG *) wire [7:0]gmii_rxd;
  (* MARK_DEBUG *) wire [4:0]next_state;
  wire next_state_inferred_i_6_n_0;
  wire next_state_inferred_i_7_n_0;
  wire [15:0]op_data;
  wire \op_data[15]_i_1_n_0 ;
  wire \op_data[15]_i_2_n_0 ;
  wire \op_data[7]_i_1_n_0 ;
  wire rst_n;
  (* MARK_DEBUG *) wire skip_en;
  wire skip_en__0;
  wire skip_en_i_2_n_0;
  wire skip_en_i_3_n_0;
  wire skip_en_i_4_n_0;
  wire skip_en_i_5_n_0;
  wire skip_en_i_6_n_0;
  wire skip_en_i_7_n_0;
  wire skip_en_i_8_n_0;
  wire skip_en_i_9_n_0;
  wire [31:0]src_ip;
  (* MARK_DEBUG *) wire [31:0]src_ip_t;
  wire \src_ip_t[0]_i_1_n_0 ;
  wire \src_ip_t[10]_i_1_n_0 ;
  wire \src_ip_t[11]_i_1_n_0 ;
  wire \src_ip_t[12]_i_1_n_0 ;
  wire \src_ip_t[13]_i_1_n_0 ;
  wire \src_ip_t[14]_i_1_n_0 ;
  wire \src_ip_t[15]_i_1_n_0 ;
  wire \src_ip_t[16]_i_1_n_0 ;
  wire \src_ip_t[17]_i_1_n_0 ;
  wire \src_ip_t[18]_i_1_n_0 ;
  wire \src_ip_t[19]_i_1_n_0 ;
  wire \src_ip_t[1]_i_1_n_0 ;
  wire \src_ip_t[20]_i_1_n_0 ;
  wire \src_ip_t[21]_i_1_n_0 ;
  wire \src_ip_t[22]_i_1_n_0 ;
  wire \src_ip_t[23]_i_1_n_0 ;
  wire \src_ip_t[24]_i_1_n_0 ;
  wire \src_ip_t[25]_i_1_n_0 ;
  wire \src_ip_t[26]_i_1_n_0 ;
  wire \src_ip_t[27]_i_1_n_0 ;
  wire \src_ip_t[28]_i_1_n_0 ;
  wire \src_ip_t[29]_i_1_n_0 ;
  wire \src_ip_t[2]_i_1_n_0 ;
  wire \src_ip_t[30]_i_1_n_0 ;
  wire \src_ip_t[31]_i_1_n_0 ;
  wire \src_ip_t[31]_i_2_n_0 ;
  wire \src_ip_t[31]_i_3_n_0 ;
  wire \src_ip_t[31]_i_4_n_0 ;
  wire \src_ip_t[31]_i_5_n_0 ;
  wire \src_ip_t[3]_i_1_n_0 ;
  wire \src_ip_t[4]_i_1_n_0 ;
  wire \src_ip_t[5]_i_1_n_0 ;
  wire \src_ip_t[6]_i_1_n_0 ;
  wire \src_ip_t[7]_i_1_n_0 ;
  wire \src_ip_t[8]_i_1_n_0 ;
  wire \src_ip_t[9]_i_1_n_0 ;
  wire [47:0]src_mac;
  (* MARK_DEBUG *) wire [47:0]src_mac_t;
  wire \src_mac_t[0]_i_1_n_0 ;
  wire \src_mac_t[10]_i_1_n_0 ;
  wire \src_mac_t[10]_i_2_n_0 ;
  wire \src_mac_t[11]_i_1_n_0 ;
  wire \src_mac_t[11]_i_2_n_0 ;
  wire \src_mac_t[12]_i_1_n_0 ;
  wire \src_mac_t[12]_i_2_n_0 ;
  wire \src_mac_t[13]_i_1_n_0 ;
  wire \src_mac_t[13]_i_2_n_0 ;
  wire \src_mac_t[14]_i_1_n_0 ;
  wire \src_mac_t[14]_i_2_n_0 ;
  wire \src_mac_t[15]_i_1_n_0 ;
  wire \src_mac_t[15]_i_2_n_0 ;
  wire \src_mac_t[16]_i_1_n_0 ;
  wire \src_mac_t[16]_i_2_n_0 ;
  wire \src_mac_t[17]_i_1_n_0 ;
  wire \src_mac_t[17]_i_2_n_0 ;
  wire \src_mac_t[18]_i_1_n_0 ;
  wire \src_mac_t[18]_i_2_n_0 ;
  wire \src_mac_t[19]_i_1_n_0 ;
  wire \src_mac_t[19]_i_2_n_0 ;
  wire \src_mac_t[1]_i_1_n_0 ;
  wire \src_mac_t[20]_i_1_n_0 ;
  wire \src_mac_t[20]_i_2_n_0 ;
  wire \src_mac_t[21]_i_1_n_0 ;
  wire \src_mac_t[21]_i_2_n_0 ;
  wire \src_mac_t[22]_i_1_n_0 ;
  wire \src_mac_t[22]_i_2_n_0 ;
  wire \src_mac_t[23]_i_1_n_0 ;
  wire \src_mac_t[23]_i_2_n_0 ;
  wire \src_mac_t[24]_i_1_n_0 ;
  wire \src_mac_t[24]_i_2_n_0 ;
  wire \src_mac_t[25]_i_1_n_0 ;
  wire \src_mac_t[25]_i_2_n_0 ;
  wire \src_mac_t[26]_i_1_n_0 ;
  wire \src_mac_t[26]_i_2_n_0 ;
  wire \src_mac_t[27]_i_1_n_0 ;
  wire \src_mac_t[27]_i_2_n_0 ;
  wire \src_mac_t[28]_i_1_n_0 ;
  wire \src_mac_t[28]_i_2_n_0 ;
  wire \src_mac_t[29]_i_1_n_0 ;
  wire \src_mac_t[29]_i_2_n_0 ;
  wire \src_mac_t[2]_i_1_n_0 ;
  wire \src_mac_t[30]_i_1_n_0 ;
  wire \src_mac_t[30]_i_2_n_0 ;
  wire \src_mac_t[31]_i_1_n_0 ;
  wire \src_mac_t[31]_i_2_n_0 ;
  wire \src_mac_t[32]_i_1_n_0 ;
  wire \src_mac_t[32]_i_2_n_0 ;
  wire \src_mac_t[33]_i_1_n_0 ;
  wire \src_mac_t[33]_i_2_n_0 ;
  wire \src_mac_t[34]_i_1_n_0 ;
  wire \src_mac_t[34]_i_2_n_0 ;
  wire \src_mac_t[35]_i_1_n_0 ;
  wire \src_mac_t[35]_i_2_n_0 ;
  wire \src_mac_t[36]_i_1_n_0 ;
  wire \src_mac_t[36]_i_2_n_0 ;
  wire \src_mac_t[37]_i_1_n_0 ;
  wire \src_mac_t[37]_i_2_n_0 ;
  wire \src_mac_t[38]_i_1_n_0 ;
  wire \src_mac_t[38]_i_2_n_0 ;
  wire \src_mac_t[39]_i_1_n_0 ;
  wire \src_mac_t[39]_i_2_n_0 ;
  wire \src_mac_t[3]_i_1_n_0 ;
  wire \src_mac_t[40]_i_1_n_0 ;
  wire \src_mac_t[40]_i_2_n_0 ;
  wire \src_mac_t[41]_i_1_n_0 ;
  wire \src_mac_t[41]_i_2_n_0 ;
  wire \src_mac_t[42]_i_1_n_0 ;
  wire \src_mac_t[42]_i_2_n_0 ;
  wire \src_mac_t[43]_i_1_n_0 ;
  wire \src_mac_t[43]_i_2_n_0 ;
  wire \src_mac_t[44]_i_1_n_0 ;
  wire \src_mac_t[44]_i_2_n_0 ;
  wire \src_mac_t[45]_i_1_n_0 ;
  wire \src_mac_t[45]_i_2_n_0 ;
  wire \src_mac_t[46]_i_1_n_0 ;
  wire \src_mac_t[46]_i_2_n_0 ;
  wire \src_mac_t[47]_i_1_n_0 ;
  wire \src_mac_t[47]_i_2_n_0 ;
  wire \src_mac_t[4]_i_1_n_0 ;
  wire \src_mac_t[5]_i_1_n_0 ;
  wire \src_mac_t[6]_i_1_n_0 ;
  wire \src_mac_t[7]_i_1_n_0 ;
  wire \src_mac_t[8]_i_1_n_0 ;
  wire \src_mac_t[8]_i_2_n_0 ;
  wire \src_mac_t[9]_i_1_n_0 ;
  wire \src_mac_t[9]_i_2_n_0 ;

  assign \u_ila_0_cnt[0]  = cnt[0];
  assign \u_ila_0_cnt[1]  = cnt[1];
  assign \u_ila_0_cnt[2]  = cnt[2];
  assign \u_ila_0_cnt[3]  = cnt[3];
  assign \u_ila_0_cnt[4]  = cnt[4];
  assign \u_ila_0_cur_state[0]  = cur_state[0];
  assign \u_ila_0_cur_state[1]  = cur_state[1];
  assign \u_ila_0_cur_state[2]  = cur_state[2];
  assign \u_ila_0_cur_state[3]  = cur_state[3];
  assign \u_ila_0_cur_state[4]  = cur_state[4];
  assign u_ila_0_error_en = error_en;
  assign \u_ila_0_next_state[0]  = next_state[0];
  assign \u_ila_0_next_state[1]  = next_state[1];
  assign \u_ila_0_next_state[2]  = next_state[2];
  assign \u_ila_0_next_state[3]  = next_state[3];
  assign \u_ila_0_next_state[4]  = next_state[4];
  assign u_ila_0_skip_en = skip_en;
  assign \u_ila_0_src_ip_t[0]  = src_ip_t[0];
  assign \u_ila_0_src_ip_t[10]  = src_ip_t[10];
  assign \u_ila_0_src_ip_t[11]  = src_ip_t[11];
  assign \u_ila_0_src_ip_t[12]  = src_ip_t[12];
  assign \u_ila_0_src_ip_t[13]  = src_ip_t[13];
  assign \u_ila_0_src_ip_t[14]  = src_ip_t[14];
  assign \u_ila_0_src_ip_t[15]  = src_ip_t[15];
  assign \u_ila_0_src_ip_t[16]  = src_ip_t[16];
  assign \u_ila_0_src_ip_t[17]  = src_ip_t[17];
  assign \u_ila_0_src_ip_t[18]  = src_ip_t[18];
  assign \u_ila_0_src_ip_t[19]  = src_ip_t[19];
  assign \u_ila_0_src_ip_t[1]  = src_ip_t[1];
  assign \u_ila_0_src_ip_t[20]  = src_ip_t[20];
  assign \u_ila_0_src_ip_t[21]  = src_ip_t[21];
  assign \u_ila_0_src_ip_t[22]  = src_ip_t[22];
  assign \u_ila_0_src_ip_t[23]  = src_ip_t[23];
  assign \u_ila_0_src_ip_t[24]  = src_ip_t[24];
  assign \u_ila_0_src_ip_t[25]  = src_ip_t[25];
  assign \u_ila_0_src_ip_t[26]  = src_ip_t[26];
  assign \u_ila_0_src_ip_t[27]  = src_ip_t[27];
  assign \u_ila_0_src_ip_t[28]  = src_ip_t[28];
  assign \u_ila_0_src_ip_t[29]  = src_ip_t[29];
  assign \u_ila_0_src_ip_t[2]  = src_ip_t[2];
  assign \u_ila_0_src_ip_t[30]  = src_ip_t[30];
  assign \u_ila_0_src_ip_t[31]  = src_ip_t[31];
  assign \u_ila_0_src_ip_t[3]  = src_ip_t[3];
  assign \u_ila_0_src_ip_t[4]  = src_ip_t[4];
  assign \u_ila_0_src_ip_t[5]  = src_ip_t[5];
  assign \u_ila_0_src_ip_t[6]  = src_ip_t[6];
  assign \u_ila_0_src_ip_t[7]  = src_ip_t[7];
  assign \u_ila_0_src_ip_t[8]  = src_ip_t[8];
  assign \u_ila_0_src_ip_t[9]  = src_ip_t[9];
  assign \u_ila_0_src_mac_t[0]  = src_mac_t[0];
  assign \u_ila_0_src_mac_t[10]  = src_mac_t[10];
  assign \u_ila_0_src_mac_t[11]  = src_mac_t[11];
  assign \u_ila_0_src_mac_t[12]  = src_mac_t[12];
  assign \u_ila_0_src_mac_t[13]  = src_mac_t[13];
  assign \u_ila_0_src_mac_t[14]  = src_mac_t[14];
  assign \u_ila_0_src_mac_t[15]  = src_mac_t[15];
  assign \u_ila_0_src_mac_t[16]  = src_mac_t[16];
  assign \u_ila_0_src_mac_t[17]  = src_mac_t[17];
  assign \u_ila_0_src_mac_t[18]  = src_mac_t[18];
  assign \u_ila_0_src_mac_t[19]  = src_mac_t[19];
  assign \u_ila_0_src_mac_t[1]  = src_mac_t[1];
  assign \u_ila_0_src_mac_t[20]  = src_mac_t[20];
  assign \u_ila_0_src_mac_t[21]  = src_mac_t[21];
  assign \u_ila_0_src_mac_t[22]  = src_mac_t[22];
  assign \u_ila_0_src_mac_t[23]  = src_mac_t[23];
  assign \u_ila_0_src_mac_t[24]  = src_mac_t[24];
  assign \u_ila_0_src_mac_t[25]  = src_mac_t[25];
  assign \u_ila_0_src_mac_t[26]  = src_mac_t[26];
  assign \u_ila_0_src_mac_t[27]  = src_mac_t[27];
  assign \u_ila_0_src_mac_t[28]  = src_mac_t[28];
  assign \u_ila_0_src_mac_t[29]  = src_mac_t[29];
  assign \u_ila_0_src_mac_t[2]  = src_mac_t[2];
  assign \u_ila_0_src_mac_t[30]  = src_mac_t[30];
  assign \u_ila_0_src_mac_t[31]  = src_mac_t[31];
  assign \u_ila_0_src_mac_t[32]  = src_mac_t[32];
  assign \u_ila_0_src_mac_t[33]  = src_mac_t[33];
  assign \u_ila_0_src_mac_t[34]  = src_mac_t[34];
  assign \u_ila_0_src_mac_t[35]  = src_mac_t[35];
  assign \u_ila_0_src_mac_t[36]  = src_mac_t[36];
  assign \u_ila_0_src_mac_t[37]  = src_mac_t[37];
  assign \u_ila_0_src_mac_t[38]  = src_mac_t[38];
  assign \u_ila_0_src_mac_t[39]  = src_mac_t[39];
  assign \u_ila_0_src_mac_t[3]  = src_mac_t[3];
  assign \u_ila_0_src_mac_t[40]  = src_mac_t[40];
  assign \u_ila_0_src_mac_t[41]  = src_mac_t[41];
  assign \u_ila_0_src_mac_t[42]  = src_mac_t[42];
  assign \u_ila_0_src_mac_t[43]  = src_mac_t[43];
  assign \u_ila_0_src_mac_t[44]  = src_mac_t[44];
  assign \u_ila_0_src_mac_t[45]  = src_mac_t[45];
  assign \u_ila_0_src_mac_t[46]  = src_mac_t[46];
  assign \u_ila_0_src_mac_t[47]  = src_mac_t[47];
  assign \u_ila_0_src_mac_t[4]  = src_mac_t[4];
  assign \u_ila_0_src_mac_t[5]  = src_mac_t[5];
  assign \u_ila_0_src_mac_t[6]  = src_mac_t[6];
  assign \u_ila_0_src_mac_t[7]  = src_mac_t[7];
  assign \u_ila_0_src_mac_t[8]  = src_mac_t[8];
  assign \u_ila_0_src_mac_t[9]  = src_mac_t[9];
  LUT3 #(
    .INIT(8'h08)) 
    arp_rx_done_i_1
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_1_n_0 ),
        .I2(arp_rx_done_i_4_n_0),
        .O(arp_rx_done_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    arp_rx_done_i_10
       (.I0(des_ip_t__0[29]),
        .I1(des_ip_t__0[18]),
        .I2(des_ip_t__0[19]),
        .I3(des_ip_t__0[2]),
        .O(arp_rx_done_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    arp_rx_done_i_11
       (.I0(des_ip_t__0[23]),
        .I1(des_ip_t__0[14]),
        .I2(des_ip_t__0[9]),
        .I3(des_ip_t__0[4]),
        .O(arp_rx_done_i_11_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    arp_rx_done_i_12
       (.I0(des_ip_t__0[31]),
        .I1(des_ip_t__0[12]),
        .I2(des_ip_t__0[30]),
        .I3(des_ip_t__0[27]),
        .O(arp_rx_done_i_12_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    arp_rx_done_i_13
       (.I0(des_ip_t__0[21]),
        .I1(des_ip_t__0[22]),
        .I2(des_ip_t__0[13]),
        .I3(des_ip_t__0[6]),
        .O(arp_rx_done_i_13_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    arp_rx_done_i_14
       (.I0(des_ip_t__0[1]),
        .I1(des_ip_t__0[7]),
        .I2(des_ip_t__0[3]),
        .I3(des_ip_t__0[17]),
        .O(arp_rx_done_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    arp_rx_done_i_2
       (.I0(rst_n),
        .O(arp_rx_done_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    arp_rx_done_i_3
       (.I0(arp_rx_done_i_5_n_0),
        .I1(arp_rx_type_i_2_n_0),
        .I2(arp_rx_done_i_6_n_0),
        .I3(arp_rx_done_i_7_n_0),
        .I4(arp_rx_done_i_8_n_0),
        .I5(arp_rx_done_i_9_n_0),
        .O(arp_rx_done_i_3_n_0));
  LUT6 #(
    .INIT(64'h7F7D7F7D7DFDFDFD)) 
    arp_rx_done_i_4
       (.I0(gmii_rx_dv),
        .I1(cnt[3]),
        .I2(cnt[4]),
        .I3(cnt[1]),
        .I4(cnt[0]),
        .I5(cnt[2]),
        .O(arp_rx_done_i_4_n_0));
  LUT5 #(
    .INIT(32'h00000080)) 
    arp_rx_done_i_5
       (.I0(cnt[3]),
        .I1(cnt[4]),
        .I2(cnt[2]),
        .I3(cnt[1]),
        .I4(cnt[0]),
        .O(arp_rx_done_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    arp_rx_done_i_6
       (.I0(arp_rx_type_i_3_n_0),
        .I1(arp_rx_done_i_10_n_0),
        .I2(des_ip_t__0[8]),
        .I3(des_ip_t__0[28]),
        .I4(des_ip_t__0[20]),
        .I5(des_ip_t__0[5]),
        .O(arp_rx_done_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    arp_rx_done_i_7
       (.I0(des_ip_t__0[10]),
        .I1(des_ip_t__0[25]),
        .I2(des_ip_t__0[0]),
        .I3(des_ip_t__0[11]),
        .I4(arp_rx_done_i_11_n_0),
        .O(arp_rx_done_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    arp_rx_done_i_8
       (.I0(des_ip_t__0[16]),
        .I1(des_ip_t__0[24]),
        .I2(des_ip_t__0[15]),
        .I3(des_ip_t__0[26]),
        .I4(arp_rx_done_i_12_n_0),
        .O(arp_rx_done_i_8_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFF9)) 
    arp_rx_done_i_9
       (.I0(op_data[1]),
        .I1(op_data[0]),
        .I2(op_data[15]),
        .I3(arp_rx_done_i_13_n_0),
        .I4(arp_rx_done_i_14_n_0),
        .O(arp_rx_done_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    arp_rx_done_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(arp_rx_done_i_2_n_0),
        .D(arp_rx_done_i_1_n_0),
        .Q(arp_rx_done));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    arp_rx_type_i_1
       (.I0(arp_rx_type_i_2_n_0),
        .I1(op_data[1]),
        .I2(op_data[0]),
        .I3(op_data[15]),
        .I4(arp_rx_type_i_3_n_0),
        .O(arp_rx_type0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    arp_rx_type_i_2
       (.I0(op_data[7]),
        .I1(op_data[11]),
        .I2(op_data[4]),
        .I3(arp_rx_type_i_4_n_0),
        .O(arp_rx_type_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    arp_rx_type_i_3
       (.I0(op_data[13]),
        .I1(op_data[2]),
        .I2(op_data[12]),
        .I3(op_data[3]),
        .O(arp_rx_type_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    arp_rx_type_i_4
       (.I0(op_data[10]),
        .I1(op_data[8]),
        .I2(op_data[5]),
        .I3(op_data[9]),
        .I4(op_data[6]),
        .I5(op_data[14]),
        .O(arp_rx_type_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    arp_rx_type_reg
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(arp_rx_type0),
        .Q(arp_rx_type));
  LUT5 #(
    .INIT(32'hFFFFFF04)) 
    \cnt[0]_i_1 
       (.I0(\cnt[0]_i_2_n_0 ),
        .I1(gmii_rx_dv),
        .I2(cnt[0]),
        .I3(\cnt[0]_i_3_n_0 ),
        .I4(\cnt[0]_i_4_n_0 ),
        .O(cnt__0[0]));
  LUT5 #(
    .INIT(32'h0D000D0D)) 
    \cnt[0]_i_2 
       (.I0(cur_state[1]),
        .I1(\cnt[4]_i_6_n_0 ),
        .I2(cur_state[2]),
        .I3(arp_rx_done_i_5_n_0),
        .I4(cur_state[3]),
        .O(\cnt[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0000FFFE0000)) 
    \cnt[0]_i_3 
       (.I0(cur_state[0]),
        .I1(cur_state[1]),
        .I2(cur_state[2]),
        .I3(cur_state[3]),
        .I4(cnt[0]),
        .I5(gmii_rx_dv),
        .O(\cnt[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \cnt[0]_i_4 
       (.I0(skip_en),
        .I1(gmii_rx_dv),
        .I2(skip_en_i_3_n_0),
        .I3(cur_state[0]),
        .O(\cnt[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFF4F4F4)) 
    \cnt[1]_i_1 
       (.I0(\cnt[4]_i_3_n_0 ),
        .I1(cnt[1]),
        .I2(\cnt[1]_i_2_n_0 ),
        .I3(\cnt[1]_i_3_n_0 ),
        .I4(cur_state[1]),
        .O(cnt__0[1]));
  LUT6 #(
    .INIT(64'h6A6A6A6A00006A00)) 
    \cnt[1]_i_2 
       (.I0(cnt[1]),
        .I1(gmii_rx_dv),
        .I2(cnt[0]),
        .I3(cur_state[2]),
        .I4(\cnt[2]_i_4_n_0 ),
        .I5(cur_state[3]),
        .O(\cnt[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5455FFFFAAAA0000)) 
    \cnt[1]_i_3 
       (.I0(cnt[0]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .I4(gmii_rx_dv),
        .I5(cnt[1]),
        .O(\cnt[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \cnt[2]_i_1 
       (.I0(\cnt[2]_i_2_n_0 ),
        .I1(cnt[2]),
        .I2(\cnt[4]_i_3_n_0 ),
        .I3(cur_state[3]),
        .I4(\cnt[2]_i_3_n_0 ),
        .O(cnt__0[2]));
  LUT6 #(
    .INIT(64'h0A6A00006A6A6A6A)) 
    \cnt[2]_i_2 
       (.I0(cnt[2]),
        .I1(skip_en_i_9_n_0),
        .I2(gmii_rx_dv),
        .I3(\cnt[2]_i_4_n_0 ),
        .I4(\cnt[2]_i_5_n_0 ),
        .I5(\cnt[3]_i_6_n_0 ),
        .O(\cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF00800000FFFFFFF)) 
    \cnt[2]_i_3 
       (.I0(cnt[4]),
        .I1(cnt[3]),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(gmii_rx_dv),
        .I5(cnt[2]),
        .O(\cnt[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \cnt[2]_i_4 
       (.I0(cnt[4]),
        .I1(cnt[3]),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(cnt[2]),
        .O(\cnt[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAAEA)) 
    \cnt[2]_i_5 
       (.I0(cur_state[2]),
        .I1(cur_state[1]),
        .I2(cnt[2]),
        .I3(gmii_rx_dv),
        .O(\cnt[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEEFFFFEFEE)) 
    \cnt[3]_i_1 
       (.I0(\cnt[3]_i_2_n_0 ),
        .I1(\cnt[3]_i_3_n_0 ),
        .I2(\cnt[4]_i_3_n_0 ),
        .I3(cnt[3]),
        .I4(cur_state[2]),
        .I5(\cnt[3]_i_4_n_0 ),
        .O(cnt__0[3]));
  LUT6 #(
    .INIT(64'h6A0000006A006A00)) 
    \cnt[3]_i_2 
       (.I0(cnt[3]),
        .I1(cnt[2]),
        .I2(skip_en_i_9_n_0),
        .I3(gmii_rx_dv),
        .I4(\cnt[3]_i_5_n_0 ),
        .I5(\cnt[3]_i_6_n_0 ),
        .O(\cnt[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E0)) 
    \cnt[3]_i_3 
       (.I0(cur_state[1]),
        .I1(cur_state[3]),
        .I2(cnt[3]),
        .I3(gmii_rx_dv),
        .O(\cnt[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC373333333333333)) 
    \cnt[3]_i_4 
       (.I0(cnt[4]),
        .I1(cnt[3]),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(cnt[2]),
        .I5(gmii_rx_dv),
        .O(\cnt[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAAAAAAAAAAAAA)) 
    \cnt[3]_i_5 
       (.I0(cur_state[3]),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(cnt[3]),
        .O(\cnt[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00020000FFFFFFFF)) 
    \cnt[3]_i_6 
       (.I0(cnt[1]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[0]),
        .I4(cnt[2]),
        .I5(cur_state[1]),
        .O(\cnt[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00010116)) 
    \cnt[4]_i_1 
       (.I0(cur_state[0]),
        .I1(cur_state[1]),
        .I2(cur_state[3]),
        .I3(cur_state[4]),
        .I4(cur_state[2]),
        .O(\cnt[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0C0CFFAE)) 
    \cnt[4]_i_2 
       (.I0(cur_state[2]),
        .I1(cnt[4]),
        .I2(\cnt[4]_i_3_n_0 ),
        .I3(\cnt[4]_i_4_n_0 ),
        .I4(\cnt[4]_i_5_n_0 ),
        .O(cnt__0[4]));
  LUT4 #(
    .INIT(16'h40FF)) 
    \cnt[4]_i_3 
       (.I0(skip_en),
        .I1(gmii_rx_dv),
        .I2(skip_en_i_3_n_0),
        .I3(cur_state[0]),
        .O(\cnt[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEFFAAAAAAAA)) 
    \cnt[4]_i_4 
       (.I0(cur_state[1]),
        .I1(cnt[4]),
        .I2(gmii_rx_dv),
        .I3(\cnt[4]_i_6_n_0 ),
        .I4(arp_rx_done_i_5_n_0),
        .I5(cur_state[3]),
        .O(\cnt[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h800000007FFFFFFF)) 
    \cnt[4]_i_5 
       (.I0(cnt[3]),
        .I1(cnt[2]),
        .I2(cnt[1]),
        .I3(cnt[0]),
        .I4(gmii_rx_dv),
        .I5(cnt[4]),
        .O(\cnt[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \cnt[4]_i_6 
       (.I0(cnt[2]),
        .I1(cnt[1]),
        .I2(cnt[3]),
        .I3(cnt[4]),
        .O(\cnt[4]_i_6_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk),
        .CE(\cnt[4]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(cnt__0[0]),
        .Q(cnt[0]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk),
        .CE(\cnt[4]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(cnt__0[1]),
        .Q(cnt[1]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk),
        .CE(\cnt[4]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(cnt__0[2]),
        .Q(cnt[2]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk),
        .CE(\cnt[4]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(cnt__0[3]),
        .Q(cnt[3]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk),
        .CE(\cnt[4]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(cnt__0[4]),
        .Q(cnt[4]));
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \cur_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(next_state[0]),
        .PRE(arp_rx_done_i_2_n_0),
        .Q(cur_state[0]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(arp_rx_done_i_2_n_0),
        .D(next_state[1]),
        .Q(cur_state[1]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(arp_rx_done_i_2_n_0),
        .D(next_state[2]),
        .Q(cur_state[2]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(arp_rx_done_i_2_n_0),
        .D(next_state[3]),
        .Q(cur_state[3]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(arp_rx_done_i_2_n_0),
        .D(next_state[4]),
        .Q(cur_state[4]));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[0]_i_1 
       (.I0(gmii_rxd[0]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[10]_i_1 
       (.I0(des_ip_t__0[2]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[11]_i_1 
       (.I0(des_ip_t__0[3]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[12]_i_1 
       (.I0(des_ip_t__0[4]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[13]_i_1 
       (.I0(des_ip_t__0[5]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[14]_i_1 
       (.I0(des_ip_t__0[6]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[15]_i_1 
       (.I0(des_ip_t__0[7]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[16]_i_1 
       (.I0(des_ip_t__0[8]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[17]_i_1 
       (.I0(des_ip_t__0[9]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[18]_i_1 
       (.I0(des_ip_t__0[10]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[19]_i_1 
       (.I0(des_ip_t__0[11]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[1]_i_1 
       (.I0(gmii_rxd[1]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[20]_i_1 
       (.I0(des_ip_t__0[12]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[21]_i_1 
       (.I0(des_ip_t__0[13]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[22]_i_1 
       (.I0(des_ip_t__0[14]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[23]_i_1 
       (.I0(des_ip_t__0[15]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[24]_i_1 
       (.I0(des_ip_t__0[16]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[25]_i_1 
       (.I0(des_ip_t__0[17]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[26]_i_1 
       (.I0(des_ip_t__0[18]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[27]_i_1 
       (.I0(des_ip_t__0[19]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[28]_i_1 
       (.I0(des_ip_t__0[20]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[29]_i_1 
       (.I0(des_ip_t__0[21]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[2]_i_1 
       (.I0(gmii_rxd[2]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[30]_i_1 
       (.I0(des_ip_t__0[22]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80008008C008C008)) 
    \des_ip_t[31]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\op_data[15]_i_2_n_0 ),
        .I2(cnt[4]),
        .I3(cnt[3]),
        .I4(cnt[1]),
        .I5(cnt[2]),
        .O(\des_ip_t[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[31]_i_2 
       (.I0(des_ip_t__0[23]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[3]_i_1 
       (.I0(gmii_rxd[3]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[4]_i_1 
       (.I0(gmii_rxd[4]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[5]_i_1 
       (.I0(gmii_rxd[5]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[6]_i_1 
       (.I0(gmii_rxd[6]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[7]_i_1 
       (.I0(gmii_rxd[7]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[8]_i_1 
       (.I0(des_ip_t__0[0]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[9]_i_1 
       (.I0(des_ip_t__0[1]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .O(\des_ip_t[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[0] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[0]_i_1_n_0 ),
        .Q(des_ip_t__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[10] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[10]_i_1_n_0 ),
        .Q(des_ip_t__0[10]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[11] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[11]_i_1_n_0 ),
        .Q(des_ip_t__0[11]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[12] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[12]_i_1_n_0 ),
        .Q(des_ip_t__0[12]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[13] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[13]_i_1_n_0 ),
        .Q(des_ip_t__0[13]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[14] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[14]_i_1_n_0 ),
        .Q(des_ip_t__0[14]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[15] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[15]_i_1_n_0 ),
        .Q(des_ip_t__0[15]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[16] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[16]_i_1_n_0 ),
        .Q(des_ip_t__0[16]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[17] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[17]_i_1_n_0 ),
        .Q(des_ip_t__0[17]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[18] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[18]_i_1_n_0 ),
        .Q(des_ip_t__0[18]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[19] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[19]_i_1_n_0 ),
        .Q(des_ip_t__0[19]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[1] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[1]_i_1_n_0 ),
        .Q(des_ip_t__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[20] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[20]_i_1_n_0 ),
        .Q(des_ip_t__0[20]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[21] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[21]_i_1_n_0 ),
        .Q(des_ip_t__0[21]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[22] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[22]_i_1_n_0 ),
        .Q(des_ip_t__0[22]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[23] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[23]_i_1_n_0 ),
        .Q(des_ip_t__0[23]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[24] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[24]_i_1_n_0 ),
        .Q(des_ip_t__0[24]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[25] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[25]_i_1_n_0 ),
        .Q(des_ip_t__0[25]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[26] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[26]_i_1_n_0 ),
        .Q(des_ip_t__0[26]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[27] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[27]_i_1_n_0 ),
        .Q(des_ip_t__0[27]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[28] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[28]_i_1_n_0 ),
        .Q(des_ip_t__0[28]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[29] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[29]_i_1_n_0 ),
        .Q(des_ip_t__0[29]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[2] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[2]_i_1_n_0 ),
        .Q(des_ip_t__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[30] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[30]_i_1_n_0 ),
        .Q(des_ip_t__0[30]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[31] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[31]_i_2_n_0 ),
        .Q(des_ip_t__0[31]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[3] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[3]_i_1_n_0 ),
        .Q(des_ip_t__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[4] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[4]_i_1_n_0 ),
        .Q(des_ip_t__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[5] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[5]_i_1_n_0 ),
        .Q(des_ip_t__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[6] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[6]_i_1_n_0 ),
        .Q(des_ip_t__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[7] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[7]_i_1_n_0 ),
        .Q(des_ip_t__0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[8] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[8]_i_1_n_0 ),
        .Q(des_ip_t__0[8]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[9] 
       (.C(clk),
        .CE(\des_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_ip_t[9]_i_1_n_0 ),
        .Q(des_ip_t__0[9]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[0]_i_1 
       (.I0(gmii_rxd[0]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[10]_i_1 
       (.I0(data0[10]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[11]_i_1 
       (.I0(data0[11]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[12]_i_1 
       (.I0(data0[12]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[13]_i_1 
       (.I0(data0[13]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[14]_i_1 
       (.I0(data0[14]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[15]_i_1 
       (.I0(data0[15]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[16]_i_1 
       (.I0(data0[16]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[17]_i_1 
       (.I0(data0[17]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[18]_i_1 
       (.I0(data0[18]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[19]_i_1 
       (.I0(data0[19]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[1]_i_1 
       (.I0(gmii_rxd[1]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[20]_i_1 
       (.I0(data0[20]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[21]_i_1 
       (.I0(data0[21]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[22]_i_1 
       (.I0(data0[22]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[23]_i_1 
       (.I0(data0[23]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[24]_i_1 
       (.I0(data0[24]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[25]_i_1 
       (.I0(data0[25]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[26]_i_1 
       (.I0(data0[26]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[27]_i_1 
       (.I0(data0[27]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[28]_i_1 
       (.I0(data0[28]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[29]_i_1 
       (.I0(data0[29]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[2]_i_1 
       (.I0(gmii_rxd[2]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[30]_i_1 
       (.I0(data0[30]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[31]_i_1 
       (.I0(data0[31]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[32]_i_1 
       (.I0(data0[32]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[33]_i_1 
       (.I0(data0[33]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[34]_i_1 
       (.I0(data0[34]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[35]_i_1 
       (.I0(data0[35]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[35]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[36]_i_1 
       (.I0(data0[36]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[36]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[37]_i_1 
       (.I0(data0[37]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[37]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[38]_i_1 
       (.I0(data0[38]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[38]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[39]_i_1 
       (.I0(data0[39]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[39]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[3]_i_1 
       (.I0(gmii_rxd[3]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[40]_i_1 
       (.I0(data0[40]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[40]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[41]_i_1 
       (.I0(data0[41]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[41]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[42]_i_1 
       (.I0(data0[42]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[42]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[43]_i_1 
       (.I0(data0[43]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[43]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[44]_i_1 
       (.I0(data0[44]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[44]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[45]_i_1 
       (.I0(data0[45]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[45]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[46]_i_1 
       (.I0(data0[46]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[46]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h54FF545454545454)) 
    \des_mac_t[47]_i_1 
       (.I0(\des_mac_t[47]_i_3_n_0 ),
        .I1(arp_rx_done_i_3_n_0),
        .I2(\des_mac_t[47]_i_4_n_0 ),
        .I3(\des_mac_t[47]_i_5_n_0 ),
        .I4(\des_mac_t[47]_i_6_n_0 ),
        .I5(skip_en_i_4_n_0),
        .O(\des_mac_t[47]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[47]_i_2 
       (.I0(data0[47]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[47]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7775757DFFFFFFFF)) 
    \des_mac_t[47]_i_3 
       (.I0(\src_ip_t[31]_i_1_n_0 ),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .I3(cnt[1]),
        .I4(cnt[2]),
        .I5(gmii_rx_dv),
        .O(\des_mac_t[47]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0E00)) 
    \des_mac_t[47]_i_4 
       (.I0(cnt[1]),
        .I1(cnt[2]),
        .I2(cnt[3]),
        .I3(cnt[4]),
        .O(\des_mac_t[47]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \des_mac_t[47]_i_5 
       (.I0(gmii_rx_dv),
        .I1(cur_state[2]),
        .O(\des_mac_t[47]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \des_mac_t[47]_i_6 
       (.I0(cur_state[4]),
        .I1(cur_state[3]),
        .I2(cur_state[1]),
        .I3(cur_state[0]),
        .O(\des_mac_t[47]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[4]_i_1 
       (.I0(gmii_rxd[4]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[5]_i_1 
       (.I0(gmii_rxd[5]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[6]_i_1 
       (.I0(gmii_rxd[6]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[7]_i_1 
       (.I0(gmii_rxd[7]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[8]_i_1 
       (.I0(data0[8]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A80000)) 
    \des_mac_t[9]_i_1 
       (.I0(data0[9]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cur_state[2]),
        .O(\des_mac_t[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[0] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[0]_i_1_n_0 ),
        .Q(data0[8]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[10] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[10]_i_1_n_0 ),
        .Q(data0[18]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[11] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[11]_i_1_n_0 ),
        .Q(data0[19]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[12] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[12]_i_1_n_0 ),
        .Q(data0[20]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[13] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[13]_i_1_n_0 ),
        .Q(data0[21]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[14] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[14]_i_1_n_0 ),
        .Q(data0[22]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[15] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[15]_i_1_n_0 ),
        .Q(data0[23]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[16] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[16]_i_1_n_0 ),
        .Q(data0[24]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[17] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[17]_i_1_n_0 ),
        .Q(data0[25]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[18] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[18]_i_1_n_0 ),
        .Q(data0[26]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[19] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[19]_i_1_n_0 ),
        .Q(data0[27]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[1] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[1]_i_1_n_0 ),
        .Q(data0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[20] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[20]_i_1_n_0 ),
        .Q(data0[28]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[21] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[21]_i_1_n_0 ),
        .Q(data0[29]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[22] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[22]_i_1_n_0 ),
        .Q(data0[30]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[23] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[23]_i_1_n_0 ),
        .Q(data0[31]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[24] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[24]_i_1_n_0 ),
        .Q(data0[32]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[25] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[25]_i_1_n_0 ),
        .Q(data0[33]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[26] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[26]_i_1_n_0 ),
        .Q(data0[34]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[27] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[27]_i_1_n_0 ),
        .Q(data0[35]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[28] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[28]_i_1_n_0 ),
        .Q(data0[36]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[29] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[29]_i_1_n_0 ),
        .Q(data0[37]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[2] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[2]_i_1_n_0 ),
        .Q(data0[10]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[30] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[30]_i_1_n_0 ),
        .Q(data0[38]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[31] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[31]_i_1_n_0 ),
        .Q(data0[39]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[32] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[32]_i_1_n_0 ),
        .Q(data0[40]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[33] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[33]_i_1_n_0 ),
        .Q(data0[41]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[34] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[34]_i_1_n_0 ),
        .Q(data0[42]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[35] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[35]_i_1_n_0 ),
        .Q(data0[43]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[36] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[36]_i_1_n_0 ),
        .Q(data0[44]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[37] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[37]_i_1_n_0 ),
        .Q(data0[45]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[38] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[38]_i_1_n_0 ),
        .Q(data0[46]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[39] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[39]_i_1_n_0 ),
        .Q(data0[47]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[3] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[3]_i_1_n_0 ),
        .Q(data0[11]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[40] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[40]_i_1_n_0 ),
        .Q(\des_mac_t_reg_n_0_[40] ));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[41] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[41]_i_1_n_0 ),
        .Q(\des_mac_t_reg_n_0_[41] ));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[42] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[42]_i_1_n_0 ),
        .Q(\des_mac_t_reg_n_0_[42] ));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[43] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[43]_i_1_n_0 ),
        .Q(\des_mac_t_reg_n_0_[43] ));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[44] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[44]_i_1_n_0 ),
        .Q(\des_mac_t_reg_n_0_[44] ));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[45] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[45]_i_1_n_0 ),
        .Q(\des_mac_t_reg_n_0_[45] ));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[46] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[46]_i_1_n_0 ),
        .Q(\des_mac_t_reg_n_0_[46] ));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[47] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[47]_i_2_n_0 ),
        .Q(\des_mac_t_reg_n_0_[47] ));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[4] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[4]_i_1_n_0 ),
        .Q(data0[12]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[5] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[5]_i_1_n_0 ),
        .Q(data0[13]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[6] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[6]_i_1_n_0 ),
        .Q(data0[14]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[7] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[7]_i_1_n_0 ),
        .Q(data0[15]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[8] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[8]_i_1_n_0 ),
        .Q(data0[16]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[9] 
       (.C(clk),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\des_mac_t[9]_i_1_n_0 ),
        .Q(data0[17]));
  LUT6 #(
    .INIT(64'h8888888888A8AAAA)) 
    error_en_i_1
       (.I0(next_state_inferred_i_6_n_0),
        .I1(error_en_i_2_n_0),
        .I2(error_en_i_3_n_0),
        .I3(error_en_i_4_n_0),
        .I4(error_en_i_5_n_0),
        .I5(error_en_i_6_n_0),
        .O(error_en_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    error_en_i_10
       (.I0(data0[45]),
        .I1(\des_mac_t_reg_n_0_[46] ),
        .I2(data0[31]),
        .I3(data0[37]),
        .I4(error_en_i_29_n_0),
        .O(error_en_i_10_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    error_en_i_11
       (.I0(data0[26]),
        .I1(\des_mac_t_reg_n_0_[41] ),
        .I2(data0[15]),
        .I3(data0[23]),
        .I4(error_en_i_30_n_0),
        .O(error_en_i_11_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    error_en_i_12
       (.I0(data0[8]),
        .I1(data0[25]),
        .I2(data0[14]),
        .I3(data0[28]),
        .I4(error_en_i_31_n_0),
        .O(error_en_i_12_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    error_en_i_13
       (.I0(data0[19]),
        .I1(\des_mac_t_reg_n_0_[47] ),
        .I2(data0[34]),
        .I3(data0[38]),
        .I4(error_en_i_32_n_0),
        .O(error_en_i_13_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    error_en_i_14
       (.I0(data0[44]),
        .I1(\des_mac_t_reg_n_0_[40] ),
        .I2(data0[27]),
        .I3(\des_mac_t_reg_n_0_[43] ),
        .I4(error_en_i_33_n_0),
        .O(error_en_i_14_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    error_en_i_15
       (.I0(data0[13]),
        .I1(data0[17]),
        .I2(data0[41]),
        .I3(data0[42]),
        .I4(error_en_i_34_n_0),
        .O(error_en_i_15_n_0));
  LUT4 #(
    .INIT(16'hFFBF)) 
    error_en_i_16
       (.I0(cnt[3]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[0]),
        .O(error_en_i_16_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    error_en_i_17
       (.I0(error_en_i_35_n_0),
        .I1(error_en_i_36_n_0),
        .I2(error_en_i_37_n_0),
        .I3(error_en_i_38_n_0),
        .O(error_en_i_17_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    error_en_i_18
       (.I0(data0[19]),
        .I1(\des_mac_t_reg_n_0_[44] ),
        .I2(\des_mac_t_reg_n_0_[43] ),
        .I3(\des_mac_t_reg_n_0_[45] ),
        .I4(error_en_i_39_n_0),
        .O(error_en_i_18_n_0));
  LUT5 #(
    .INIT(32'h00001000)) 
    error_en_i_19
       (.I0(data0[17]),
        .I1(data0[45]),
        .I2(data0[18]),
        .I3(data0[44]),
        .I4(error_en_i_40_n_0),
        .O(error_en_i_19_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBBBA)) 
    error_en_i_2
       (.I0(error_en_i_7_n_0),
        .I1(error_en_i_8_n_0),
        .I2(arp_rx_done_i_9_n_0),
        .I3(error_en_i_9_n_0),
        .I4(arp_rx_done_i_6_n_0),
        .I5(arp_rx_type_i_2_n_0),
        .O(error_en_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    error_en_i_20
       (.I0(data0[23]),
        .I1(data0[35]),
        .I2(data0[15]),
        .I3(data0[16]),
        .I4(error_en_i_41_n_0),
        .O(error_en_i_20_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    error_en_i_21
       (.I0(\eth_type_reg_n_0_[13] ),
        .I1(gmii_rxd[1]),
        .I2(gmii_rxd[4]),
        .I3(\eth_type_reg_n_0_[15] ),
        .I4(\eth_type_reg_n_0_[12] ),
        .I5(\eth_type_reg_n_0_[14] ),
        .O(error_en_i_21_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    error_en_i_22
       (.I0(gmii_rxd[7]),
        .I1(\eth_type_reg_n_0_[8] ),
        .I2(gmii_rxd[6]),
        .I3(error_en_i_42_n_0),
        .O(error_en_i_22_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    error_en_i_23
       (.I0(gmii_rx_dv),
        .I1(cur_state[1]),
        .O(error_en_i_23_n_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    error_en_i_24
       (.I0(cnt[2]),
        .I1(cnt[0]),
        .I2(cnt[3]),
        .I3(cnt[4]),
        .I4(cnt[1]),
        .O(error_en_i_24_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    error_en_i_25
       (.I0(gmii_rxd[0]),
        .I1(gmii_rxd[4]),
        .I2(gmii_rxd[6]),
        .I3(gmii_rxd[1]),
        .O(error_en_i_25_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    error_en_i_26
       (.I0(cnt[4]),
        .I1(cnt[3]),
        .O(error_en_i_26_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    error_en_i_27
       (.I0(des_ip_t__0[26]),
        .I1(des_ip_t__0[15]),
        .I2(des_ip_t__0[24]),
        .I3(des_ip_t__0[16]),
        .O(error_en_i_27_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    error_en_i_28
       (.I0(des_ip_t__0[11]),
        .I1(des_ip_t__0[0]),
        .I2(des_ip_t__0[25]),
        .I3(des_ip_t__0[10]),
        .O(error_en_i_28_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    error_en_i_29
       (.I0(\des_mac_t_reg_n_0_[45] ),
        .I1(data0[35]),
        .I2(\des_mac_t_reg_n_0_[42] ),
        .I3(data0[36]),
        .O(error_en_i_29_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    error_en_i_3
       (.I0(error_en_i_10_n_0),
        .I1(error_en_i_11_n_0),
        .I2(error_en_i_12_n_0),
        .I3(error_en_i_13_n_0),
        .I4(error_en_i_14_n_0),
        .I5(error_en_i_15_n_0),
        .O(error_en_i_3_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    error_en_i_30
       (.I0(data0[43]),
        .I1(data0[40]),
        .I2(data0[47]),
        .I3(data0[39]),
        .O(error_en_i_30_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    error_en_i_31
       (.I0(data0[24]),
        .I1(data0[10]),
        .I2(data0[29]),
        .I3(data0[12]),
        .O(error_en_i_31_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    error_en_i_32
       (.I0(data0[33]),
        .I1(data0[22]),
        .I2(data0[30]),
        .I3(data0[9]),
        .O(error_en_i_32_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    error_en_i_33
       (.I0(\des_mac_t_reg_n_0_[44] ),
        .I1(data0[21]),
        .I2(data0[46]),
        .I3(data0[20]),
        .O(error_en_i_33_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    error_en_i_34
       (.I0(data0[32]),
        .I1(data0[18]),
        .I2(data0[16]),
        .I3(data0[11]),
        .O(error_en_i_34_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    error_en_i_35
       (.I0(data0[31]),
        .I1(data0[20]),
        .I2(\des_mac_t_reg_n_0_[47] ),
        .I3(data0[11]),
        .O(error_en_i_35_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    error_en_i_36
       (.I0(data0[46]),
        .I1(data0[9]),
        .I2(data0[39]),
        .I3(data0[36]),
        .O(error_en_i_36_n_0));
  LUT4 #(
    .INIT(16'hFFF7)) 
    error_en_i_37
       (.I0(data0[40]),
        .I1(data0[37]),
        .I2(\des_mac_t_reg_n_0_[41] ),
        .I3(data0[32]),
        .O(error_en_i_37_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    error_en_i_38
       (.I0(\des_mac_t_reg_n_0_[40] ),
        .I1(data0[13]),
        .I2(data0[34]),
        .I3(data0[30]),
        .O(error_en_i_38_n_0));
  LUT4 #(
    .INIT(16'hFFF7)) 
    error_en_i_39
       (.I0(data0[33]),
        .I1(data0[22]),
        .I2(data0[43]),
        .I3(data0[26]),
        .O(error_en_i_39_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABAAAA)) 
    error_en_i_4
       (.I0(error_en_i_16_n_0),
        .I1(error_en_i_17_n_0),
        .I2(error_en_i_18_n_0),
        .I3(error_en_i_12_n_0),
        .I4(error_en_i_19_n_0),
        .I5(error_en_i_20_n_0),
        .O(error_en_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    error_en_i_40
       (.I0(data0[41]),
        .I1(data0[27]),
        .I2(data0[47]),
        .I3(data0[21]),
        .O(error_en_i_40_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    error_en_i_41
       (.I0(\des_mac_t_reg_n_0_[42] ),
        .I1(data0[38]),
        .I2(\des_mac_t_reg_n_0_[46] ),
        .I3(data0[42]),
        .O(error_en_i_41_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    error_en_i_42
       (.I0(\eth_type_reg_n_0_[10] ),
        .I1(gmii_rxd[0]),
        .I2(\eth_type_reg_n_0_[11] ),
        .I3(\eth_type_reg_n_0_[9] ),
        .O(error_en_i_42_n_0));
  LUT6 #(
    .INIT(64'h55555555555555D5)) 
    error_en_i_5
       (.I0(\cnt[2]_i_4_n_0 ),
        .I1(error_en_i_21_n_0),
        .I2(gmii_rxd[2]),
        .I3(gmii_rxd[5]),
        .I4(gmii_rxd[3]),
        .I5(error_en_i_22_n_0),
        .O(error_en_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF15FFFFFF)) 
    error_en_i_6
       (.I0(cnt[3]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(gmii_rx_dv),
        .I4(cur_state[2]),
        .I5(cnt[4]),
        .O(error_en_i_6_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAA888808888)) 
    error_en_i_7
       (.I0(error_en_i_23_n_0),
        .I1(error_en_i_24_n_0),
        .I2(skip_en_i_8_n_0),
        .I3(error_en_i_25_n_0),
        .I4(gmii_rxd[7]),
        .I5(skip_en_i_4_n_0),
        .O(error_en_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    error_en_i_8
       (.I0(cur_state[3]),
        .I1(arp_rx_done_i_4_n_0),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(cnt[2]),
        .I5(error_en_i_26_n_0),
        .O(error_en_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    error_en_i_9
       (.I0(arp_rx_done_i_12_n_0),
        .I1(error_en_i_27_n_0),
        .I2(arp_rx_done_i_11_n_0),
        .I3(error_en_i_28_n_0),
        .O(error_en_i_9_n_0));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    error_en_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(arp_rx_done_i_2_n_0),
        .D(error_en_i_1_n_0),
        .Q(error_en));
  LUT5 #(
    .INIT(32'h00010000)) 
    \eth_type[15]_i_1 
       (.I0(cur_state[0]),
        .I1(cur_state[1]),
        .I2(cur_state[3]),
        .I3(cur_state[4]),
        .I4(\eth_type[15]_i_2_n_0 ),
        .O(\eth_type[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \eth_type[15]_i_2 
       (.I0(cnt[3]),
        .I1(cnt[2]),
        .I2(cnt[1]),
        .I3(cnt[0]),
        .I4(\eth_type[15]_i_3_n_0 ),
        .O(\eth_type[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \eth_type[15]_i_3 
       (.I0(cnt[4]),
        .I1(cur_state[2]),
        .I2(gmii_rx_dv),
        .O(\eth_type[15]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \eth_type_reg[10] 
       (.C(clk),
        .CE(\eth_type[15]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(gmii_rxd[2]),
        .Q(\eth_type_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \eth_type_reg[11] 
       (.C(clk),
        .CE(\eth_type[15]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(gmii_rxd[3]),
        .Q(\eth_type_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \eth_type_reg[12] 
       (.C(clk),
        .CE(\eth_type[15]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(gmii_rxd[4]),
        .Q(\eth_type_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \eth_type_reg[13] 
       (.C(clk),
        .CE(\eth_type[15]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(gmii_rxd[5]),
        .Q(\eth_type_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \eth_type_reg[14] 
       (.C(clk),
        .CE(\eth_type[15]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(gmii_rxd[6]),
        .Q(\eth_type_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \eth_type_reg[15] 
       (.C(clk),
        .CE(\eth_type[15]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(gmii_rxd[7]),
        .Q(\eth_type_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \eth_type_reg[8] 
       (.C(clk),
        .CE(\eth_type[15]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(gmii_rxd[0]),
        .Q(\eth_type_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \eth_type_reg[9] 
       (.C(clk),
        .CE(\eth_type[15]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(gmii_rxd[1]),
        .Q(\eth_type_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'hAAA80808AAA80A08)) 
    next_state_inferred_i_1
       (.I0(next_state_inferred_i_6_n_0),
        .I1(cur_state[4]),
        .I2(skip_en),
        .I3(error_en),
        .I4(cur_state[3]),
        .I5(next_state_inferred_i_7_n_0),
        .O(next_state[4]));
  LUT5 #(
    .INIT(32'h8080A280)) 
    next_state_inferred_i_2
       (.I0(next_state_inferred_i_6_n_0),
        .I1(skip_en),
        .I2(cur_state[2]),
        .I3(cur_state[3]),
        .I4(error_en),
        .O(next_state[3]));
  LUT5 #(
    .INIT(32'h8080A280)) 
    next_state_inferred_i_3
       (.I0(next_state_inferred_i_6_n_0),
        .I1(skip_en),
        .I2(cur_state[1]),
        .I3(cur_state[2]),
        .I4(error_en),
        .O(next_state[2]));
  LUT5 #(
    .INIT(32'h8080A280)) 
    next_state_inferred_i_4
       (.I0(next_state_inferred_i_6_n_0),
        .I1(skip_en),
        .I2(cur_state[0]),
        .I3(cur_state[1]),
        .I4(error_en),
        .O(next_state[1]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    next_state_inferred_i_5
       (.I0(cur_state[0]),
        .I1(skip_en),
        .I2(cur_state[4]),
        .I3(next_state_inferred_i_6_n_0),
        .O(next_state[0]));
  LUT5 #(
    .INIT(32'h00010116)) 
    next_state_inferred_i_6
       (.I0(cur_state[0]),
        .I1(cur_state[1]),
        .I2(cur_state[2]),
        .I3(cur_state[3]),
        .I4(cur_state[4]),
        .O(next_state_inferred_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    next_state_inferred_i_7
       (.I0(cur_state[2]),
        .I1(cur_state[1]),
        .O(next_state_inferred_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \op_data[15]_i_1 
       (.I0(\op_data[15]_i_2_n_0 ),
        .I1(cnt[1]),
        .I2(cnt[4]),
        .I3(cnt[3]),
        .I4(cnt[0]),
        .I5(cnt[2]),
        .O(\op_data[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \op_data[15]_i_2 
       (.I0(cur_state[4]),
        .I1(cur_state[2]),
        .I2(cur_state[3]),
        .I3(cur_state[0]),
        .I4(cur_state[1]),
        .I5(gmii_rx_dv),
        .O(\op_data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \op_data[7]_i_1 
       (.I0(\op_data[15]_i_2_n_0 ),
        .I1(cnt[2]),
        .I2(cnt[1]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(cnt[0]),
        .O(\op_data[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[0] 
       (.C(clk),
        .CE(\op_data[7]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(gmii_rxd[0]),
        .Q(op_data[0]));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[10] 
       (.C(clk),
        .CE(\op_data[15]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(gmii_rxd[2]),
        .Q(op_data[10]));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[11] 
       (.C(clk),
        .CE(\op_data[15]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(gmii_rxd[3]),
        .Q(op_data[11]));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[12] 
       (.C(clk),
        .CE(\op_data[15]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(gmii_rxd[4]),
        .Q(op_data[12]));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[13] 
       (.C(clk),
        .CE(\op_data[15]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(gmii_rxd[5]),
        .Q(op_data[13]));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[14] 
       (.C(clk),
        .CE(\op_data[15]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(gmii_rxd[6]),
        .Q(op_data[14]));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[15] 
       (.C(clk),
        .CE(\op_data[15]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(gmii_rxd[7]),
        .Q(op_data[15]));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[1] 
       (.C(clk),
        .CE(\op_data[7]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(gmii_rxd[1]),
        .Q(op_data[1]));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[2] 
       (.C(clk),
        .CE(\op_data[7]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(gmii_rxd[2]),
        .Q(op_data[2]));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[3] 
       (.C(clk),
        .CE(\op_data[7]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(gmii_rxd[3]),
        .Q(op_data[3]));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[4] 
       (.C(clk),
        .CE(\op_data[7]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(gmii_rxd[4]),
        .Q(op_data[4]));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[5] 
       (.C(clk),
        .CE(\op_data[7]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(gmii_rxd[5]),
        .Q(op_data[5]));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[6] 
       (.C(clk),
        .CE(\op_data[7]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(gmii_rxd[6]),
        .Q(op_data[6]));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[7] 
       (.C(clk),
        .CE(\op_data[7]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(gmii_rxd[7]),
        .Q(op_data[7]));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[8] 
       (.C(clk),
        .CE(\op_data[15]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(gmii_rxd[0]),
        .Q(op_data[8]));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[9] 
       (.C(clk),
        .CE(\op_data[15]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(gmii_rxd[1]),
        .Q(op_data[9]));
  LUT6 #(
    .INIT(64'hAAAA2022AAAAAAAA)) 
    skip_en_i_1
       (.I0(next_state_inferred_i_6_n_0),
        .I1(skip_en_i_2_n_0),
        .I2(skip_en_i_3_n_0),
        .I3(skip_en_i_4_n_0),
        .I4(skip_en_i_5_n_0),
        .I5(skip_en_i_6_n_0),
        .O(skip_en__0));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    skip_en_i_2
       (.I0(cnt[2]),
        .I1(skip_en_i_7_n_0),
        .I2(gmii_rx_dv),
        .I3(cur_state[1]),
        .I4(cnt[1]),
        .I5(cnt[0]),
        .O(skip_en_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    skip_en_i_3
       (.I0(gmii_rxd[7]),
        .I1(gmii_rxd[0]),
        .I2(gmii_rxd[4]),
        .I3(gmii_rxd[6]),
        .I4(gmii_rxd[1]),
        .I5(skip_en_i_8_n_0),
        .O(skip_en_i_3_n_0));
  LUT4 #(
    .INIT(16'h0007)) 
    skip_en_i_4
       (.I0(cnt[2]),
        .I1(cnt[1]),
        .I2(cnt[3]),
        .I3(cnt[4]),
        .O(skip_en_i_4_n_0));
  LUT6 #(
    .INIT(64'hF0F8F0F8F0FFF0F0)) 
    skip_en_i_5
       (.I0(cur_state[0]),
        .I1(skip_en_i_3_n_0),
        .I2(\eth_type[15]_i_2_n_0 ),
        .I3(skip_en),
        .I4(cur_state[4]),
        .I5(gmii_rx_dv),
        .O(skip_en_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFDFFFFFFF)) 
    skip_en_i_6
       (.I0(cur_state[3]),
        .I1(\src_ip_t[31]_i_4_n_0 ),
        .I2(cnt[3]),
        .I3(cnt[4]),
        .I4(skip_en_i_9_n_0),
        .I5(cnt[2]),
        .O(skip_en_i_6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    skip_en_i_7
       (.I0(cnt[4]),
        .I1(cnt[3]),
        .O(skip_en_i_7_n_0));
  LUT3 #(
    .INIT(8'hEF)) 
    skip_en_i_8
       (.I0(gmii_rxd[3]),
        .I1(gmii_rxd[5]),
        .I2(gmii_rxd[2]),
        .O(skip_en_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    skip_en_i_9
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .O(skip_en_i_9_n_0));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    skip_en_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(arp_rx_done_i_2_n_0),
        .D(skip_en__0),
        .Q(skip_en));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[0] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[0]),
        .Q(src_ip[0]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[10] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[10]),
        .Q(src_ip[10]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[11] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[11]),
        .Q(src_ip[11]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[12] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[12]),
        .Q(src_ip[12]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[13] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[13]),
        .Q(src_ip[13]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[14] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[14]),
        .Q(src_ip[14]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[15] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[15]),
        .Q(src_ip[15]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[16] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[16]),
        .Q(src_ip[16]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[17] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[17]),
        .Q(src_ip[17]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[18] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[18]),
        .Q(src_ip[18]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[19] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[19]),
        .Q(src_ip[19]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[1] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[1]),
        .Q(src_ip[1]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[20] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[20]),
        .Q(src_ip[20]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[21] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[21]),
        .Q(src_ip[21]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[22] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[22]),
        .Q(src_ip[22]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[23] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[23]),
        .Q(src_ip[23]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[24] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[24]),
        .Q(src_ip[24]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[25] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[25]),
        .Q(src_ip[25]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[26] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[26]),
        .Q(src_ip[26]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[27] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[27]),
        .Q(src_ip[27]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[28] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[28]),
        .Q(src_ip[28]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[29] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[29]),
        .Q(src_ip[29]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[2] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[2]),
        .Q(src_ip[2]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[30] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[30]),
        .Q(src_ip[30]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[31] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[31]),
        .Q(src_ip[31]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[3] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[3]),
        .Q(src_ip[3]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[4] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[4]),
        .Q(src_ip[4]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[5] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[5]),
        .Q(src_ip[5]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[6] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[6]),
        .Q(src_ip[6]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[7] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[7]),
        .Q(src_ip[7]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[8] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[8]),
        .Q(src_ip[8]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[9] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_ip_t[9]),
        .Q(src_ip[9]));
  LUT6 #(
    .INIT(64'hF0FFF0C0F0D0F0D0)) 
    \src_ip_t[0]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[0]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(gmii_rxd[0]),
        .I5(\src_ip_t[31]_i_5_n_0 ),
        .O(\src_ip_t[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0D0F0C0F0D0)) 
    \src_ip_t[10]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[10]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(\src_ip_t[31]_i_5_n_0 ),
        .I5(src_ip_t[2]),
        .O(\src_ip_t[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0D0F0C0F0D0)) 
    \src_ip_t[11]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[11]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(\src_ip_t[31]_i_5_n_0 ),
        .I5(src_ip_t[3]),
        .O(\src_ip_t[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0D0F0C0F0D0)) 
    \src_ip_t[12]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[12]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(\src_ip_t[31]_i_5_n_0 ),
        .I5(src_ip_t[4]),
        .O(\src_ip_t[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0D0F0C0F0D0)) 
    \src_ip_t[13]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[13]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(\src_ip_t[31]_i_5_n_0 ),
        .I5(src_ip_t[5]),
        .O(\src_ip_t[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0D0F0C0F0D0)) 
    \src_ip_t[14]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[14]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(\src_ip_t[31]_i_5_n_0 ),
        .I5(src_ip_t[6]),
        .O(\src_ip_t[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0D0F0C0F0D0)) 
    \src_ip_t[15]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[15]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(\src_ip_t[31]_i_5_n_0 ),
        .I5(src_ip_t[7]),
        .O(\src_ip_t[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0D0F0C0F0D0)) 
    \src_ip_t[16]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[16]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(\src_ip_t[31]_i_5_n_0 ),
        .I5(src_ip_t[8]),
        .O(\src_ip_t[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0D0F0C0F0D0)) 
    \src_ip_t[17]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[17]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(\src_ip_t[31]_i_5_n_0 ),
        .I5(src_ip_t[9]),
        .O(\src_ip_t[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0D0F0C0F0D0)) 
    \src_ip_t[18]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[18]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(\src_ip_t[31]_i_5_n_0 ),
        .I5(src_ip_t[10]),
        .O(\src_ip_t[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0D0F0C0F0D0)) 
    \src_ip_t[19]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[19]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(\src_ip_t[31]_i_5_n_0 ),
        .I5(src_ip_t[11]),
        .O(\src_ip_t[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0C0F0D0F0D0)) 
    \src_ip_t[1]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[1]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(gmii_rxd[1]),
        .I5(\src_ip_t[31]_i_5_n_0 ),
        .O(\src_ip_t[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0D0F0C0F0D0)) 
    \src_ip_t[20]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[20]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(\src_ip_t[31]_i_5_n_0 ),
        .I5(src_ip_t[12]),
        .O(\src_ip_t[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0D0F0C0F0D0)) 
    \src_ip_t[21]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[21]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(\src_ip_t[31]_i_5_n_0 ),
        .I5(src_ip_t[13]),
        .O(\src_ip_t[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0D0F0C0F0D0)) 
    \src_ip_t[22]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[22]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(\src_ip_t[31]_i_5_n_0 ),
        .I5(src_ip_t[14]),
        .O(\src_ip_t[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0D0F0C0F0D0)) 
    \src_ip_t[23]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[23]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(\src_ip_t[31]_i_5_n_0 ),
        .I5(src_ip_t[15]),
        .O(\src_ip_t[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0D0F0C0F0D0)) 
    \src_ip_t[24]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[24]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(\src_ip_t[31]_i_5_n_0 ),
        .I5(src_ip_t[16]),
        .O(\src_ip_t[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0D0F0C0F0D0)) 
    \src_ip_t[25]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[25]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(\src_ip_t[31]_i_5_n_0 ),
        .I5(src_ip_t[17]),
        .O(\src_ip_t[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0D0F0C0F0D0)) 
    \src_ip_t[26]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[26]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(\src_ip_t[31]_i_5_n_0 ),
        .I5(src_ip_t[18]),
        .O(\src_ip_t[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0D0F0C0F0D0)) 
    \src_ip_t[27]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[27]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(\src_ip_t[31]_i_5_n_0 ),
        .I5(src_ip_t[19]),
        .O(\src_ip_t[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0D0F0C0F0D0)) 
    \src_ip_t[28]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[28]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(\src_ip_t[31]_i_5_n_0 ),
        .I5(src_ip_t[20]),
        .O(\src_ip_t[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0D0F0C0F0D0)) 
    \src_ip_t[29]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[29]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(\src_ip_t[31]_i_5_n_0 ),
        .I5(src_ip_t[21]),
        .O(\src_ip_t[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0C0F0D0F0D0)) 
    \src_ip_t[2]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[2]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(gmii_rxd[2]),
        .I5(\src_ip_t[31]_i_5_n_0 ),
        .O(\src_ip_t[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0D0F0C0F0D0)) 
    \src_ip_t[30]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[30]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(\src_ip_t[31]_i_5_n_0 ),
        .I5(src_ip_t[22]),
        .O(\src_ip_t[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \src_ip_t[31]_i_1 
       (.I0(cur_state[1]),
        .I1(cur_state[0]),
        .I2(cur_state[3]),
        .I3(cur_state[2]),
        .I4(cur_state[4]),
        .O(\src_ip_t[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0D0F0C0F0D0)) 
    \src_ip_t[31]_i_2 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[31]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(\src_ip_t[31]_i_5_n_0 ),
        .I5(src_ip_t[23]),
        .O(\src_ip_t[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h002A)) 
    \src_ip_t[31]_i_3 
       (.I0(cnt[3]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[4]),
        .O(\src_ip_t[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h1000FFFF)) 
    \src_ip_t[31]_i_4 
       (.I0(cnt[4]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(gmii_rx_dv),
        .O(\src_ip_t[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4002)) 
    \src_ip_t[31]_i_5 
       (.I0(cnt[4]),
        .I1(cnt[3]),
        .I2(cnt[2]),
        .I3(cnt[1]),
        .O(\src_ip_t[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0C0F0D0F0D0)) 
    \src_ip_t[3]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[3]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(gmii_rxd[3]),
        .I5(\src_ip_t[31]_i_5_n_0 ),
        .O(\src_ip_t[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0C0F0D0F0D0)) 
    \src_ip_t[4]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[4]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(gmii_rxd[4]),
        .I5(\src_ip_t[31]_i_5_n_0 ),
        .O(\src_ip_t[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0C0F0D0F0D0)) 
    \src_ip_t[5]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[5]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(gmii_rxd[5]),
        .I5(\src_ip_t[31]_i_5_n_0 ),
        .O(\src_ip_t[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0C0F0D0F0D0)) 
    \src_ip_t[6]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[6]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(gmii_rxd[6]),
        .I5(\src_ip_t[31]_i_5_n_0 ),
        .O(\src_ip_t[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0C0F0D0F0D0)) 
    \src_ip_t[7]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[7]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(gmii_rxd[7]),
        .I5(\src_ip_t[31]_i_5_n_0 ),
        .O(\src_ip_t[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0D0F0C0F0D0)) 
    \src_ip_t[8]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[8]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(\src_ip_t[31]_i_5_n_0 ),
        .I5(src_ip_t[0]),
        .O(\src_ip_t[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0D0F0C0F0D0)) 
    \src_ip_t[9]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(src_ip_t[9]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(\src_ip_t[31]_i_5_n_0 ),
        .I5(src_ip_t[1]),
        .O(\src_ip_t[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[0] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[0]_i_1_n_0 ),
        .Q(src_ip_t[0]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[10] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[10]_i_1_n_0 ),
        .Q(src_ip_t[10]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[11] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[11]_i_1_n_0 ),
        .Q(src_ip_t[11]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[12] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[12]_i_1_n_0 ),
        .Q(src_ip_t[12]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[13] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[13]_i_1_n_0 ),
        .Q(src_ip_t[13]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[14] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[14]_i_1_n_0 ),
        .Q(src_ip_t[14]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[15] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[15]_i_1_n_0 ),
        .Q(src_ip_t[15]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[16] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[16]_i_1_n_0 ),
        .Q(src_ip_t[16]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[17] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[17]_i_1_n_0 ),
        .Q(src_ip_t[17]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[18] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[18]_i_1_n_0 ),
        .Q(src_ip_t[18]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[19] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[19]_i_1_n_0 ),
        .Q(src_ip_t[19]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[1] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[1]_i_1_n_0 ),
        .Q(src_ip_t[1]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[20] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[20]_i_1_n_0 ),
        .Q(src_ip_t[20]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[21] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[21]_i_1_n_0 ),
        .Q(src_ip_t[21]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[22] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[22]_i_1_n_0 ),
        .Q(src_ip_t[22]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[23] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[23]_i_1_n_0 ),
        .Q(src_ip_t[23]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[24] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[24]_i_1_n_0 ),
        .Q(src_ip_t[24]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[25] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[25]_i_1_n_0 ),
        .Q(src_ip_t[25]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[26] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[26]_i_1_n_0 ),
        .Q(src_ip_t[26]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[27] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[27]_i_1_n_0 ),
        .Q(src_ip_t[27]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[28] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[28]_i_1_n_0 ),
        .Q(src_ip_t[28]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[29] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[29]_i_1_n_0 ),
        .Q(src_ip_t[29]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[2] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[2]_i_1_n_0 ),
        .Q(src_ip_t[2]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[30] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[30]_i_1_n_0 ),
        .Q(src_ip_t[30]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[31] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[31]_i_2_n_0 ),
        .Q(src_ip_t[31]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[3] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[3]_i_1_n_0 ),
        .Q(src_ip_t[3]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[4] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[4]_i_1_n_0 ),
        .Q(src_ip_t[4]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[5] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[5]_i_1_n_0 ),
        .Q(src_ip_t[5]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[6] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[6]_i_1_n_0 ),
        .Q(src_ip_t[6]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[7] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[7]_i_1_n_0 ),
        .Q(src_ip_t[7]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[8] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[8]_i_1_n_0 ),
        .Q(src_ip_t[8]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[9] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_ip_t[9]_i_1_n_0 ),
        .Q(src_ip_t[9]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[0] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[0]),
        .Q(src_mac[0]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[10] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[10]),
        .Q(src_mac[10]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[11] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[11]),
        .Q(src_mac[11]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[12] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[12]),
        .Q(src_mac[12]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[13] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[13]),
        .Q(src_mac[13]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[14] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[14]),
        .Q(src_mac[14]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[15] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[15]),
        .Q(src_mac[15]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[16] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[16]),
        .Q(src_mac[16]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[17] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[17]),
        .Q(src_mac[17]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[18] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[18]),
        .Q(src_mac[18]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[19] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[19]),
        .Q(src_mac[19]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[1] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[1]),
        .Q(src_mac[1]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[20] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[20]),
        .Q(src_mac[20]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[21] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[21]),
        .Q(src_mac[21]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[22] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[22]),
        .Q(src_mac[22]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[23] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[23]),
        .Q(src_mac[23]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[24] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[24]),
        .Q(src_mac[24]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[25] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[25]),
        .Q(src_mac[25]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[26] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[26]),
        .Q(src_mac[26]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[27] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[27]),
        .Q(src_mac[27]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[28] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[28]),
        .Q(src_mac[28]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[29] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[29]),
        .Q(src_mac[29]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[2] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[2]),
        .Q(src_mac[2]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[30] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[30]),
        .Q(src_mac[30]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[31] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[31]),
        .Q(src_mac[31]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[32] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[32]),
        .Q(src_mac[32]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[33] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[33]),
        .Q(src_mac[33]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[34] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[34]),
        .Q(src_mac[34]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[35] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[35]),
        .Q(src_mac[35]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[36] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[36]),
        .Q(src_mac[36]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[37] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[37]),
        .Q(src_mac[37]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[38] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[38]),
        .Q(src_mac[38]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[39] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[39]),
        .Q(src_mac[39]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[3] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[3]),
        .Q(src_mac[3]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[40] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[40]),
        .Q(src_mac[40]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[41] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[41]),
        .Q(src_mac[41]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[42] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[42]),
        .Q(src_mac[42]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[43] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[43]),
        .Q(src_mac[43]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[44] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[44]),
        .Q(src_mac[44]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[45] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[45]),
        .Q(src_mac[45]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[46] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[46]),
        .Q(src_mac[46]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[47] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[47]),
        .Q(src_mac[47]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[4] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[4]),
        .Q(src_mac[4]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[5] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[5]),
        .Q(src_mac[5]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[6] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[6]),
        .Q(src_mac[6]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[7] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[7]),
        .Q(src_mac[7]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[8] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[8]),
        .Q(src_mac[8]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[9] 
       (.C(clk),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(arp_rx_done_i_2_n_0),
        .D(src_mac_t[9]),
        .Q(src_mac[9]));
  LUT6 #(
    .INIT(64'hF0FFF0C0F0D0F0D0)) 
    \src_mac_t[0]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_5_n_0 ),
        .I2(src_mac_t[0]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(gmii_rxd[0]),
        .I5(\src_ip_t[31]_i_3_n_0 ),
        .O(\src_mac_t[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[10]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[10]),
        .I5(\src_mac_t[10]_i_2_n_0 ),
        .O(\src_mac_t[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[10]_i_2 
       (.I0(src_mac_t[2]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[11]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[11]),
        .I5(\src_mac_t[11]_i_2_n_0 ),
        .O(\src_mac_t[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[11]_i_2 
       (.I0(src_mac_t[3]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[12]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[12]),
        .I5(\src_mac_t[12]_i_2_n_0 ),
        .O(\src_mac_t[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[12]_i_2 
       (.I0(src_mac_t[4]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[13]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[13]),
        .I5(\src_mac_t[13]_i_2_n_0 ),
        .O(\src_mac_t[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[13]_i_2 
       (.I0(src_mac_t[5]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[14]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[14]),
        .I5(\src_mac_t[14]_i_2_n_0 ),
        .O(\src_mac_t[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[14]_i_2 
       (.I0(src_mac_t[6]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[15]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[15]),
        .I5(\src_mac_t[15]_i_2_n_0 ),
        .O(\src_mac_t[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[15]_i_2 
       (.I0(src_mac_t[7]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[16]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[16]),
        .I5(\src_mac_t[16]_i_2_n_0 ),
        .O(\src_mac_t[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[16]_i_2 
       (.I0(src_mac_t[8]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[17]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[17]),
        .I5(\src_mac_t[17]_i_2_n_0 ),
        .O(\src_mac_t[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[17]_i_2 
       (.I0(src_mac_t[9]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[18]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[18]),
        .I5(\src_mac_t[18]_i_2_n_0 ),
        .O(\src_mac_t[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[18]_i_2 
       (.I0(src_mac_t[10]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[19]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[19]),
        .I5(\src_mac_t[19]_i_2_n_0 ),
        .O(\src_mac_t[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[19]_i_2 
       (.I0(src_mac_t[11]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0C0F0D0F0D0)) 
    \src_mac_t[1]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_5_n_0 ),
        .I2(src_mac_t[1]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(gmii_rxd[1]),
        .I5(\src_ip_t[31]_i_3_n_0 ),
        .O(\src_mac_t[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[20]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[20]),
        .I5(\src_mac_t[20]_i_2_n_0 ),
        .O(\src_mac_t[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[20]_i_2 
       (.I0(src_mac_t[12]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[21]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[21]),
        .I5(\src_mac_t[21]_i_2_n_0 ),
        .O(\src_mac_t[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[21]_i_2 
       (.I0(src_mac_t[13]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[22]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[22]),
        .I5(\src_mac_t[22]_i_2_n_0 ),
        .O(\src_mac_t[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[22]_i_2 
       (.I0(src_mac_t[14]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[23]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[23]),
        .I5(\src_mac_t[23]_i_2_n_0 ),
        .O(\src_mac_t[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[23]_i_2 
       (.I0(src_mac_t[15]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[24]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[24]),
        .I5(\src_mac_t[24]_i_2_n_0 ),
        .O(\src_mac_t[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[24]_i_2 
       (.I0(src_mac_t[16]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[25]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[25]),
        .I5(\src_mac_t[25]_i_2_n_0 ),
        .O(\src_mac_t[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[25]_i_2 
       (.I0(src_mac_t[17]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[26]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[26]),
        .I5(\src_mac_t[26]_i_2_n_0 ),
        .O(\src_mac_t[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[26]_i_2 
       (.I0(src_mac_t[18]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[27]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[27]),
        .I5(\src_mac_t[27]_i_2_n_0 ),
        .O(\src_mac_t[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[27]_i_2 
       (.I0(src_mac_t[19]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[28]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[28]),
        .I5(\src_mac_t[28]_i_2_n_0 ),
        .O(\src_mac_t[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[28]_i_2 
       (.I0(src_mac_t[20]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[29]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[29]),
        .I5(\src_mac_t[29]_i_2_n_0 ),
        .O(\src_mac_t[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[29]_i_2 
       (.I0(src_mac_t[21]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0C0F0D0F0D0)) 
    \src_mac_t[2]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_5_n_0 ),
        .I2(src_mac_t[2]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(gmii_rxd[2]),
        .I5(\src_ip_t[31]_i_3_n_0 ),
        .O(\src_mac_t[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[30]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[30]),
        .I5(\src_mac_t[30]_i_2_n_0 ),
        .O(\src_mac_t[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[30]_i_2 
       (.I0(src_mac_t[22]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[31]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[31]),
        .I5(\src_mac_t[31]_i_2_n_0 ),
        .O(\src_mac_t[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[31]_i_2 
       (.I0(src_mac_t[23]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[32]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[32]),
        .I5(\src_mac_t[32]_i_2_n_0 ),
        .O(\src_mac_t[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[32]_i_2 
       (.I0(src_mac_t[24]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[32]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[33]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[33]),
        .I5(\src_mac_t[33]_i_2_n_0 ),
        .O(\src_mac_t[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[33]_i_2 
       (.I0(src_mac_t[25]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[33]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[34]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[34]),
        .I5(\src_mac_t[34]_i_2_n_0 ),
        .O(\src_mac_t[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[34]_i_2 
       (.I0(src_mac_t[26]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[34]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[35]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[35]),
        .I5(\src_mac_t[35]_i_2_n_0 ),
        .O(\src_mac_t[35]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[35]_i_2 
       (.I0(src_mac_t[27]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[35]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[36]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[36]),
        .I5(\src_mac_t[36]_i_2_n_0 ),
        .O(\src_mac_t[36]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[36]_i_2 
       (.I0(src_mac_t[28]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[36]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[37]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[37]),
        .I5(\src_mac_t[37]_i_2_n_0 ),
        .O(\src_mac_t[37]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[37]_i_2 
       (.I0(src_mac_t[29]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[37]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[38]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[38]),
        .I5(\src_mac_t[38]_i_2_n_0 ),
        .O(\src_mac_t[38]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[38]_i_2 
       (.I0(src_mac_t[30]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[38]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[39]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[39]),
        .I5(\src_mac_t[39]_i_2_n_0 ),
        .O(\src_mac_t[39]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[39]_i_2 
       (.I0(src_mac_t[31]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[39]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0C0F0D0F0D0)) 
    \src_mac_t[3]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_5_n_0 ),
        .I2(src_mac_t[3]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(gmii_rxd[3]),
        .I5(\src_ip_t[31]_i_3_n_0 ),
        .O(\src_mac_t[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[40]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[40]),
        .I5(\src_mac_t[40]_i_2_n_0 ),
        .O(\src_mac_t[40]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[40]_i_2 
       (.I0(src_mac_t[32]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[40]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[41]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[41]),
        .I5(\src_mac_t[41]_i_2_n_0 ),
        .O(\src_mac_t[41]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[41]_i_2 
       (.I0(src_mac_t[33]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[41]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[42]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[42]),
        .I5(\src_mac_t[42]_i_2_n_0 ),
        .O(\src_mac_t[42]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[42]_i_2 
       (.I0(src_mac_t[34]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[42]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[43]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[43]),
        .I5(\src_mac_t[43]_i_2_n_0 ),
        .O(\src_mac_t[43]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[43]_i_2 
       (.I0(src_mac_t[35]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[43]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[44]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[44]),
        .I5(\src_mac_t[44]_i_2_n_0 ),
        .O(\src_mac_t[44]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[44]_i_2 
       (.I0(src_mac_t[36]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[44]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[45]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[45]),
        .I5(\src_mac_t[45]_i_2_n_0 ),
        .O(\src_mac_t[45]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[45]_i_2 
       (.I0(src_mac_t[37]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[45]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[46]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[46]),
        .I5(\src_mac_t[46]_i_2_n_0 ),
        .O(\src_mac_t[46]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[46]_i_2 
       (.I0(src_mac_t[38]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[46]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[47]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[47]),
        .I5(\src_mac_t[47]_i_2_n_0 ),
        .O(\src_mac_t[47]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[47]_i_2 
       (.I0(src_mac_t[39]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[47]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0C0F0D0F0D0)) 
    \src_mac_t[4]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_5_n_0 ),
        .I2(src_mac_t[4]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(gmii_rxd[4]),
        .I5(\src_ip_t[31]_i_3_n_0 ),
        .O(\src_mac_t[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0C0F0D0F0D0)) 
    \src_mac_t[5]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_5_n_0 ),
        .I2(src_mac_t[5]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(gmii_rxd[5]),
        .I5(\src_ip_t[31]_i_3_n_0 ),
        .O(\src_mac_t[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0C0F0D0F0D0)) 
    \src_mac_t[6]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_5_n_0 ),
        .I2(src_mac_t[6]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(gmii_rxd[6]),
        .I5(\src_ip_t[31]_i_3_n_0 ),
        .O(\src_mac_t[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0C0F0D0F0D0)) 
    \src_mac_t[7]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_5_n_0 ),
        .I2(src_mac_t[7]),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(gmii_rxd[7]),
        .I5(\src_ip_t[31]_i_3_n_0 ),
        .O(\src_mac_t[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[8]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[8]),
        .I5(\src_mac_t[8]_i_2_n_0 ),
        .O(\src_mac_t[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[8]_i_2 
       (.I0(src_mac_t[0]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \src_mac_t[9]_i_1 
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\src_ip_t[31]_i_3_n_0 ),
        .I2(\src_ip_t[31]_i_5_n_0 ),
        .I3(\src_ip_t[31]_i_4_n_0 ),
        .I4(src_mac_t[9]),
        .I5(\src_mac_t[9]_i_2_n_0 ),
        .O(\src_mac_t[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \src_mac_t[9]_i_2 
       (.I0(src_mac_t[1]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(gmii_rx_dv),
        .O(\src_mac_t[9]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[0] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[0]_i_1_n_0 ),
        .Q(src_mac_t[0]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[10] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[10]_i_1_n_0 ),
        .Q(src_mac_t[10]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[11] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[11]_i_1_n_0 ),
        .Q(src_mac_t[11]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[12] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[12]_i_1_n_0 ),
        .Q(src_mac_t[12]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[13] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[13]_i_1_n_0 ),
        .Q(src_mac_t[13]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[14] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[14]_i_1_n_0 ),
        .Q(src_mac_t[14]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[15] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[15]_i_1_n_0 ),
        .Q(src_mac_t[15]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[16] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[16]_i_1_n_0 ),
        .Q(src_mac_t[16]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[17] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[17]_i_1_n_0 ),
        .Q(src_mac_t[17]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[18] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[18]_i_1_n_0 ),
        .Q(src_mac_t[18]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[19] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[19]_i_1_n_0 ),
        .Q(src_mac_t[19]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[1] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[1]_i_1_n_0 ),
        .Q(src_mac_t[1]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[20] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[20]_i_1_n_0 ),
        .Q(src_mac_t[20]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[21] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[21]_i_1_n_0 ),
        .Q(src_mac_t[21]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[22] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[22]_i_1_n_0 ),
        .Q(src_mac_t[22]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[23] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[23]_i_1_n_0 ),
        .Q(src_mac_t[23]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[24] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[24]_i_1_n_0 ),
        .Q(src_mac_t[24]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[25] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[25]_i_1_n_0 ),
        .Q(src_mac_t[25]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[26] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[26]_i_1_n_0 ),
        .Q(src_mac_t[26]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[27] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[27]_i_1_n_0 ),
        .Q(src_mac_t[27]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[28] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[28]_i_1_n_0 ),
        .Q(src_mac_t[28]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[29] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[29]_i_1_n_0 ),
        .Q(src_mac_t[29]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[2] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[2]_i_1_n_0 ),
        .Q(src_mac_t[2]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[30] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[30]_i_1_n_0 ),
        .Q(src_mac_t[30]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[31] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[31]_i_1_n_0 ),
        .Q(src_mac_t[31]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[32] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[32]_i_1_n_0 ),
        .Q(src_mac_t[32]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[33] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[33]_i_1_n_0 ),
        .Q(src_mac_t[33]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[34] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[34]_i_1_n_0 ),
        .Q(src_mac_t[34]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[35] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[35]_i_1_n_0 ),
        .Q(src_mac_t[35]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[36] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[36]_i_1_n_0 ),
        .Q(src_mac_t[36]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[37] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[37]_i_1_n_0 ),
        .Q(src_mac_t[37]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[38] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[38]_i_1_n_0 ),
        .Q(src_mac_t[38]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[39] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[39]_i_1_n_0 ),
        .Q(src_mac_t[39]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[3] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[3]_i_1_n_0 ),
        .Q(src_mac_t[3]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[40] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[40]_i_1_n_0 ),
        .Q(src_mac_t[40]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[41] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[41]_i_1_n_0 ),
        .Q(src_mac_t[41]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[42] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[42]_i_1_n_0 ),
        .Q(src_mac_t[42]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[43] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[43]_i_1_n_0 ),
        .Q(src_mac_t[43]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[44] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[44]_i_1_n_0 ),
        .Q(src_mac_t[44]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[45] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[45]_i_1_n_0 ),
        .Q(src_mac_t[45]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[46] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[46]_i_1_n_0 ),
        .Q(src_mac_t[46]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[47] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[47]_i_1_n_0 ),
        .Q(src_mac_t[47]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[4] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[4]_i_1_n_0 ),
        .Q(src_mac_t[4]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[5] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[5]_i_1_n_0 ),
        .Q(src_mac_t[5]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[6] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[6]_i_1_n_0 ),
        .Q(src_mac_t[6]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[7] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[7]_i_1_n_0 ),
        .Q(src_mac_t[7]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[8] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[8]_i_1_n_0 ),
        .Q(src_mac_t[8]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[9] 
       (.C(clk),
        .CE(\src_ip_t[31]_i_1_n_0 ),
        .CLR(arp_rx_done_i_2_n_0),
        .D(\src_mac_t[9]_i_1_n_0 ),
        .Q(src_mac_t[9]));
endmodule

module arp_tx
   (gmii_tx_en,
    sys_rst_n,
    tx_done_reg_0,
    Q,
    gmii_tx_en_reg_0,
    E,
    gmii_tx_en_reg_1,
    \gmii_txd_reg[7]_0 ,
    \gmii_txd_reg[7]_1 ,
    \gmii_txd_reg[6]_0 ,
    \gmii_txd_reg[5]_0 ,
    \gmii_txd_reg[4]_0 ,
    \gmii_txd_reg[0]_0 ,
    D,
    \gmii_txd_reg[4]_1 ,
    \gmii_txd_reg[2]_0 ,
    CLK,
    eth_rst_n_OBUF,
    cur_pos,
    src_mac,
    src_ip,
    \crc_data_reg[30] ,
    p_1_in__0,
    \gmii_txd_reg[2]_1 ,
    \gmii_txd_reg[3]_0 ,
    \gmii_txd_reg[4]_2 ,
    \gmii_txd_reg[5]_1 ,
    \crc_data_reg[7] ,
    \crc_data_reg[29] ,
    \tx_en_delay_reg[0]_0 ,
    arp_tx_type);
  output gmii_tx_en;
  output sys_rst_n;
  output tx_done_reg_0;
  output [1:0]Q;
  output gmii_tx_en_reg_0;
  output [0:0]E;
  output gmii_tx_en_reg_1;
  output \gmii_txd_reg[7]_0 ;
  output [7:0]\gmii_txd_reg[7]_1 ;
  output \gmii_txd_reg[6]_0 ;
  output \gmii_txd_reg[5]_0 ;
  output \gmii_txd_reg[4]_0 ;
  output \gmii_txd_reg[0]_0 ;
  output [16:0]D;
  output \gmii_txd_reg[4]_1 ;
  output \gmii_txd_reg[2]_0 ;
  input CLK;
  input eth_rst_n_OBUF;
  input cur_pos;
  input [47:0]src_mac;
  input [31:0]src_ip;
  input [28:0]\crc_data_reg[30] ;
  input [1:0]p_1_in__0;
  input \gmii_txd_reg[2]_1 ;
  input \gmii_txd_reg[3]_0 ;
  input \gmii_txd_reg[4]_2 ;
  input \gmii_txd_reg[5]_1 ;
  input \crc_data_reg[7] ;
  input \crc_data_reg[29] ;
  input [0:0]\tx_en_delay_reg[0]_0 ;
  input arp_tx_type;

  wire CLK;
  wire [16:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire arp_data;
  wire \arp_data[27][7]_i_10_n_0 ;
  wire \arp_data[27][7]_i_2_n_0 ;
  wire \arp_data[27][7]_i_3_n_0 ;
  wire \arp_data[27][7]_i_4_n_0 ;
  wire \arp_data[27][7]_i_5_n_0 ;
  wire \arp_data[27][7]_i_6_n_0 ;
  wire \arp_data[27][7]_i_7_n_0 ;
  wire \arp_data[27][7]_i_8_n_0 ;
  wire \arp_data[27][7]_i_9_n_0 ;
  wire \arp_data[7][0]_i_1_n_0 ;
  wire \arp_data[7][1]_i_1_n_0 ;
  wire \arp_data[7][1]_i_2_n_0 ;
  wire [7:0]\arp_data_reg[24] ;
  wire [7:0]\arp_data_reg[25] ;
  wire [7:0]\arp_data_reg[26] ;
  wire [7:0]\arp_data_reg[27] ;
  wire [1:0]\arp_data_reg[7] ;
  wire arp_tx_type;
  wire [5:0]cnt;
  wire \cnt[1]_i_2_n_0 ;
  wire \cnt[1]_i_3_n_0 ;
  wire \cnt[2]_i_2_n_0 ;
  wire \cnt[2]_i_3__0_n_0 ;
  wire \cnt[2]_i_4_n_0 ;
  wire \cnt[3]_i_2_n_0 ;
  wire \cnt[3]_i_3_n_0 ;
  wire \cnt[3]_i_4_n_0 ;
  wire \cnt[4]_i_2_n_0 ;
  wire \cnt[4]_i_3_n_0 ;
  wire \cnt[4]_i_4_n_0 ;
  wire \cnt[5]_i_10_n_0 ;
  wire \cnt[5]_i_2_n_0 ;
  wire \cnt[5]_i_3_n_0 ;
  wire \cnt[5]_i_4_n_0 ;
  wire \cnt[5]_i_5_n_0 ;
  wire \cnt[5]_i_6_n_0 ;
  wire \cnt[5]_i_7_n_0 ;
  wire \cnt[5]_i_9_n_0 ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \crc_data[23]_i_2_n_0 ;
  wire \crc_data_reg[29] ;
  wire [28:0]\crc_data_reg[30] ;
  wire \crc_data_reg[7] ;
  wire crc_en;
  wire crc_en_i_1_n_0;
  wire cur_pos;
  wire [4:0]cur_state;
  wire \cur_state[0]_i_1__0_n_0 ;
  wire \cur_state[4]_i_3_n_0 ;
  wire eth_head;
  wire \eth_head[5][7]_i_10_n_0 ;
  wire \eth_head[5][7]_i_11_n_0 ;
  wire \eth_head[5][7]_i_12_n_0 ;
  wire \eth_head[5][7]_i_13_n_0 ;
  wire \eth_head[5][7]_i_14_n_0 ;
  wire \eth_head[5][7]_i_15_n_0 ;
  wire \eth_head[5][7]_i_16_n_0 ;
  wire \eth_head[5][7]_i_2_n_0 ;
  wire \eth_head[5][7]_i_4_n_0 ;
  wire \eth_head[5][7]_i_5_n_0 ;
  wire \eth_head[5][7]_i_6_n_0 ;
  wire \eth_head[5][7]_i_7_n_0 ;
  wire \eth_head[5][7]_i_8_n_0 ;
  wire \eth_head[5][7]_i_9_n_0 ;
  wire [7:0]\eth_head_reg[0] ;
  wire [7:0]\eth_head_reg[1] ;
  wire [7:0]\eth_head_reg[2] ;
  wire [7:0]\eth_head_reg[3] ;
  wire [7:0]\eth_head_reg[4] ;
  wire [7:0]\eth_head_reg[5] ;
  wire eth_rst_n_OBUF;
  wire gmii_tx_en;
  wire gmii_tx_en_i_1_n_0;
  wire gmii_tx_en_reg_0;
  wire gmii_tx_en_reg_1;
  wire [7:0]gmii_txd;
  wire \gmii_txd[0]_i_10_n_0 ;
  wire \gmii_txd[0]_i_11_n_0 ;
  wire \gmii_txd[0]_i_2_n_0 ;
  wire \gmii_txd[0]_i_3_n_0 ;
  wire \gmii_txd[0]_i_4_n_0 ;
  wire \gmii_txd[0]_i_5_n_0 ;
  wire \gmii_txd[0]_i_6_n_0 ;
  wire \gmii_txd[0]_i_7_n_0 ;
  wire \gmii_txd[0]_i_8_n_0 ;
  wire \gmii_txd[0]_i_9_n_0 ;
  wire \gmii_txd[1]_i_10_n_0 ;
  wire \gmii_txd[1]_i_12_n_0 ;
  wire \gmii_txd[1]_i_2_n_0 ;
  wire \gmii_txd[1]_i_3_n_0 ;
  wire \gmii_txd[1]_i_4_n_0 ;
  wire \gmii_txd[1]_i_5_n_0 ;
  wire \gmii_txd[1]_i_6_n_0 ;
  wire \gmii_txd[1]_i_8_n_0 ;
  wire \gmii_txd[1]_i_9_n_0 ;
  wire \gmii_txd[2]_i_10_n_0 ;
  wire \gmii_txd[2]_i_12_n_0 ;
  wire \gmii_txd[2]_i_2_n_0 ;
  wire \gmii_txd[2]_i_3_n_0 ;
  wire \gmii_txd[2]_i_4_n_0 ;
  wire \gmii_txd[2]_i_5_n_0 ;
  wire \gmii_txd[2]_i_7_n_0 ;
  wire \gmii_txd[2]_i_8_n_0 ;
  wire \gmii_txd[2]_i_9_n_0 ;
  wire \gmii_txd[3]_i_11_n_0 ;
  wire \gmii_txd[3]_i_12_n_0 ;
  wire \gmii_txd[3]_i_2_n_0 ;
  wire \gmii_txd[3]_i_3_n_0 ;
  wire \gmii_txd[3]_i_5_n_0 ;
  wire \gmii_txd[3]_i_6_n_0 ;
  wire \gmii_txd[3]_i_8_n_0 ;
  wire \gmii_txd[3]_i_9_n_0 ;
  wire \gmii_txd[4]_i_10_n_0 ;
  wire \gmii_txd[4]_i_11_n_0 ;
  wire \gmii_txd[4]_i_2_n_0 ;
  wire \gmii_txd[4]_i_3_n_0 ;
  wire \gmii_txd[4]_i_5_n_0 ;
  wire \gmii_txd[4]_i_7_n_0 ;
  wire \gmii_txd[4]_i_8_n_0 ;
  wire \gmii_txd[4]_i_9_n_0 ;
  wire \gmii_txd[5]_i_10_n_0 ;
  wire \gmii_txd[5]_i_11_n_0 ;
  wire \gmii_txd[5]_i_12_n_0 ;
  wire \gmii_txd[5]_i_2_n_0 ;
  wire \gmii_txd[5]_i_3_n_0 ;
  wire \gmii_txd[5]_i_5_n_0 ;
  wire \gmii_txd[5]_i_6_n_0 ;
  wire \gmii_txd[5]_i_8_n_0 ;
  wire \gmii_txd[5]_i_9_n_0 ;
  wire \gmii_txd[6]_i_11_n_0 ;
  wire \gmii_txd[6]_i_2_n_0 ;
  wire \gmii_txd[6]_i_3_n_0 ;
  wire \gmii_txd[6]_i_4_n_0 ;
  wire \gmii_txd[6]_i_5_n_0 ;
  wire \gmii_txd[6]_i_6_n_0 ;
  wire \gmii_txd[6]_i_8_n_0 ;
  wire \gmii_txd[6]_i_9_n_0 ;
  wire \gmii_txd[7]_i_10_n_0 ;
  wire \gmii_txd[7]_i_11_n_0 ;
  wire \gmii_txd[7]_i_12_n_0 ;
  wire \gmii_txd[7]_i_13_n_0 ;
  wire \gmii_txd[7]_i_14_n_0 ;
  wire \gmii_txd[7]_i_15_n_0 ;
  wire \gmii_txd[7]_i_16_n_0 ;
  wire \gmii_txd[7]_i_17_n_0 ;
  wire \gmii_txd[7]_i_1_n_0 ;
  wire \gmii_txd[7]_i_4_n_0 ;
  wire \gmii_txd[7]_i_5_n_0 ;
  wire \gmii_txd[7]_i_6_n_0 ;
  wire \gmii_txd[7]_i_7_n_0 ;
  wire \gmii_txd[7]_i_8_n_0 ;
  wire \gmii_txd[7]_i_9_n_0 ;
  wire \gmii_txd_reg[0]_0 ;
  wire \gmii_txd_reg[2]_0 ;
  wire \gmii_txd_reg[2]_1 ;
  wire \gmii_txd_reg[3]_0 ;
  wire \gmii_txd_reg[3]_i_4_n_0 ;
  wire \gmii_txd_reg[4]_0 ;
  wire \gmii_txd_reg[4]_1 ;
  wire \gmii_txd_reg[4]_2 ;
  wire \gmii_txd_reg[4]_i_4_n_0 ;
  wire \gmii_txd_reg[5]_0 ;
  wire \gmii_txd_reg[5]_1 ;
  wire \gmii_txd_reg[5]_i_4_n_0 ;
  wire \gmii_txd_reg[6]_0 ;
  wire \gmii_txd_reg[7]_0 ;
  wire [7:0]\gmii_txd_reg[7]_1 ;
  wire \gmii_txd_reg[7]_i_3_n_0 ;
  wire [4:1]next_state;
  wire p_0_in3_in;
  wire p_1_in;
  wire [1:0]p_1_in__0;
  wire pos_tx_en__0;
  wire skip_en;
  wire skip_en2_out;
  wire skip_en_i_2_n_0;
  wire skip_en_i_3_n_0;
  wire skip_en_i_4_n_0;
  wire skip_en_i_5_n_0;
  wire skip_en_i_7_n_0;
  wire skip_en_reg_n_0;
  wire [31:0]src_ip;
  wire [47:0]src_mac;
  wire sys_rst_n;
  wire tx_done_reg_0;
  wire tx_done_t;
  wire tx_done_t_0;
  wire tx_done_t_i_2_n_0;
  wire [0:0]\tx_en_delay_reg[0]_0 ;
  wire \tx_en_delay_reg_n_0_[0] ;
  wire \tx_en_delay_reg_n_0_[2] ;

  LUT6 #(
    .INIT(64'h0000000054000000)) 
    \arp_data[27][7]_i_1 
       (.I0(\arp_data[27][7]_i_2_n_0 ),
        .I1(\arp_data[27][7]_i_3_n_0 ),
        .I2(\arp_data[27][7]_i_4_n_0 ),
        .I3(pos_tx_en__0),
        .I4(cur_state[0]),
        .I5(\eth_head[5][7]_i_4_n_0 ),
        .O(arp_data));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \arp_data[27][7]_i_10 
       (.I0(src_ip[2]),
        .I1(src_ip[3]),
        .I2(src_ip[0]),
        .I3(src_ip[1]),
        .O(\arp_data[27][7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \arp_data[27][7]_i_2 
       (.I0(cur_state[4]),
        .I1(cur_state[1]),
        .O(\arp_data[27][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \arp_data[27][7]_i_3 
       (.I0(\arp_data[27][7]_i_5_n_0 ),
        .I1(src_ip[31]),
        .I2(src_ip[30]),
        .I3(src_ip[28]),
        .I4(src_ip[29]),
        .I5(\arp_data[27][7]_i_6_n_0 ),
        .O(\arp_data[27][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \arp_data[27][7]_i_4 
       (.I0(\arp_data[27][7]_i_7_n_0 ),
        .I1(src_ip[14]),
        .I2(src_ip[15]),
        .I3(src_ip[12]),
        .I4(src_ip[13]),
        .I5(\arp_data[27][7]_i_8_n_0 ),
        .O(\arp_data[27][7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \arp_data[27][7]_i_5 
       (.I0(src_ip[26]),
        .I1(src_ip[27]),
        .I2(src_ip[24]),
        .I3(src_ip[25]),
        .O(\arp_data[27][7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \arp_data[27][7]_i_6 
       (.I0(src_ip[21]),
        .I1(src_ip[20]),
        .I2(src_ip[23]),
        .I3(src_ip[22]),
        .I4(\arp_data[27][7]_i_9_n_0 ),
        .O(\arp_data[27][7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \arp_data[27][7]_i_7 
       (.I0(src_ip[10]),
        .I1(src_ip[11]),
        .I2(src_ip[8]),
        .I3(src_ip[9]),
        .O(\arp_data[27][7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \arp_data[27][7]_i_8 
       (.I0(src_ip[5]),
        .I1(src_ip[4]),
        .I2(src_ip[7]),
        .I3(src_ip[6]),
        .I4(\arp_data[27][7]_i_10_n_0 ),
        .O(\arp_data[27][7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \arp_data[27][7]_i_9 
       (.I0(src_ip[18]),
        .I1(src_ip[19]),
        .I2(src_ip[16]),
        .I3(src_ip[17]),
        .O(\arp_data[27][7]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h74)) 
    \arp_data[7][0]_i_1 
       (.I0(arp_tx_type),
        .I1(\arp_data[7][1]_i_2_n_0 ),
        .I2(\arp_data_reg[7] [0]),
        .O(\arp_data[7][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \arp_data[7][1]_i_1 
       (.I0(arp_tx_type),
        .I1(\arp_data[7][1]_i_2_n_0 ),
        .I2(\arp_data_reg[7] [1]),
        .O(\arp_data[7][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \arp_data[7][1]_i_2 
       (.I0(cur_state[1]),
        .I1(cur_state[4]),
        .I2(\tx_en_delay_reg_n_0_[2] ),
        .I3(p_0_in3_in),
        .I4(cur_state[0]),
        .I5(\eth_head[5][7]_i_4_n_0 ),
        .O(\arp_data[7][1]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[24][0] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(sys_rst_n),
        .D(src_ip[24]),
        .Q(\arp_data_reg[24] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[24][1] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(sys_rst_n),
        .D(src_ip[25]),
        .Q(\arp_data_reg[24] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[24][2] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(sys_rst_n),
        .D(src_ip[26]),
        .Q(\arp_data_reg[24] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[24][3] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(sys_rst_n),
        .D(src_ip[27]),
        .Q(\arp_data_reg[24] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[24][4] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(sys_rst_n),
        .D(src_ip[28]),
        .Q(\arp_data_reg[24] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[24][5] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(sys_rst_n),
        .D(src_ip[29]),
        .Q(\arp_data_reg[24] [5]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[24][6] 
       (.C(CLK),
        .CE(arp_data),
        .D(src_ip[30]),
        .PRE(sys_rst_n),
        .Q(\arp_data_reg[24] [6]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[24][7] 
       (.C(CLK),
        .CE(arp_data),
        .D(src_ip[31]),
        .PRE(sys_rst_n),
        .Q(\arp_data_reg[24] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[25][0] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(sys_rst_n),
        .D(src_ip[16]),
        .Q(\arp_data_reg[25] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[25][1] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(sys_rst_n),
        .D(src_ip[17]),
        .Q(\arp_data_reg[25] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[25][2] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(sys_rst_n),
        .D(src_ip[18]),
        .Q(\arp_data_reg[25] [2]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[25][3] 
       (.C(CLK),
        .CE(arp_data),
        .D(src_ip[19]),
        .PRE(sys_rst_n),
        .Q(\arp_data_reg[25] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[25][4] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(sys_rst_n),
        .D(src_ip[20]),
        .Q(\arp_data_reg[25] [4]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[25][5] 
       (.C(CLK),
        .CE(arp_data),
        .D(src_ip[21]),
        .PRE(sys_rst_n),
        .Q(\arp_data_reg[25] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[25][6] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(sys_rst_n),
        .D(src_ip[22]),
        .Q(\arp_data_reg[25] [6]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[25][7] 
       (.C(CLK),
        .CE(arp_data),
        .D(src_ip[23]),
        .PRE(sys_rst_n),
        .Q(\arp_data_reg[25] [7]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[26][0] 
       (.C(CLK),
        .CE(arp_data),
        .D(src_ip[8]),
        .PRE(sys_rst_n),
        .Q(\arp_data_reg[26] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[26][1] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(sys_rst_n),
        .D(src_ip[9]),
        .Q(\arp_data_reg[26] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[26][2] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(sys_rst_n),
        .D(src_ip[10]),
        .Q(\arp_data_reg[26] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[26][3] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(sys_rst_n),
        .D(src_ip[11]),
        .Q(\arp_data_reg[26] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[26][4] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(sys_rst_n),
        .D(src_ip[12]),
        .Q(\arp_data_reg[26] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[26][5] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(sys_rst_n),
        .D(src_ip[13]),
        .Q(\arp_data_reg[26] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[26][6] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(sys_rst_n),
        .D(src_ip[14]),
        .Q(\arp_data_reg[26] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[26][7] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(sys_rst_n),
        .D(src_ip[15]),
        .Q(\arp_data_reg[26] [7]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[27][0] 
       (.C(CLK),
        .CE(arp_data),
        .D(src_ip[0]),
        .PRE(sys_rst_n),
        .Q(\arp_data_reg[27] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[27][1] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(sys_rst_n),
        .D(src_ip[1]),
        .Q(\arp_data_reg[27] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[27][2] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(sys_rst_n),
        .D(src_ip[2]),
        .Q(\arp_data_reg[27] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[27][3] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(sys_rst_n),
        .D(src_ip[3]),
        .Q(\arp_data_reg[27] [3]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[27][4] 
       (.C(CLK),
        .CE(arp_data),
        .D(src_ip[4]),
        .PRE(sys_rst_n),
        .Q(\arp_data_reg[27] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[27][5] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(sys_rst_n),
        .D(src_ip[5]),
        .Q(\arp_data_reg[27] [5]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[27][6] 
       (.C(CLK),
        .CE(arp_data),
        .D(src_ip[6]),
        .PRE(sys_rst_n),
        .Q(\arp_data_reg[27] [6]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[27][7] 
       (.C(CLK),
        .CE(arp_data),
        .D(src_ip[7]),
        .PRE(sys_rst_n),
        .Q(\arp_data_reg[27] [7]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[7][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\arp_data[7][0]_i_1_n_0 ),
        .PRE(sys_rst_n),
        .Q(\arp_data_reg[7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[7][1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(sys_rst_n),
        .D(\arp_data[7][1]_i_1_n_0 ),
        .Q(\arp_data_reg[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h33333332)) 
    \cnt[0]_i_1__0 
       (.I0(cur_state[3]),
        .I1(Q[0]),
        .I2(cur_state[4]),
        .I3(cur_state[2]),
        .I4(cur_state[1]),
        .O(cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFFAEEA)) 
    \cnt[1]_i_1 
       (.I0(\cnt[1]_i_2_n_0 ),
        .I1(cur_state[4]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\cnt[1]_i_3_n_0 ),
        .O(cnt[1]));
  LUT6 #(
    .INIT(64'h0FF008F008C008C0)) 
    \cnt[1]_i_2 
       (.I0(\cnt[5]_i_7_n_0 ),
        .I1(cur_state[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(p_1_in),
        .I5(cur_state[2]),
        .O(\cnt[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2828282828282820)) 
    \cnt[1]_i_3 
       (.I0(cur_state[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\cnt[5]_i_9_n_0 ),
        .I4(\cnt[5]_i_10_n_0 ),
        .I5(\gmii_txd[7]_i_7_n_0 ),
        .O(\cnt[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEAAEAAA)) 
    \cnt[2]_i_1 
       (.I0(\cnt[2]_i_2_n_0 ),
        .I1(cur_state[4]),
        .I2(\cnt[5]_i_3_n_0 ),
        .I3(\cnt[2]_i_3__0_n_0 ),
        .I4(\cnt[5]_i_5_n_0 ),
        .I5(\cnt[2]_i_4_n_0 ),
        .O(cnt[2]));
  LUT6 #(
    .INIT(64'hF0F080F080C080C0)) 
    \cnt[2]_i_2 
       (.I0(\cnt[5]_i_7_n_0 ),
        .I1(cur_state[1]),
        .I2(\cnt[2]_i_3__0_n_0 ),
        .I3(Q[0]),
        .I4(p_1_in),
        .I5(cur_state[2]),
        .O(\cnt[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_3__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\cnt_reg_n_0_[2] ),
        .O(\cnt[2]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A0A020)) 
    \cnt[2]_i_4 
       (.I0(cur_state[3]),
        .I1(Q[0]),
        .I2(\cnt[2]_i_3__0_n_0 ),
        .I3(\cnt[5]_i_9_n_0 ),
        .I4(\cnt[5]_i_10_n_0 ),
        .I5(\gmii_txd[7]_i_7_n_0 ),
        .O(\cnt[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEAAEAAA)) 
    \cnt[3]_i_1 
       (.I0(\cnt[3]_i_2_n_0 ),
        .I1(cur_state[4]),
        .I2(\cnt[5]_i_3_n_0 ),
        .I3(\cnt[3]_i_3_n_0 ),
        .I4(\cnt[5]_i_5_n_0 ),
        .I5(\cnt[3]_i_4_n_0 ),
        .O(cnt[3]));
  LUT6 #(
    .INIT(64'hF0F080F080C080C0)) 
    \cnt[3]_i_2 
       (.I0(\cnt[5]_i_7_n_0 ),
        .I1(cur_state[1]),
        .I2(\cnt[3]_i_3_n_0 ),
        .I3(Q[0]),
        .I4(p_1_in),
        .I5(cur_state[2]),
        .O(\cnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .O(\cnt[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A0A020)) 
    \cnt[3]_i_4 
       (.I0(cur_state[3]),
        .I1(Q[0]),
        .I2(\cnt[3]_i_3_n_0 ),
        .I3(\cnt[5]_i_9_n_0 ),
        .I4(\cnt[5]_i_10_n_0 ),
        .I5(\gmii_txd[7]_i_7_n_0 ),
        .O(\cnt[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEAAEAAA)) 
    \cnt[4]_i_1 
       (.I0(\cnt[4]_i_2_n_0 ),
        .I1(cur_state[4]),
        .I2(\cnt[5]_i_3_n_0 ),
        .I3(\cnt[4]_i_3_n_0 ),
        .I4(\cnt[5]_i_5_n_0 ),
        .I5(\cnt[4]_i_4_n_0 ),
        .O(cnt[4]));
  LUT6 #(
    .INIT(64'hF0F080F080C080C0)) 
    \cnt[4]_i_2 
       (.I0(\cnt[5]_i_7_n_0 ),
        .I1(cur_state[1]),
        .I2(\cnt[4]_i_3_n_0 ),
        .I3(Q[0]),
        .I4(p_1_in),
        .I5(cur_state[2]),
        .O(\cnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt[4]_i_3 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg_n_0_[4] ),
        .O(\cnt[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A0A020)) 
    \cnt[4]_i_4 
       (.I0(cur_state[3]),
        .I1(Q[0]),
        .I2(\cnt[4]_i_3_n_0 ),
        .I3(\cnt[5]_i_9_n_0 ),
        .I4(\cnt[5]_i_10_n_0 ),
        .I5(\gmii_txd[7]_i_7_n_0 ),
        .O(\cnt[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEAAEAAA)) 
    \cnt[5]_i_1 
       (.I0(\cnt[5]_i_2_n_0 ),
        .I1(cur_state[4]),
        .I2(\cnt[5]_i_3_n_0 ),
        .I3(\cnt[5]_i_4_n_0 ),
        .I4(\cnt[5]_i_5_n_0 ),
        .I5(\cnt[5]_i_6_n_0 ),
        .O(cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h15FF)) 
    \cnt[5]_i_10 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[5] ),
        .O(\cnt[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0F080F080C080C0)) 
    \cnt[5]_i_2 
       (.I0(\cnt[5]_i_7_n_0 ),
        .I1(cur_state[1]),
        .I2(\cnt[5]_i_4_n_0 ),
        .I3(Q[0]),
        .I4(p_1_in),
        .I5(cur_state[2]),
        .O(\cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cnt[5]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\cnt[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt[5]_i_4 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[4] ),
        .I5(\cnt_reg_n_0_[5] ),
        .O(\cnt[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[5]_i_5 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[5] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .O(\cnt[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A0A020)) 
    \cnt[5]_i_6 
       (.I0(cur_state[3]),
        .I1(Q[0]),
        .I2(\cnt[5]_i_4_n_0 ),
        .I3(\cnt[5]_i_9_n_0 ),
        .I4(\cnt[5]_i_10_n_0 ),
        .I5(\gmii_txd[7]_i_7_n_0 ),
        .O(\cnt[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    \cnt[5]_i_7 
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(Q[1]),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\cnt[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \cnt[5]_i_8 
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(Q[1]),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFBFFFFFF)) 
    \cnt[5]_i_9 
       (.I0(Q[1]),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg_n_0_[5] ),
        .O(\cnt[5]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(CLK),
        .CE(gmii_tx_en_i_1_n_0),
        .CLR(sys_rst_n),
        .D(cnt[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(gmii_tx_en_i_1_n_0),
        .CLR(sys_rst_n),
        .D(cnt[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(CLK),
        .CE(gmii_tx_en_i_1_n_0),
        .CLR(sys_rst_n),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(CLK),
        .CE(gmii_tx_en_i_1_n_0),
        .CLR(sys_rst_n),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(CLK),
        .CE(gmii_tx_en_i_1_n_0),
        .CLR(sys_rst_n),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(CLK),
        .CE(gmii_tx_en_i_1_n_0),
        .CLR(sys_rst_n),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ));
  LUT5 #(
    .INIT(32'hFFFF6996)) 
    \crc_data[0]_i_1 
       (.I0(\crc_data_reg[30] [27]),
        .I1(\gmii_txd_reg[7]_1 [1]),
        .I2(\crc_data_reg[30] [21]),
        .I3(\gmii_txd_reg[7]_1 [7]),
        .I4(tx_done_reg_0),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF96696996)) 
    \crc_data[13]_i_1 
       (.I0(\gmii_txd_reg[4]_1 ),
        .I1(\gmii_txd_reg[0]_0 ),
        .I2(\crc_data[23]_i_2_n_0 ),
        .I3(\gmii_txd_reg[2]_0 ),
        .I4(\crc_data_reg[30] [5]),
        .I5(tx_done_reg_0),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hFFFF6996)) 
    \crc_data[17]_i_1 
       (.I0(\crc_data[23]_i_2_n_0 ),
        .I1(\crc_data_reg[30] [26]),
        .I2(\gmii_txd_reg[7]_1 [2]),
        .I3(\crc_data_reg[30] [9]),
        .I4(tx_done_reg_0),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hFFFF6996)) 
    \crc_data[18]_i_1 
       (.I0(\gmii_txd_reg[0]_0 ),
        .I1(\gmii_txd_reg[7]_1 [1]),
        .I2(\crc_data_reg[30] [27]),
        .I3(\crc_data_reg[30] [10]),
        .I4(tx_done_reg_0),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF96696996)) 
    \crc_data[19]_i_1 
       (.I0(\gmii_txd_reg[7]_1 [4]),
        .I1(\crc_data_reg[30] [24]),
        .I2(\crc_data_reg[30] [11]),
        .I3(\gmii_txd_reg[7]_1 [0]),
        .I4(\crc_data_reg[30] [28]),
        .I5(tx_done_reg_0),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFF96696996)) 
    \crc_data[1]_i_1 
       (.I0(\crc_data_reg[30] [28]),
        .I1(\gmii_txd_reg[7]_1 [0]),
        .I2(\crc_data[23]_i_2_n_0 ),
        .I3(\gmii_txd_reg[7]_1 [7]),
        .I4(\crc_data_reg[30] [21]),
        .I5(tx_done_reg_0),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFF96)) 
    \crc_data[21]_i_1 
       (.I0(\gmii_txd_reg[7]_1 [2]),
        .I1(\crc_data_reg[30] [26]),
        .I2(\crc_data_reg[30] [13]),
        .I3(tx_done_reg_0),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hFFFF6996)) 
    \crc_data[23]_i_1 
       (.I0(\crc_data_reg[30] [14]),
        .I1(\crc_data[23]_i_2_n_0 ),
        .I2(\gmii_txd_reg[7]_1 [7]),
        .I3(\crc_data_reg[30] [21]),
        .I4(tx_done_reg_0),
        .O(D[10]));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_data[23]_i_2 
       (.I0(\gmii_txd_reg[7]_1 [1]),
        .I1(\crc_data_reg[30] [27]),
        .I2(\gmii_txd_reg[7]_1 [6]),
        .I3(\crc_data_reg[30] [22]),
        .O(\crc_data[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF6996)) 
    \crc_data[24]_i_1 
       (.I0(\gmii_txd_reg[0]_0 ),
        .I1(\gmii_txd_reg[7]_1 [6]),
        .I2(\crc_data_reg[30] [22]),
        .I3(\crc_data_reg[30] [15]),
        .I4(tx_done_reg_0),
        .O(D[11]));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_data[24]_i_2 
       (.I0(\gmii_txd_reg[7]_1 [0]),
        .I1(\crc_data_reg[30] [28]),
        .I2(\gmii_txd_reg[7]_1 [5]),
        .I3(\crc_data_reg[30] [23]),
        .O(\gmii_txd_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF96696996)) 
    \crc_data[25]_i_1 
       (.I0(\gmii_txd_reg[7]_1 [5]),
        .I1(\crc_data_reg[30] [23]),
        .I2(\crc_data_reg[30] [24]),
        .I3(\gmii_txd_reg[7]_1 [4]),
        .I4(\crc_data_reg[30] [16]),
        .I5(tx_done_reg_0),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFF96696996)) 
    \crc_data[28]_i_1 
       (.I0(\gmii_txd_reg[2]_0 ),
        .I1(\gmii_txd_reg[7]_1 [5]),
        .I2(\crc_data_reg[30] [23]),
        .I3(\crc_data_reg[29] ),
        .I4(\crc_data_reg[30] [17]),
        .I5(tx_done_reg_0),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_data[28]_i_2 
       (.I0(\gmii_txd_reg[7]_1 [2]),
        .I1(\crc_data_reg[30] [26]),
        .O(\gmii_txd_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF96696996)) 
    \crc_data[29]_i_1 
       (.I0(\gmii_txd_reg[4]_1 ),
        .I1(\gmii_txd_reg[7]_1 [0]),
        .I2(\crc_data_reg[30] [28]),
        .I3(\crc_data_reg[29] ),
        .I4(\crc_data_reg[30] [18]),
        .I5(tx_done_reg_0),
        .O(D[14]));
  LUT2 #(
    .INIT(4'h6)) 
    \crc_data[29]_i_2 
       (.I0(\gmii_txd_reg[7]_1 [4]),
        .I1(\crc_data_reg[30] [24]),
        .O(\gmii_txd_reg[4]_1 ));
  LUT5 #(
    .INIT(32'hFFFF6996)) 
    \crc_data[2]_i_1 
       (.I0(\gmii_txd_reg[0]_0 ),
        .I1(\crc_data[23]_i_2_n_0 ),
        .I2(\gmii_txd_reg[7]_1 [7]),
        .I3(\crc_data_reg[30] [21]),
        .I4(tx_done_reg_0),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF96696996)) 
    \crc_data[30]_i_1 
       (.I0(\gmii_txd_reg[7]_1 [0]),
        .I1(\crc_data_reg[30] [28]),
        .I2(\gmii_txd_reg[7]_1 [3]),
        .I3(\crc_data_reg[30] [25]),
        .I4(\crc_data_reg[30] [19]),
        .I5(tx_done_reg_0),
        .O(D[15]));
  LUT2 #(
    .INIT(4'hE)) 
    \crc_data[31]_i_1 
       (.I0(tx_done_reg_0),
        .I1(crc_en),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFF96)) 
    \crc_data[31]_i_2 
       (.I0(\gmii_txd_reg[7]_1 [2]),
        .I1(\crc_data_reg[30] [26]),
        .I2(\crc_data_reg[30] [20]),
        .I3(tx_done_reg_0),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFF96696996)) 
    \crc_data[3]_i_1 
       (.I0(\crc_data_reg[30] [22]),
        .I1(\gmii_txd_reg[7]_1 [6]),
        .I2(\gmii_txd_reg[0]_0 ),
        .I3(\crc_data_reg[30] [24]),
        .I4(\gmii_txd_reg[7]_1 [4]),
        .I5(tx_done_reg_0),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hFFFF6996)) 
    \crc_data[7]_i_1 
       (.I0(\crc_data_reg[7] ),
        .I1(\gmii_txd_reg[0]_0 ),
        .I2(\crc_data_reg[30] [26]),
        .I3(\gmii_txd_reg[7]_1 [2]),
        .I4(tx_done_reg_0),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000110)) 
    crc_en_i_1
       (.I0(cur_state[4]),
        .I1(cur_state[0]),
        .I2(cur_state[2]),
        .I3(cur_state[3]),
        .I4(cur_state[1]),
        .O(crc_en_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    crc_en_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(sys_rst_n),
        .D(crc_en_i_1_n_0),
        .Q(crc_en));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    cur_pos_i_1
       (.I0(gmii_tx_en),
        .I1(cur_pos),
        .O(gmii_tx_en_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hB8FF)) 
    \cur_state[0]_i_1__0 
       (.I0(cur_state[4]),
        .I1(skip_en_reg_n_0),
        .I2(cur_state[0]),
        .I3(\cur_state[4]_i_3_n_0 ),
        .O(\cur_state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \cur_state[1]_i_1 
       (.I0(\cur_state[4]_i_3_n_0 ),
        .I1(cur_state[1]),
        .I2(skip_en_reg_n_0),
        .I3(cur_state[0]),
        .O(next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \cur_state[2]_i_1 
       (.I0(\cur_state[4]_i_3_n_0 ),
        .I1(cur_state[2]),
        .I2(skip_en_reg_n_0),
        .I3(cur_state[1]),
        .O(next_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \cur_state[3]_i_1 
       (.I0(\cur_state[4]_i_3_n_0 ),
        .I1(cur_state[3]),
        .I2(skip_en_reg_n_0),
        .I3(cur_state[2]),
        .O(next_state[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \cur_state[4]_i_1 
       (.I0(\cur_state[4]_i_3_n_0 ),
        .I1(cur_state[4]),
        .I2(skip_en_reg_n_0),
        .I3(cur_state[3]),
        .O(next_state[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \cur_state[4]_i_2 
       (.I0(eth_rst_n_OBUF),
        .O(sys_rst_n));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00010116)) 
    \cur_state[4]_i_3 
       (.I0(cur_state[0]),
        .I1(cur_state[1]),
        .I2(cur_state[2]),
        .I3(cur_state[3]),
        .I4(cur_state[4]),
        .O(\cur_state[4]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "st_preamble:00010,st_eth_head:00100,st_arp_data:01000,st_crc:10000,st_idle:00001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \cur_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cur_state[0]_i_1__0_n_0 ),
        .PRE(sys_rst_n),
        .Q(cur_state[0]));
  (* FSM_ENCODED_STATES = "st_preamble:00010,st_eth_head:00100,st_arp_data:01000,st_crc:10000,st_idle:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(sys_rst_n),
        .D(next_state[1]),
        .Q(cur_state[1]));
  (* FSM_ENCODED_STATES = "st_preamble:00010,st_eth_head:00100,st_arp_data:01000,st_crc:10000,st_idle:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(sys_rst_n),
        .D(next_state[2]),
        .Q(cur_state[2]));
  (* FSM_ENCODED_STATES = "st_preamble:00010,st_eth_head:00100,st_arp_data:01000,st_crc:10000,st_idle:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(sys_rst_n),
        .D(next_state[3]),
        .Q(cur_state[3]));
  (* FSM_ENCODED_STATES = "st_preamble:00010,st_eth_head:00100,st_arp_data:01000,st_crc:10000,st_idle:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(sys_rst_n),
        .D(next_state[4]),
        .Q(cur_state[4]));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \eth_head[5][7]_i_1 
       (.I0(cur_state[1]),
        .I1(cur_state[4]),
        .I2(\eth_head[5][7]_i_2_n_0 ),
        .I3(pos_tx_en__0),
        .I4(cur_state[0]),
        .I5(\eth_head[5][7]_i_4_n_0 ),
        .O(eth_head));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \eth_head[5][7]_i_10 
       (.I0(src_mac[21]),
        .I1(src_mac[20]),
        .I2(src_mac[23]),
        .I3(src_mac[22]),
        .I4(\eth_head[5][7]_i_16_n_0 ),
        .O(\eth_head[5][7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \eth_head[5][7]_i_11 
       (.I0(src_mac[34]),
        .I1(src_mac[35]),
        .I2(src_mac[32]),
        .I3(src_mac[33]),
        .O(\eth_head[5][7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \eth_head[5][7]_i_12 
       (.I0(src_mac[42]),
        .I1(src_mac[43]),
        .I2(src_mac[40]),
        .I3(src_mac[41]),
        .O(\eth_head[5][7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \eth_head[5][7]_i_13 
       (.I0(src_mac[10]),
        .I1(src_mac[11]),
        .I2(src_mac[8]),
        .I3(src_mac[9]),
        .O(\eth_head[5][7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \eth_head[5][7]_i_14 
       (.I0(src_mac[2]),
        .I1(src_mac[3]),
        .I2(src_mac[0]),
        .I3(src_mac[1]),
        .O(\eth_head[5][7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \eth_head[5][7]_i_15 
       (.I0(src_mac[26]),
        .I1(src_mac[27]),
        .I2(src_mac[24]),
        .I3(src_mac[25]),
        .O(\eth_head[5][7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \eth_head[5][7]_i_16 
       (.I0(src_mac[18]),
        .I1(src_mac[19]),
        .I2(src_mac[16]),
        .I3(src_mac[17]),
        .O(\eth_head[5][7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \eth_head[5][7]_i_2 
       (.I0(\eth_head[5][7]_i_5_n_0 ),
        .I1(\eth_head[5][7]_i_6_n_0 ),
        .I2(\eth_head[5][7]_i_7_n_0 ),
        .I3(\eth_head[5][7]_i_8_n_0 ),
        .I4(\eth_head[5][7]_i_9_n_0 ),
        .I5(\eth_head[5][7]_i_10_n_0 ),
        .O(\eth_head[5][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \eth_head[5][7]_i_3 
       (.I0(p_0_in3_in),
        .I1(\tx_en_delay_reg_n_0_[2] ),
        .O(pos_tx_en__0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \eth_head[5][7]_i_4 
       (.I0(cur_state[3]),
        .I1(cur_state[2]),
        .O(\eth_head[5][7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \eth_head[5][7]_i_5 
       (.I0(src_mac[37]),
        .I1(src_mac[36]),
        .I2(src_mac[39]),
        .I3(src_mac[38]),
        .I4(\eth_head[5][7]_i_11_n_0 ),
        .O(\eth_head[5][7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \eth_head[5][7]_i_6 
       (.I0(src_mac[45]),
        .I1(src_mac[44]),
        .I2(src_mac[46]),
        .I3(src_mac[47]),
        .I4(\eth_head[5][7]_i_12_n_0 ),
        .O(\eth_head[5][7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \eth_head[5][7]_i_7 
       (.I0(src_mac[13]),
        .I1(src_mac[12]),
        .I2(src_mac[15]),
        .I3(src_mac[14]),
        .I4(\eth_head[5][7]_i_13_n_0 ),
        .O(\eth_head[5][7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \eth_head[5][7]_i_8 
       (.I0(src_mac[5]),
        .I1(src_mac[4]),
        .I2(src_mac[7]),
        .I3(src_mac[6]),
        .I4(\eth_head[5][7]_i_14_n_0 ),
        .O(\eth_head[5][7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \eth_head[5][7]_i_9 
       (.I0(src_mac[29]),
        .I1(src_mac[28]),
        .I2(src_mac[31]),
        .I3(src_mac[30]),
        .I4(\eth_head[5][7]_i_15_n_0 ),
        .O(\eth_head[5][7]_i_9_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[0][0] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[40]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[0] [0]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[0][1] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[41]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[0] [1]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[0][2] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[42]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[0] [2]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[0][3] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[43]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[0] [3]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[0][4] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[44]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[0] [4]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[0][5] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[45]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[0] [5]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[0][6] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[46]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[0] [6]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[0][7] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[47]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[0] [7]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[1][0] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[32]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[1] [0]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[1][1] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[33]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[1] [1]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[1][2] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[34]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[1] [2]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[1][3] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[35]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[1] [3]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[1][4] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[36]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[1] [4]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[1][5] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[37]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[1] [5]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[1][6] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[38]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[1] [6]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[1][7] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[39]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[1] [7]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[2][0] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[24]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[2] [0]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[2][1] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[25]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[2] [1]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[2][2] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[26]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[2] [2]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[2][3] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[27]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[2] [3]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[2][4] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[28]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[2] [4]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[2][5] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[29]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[2] [5]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[2][6] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[30]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[2] [6]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[2][7] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[31]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[2] [7]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[3][0] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[16]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[3] [0]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[3][1] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[17]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[3] [1]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[3][2] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[18]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[3] [2]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[3][3] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[19]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[3] [3]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[3][4] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[20]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[3] [4]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[3][5] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[21]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[3] [5]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[3][6] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[22]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[3] [6]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[3][7] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[23]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[3] [7]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[4][0] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[8]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[4] [0]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[4][1] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[9]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[4] [1]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[4][2] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[10]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[4] [2]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[4][3] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[11]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[4] [3]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[4][4] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[12]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[4] [4]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[4][5] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[13]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[4] [5]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[4][6] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[14]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[4] [6]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[4][7] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[15]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[4] [7]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[5][0] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[0]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[5] [0]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[5][1] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[1]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[5] [1]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[5][2] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[2]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[5] [2]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[5][3] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[3]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[5] [3]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[5][4] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[4]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[5] [4]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[5][5] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[5]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[5] [5]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[5][6] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[6]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[5] [6]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[5][7] 
       (.C(CLK),
        .CE(eth_head),
        .D(src_mac[7]),
        .PRE(sys_rst_n),
        .Q(\eth_head_reg[5] [7]));
  LUT5 #(
    .INIT(32'h00000116)) 
    gmii_tx_en_i_1
       (.I0(cur_state[4]),
        .I1(cur_state[3]),
        .I2(cur_state[2]),
        .I3(cur_state[1]),
        .I4(cur_state[0]),
        .O(gmii_tx_en_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    gmii_tx_en_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(sys_rst_n),
        .D(gmii_tx_en_i_1_n_0),
        .Q(gmii_tx_en));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \gmii_txd[0]_i_1 
       (.I0(\gmii_txd[0]_i_2_n_0 ),
        .I1(cur_state[4]),
        .I2(\gmii_txd[0]_i_3_n_0 ),
        .I3(cur_state[3]),
        .I4(\gmii_txd[0]_i_4_n_0 ),
        .I5(\gmii_txd[7]_i_7_n_0 ),
        .O(gmii_txd[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[0]_i_10 
       (.I0(\eth_head_reg[3] [0]),
        .I1(\eth_head_reg[2] [0]),
        .I2(Q[1]),
        .I3(\eth_head_reg[1] [0]),
        .I4(Q[0]),
        .I5(\eth_head_reg[0] [0]),
        .O(\gmii_txd[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[0]_i_11 
       (.I0(\eth_head_reg[5] [0]),
        .I1(\eth_head_reg[4] [0]),
        .I2(Q[1]),
        .I3(\eth_head_reg[3] [0]),
        .I4(Q[0]),
        .I5(\eth_head_reg[2] [0]),
        .O(\gmii_txd[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAEFFAEAAAAAAAAAA)) 
    \gmii_txd[0]_i_2 
       (.I0(cur_state[1]),
        .I1(Q[0]),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\gmii_txd[0]_i_5_n_0 ),
        .I5(cur_state[2]),
        .O(\gmii_txd[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4E4E4E4F5F4E4E)) 
    \gmii_txd[0]_i_3 
       (.I0(\cnt[5]_i_5_n_0 ),
        .I1(\gmii_txd[0]_i_6_n_0 ),
        .I2(\crc_data_reg[30] [7]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\crc_data_reg[30] [14]),
        .O(\gmii_txd[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCFAAC0AA)) 
    \gmii_txd[0]_i_4 
       (.I0(\gmii_txd[0]_i_7_n_0 ),
        .I1(\gmii_txd[0]_i_8_n_0 ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\gmii_txd[0]_i_9_n_0 ),
        .O(\gmii_txd[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE5E0FFFFE5E00000)) 
    \gmii_txd[0]_i_5 
       (.I0(Q[1]),
        .I1(\eth_head_reg[5] [0]),
        .I2(Q[0]),
        .I3(\eth_head_reg[4] [0]),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\gmii_txd[0]_i_10_n_0 ),
        .O(\gmii_txd[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000F69)) 
    \gmii_txd[0]_i_6 
       (.I0(\crc_data_reg[30] [26]),
        .I1(\gmii_txd_reg[7]_1 [2]),
        .I2(\crc_data_reg[30] [20]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\gmii_txd[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h4A00AF00)) 
    \gmii_txd[0]_i_7 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\arp_data_reg[7] [0]),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\gmii_txd[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[0]_i_8 
       (.I0(\arp_data_reg[27] [0]),
        .I1(\arp_data_reg[26] [0]),
        .I2(Q[1]),
        .I3(\arp_data_reg[25] [0]),
        .I4(Q[0]),
        .I5(\arp_data_reg[24] [0]),
        .O(\gmii_txd[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB8B88888BB88BBBB)) 
    \gmii_txd[0]_i_9 
       (.I0(\gmii_txd[0]_i_11_n_0 ),
        .I1(\gmii_txd[7]_i_17_n_0 ),
        .I2(\eth_head_reg[1] [0]),
        .I3(\eth_head_reg[0] [0]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\gmii_txd[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8F8F8F8F8)) 
    \gmii_txd[1]_i_1 
       (.I0(\gmii_txd[1]_i_2_n_0 ),
        .I1(cur_state[2]),
        .I2(\gmii_txd[1]_i_3_n_0 ),
        .I3(cur_state[3]),
        .I4(\gmii_txd[1]_i_4_n_0 ),
        .I5(\gmii_txd[7]_i_7_n_0 ),
        .O(gmii_txd[1]));
  LUT6 #(
    .INIT(64'hB8B8BBBBBB888888)) 
    \gmii_txd[1]_i_10 
       (.I0(\gmii_txd[1]_i_12_n_0 ),
        .I1(\gmii_txd[7]_i_17_n_0 ),
        .I2(\eth_head_reg[1] [1]),
        .I3(\eth_head_reg[0] [1]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\gmii_txd[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[1]_i_12 
       (.I0(\eth_head_reg[5] [1]),
        .I1(\eth_head_reg[4] [1]),
        .I2(Q[1]),
        .I3(\eth_head_reg[3] [1]),
        .I4(Q[0]),
        .I5(\eth_head_reg[2] [1]),
        .O(\gmii_txd[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h88B833FF88B800CC)) 
    \gmii_txd[1]_i_2 
       (.I0(Q[0]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\gmii_txd[1]_i_5_n_0 ),
        .I3(Q[1]),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\gmii_txd[1]_i_6_n_0 ),
        .O(\gmii_txd[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h08A8)) 
    \gmii_txd[1]_i_3 
       (.I0(cur_state[4]),
        .I1(p_1_in__0[0]),
        .I2(\cnt[5]_i_5_n_0 ),
        .I3(\crc_data_reg[30] [6]),
        .O(\gmii_txd[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCFAAC0AA)) 
    \gmii_txd[1]_i_4 
       (.I0(\gmii_txd[1]_i_8_n_0 ),
        .I1(\gmii_txd[1]_i_9_n_0 ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\gmii_txd[1]_i_10_n_0 ),
        .O(\gmii_txd[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gmii_txd[1]_i_5 
       (.I0(\eth_head_reg[5] [1]),
        .I1(Q[0]),
        .I2(\eth_head_reg[4] [1]),
        .O(\gmii_txd[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[1]_i_6 
       (.I0(\eth_head_reg[3] [1]),
        .I1(\eth_head_reg[2] [1]),
        .I2(Q[1]),
        .I3(\eth_head_reg[1] [1]),
        .I4(Q[0]),
        .I5(\eth_head_reg[0] [1]),
        .O(\gmii_txd[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h62042204)) 
    \gmii_txd[1]_i_8 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\arp_data_reg[7] [1]),
        .O(\gmii_txd[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[1]_i_9 
       (.I0(\arp_data_reg[27] [1]),
        .I1(\arp_data_reg[26] [1]),
        .I2(Q[1]),
        .I3(\arp_data_reg[25] [1]),
        .I4(Q[0]),
        .I5(\arp_data_reg[24] [1]),
        .O(\gmii_txd[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \gmii_txd[2]_i_1 
       (.I0(\gmii_txd[2]_i_2_n_0 ),
        .I1(cur_state[4]),
        .I2(\gmii_txd[2]_i_3_n_0 ),
        .I3(cur_state[3]),
        .I4(\gmii_txd[2]_i_4_n_0 ),
        .I5(\gmii_txd[7]_i_7_n_0 ),
        .O(gmii_txd[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[2]_i_10 
       (.I0(\eth_head_reg[3] [2]),
        .I1(\eth_head_reg[2] [2]),
        .I2(Q[1]),
        .I3(\eth_head_reg[1] [2]),
        .I4(Q[0]),
        .I5(\eth_head_reg[0] [2]),
        .O(\gmii_txd[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[2]_i_12 
       (.I0(\eth_head_reg[5] [2]),
        .I1(\eth_head_reg[4] [2]),
        .I2(Q[1]),
        .I3(\eth_head_reg[3] [2]),
        .I4(Q[0]),
        .I5(\eth_head_reg[2] [2]),
        .O(\gmii_txd[2]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \gmii_txd[2]_i_2 
       (.I0(cur_state[1]),
        .I1(\gmii_txd[2]_i_5_n_0 ),
        .I2(cur_state[2]),
        .O(\gmii_txd[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4E4E4E4F5F4E4E)) 
    \gmii_txd[2]_i_3 
       (.I0(\cnt[5]_i_5_n_0 ),
        .I1(\gmii_txd_reg[2]_1 ),
        .I2(\crc_data_reg[30] [5]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\crc_data_reg[30] [13]),
        .O(\gmii_txd[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0FF4444F0004444)) 
    \gmii_txd[2]_i_4 
       (.I0(Q[1]),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\gmii_txd[2]_i_7_n_0 ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg_n_0_[4] ),
        .I5(\gmii_txd[2]_i_8_n_0 ),
        .O(\gmii_txd[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FF3388B8CC00)) 
    \gmii_txd[2]_i_5 
       (.I0(Q[0]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\gmii_txd[2]_i_9_n_0 ),
        .I3(Q[1]),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\gmii_txd[2]_i_10_n_0 ),
        .O(\gmii_txd[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[2]_i_7 
       (.I0(\arp_data_reg[27] [2]),
        .I1(\arp_data_reg[26] [2]),
        .I2(Q[1]),
        .I3(\arp_data_reg[25] [2]),
        .I4(Q[0]),
        .I5(\arp_data_reg[24] [2]),
        .O(\gmii_txd[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \gmii_txd[2]_i_8 
       (.I0(\gmii_txd[2]_i_12_n_0 ),
        .I1(\gmii_txd[7]_i_17_n_0 ),
        .I2(Q[1]),
        .I3(\eth_head_reg[0] [2]),
        .I4(Q[0]),
        .I5(\eth_head_reg[1] [2]),
        .O(\gmii_txd[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gmii_txd[2]_i_9 
       (.I0(\eth_head_reg[5] [2]),
        .I1(Q[0]),
        .I2(\eth_head_reg[4] [2]),
        .O(\gmii_txd[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \gmii_txd[3]_i_1 
       (.I0(\gmii_txd[3]_i_2_n_0 ),
        .I1(cur_state[4]),
        .I2(\gmii_txd[3]_i_3_n_0 ),
        .I3(cur_state[3]),
        .I4(\gmii_txd_reg[3]_i_4_n_0 ),
        .I5(\gmii_txd[7]_i_7_n_0 ),
        .O(gmii_txd[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[3]_i_11 
       (.I0(\eth_head_reg[5] [3]),
        .I1(\eth_head_reg[4] [3]),
        .I2(Q[1]),
        .I3(\eth_head_reg[3] [3]),
        .I4(Q[0]),
        .I5(\eth_head_reg[2] [3]),
        .O(\gmii_txd[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[3]_i_12 
       (.I0(\arp_data_reg[27] [3]),
        .I1(\arp_data_reg[26] [3]),
        .I2(Q[1]),
        .I3(\arp_data_reg[25] [3]),
        .I4(Q[0]),
        .I5(\arp_data_reg[24] [3]),
        .O(\gmii_txd[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000A808A0A0A808)) 
    \gmii_txd[3]_i_2 
       (.I0(cur_state[2]),
        .I1(\gmii_txd[3]_i_5_n_0 ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\gmii_txd[3]_i_6_n_0 ),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(Q[0]),
        .O(\gmii_txd[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4E4E4E4F5F4E4E)) 
    \gmii_txd[3]_i_3 
       (.I0(\cnt[5]_i_5_n_0 ),
        .I1(\gmii_txd_reg[3]_0 ),
        .I2(\crc_data_reg[30] [4]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\crc_data_reg[30] [12]),
        .O(\gmii_txd[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[3]_i_5 
       (.I0(\eth_head_reg[3] [3]),
        .I1(\eth_head_reg[2] [3]),
        .I2(Q[1]),
        .I3(\eth_head_reg[1] [3]),
        .I4(Q[0]),
        .I5(\eth_head_reg[0] [3]),
        .O(\gmii_txd[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \gmii_txd[3]_i_6 
       (.I0(\eth_head_reg[4] [3]),
        .I1(Q[0]),
        .I2(\eth_head_reg[5] [3]),
        .I3(Q[1]),
        .O(\gmii_txd[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8BBBBBB888888)) 
    \gmii_txd[3]_i_8 
       (.I0(\gmii_txd[3]_i_11_n_0 ),
        .I1(\gmii_txd[7]_i_17_n_0 ),
        .I2(\eth_head_reg[1] [3]),
        .I3(\eth_head_reg[0] [3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\gmii_txd[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF8F000F408000004)) 
    \gmii_txd[3]_i_9 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(\gmii_txd[3]_i_12_n_0 ),
        .O(\gmii_txd[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \gmii_txd[4]_i_1 
       (.I0(\gmii_txd[4]_i_2_n_0 ),
        .I1(cur_state[4]),
        .I2(\gmii_txd[4]_i_3_n_0 ),
        .I3(cur_state[3]),
        .I4(\gmii_txd_reg[4]_i_4_n_0 ),
        .I5(\gmii_txd[7]_i_7_n_0 ),
        .O(gmii_txd[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[4]_i_10 
       (.I0(\eth_head_reg[5] [4]),
        .I1(\eth_head_reg[4] [4]),
        .I2(Q[1]),
        .I3(\eth_head_reg[3] [4]),
        .I4(Q[0]),
        .I5(\eth_head_reg[2] [4]),
        .O(\gmii_txd[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[4]_i_11 
       (.I0(\arp_data_reg[27] [4]),
        .I1(\arp_data_reg[26] [4]),
        .I2(Q[1]),
        .I3(\arp_data_reg[25] [4]),
        .I4(Q[0]),
        .I5(\arp_data_reg[24] [4]),
        .O(\gmii_txd[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAEFFAEAAAAAAAAAA)) 
    \gmii_txd[4]_i_2 
       (.I0(cur_state[1]),
        .I1(Q[0]),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\gmii_txd[4]_i_5_n_0 ),
        .I5(cur_state[2]),
        .O(\gmii_txd[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4E4E4E4F5F4E4E)) 
    \gmii_txd[4]_i_3 
       (.I0(\cnt[5]_i_5_n_0 ),
        .I1(\gmii_txd_reg[4]_2 ),
        .I2(\crc_data_reg[30] [3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\crc_data_reg[30] [11]),
        .O(\gmii_txd[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE5E0FFFFE5E00000)) 
    \gmii_txd[4]_i_5 
       (.I0(Q[1]),
        .I1(\eth_head_reg[5] [4]),
        .I2(Q[0]),
        .I3(\eth_head_reg[4] [4]),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\gmii_txd[4]_i_9_n_0 ),
        .O(\gmii_txd[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \gmii_txd[4]_i_7 
       (.I0(\gmii_txd[4]_i_10_n_0 ),
        .I1(\gmii_txd[7]_i_17_n_0 ),
        .I2(Q[1]),
        .I3(\eth_head_reg[0] [4]),
        .I4(Q[0]),
        .I5(\eth_head_reg[1] [4]),
        .O(\gmii_txd[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF2FA00F0020A0000)) 
    \gmii_txd[4]_i_8 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(\gmii_txd[4]_i_11_n_0 ),
        .O(\gmii_txd[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[4]_i_9 
       (.I0(\eth_head_reg[3] [4]),
        .I1(\eth_head_reg[2] [4]),
        .I2(Q[1]),
        .I3(\eth_head_reg[1] [4]),
        .I4(Q[0]),
        .I5(\eth_head_reg[0] [4]),
        .O(\gmii_txd[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \gmii_txd[5]_i_1 
       (.I0(\gmii_txd[5]_i_2_n_0 ),
        .I1(cur_state[4]),
        .I2(\gmii_txd[5]_i_3_n_0 ),
        .I3(cur_state[3]),
        .I4(\gmii_txd_reg[5]_i_4_n_0 ),
        .I5(\gmii_txd[7]_i_7_n_0 ),
        .O(gmii_txd[5]));
  LUT6 #(
    .INIT(64'hF8FA00F0080A0000)) 
    \gmii_txd[5]_i_10 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(\gmii_txd[5]_i_12_n_0 ),
        .O(\gmii_txd[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[5]_i_11 
       (.I0(\eth_head_reg[5] [5]),
        .I1(\eth_head_reg[4] [5]),
        .I2(Q[1]),
        .I3(\eth_head_reg[3] [5]),
        .I4(Q[0]),
        .I5(\eth_head_reg[2] [5]),
        .O(\gmii_txd[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[5]_i_12 
       (.I0(\arp_data_reg[27] [5]),
        .I1(\arp_data_reg[26] [5]),
        .I2(Q[1]),
        .I3(\arp_data_reg[25] [5]),
        .I4(Q[0]),
        .I5(\arp_data_reg[24] [5]),
        .O(\gmii_txd[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h000A000A08A80808)) 
    \gmii_txd[5]_i_2 
       (.I0(cur_state[2]),
        .I1(\gmii_txd[5]_i_5_n_0 ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(\gmii_txd[5]_i_6_n_0 ),
        .I5(\cnt_reg_n_0_[3] ),
        .O(\gmii_txd[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4E4E4E4F5F4E4E)) 
    \gmii_txd[5]_i_3 
       (.I0(\cnt[5]_i_5_n_0 ),
        .I1(\gmii_txd_reg[5]_1 ),
        .I2(\crc_data_reg[30] [2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\crc_data_reg[30] [10]),
        .O(\gmii_txd[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[5]_i_5 
       (.I0(\eth_head_reg[3] [5]),
        .I1(\eth_head_reg[2] [5]),
        .I2(Q[1]),
        .I3(\eth_head_reg[1] [5]),
        .I4(Q[0]),
        .I5(\eth_head_reg[0] [5]),
        .O(\gmii_txd[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gmii_txd[5]_i_6 
       (.I0(\eth_head_reg[5] [5]),
        .I1(Q[0]),
        .I2(\eth_head_reg[4] [5]),
        .O(\gmii_txd[5]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \gmii_txd[5]_i_8 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[4] ),
        .O(\gmii_txd[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \gmii_txd[5]_i_9 
       (.I0(\gmii_txd[5]_i_11_n_0 ),
        .I1(\gmii_txd[7]_i_17_n_0 ),
        .I2(Q[1]),
        .I3(\eth_head_reg[0] [5]),
        .I4(Q[0]),
        .I5(\eth_head_reg[1] [5]),
        .O(\gmii_txd[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    \gmii_txd[6]_i_1 
       (.I0(\gmii_txd[6]_i_2_n_0 ),
        .I1(cur_state[1]),
        .I2(\gmii_txd[6]_i_3_n_0 ),
        .I3(cur_state[3]),
        .I4(\gmii_txd[6]_i_4_n_0 ),
        .I5(\gmii_txd[7]_i_7_n_0 ),
        .O(gmii_txd[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[6]_i_11 
       (.I0(\eth_head_reg[5] [6]),
        .I1(\eth_head_reg[4] [6]),
        .I2(Q[1]),
        .I3(\eth_head_reg[3] [6]),
        .I4(Q[0]),
        .I5(\eth_head_reg[2] [6]),
        .O(\gmii_txd[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A0008A80808)) 
    \gmii_txd[6]_i_2 
       (.I0(cur_state[2]),
        .I1(\gmii_txd[6]_i_5_n_0 ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(\gmii_txd[6]_i_6_n_0 ),
        .I5(\cnt_reg_n_0_[3] ),
        .O(\gmii_txd[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h08A8)) 
    \gmii_txd[6]_i_3 
       (.I0(cur_state[4]),
        .I1(p_1_in__0[1]),
        .I2(\cnt[5]_i_5_n_0 ),
        .I3(\crc_data_reg[30] [1]),
        .O(\gmii_txd[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0FF8800F0008800)) 
    \gmii_txd[6]_i_4 
       (.I0(\gmii_txd[7]_i_10_n_0 ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\gmii_txd[6]_i_8_n_0 ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg_n_0_[4] ),
        .I5(\gmii_txd[6]_i_9_n_0 ),
        .O(\gmii_txd[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[6]_i_5 
       (.I0(\eth_head_reg[3] [6]),
        .I1(\eth_head_reg[2] [6]),
        .I2(Q[1]),
        .I3(\eth_head_reg[1] [6]),
        .I4(Q[0]),
        .I5(\eth_head_reg[0] [6]),
        .O(\gmii_txd[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gmii_txd[6]_i_6 
       (.I0(\eth_head_reg[5] [6]),
        .I1(Q[0]),
        .I2(\eth_head_reg[4] [6]),
        .O(\gmii_txd[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[6]_i_8 
       (.I0(\arp_data_reg[27] [6]),
        .I1(\arp_data_reg[26] [6]),
        .I2(Q[1]),
        .I3(\arp_data_reg[25] [6]),
        .I4(Q[0]),
        .I5(\arp_data_reg[24] [6]),
        .O(\gmii_txd[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \gmii_txd[6]_i_9 
       (.I0(\gmii_txd[6]_i_11_n_0 ),
        .I1(\gmii_txd[7]_i_17_n_0 ),
        .I2(Q[1]),
        .I3(\eth_head_reg[0] [6]),
        .I4(Q[0]),
        .I5(\eth_head_reg[1] [6]),
        .O(\gmii_txd[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000501010151)) 
    \gmii_txd[7]_i_1 
       (.I0(cur_state[0]),
        .I1(\gmii_txd_reg[7]_i_3_n_0 ),
        .I2(cur_state[2]),
        .I3(cur_state[3]),
        .I4(cur_state[4]),
        .I5(cur_state[1]),
        .O(\gmii_txd[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \gmii_txd[7]_i_10 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\gmii_txd[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \gmii_txd[7]_i_11 
       (.I0(\eth_head_reg[4] [7]),
        .I1(Q[0]),
        .I2(\eth_head_reg[5] [7]),
        .I3(Q[1]),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\gmii_txd[7]_i_15_n_0 ),
        .O(\gmii_txd[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000FF9669)) 
    \gmii_txd[7]_i_12 
       (.I0(\crc_data_reg[30] [22]),
        .I1(\gmii_txd_reg[7]_1 [6]),
        .I2(\gmii_txd_reg[0]_0 ),
        .I3(\crc_data_reg[30] [15]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\gmii_txd[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[7]_i_13 
       (.I0(\arp_data_reg[27] [7]),
        .I1(\arp_data_reg[26] [7]),
        .I2(Q[1]),
        .I3(\arp_data_reg[25] [7]),
        .I4(Q[0]),
        .I5(\arp_data_reg[24] [7]),
        .O(\gmii_txd[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \gmii_txd[7]_i_14 
       (.I0(\gmii_txd[7]_i_16_n_0 ),
        .I1(\gmii_txd[7]_i_17_n_0 ),
        .I2(Q[1]),
        .I3(\eth_head_reg[0] [7]),
        .I4(Q[0]),
        .I5(\eth_head_reg[1] [7]),
        .O(\gmii_txd[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[7]_i_15 
       (.I0(\eth_head_reg[3] [7]),
        .I1(\eth_head_reg[2] [7]),
        .I2(Q[1]),
        .I3(\eth_head_reg[1] [7]),
        .I4(Q[0]),
        .I5(\eth_head_reg[0] [7]),
        .O(\gmii_txd[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[7]_i_16 
       (.I0(\eth_head_reg[5] [7]),
        .I1(\eth_head_reg[4] [7]),
        .I2(Q[1]),
        .I3(\eth_head_reg[3] [7]),
        .I4(Q[0]),
        .I5(\eth_head_reg[2] [7]),
        .O(\gmii_txd[7]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h5D)) 
    \gmii_txd[7]_i_17 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[3] ),
        .O(\gmii_txd[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \gmii_txd[7]_i_2 
       (.I0(\gmii_txd[7]_i_4_n_0 ),
        .I1(cur_state[4]),
        .I2(\gmii_txd[7]_i_5_n_0 ),
        .I3(cur_state[3]),
        .I4(\gmii_txd[7]_i_6_n_0 ),
        .I5(\gmii_txd[7]_i_7_n_0 ),
        .O(gmii_txd[7]));
  LUT6 #(
    .INIT(64'h2020FF2020202020)) 
    \gmii_txd[7]_i_4 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\gmii_txd[7]_i_10_n_0 ),
        .I2(cur_state[1]),
        .I3(\gmii_txd[7]_i_11_n_0 ),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(cur_state[2]),
        .O(\gmii_txd[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4F4E4E4E4F5F4E4E)) 
    \gmii_txd[7]_i_5 
       (.I0(\cnt[5]_i_5_n_0 ),
        .I1(\gmii_txd[7]_i_12_n_0 ),
        .I2(\crc_data_reg[30] [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\crc_data_reg[30] [8]),
        .O(\gmii_txd[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0FF8800F0008800)) 
    \gmii_txd[7]_i_6 
       (.I0(Q[1]),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\gmii_txd[7]_i_13_n_0 ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg_n_0_[4] ),
        .I5(\gmii_txd[7]_i_14_n_0 ),
        .O(\gmii_txd[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h007F)) 
    \gmii_txd[7]_i_7 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[5] ),
        .O(\gmii_txd[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \gmii_txd[7]_i_8 
       (.I0(cur_state[4]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[5] ),
        .I4(\cnt_reg_n_0_[4] ),
        .O(\gmii_txd[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEAAAAAAAA)) 
    \gmii_txd[7]_i_9 
       (.I0(cur_state[4]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(Q[1]),
        .I5(\cnt_reg_n_0_[5] ),
        .O(\gmii_txd[7]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \gmii_txd_reg[0] 
       (.C(CLK),
        .CE(\gmii_txd[7]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(gmii_txd[0]),
        .Q(\gmii_txd_reg[7]_1 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gmii_txd_reg[1] 
       (.C(CLK),
        .CE(\gmii_txd[7]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(gmii_txd[1]),
        .Q(\gmii_txd_reg[7]_1 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gmii_txd_reg[2] 
       (.C(CLK),
        .CE(\gmii_txd[7]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(gmii_txd[2]),
        .Q(\gmii_txd_reg[7]_1 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gmii_txd_reg[3] 
       (.C(CLK),
        .CE(\gmii_txd[7]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(gmii_txd[3]),
        .Q(\gmii_txd_reg[7]_1 [3]));
  MUXF7 \gmii_txd_reg[3]_i_4 
       (.I0(\gmii_txd[3]_i_8_n_0 ),
        .I1(\gmii_txd[3]_i_9_n_0 ),
        .O(\gmii_txd_reg[3]_i_4_n_0 ),
        .S(\gmii_txd[5]_i_8_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \gmii_txd_reg[4] 
       (.C(CLK),
        .CE(\gmii_txd[7]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(gmii_txd[4]),
        .Q(\gmii_txd_reg[7]_1 [4]));
  MUXF7 \gmii_txd_reg[4]_i_4 
       (.I0(\gmii_txd[4]_i_7_n_0 ),
        .I1(\gmii_txd[4]_i_8_n_0 ),
        .O(\gmii_txd_reg[4]_i_4_n_0 ),
        .S(\gmii_txd[5]_i_8_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \gmii_txd_reg[5] 
       (.C(CLK),
        .CE(\gmii_txd[7]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(gmii_txd[5]),
        .Q(\gmii_txd_reg[7]_1 [5]));
  MUXF7 \gmii_txd_reg[5]_i_4 
       (.I0(\gmii_txd[5]_i_9_n_0 ),
        .I1(\gmii_txd[5]_i_10_n_0 ),
        .O(\gmii_txd_reg[5]_i_4_n_0 ),
        .S(\gmii_txd[5]_i_8_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \gmii_txd_reg[6] 
       (.C(CLK),
        .CE(\gmii_txd[7]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(gmii_txd[6]),
        .Q(\gmii_txd_reg[7]_1 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \gmii_txd_reg[7] 
       (.C(CLK),
        .CE(\gmii_txd[7]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(gmii_txd[7]),
        .Q(\gmii_txd_reg[7]_1 [7]));
  MUXF7 \gmii_txd_reg[7]_i_3 
       (.I0(\gmii_txd[7]_i_8_n_0 ),
        .I1(\gmii_txd[7]_i_9_n_0 ),
        .O(\gmii_txd_reg[7]_i_3_n_0 ),
        .S(cur_state[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rgmii_txd_r[0]_i_1 
       (.I0(\gmii_txd_reg[7]_1 [4]),
        .I1(cur_pos),
        .I2(\gmii_txd_reg[7]_1 [0]),
        .O(\gmii_txd_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rgmii_txd_r[1]_i_1 
       (.I0(\gmii_txd_reg[7]_1 [5]),
        .I1(cur_pos),
        .I2(\gmii_txd_reg[7]_1 [1]),
        .O(\gmii_txd_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rgmii_txd_r[2]_i_1 
       (.I0(\gmii_txd_reg[7]_1 [6]),
        .I1(cur_pos),
        .I2(\gmii_txd_reg[7]_1 [2]),
        .O(\gmii_txd_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rgmii_txd_r[3]_i_1 
       (.I0(gmii_tx_en),
        .O(gmii_tx_en_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rgmii_txd_r[3]_i_2 
       (.I0(\gmii_txd_reg[7]_1 [7]),
        .I1(cur_pos),
        .I2(\gmii_txd_reg[7]_1 [3]),
        .O(\gmii_txd_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA8AAA8AAA8A)) 
    skip_en_i_1
       (.I0(\cur_state[4]_i_3_n_0 ),
        .I1(skip_en_i_2_n_0),
        .I2(skip_en_i_3_n_0),
        .I3(skip_en_i_4_n_0),
        .I4(cur_state[1]),
        .I5(skip_en_i_5_n_0),
        .O(skip_en));
  LUT6 #(
    .INIT(64'h88888F8888888888)) 
    skip_en_i_2
       (.I0(skip_en2_out),
        .I1(cur_state[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\cnt[5]_i_5_n_0 ),
        .I5(cur_state[4]),
        .O(skip_en_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    skip_en_i_3
       (.I0(\tx_en_delay_reg_n_0_[2] ),
        .I1(p_0_in3_in),
        .I2(cur_state[0]),
        .O(skip_en_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    skip_en_i_4
       (.I0(cur_state[2]),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(skip_en_i_7_n_0),
        .I4(\cnt_reg_n_0_[4] ),
        .I5(\cnt_reg_n_0_[5] ),
        .O(skip_en_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    skip_en_i_5
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(Q[1]),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(Q[0]),
        .O(skip_en_i_5_n_0));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    skip_en_i_6
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\cnt_reg_n_0_[5] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(\cnt_reg_n_0_[2] ),
        .O(skip_en2_out));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h1)) 
    skip_en_i_7
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(skip_en_i_7_n_0));
  FDCE #(
    .INIT(1'b0)) 
    skip_en_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(sys_rst_n),
        .D(skip_en),
        .Q(skip_en_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tx_done_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(sys_rst_n),
        .D(tx_done_t),
        .Q(tx_done_reg_0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    tx_done_t_i_1
       (.I0(cur_state[0]),
        .I1(cur_state[1]),
        .I2(cur_state[4]),
        .I3(tx_done_t_i_2_n_0),
        .I4(cur_state[3]),
        .I5(cur_state[2]),
        .O(tx_done_t_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    tx_done_t_i_2
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[5] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(tx_done_t_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tx_done_t_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(sys_rst_n),
        .D(tx_done_t_0),
        .Q(tx_done_t));
  FDCE #(
    .INIT(1'b0)) 
    \tx_en_delay_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(sys_rst_n),
        .D(\tx_en_delay_reg[0]_0 ),
        .Q(\tx_en_delay_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \tx_en_delay_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(sys_rst_n),
        .D(\tx_en_delay_reg_n_0_[0] ),
        .Q(p_0_in3_in));
  FDCE #(
    .INIT(1'b0)) 
    \tx_en_delay_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(sys_rst_n),
        .D(p_0_in3_in),
        .Q(\tx_en_delay_reg_n_0_[2] ));
endmodule

module clk_wiz_0
   (clk_out1,
    reset,
    clk_in1);
  output clk_out1;
  input reset;
  input clk_in1;

  (* IBUF_LOW_PWR *) wire clk_in1;
  wire clk_out1;
  wire reset;

  clk_wiz_0_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .reset(reset));
endmodule

module clk_wiz_0_clk_wiz
   (clk_out1,
    reset,
    clk_in1);
  output clk_out1;
  input reset;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire clk_out1_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire reset;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_LOCKED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_0),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(20.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(20.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(5.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_clk_wiz_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_mmcm_adv_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

module clk_wiz_1
   (eth_rxc_sample,
    reset,
    locked,
    clk_in1);
  output eth_rxc_sample;
  input reset;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire eth_rxc_sample;
  wire locked;
  wire reset;

  clk_wiz_1_clk_wiz inst
       (.clk_in1(clk_in1),
        .eth_rxc_sample(eth_rxc_sample),
        .locked(locked),
        .reset(reset));
endmodule

module clk_wiz_1_clk_wiz
   (eth_rxc_sample,
    reset,
    locked,
    clk_in1);
  output eth_rxc_sample;
  input reset;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_in1_clk_wiz_1;
  wire clkfbout_buf_clk_wiz_1;
  wire clkfbout_clk_wiz_1;
  wire eth_rxc_sample;
  wire eth_rxc_sample_clk_wiz_1;
  wire locked;
  wire reset;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_1),
        .O(clkfbout_buf_clk_wiz_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_clk_wiz_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(eth_rxc_sample_clk_wiz_1),
        .O(eth_rxc_sample));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(40.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(40.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(40.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(90.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_1),
        .CLKFBOUT(clkfbout_clk_wiz_1),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_clk_wiz_1),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(eth_rxc_sample_clk_wiz_1),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

module crc32_d8
   (p_1_in__0,
    Q,
    \crc_data_reg[21]_0 ,
    \crc_data_reg[30]_0 ,
    \crc_data_reg[20]_0 ,
    \crc_data_reg[25]_0 ,
    \crc_data_reg[30]_1 ,
    \crc_data_reg[27]_0 ,
    \gmii_txd[6]_i_3 ,
    \gmii_txd[2]_i_3 ,
    \crc_data_reg[10]_0 ,
    \crc_data_reg[16]_0 ,
    \crc_data_reg[6]_0 ,
    \crc_data_reg[6]_1 ,
    E,
    D,
    CLK,
    \crc_data_reg[31]_0 );
  output [1:0]p_1_in__0;
  output [28:0]Q;
  output \crc_data_reg[21]_0 ;
  output \crc_data_reg[30]_0 ;
  output \crc_data_reg[20]_0 ;
  output \crc_data_reg[25]_0 ;
  output \crc_data_reg[30]_1 ;
  output \crc_data_reg[27]_0 ;
  input [1:0]\gmii_txd[6]_i_3 ;
  input \gmii_txd[2]_i_3 ;
  input \crc_data_reg[10]_0 ;
  input [7:0]\crc_data_reg[16]_0 ;
  input \crc_data_reg[6]_0 ;
  input \crc_data_reg[6]_1 ;
  input [0:0]E;
  input [16:0]D;
  input CLK;
  input \crc_data_reg[31]_0 ;

  wire CLK;
  wire [16:0]D;
  wire [0:0]E;
  wire [28:0]Q;
  wire [19:14]crc_data;
  wire \crc_data[10]_i_1_n_0 ;
  wire \crc_data[11]_i_1_n_0 ;
  wire \crc_data[12]_i_1_n_0 ;
  wire \crc_data[12]_i_2_n_0 ;
  wire \crc_data[14]_i_1_n_0 ;
  wire \crc_data[14]_i_2_n_0 ;
  wire \crc_data[15]_i_1_n_0 ;
  wire \crc_data[16]_i_1_n_0 ;
  wire \crc_data[16]_i_2_n_0 ;
  wire \crc_data[20]_i_1_n_0 ;
  wire \crc_data[22]_i_1_n_0 ;
  wire \crc_data[26]_i_1_n_0 ;
  wire \crc_data[26]_i_2_n_0 ;
  wire \crc_data[27]_i_1_n_0 ;
  wire \crc_data[27]_i_2_n_0 ;
  wire \crc_data[4]_i_1_n_0 ;
  wire \crc_data[5]_i_1_n_0 ;
  wire \crc_data[6]_i_1_n_0 ;
  wire \crc_data[8]_i_1_n_0 ;
  wire \crc_data[9]_i_1_n_0 ;
  wire \crc_data[9]_i_2_n_0 ;
  wire \crc_data_reg[10]_0 ;
  wire [7:0]\crc_data_reg[16]_0 ;
  wire \crc_data_reg[20]_0 ;
  wire \crc_data_reg[21]_0 ;
  wire \crc_data_reg[25]_0 ;
  wire \crc_data_reg[27]_0 ;
  wire \crc_data_reg[30]_0 ;
  wire \crc_data_reg[30]_1 ;
  wire \crc_data_reg[31]_0 ;
  wire \crc_data_reg[6]_0 ;
  wire \crc_data_reg[6]_1 ;
  wire [30:25]crc_next;
  wire \gmii_txd[2]_i_11_n_0 ;
  wire \gmii_txd[2]_i_3 ;
  wire \gmii_txd[3]_i_10_n_0 ;
  wire [1:0]\gmii_txd[6]_i_3 ;
  wire [1:0]p_1_in__0;

  LUT6 #(
    .INIT(64'hFFFFFFFF96696996)) 
    \crc_data[10]_i_1 
       (.I0(\crc_data_reg[27]_0 ),
        .I1(\crc_data_reg[10]_0 ),
        .I2(\crc_data_reg[16]_0 [5]),
        .I3(Q[23]),
        .I4(Q[2]),
        .I5(\crc_data_reg[6]_1 ),
        .O(\crc_data[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_data[10]_i_2 
       (.I0(Q[24]),
        .I1(\crc_data_reg[16]_0 [4]),
        .I2(\crc_data_reg[16]_0 [7]),
        .I3(Q[21]),
        .O(\crc_data_reg[27]_0 ));
  LUT5 #(
    .INIT(32'hFFFF6996)) 
    \crc_data[11]_i_1 
       (.I0(\crc_data[26]_i_2_n_0 ),
        .I1(\crc_data_reg[16]_0 [6]),
        .I2(Q[22]),
        .I3(Q[3]),
        .I4(\crc_data_reg[6]_1 ),
        .O(\crc_data[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF96696996)) 
    \crc_data[12]_i_1 
       (.I0(\crc_data[12]_i_2_n_0 ),
        .I1(\crc_data[16]_i_2_n_0 ),
        .I2(\crc_data_reg[16]_0 [5]),
        .I3(Q[23]),
        .I4(Q[4]),
        .I5(\crc_data_reg[6]_1 ),
        .O(\crc_data[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_data[12]_i_2 
       (.I0(Q[22]),
        .I1(\crc_data_reg[16]_0 [6]),
        .I2(Q[27]),
        .I3(\crc_data_reg[16]_0 [1]),
        .I4(\crc_data_reg[16]_0 [7]),
        .I5(Q[21]),
        .O(\crc_data[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF96696996)) 
    \crc_data[14]_i_1 
       (.I0(\crc_data[14]_i_2_n_0 ),
        .I1(\crc_data_reg[16]_0 [3]),
        .I2(Q[25]),
        .I3(\crc_data_reg[30]_0 ),
        .I4(Q[6]),
        .I5(\crc_data_reg[6]_1 ),
        .O(\crc_data[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_data[14]_i_2 
       (.I0(Q[23]),
        .I1(\crc_data_reg[16]_0 [5]),
        .I2(Q[28]),
        .I3(\crc_data_reg[16]_0 [0]),
        .I4(Q[24]),
        .I5(\crc_data_reg[16]_0 [4]),
        .O(\crc_data[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF6996)) 
    \crc_data[15]_i_1 
       (.I0(\crc_data[27]_i_2_n_0 ),
        .I1(Q[24]),
        .I2(\crc_data_reg[16]_0 [4]),
        .I3(Q[7]),
        .I4(\crc_data_reg[6]_1 ),
        .O(\crc_data[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF6996)) 
    \crc_data[16]_i_1 
       (.I0(\crc_data[16]_i_2_n_0 ),
        .I1(\crc_data_reg[16]_0 [7]),
        .I2(Q[21]),
        .I3(Q[8]),
        .I4(\crc_data_reg[6]_1 ),
        .O(\crc_data[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_data[16]_i_2 
       (.I0(Q[26]),
        .I1(\crc_data_reg[16]_0 [2]),
        .I2(\crc_data_reg[16]_0 [3]),
        .I3(Q[25]),
        .O(\crc_data[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF96)) 
    \crc_data[20]_i_1 
       (.I0(Q[25]),
        .I1(\crc_data_reg[16]_0 [3]),
        .I2(Q[12]),
        .I3(\crc_data_reg[6]_1 ),
        .O(\crc_data[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF96)) 
    \crc_data[22]_i_1 
       (.I0(Q[21]),
        .I1(\crc_data_reg[16]_0 [7]),
        .I2(crc_data[14]),
        .I3(\crc_data_reg[6]_1 ),
        .O(\crc_data[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFFFF6996)) 
    \crc_data[26]_i_1 
       (.I0(\crc_data[26]_i_2_n_0 ),
        .I1(\crc_data_reg[16]_0 [1]),
        .I2(Q[27]),
        .I3(crc_data[18]),
        .I4(\crc_data_reg[6]_1 ),
        .O(\crc_data[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_data[26]_i_2 
       (.I0(Q[21]),
        .I1(\crc_data_reg[16]_0 [7]),
        .I2(\crc_data_reg[16]_0 [4]),
        .I3(Q[24]),
        .I4(\crc_data_reg[16]_0 [3]),
        .I5(Q[25]),
        .O(\crc_data[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFFF6996)) 
    \crc_data[27]_i_1 
       (.I0(\crc_data[27]_i_2_n_0 ),
        .I1(\crc_data_reg[16]_0 [6]),
        .I2(Q[22]),
        .I3(crc_data[19]),
        .I4(\crc_data_reg[6]_1 ),
        .O(\crc_data[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_data[27]_i_2 
       (.I0(Q[25]),
        .I1(\crc_data_reg[16]_0 [3]),
        .I2(\crc_data_reg[16]_0 [2]),
        .I3(Q[26]),
        .I4(\crc_data_reg[16]_0 [0]),
        .I5(Q[28]),
        .O(\crc_data[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_data[29]_i_3 
       (.I0(Q[27]),
        .I1(\crc_data_reg[16]_0 [1]),
        .O(\crc_data_reg[30]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF96696996)) 
    \crc_data[4]_i_1 
       (.I0(\crc_data[26]_i_2_n_0 ),
        .I1(\crc_data_reg[16]_0 [5]),
        .I2(Q[23]),
        .I3(\crc_data_reg[16]_0 [1]),
        .I4(Q[27]),
        .I5(\crc_data_reg[6]_1 ),
        .O(\crc_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF96696996)) 
    \crc_data[5]_i_1 
       (.I0(\crc_data[27]_i_2_n_0 ),
        .I1(\crc_data_reg[27]_0 ),
        .I2(\crc_data[9]_i_2_n_0 ),
        .I3(Q[27]),
        .I4(\crc_data_reg[16]_0 [1]),
        .I5(\crc_data_reg[6]_1 ),
        .O(\crc_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF96696996)) 
    \crc_data[6]_i_1 
       (.I0(\crc_data[16]_i_2_n_0 ),
        .I1(\crc_data_reg[6]_0 ),
        .I2(\crc_data[9]_i_2_n_0 ),
        .I3(Q[27]),
        .I4(\crc_data_reg[16]_0 [1]),
        .I5(\crc_data_reg[6]_1 ),
        .O(\crc_data[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF6996)) 
    \crc_data[8]_i_1 
       (.I0(\crc_data[26]_i_2_n_0 ),
        .I1(\crc_data_reg[16]_0 [6]),
        .I2(Q[22]),
        .I3(Q[0]),
        .I4(\crc_data_reg[6]_1 ),
        .O(\crc_data[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF96696996)) 
    \crc_data[9]_i_1 
       (.I0(\crc_data[16]_i_2_n_0 ),
        .I1(\crc_data_reg[16]_0 [5]),
        .I2(Q[23]),
        .I3(\crc_data[9]_i_2_n_0 ),
        .I4(Q[1]),
        .I5(\crc_data_reg[6]_1 ),
        .O(\crc_data[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_data[9]_i_2 
       (.I0(Q[22]),
        .I1(\crc_data_reg[16]_0 [6]),
        .O(\crc_data[9]_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(\crc_data[10]_i_1_n_0 ),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[10]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(\crc_data[11]_i_1_n_0 ),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[11]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(\crc_data[12]_i_1_n_0 ),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[12]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(D[5]),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[13]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(\crc_data[14]_i_1_n_0 ),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(crc_data[14]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(\crc_data[15]_i_1_n_0 ),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[14]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[16] 
       (.C(CLK),
        .CE(E),
        .D(\crc_data[16]_i_1_n_0 ),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[15]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[17] 
       (.C(CLK),
        .CE(E),
        .D(D[6]),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[16]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[18] 
       (.C(CLK),
        .CE(E),
        .D(D[7]),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(crc_data[18]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[19] 
       (.C(CLK),
        .CE(E),
        .D(D[8]),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(crc_data[19]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[1]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[20] 
       (.C(CLK),
        .CE(E),
        .D(\crc_data[20]_i_1_n_0 ),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[17]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[21] 
       (.C(CLK),
        .CE(E),
        .D(D[9]),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[18]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[22] 
       (.C(CLK),
        .CE(E),
        .D(\crc_data[22]_i_1_n_0 ),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[19]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[23] 
       (.C(CLK),
        .CE(E),
        .D(D[10]),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[20]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[24] 
       (.C(CLK),
        .CE(E),
        .D(D[11]),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[21]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[25] 
       (.C(CLK),
        .CE(E),
        .D(D[12]),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[22]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[26] 
       (.C(CLK),
        .CE(E),
        .D(\crc_data[26]_i_1_n_0 ),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[23]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[27] 
       (.C(CLK),
        .CE(E),
        .D(\crc_data[27]_i_1_n_0 ),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[24]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[28] 
       (.C(CLK),
        .CE(E),
        .D(D[13]),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[25]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[29] 
       (.C(CLK),
        .CE(E),
        .D(D[14]),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[26]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[2]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[30] 
       (.C(CLK),
        .CE(E),
        .D(D[15]),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[27]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[31] 
       (.C(CLK),
        .CE(E),
        .D(D[16]),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[28]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[3]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\crc_data[4]_i_1_n_0 ),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[4]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(\crc_data[5]_i_1_n_0 ),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[5]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(\crc_data[6]_i_1_n_0 ),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[6]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(D[4]),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[7]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(\crc_data[8]_i_1_n_0 ),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[8]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(\crc_data[9]_i_1_n_0 ),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[9]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \gmii_txd[1]_i_11 
       (.I0(Q[19]),
        .I1(Q[25]),
        .I2(\crc_data_reg[16]_0 [3]),
        .I3(Q[28]),
        .I4(\crc_data_reg[16]_0 [0]),
        .O(crc_next[30]));
  LUT6 #(
    .INIT(64'h0F0055330FFF5533)) 
    \gmii_txd[1]_i_7 
       (.I0(Q[19]),
        .I1(crc_next[30]),
        .I2(Q[6]),
        .I3(\gmii_txd[6]_i_3 [0]),
        .I4(\gmii_txd[6]_i_3 [1]),
        .I5(crc_data[14]),
        .O(p_1_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gmii_txd[2]_i_11 
       (.I0(Q[28]),
        .I1(\crc_data_reg[16]_0 [0]),
        .O(\gmii_txd[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000FF9669)) 
    \gmii_txd[2]_i_6 
       (.I0(\crc_data_reg[30]_0 ),
        .I1(\gmii_txd[2]_i_11_n_0 ),
        .I2(\gmii_txd[2]_i_3 ),
        .I3(Q[18]),
        .I4(\gmii_txd[6]_i_3 [0]),
        .I5(\gmii_txd[6]_i_3 [1]),
        .O(\crc_data_reg[21]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gmii_txd[3]_i_10 
       (.I0(Q[23]),
        .I1(\crc_data_reg[16]_0 [5]),
        .O(\gmii_txd[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000FF9669)) 
    \gmii_txd[3]_i_7 
       (.I0(\crc_data_reg[30]_0 ),
        .I1(\gmii_txd[3]_i_10_n_0 ),
        .I2(\crc_data_reg[10]_0 ),
        .I3(Q[17]),
        .I4(\gmii_txd[6]_i_3 [0]),
        .I5(\gmii_txd[6]_i_3 [1]),
        .O(\crc_data_reg[20]_0 ));
  LUT6 #(
    .INIT(64'h0000000000FF9669)) 
    \gmii_txd[4]_i_6 
       (.I0(Q[22]),
        .I1(\crc_data_reg[16]_0 [6]),
        .I2(\crc_data[27]_i_2_n_0 ),
        .I3(crc_data[19]),
        .I4(\gmii_txd[6]_i_3 [0]),
        .I5(\gmii_txd[6]_i_3 [1]),
        .O(\crc_data_reg[25]_0 ));
  LUT6 #(
    .INIT(64'h0000000000FF9669)) 
    \gmii_txd[5]_i_7 
       (.I0(Q[27]),
        .I1(\crc_data_reg[16]_0 [1]),
        .I2(\crc_data[26]_i_2_n_0 ),
        .I3(crc_data[18]),
        .I4(\gmii_txd[6]_i_3 [0]),
        .I5(\gmii_txd[6]_i_3 [1]),
        .O(\crc_data_reg[30]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \gmii_txd[6]_i_10 
       (.I0(Q[16]),
        .I1(\crc_data_reg[16]_0 [4]),
        .I2(Q[24]),
        .I3(Q[23]),
        .I4(\crc_data_reg[16]_0 [5]),
        .O(crc_next[25]));
  LUT6 #(
    .INIT(64'h0F0055330FFF5533)) 
    \gmii_txd[6]_i_7 
       (.I0(Q[16]),
        .I1(crc_next[25]),
        .I2(Q[1]),
        .I3(\gmii_txd[6]_i_3 [0]),
        .I4(\gmii_txd[6]_i_3 [1]),
        .I5(Q[9]),
        .O(p_1_in__0[1]));
endmodule

module gmii2rgmii
   (eth_txc_OBUF,
    eth_tx_ctl_OBUF,
    cur_pos,
    gmii_rx_dv,
    Q,
    eth_txd_OBUF,
    eth_rx_ctl_IBUF,
    gmii_tx_en,
    cur_pos_reg,
    eth_rxc_sample,
    locked,
    eth_rxd_IBUF,
    reset,
    \rgmii_txd_r_reg[0] ,
    \rgmii_txd_r_reg[3] ,
    \rgmii_txd_r_reg[2] ,
    \rgmii_txd_r_reg[1] ,
    \rgmii_txd_r_reg[0]_0 );
  output eth_txc_OBUF;
  output eth_tx_ctl_OBUF;
  output cur_pos;
  output gmii_rx_dv;
  output [7:0]Q;
  output [3:0]eth_txd_OBUF;
  input eth_rx_ctl_IBUF;
  input gmii_tx_en;
  input cur_pos_reg;
  input eth_rxc_sample;
  input locked;
  input [3:0]eth_rxd_IBUF;
  input reset;
  input \rgmii_txd_r_reg[0] ;
  input \rgmii_txd_r_reg[3] ;
  input \rgmii_txd_r_reg[2] ;
  input \rgmii_txd_r_reg[1] ;
  input \rgmii_txd_r_reg[0]_0 ;

  wire [7:0]Q;
  wire cur_pos;
  wire cur_pos_reg;
  wire eth_rx_ctl_IBUF;
  wire eth_rxc_sample;
  wire [3:0]eth_rxd_IBUF;
  wire eth_tx_ctl_OBUF;
  wire eth_txc_OBUF;
  wire [3:0]eth_txd_OBUF;
  wire gmii_rx_dv;
  wire gmii_tx_en;
  wire locked;
  wire reset;
  wire \rgmii_txd_r_reg[0] ;
  wire \rgmii_txd_r_reg[0]_0 ;
  wire \rgmii_txd_r_reg[1] ;
  wire \rgmii_txd_r_reg[2] ;
  wire \rgmii_txd_r_reg[3] ;

  rgmii_rx u_rgmii_rx
       (.Q(Q),
        .bbstub_locked(eth_txc_OBUF),
        .eth_rx_ctl_IBUF(eth_rx_ctl_IBUF),
        .eth_rxc_sample(eth_rxc_sample),
        .eth_rxd_IBUF(eth_rxd_IBUF),
        .gmii_rx_dv(gmii_rx_dv),
        .locked(locked),
        .reset(reset));
  rgmii_tx u_rgmii_tx
       (.cur_pos(cur_pos),
        .cur_pos_reg_0(cur_pos_reg),
        .eth_tx_ctl_OBUF(eth_tx_ctl_OBUF),
        .eth_txd_OBUF(eth_txd_OBUF),
        .gmii_tx_en(gmii_tx_en),
        .\rgmii_txd_r_reg[0]_0 (eth_txc_OBUF),
        .\rgmii_txd_r_reg[0]_1 (\rgmii_txd_r_reg[0] ),
        .\rgmii_txd_r_reg[0]_2 (\rgmii_txd_r_reg[0]_0 ),
        .\rgmii_txd_r_reg[1]_0 (\rgmii_txd_r_reg[1] ),
        .\rgmii_txd_r_reg[2]_0 (\rgmii_txd_r_reg[2] ),
        .\rgmii_txd_r_reg[3]_0 (\rgmii_txd_r_reg[3] ));
endmodule

module mdio_ctrl
   (op_exec,
    D,
    \phy_speed_reg[1]_0 ,
    \op_addr_reg[4]_0 ,
    dri_clk,
    reset,
    op_rd_ack,
    Q,
    eth_rst_n_OBUF,
    op_done);
  output op_exec;
  output [1:0]D;
  output [1:0]\phy_speed_reg[1]_0 ;
  output [1:0]\op_addr_reg[4]_0 ;
  input dri_clk;
  input reset;
  input op_rd_ack;
  input [3:0]Q;
  input eth_rst_n_OBUF;
  input op_done;

  wire [1:0]D;
  wire \FSM_sequential_flow_cnt[0]_i_1_n_0 ;
  wire \FSM_sequential_flow_cnt[1]_i_1_n_0 ;
  wire \FSM_sequential_flow_cnt[2]_i_1_n_0 ;
  wire \FSM_sequential_flow_cnt[2]_i_2_n_0 ;
  wire [3:0]Q;
  wire dri_clk;
  wire eth_rst_n_OBUF;
  wire [2:0]flow_cnt;
  wire \op_addr[0]_i_1_n_0 ;
  wire \op_addr[4]_i_1_n_0 ;
  wire [1:0]\op_addr_reg[4]_0 ;
  wire op_done;
  wire op_exec;
  wire op_exec_i_1_n_0;
  wire op_rd_ack;
  wire op_rh_wl_i_1_n_0;
  wire \phy_speed[0]_i_1_n_0 ;
  wire \phy_speed[1]_i_1_n_0 ;
  wire [1:0]\phy_speed_reg[1]_0 ;
  wire read_next_i_1_n_0;
  wire read_next_i_2_n_0;
  wire read_next_reg_n_0;
  wire reset;
  wire start_next;
  wire start_next_i_1_n_0;
  wire start_next_reg_n_0;
  wire [23:0]timer_cnt;
  wire \timer_cnt[23]_i_2_n_0 ;
  wire \timer_cnt[23]_i_4_n_0 ;
  wire \timer_cnt[23]_i_5_n_0 ;
  wire \timer_cnt[23]_i_6_n_0 ;
  wire \timer_cnt[23]_i_7_n_0 ;
  wire \timer_cnt[23]_i_8_n_0 ;
  wire \timer_cnt[23]_i_9_n_0 ;
  wire [23:0]timer_cnt_0;
  wire \timer_cnt_reg[12]_i_2_n_0 ;
  wire \timer_cnt_reg[12]_i_2_n_1 ;
  wire \timer_cnt_reg[12]_i_2_n_2 ;
  wire \timer_cnt_reg[12]_i_2_n_3 ;
  wire \timer_cnt_reg[12]_i_2_n_4 ;
  wire \timer_cnt_reg[12]_i_2_n_5 ;
  wire \timer_cnt_reg[12]_i_2_n_6 ;
  wire \timer_cnt_reg[12]_i_2_n_7 ;
  wire \timer_cnt_reg[16]_i_2_n_0 ;
  wire \timer_cnt_reg[16]_i_2_n_1 ;
  wire \timer_cnt_reg[16]_i_2_n_2 ;
  wire \timer_cnt_reg[16]_i_2_n_3 ;
  wire \timer_cnt_reg[16]_i_2_n_4 ;
  wire \timer_cnt_reg[16]_i_2_n_5 ;
  wire \timer_cnt_reg[16]_i_2_n_6 ;
  wire \timer_cnt_reg[16]_i_2_n_7 ;
  wire \timer_cnt_reg[20]_i_2_n_0 ;
  wire \timer_cnt_reg[20]_i_2_n_1 ;
  wire \timer_cnt_reg[20]_i_2_n_2 ;
  wire \timer_cnt_reg[20]_i_2_n_3 ;
  wire \timer_cnt_reg[20]_i_2_n_4 ;
  wire \timer_cnt_reg[20]_i_2_n_5 ;
  wire \timer_cnt_reg[20]_i_2_n_6 ;
  wire \timer_cnt_reg[20]_i_2_n_7 ;
  wire \timer_cnt_reg[23]_i_3_n_2 ;
  wire \timer_cnt_reg[23]_i_3_n_3 ;
  wire \timer_cnt_reg[23]_i_3_n_5 ;
  wire \timer_cnt_reg[23]_i_3_n_6 ;
  wire \timer_cnt_reg[23]_i_3_n_7 ;
  wire \timer_cnt_reg[4]_i_2_n_0 ;
  wire \timer_cnt_reg[4]_i_2_n_1 ;
  wire \timer_cnt_reg[4]_i_2_n_2 ;
  wire \timer_cnt_reg[4]_i_2_n_3 ;
  wire \timer_cnt_reg[4]_i_2_n_4 ;
  wire \timer_cnt_reg[4]_i_2_n_5 ;
  wire \timer_cnt_reg[4]_i_2_n_6 ;
  wire \timer_cnt_reg[4]_i_2_n_7 ;
  wire \timer_cnt_reg[8]_i_2_n_0 ;
  wire \timer_cnt_reg[8]_i_2_n_1 ;
  wire \timer_cnt_reg[8]_i_2_n_2 ;
  wire \timer_cnt_reg[8]_i_2_n_3 ;
  wire \timer_cnt_reg[8]_i_2_n_4 ;
  wire \timer_cnt_reg[8]_i_2_n_5 ;
  wire \timer_cnt_reg[8]_i_2_n_6 ;
  wire \timer_cnt_reg[8]_i_2_n_7 ;
  wire timer_done;
  wire timer_done_reg_n_0;
  wire [3:2]\NLW_timer_cnt_reg[23]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_timer_cnt_reg[23]_i_3_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0000FFFF00100000)) 
    \FSM_sequential_flow_cnt[0]_i_1 
       (.I0(read_next_reg_n_0),
        .I1(op_rd_ack),
        .I2(flow_cnt[1]),
        .I3(flow_cnt[2]),
        .I4(\FSM_sequential_flow_cnt[2]_i_2_n_0 ),
        .I5(flow_cnt[0]),
        .O(\FSM_sequential_flow_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFF000F0000)) 
    \FSM_sequential_flow_cnt[1]_i_1 
       (.I0(read_next_reg_n_0),
        .I1(op_rd_ack),
        .I2(flow_cnt[0]),
        .I3(flow_cnt[2]),
        .I4(\FSM_sequential_flow_cnt[2]_i_2_n_0 ),
        .I5(flow_cnt[1]),
        .O(\FSM_sequential_flow_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF04000000)) 
    \FSM_sequential_flow_cnt[2]_i_1 
       (.I0(flow_cnt[0]),
        .I1(flow_cnt[1]),
        .I2(op_rd_ack),
        .I3(read_next_reg_n_0),
        .I4(\FSM_sequential_flow_cnt[2]_i_2_n_0 ),
        .I5(flow_cnt[2]),
        .O(\FSM_sequential_flow_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000F0FFFF0FE0E)) 
    \FSM_sequential_flow_cnt[2]_i_2 
       (.I0(timer_done_reg_n_0),
        .I1(start_next_reg_n_0),
        .I2(flow_cnt[0]),
        .I3(op_done),
        .I4(flow_cnt[1]),
        .I5(flow_cnt[2]),
        .O(\FSM_sequential_flow_cnt[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:010,iSTATE0:001,iSTATE1:011,iSTATE2:000,iSTATE3:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_flow_cnt_reg[0] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\FSM_sequential_flow_cnt[0]_i_1_n_0 ),
        .Q(flow_cnt[0]));
  (* FSM_ENCODED_STATES = "iSTATE:010,iSTATE0:001,iSTATE1:011,iSTATE2:000,iSTATE3:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_flow_cnt_reg[1] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\FSM_sequential_flow_cnt[1]_i_1_n_0 ),
        .Q(flow_cnt[1]));
  (* FSM_ENCODED_STATES = "iSTATE:010,iSTATE0:001,iSTATE1:011,iSTATE2:000,iSTATE3:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_flow_cnt_reg[2] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\FSM_sequential_flow_cnt[2]_i_1_n_0 ),
        .Q(flow_cnt[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000054)) 
    \op_addr[0]_i_1 
       (.I0(flow_cnt[1]),
        .I1(start_next_reg_n_0),
        .I2(timer_done_reg_n_0),
        .I3(flow_cnt[2]),
        .I4(flow_cnt[0]),
        .I5(\op_addr_reg[4]_0 [0]),
        .O(\op_addr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFEF00000100)) 
    \op_addr[4]_i_1 
       (.I0(flow_cnt[0]),
        .I1(flow_cnt[2]),
        .I2(timer_done_reg_n_0),
        .I3(start_next_reg_n_0),
        .I4(flow_cnt[1]),
        .I5(\op_addr_reg[4]_0 [1]),
        .O(\op_addr[4]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \op_addr_reg[0] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\op_addr[0]_i_1_n_0 ),
        .Q(\op_addr_reg[4]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \op_addr_reg[4] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\op_addr[4]_i_1_n_0 ),
        .Q(\op_addr_reg[4]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    \op_code[0]_i_1 
       (.I0(D[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h00001110)) 
    op_exec_i_1
       (.I0(flow_cnt[0]),
        .I1(flow_cnt[2]),
        .I2(timer_done_reg_n_0),
        .I3(start_next_reg_n_0),
        .I4(flow_cnt[1]),
        .O(op_exec_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    op_exec_reg
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(op_exec_i_1_n_0),
        .Q(op_exec));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001110)) 
    op_rh_wl_i_1
       (.I0(flow_cnt[0]),
        .I1(flow_cnt[2]),
        .I2(timer_done_reg_n_0),
        .I3(start_next_reg_n_0),
        .I4(flow_cnt[1]),
        .I5(D[1]),
        .O(op_rh_wl_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    op_rh_wl_reg
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(op_rh_wl_i_1_n_0),
        .Q(D[1]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \phy_speed[0]_i_1 
       (.I0(Q[2]),
        .I1(eth_rst_n_OBUF),
        .I2(flow_cnt[1]),
        .I3(flow_cnt[0]),
        .I4(flow_cnt[2]),
        .I5(\phy_speed_reg[1]_0 [0]),
        .O(\phy_speed[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \phy_speed[1]_i_1 
       (.I0(Q[3]),
        .I1(eth_rst_n_OBUF),
        .I2(flow_cnt[1]),
        .I3(flow_cnt[0]),
        .I4(flow_cnt[2]),
        .I5(\phy_speed_reg[1]_0 [1]),
        .O(\phy_speed[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \phy_speed_reg[0] 
       (.C(dri_clk),
        .CE(1'b1),
        .D(\phy_speed[0]_i_1_n_0 ),
        .Q(\phy_speed_reg[1]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phy_speed_reg[1] 
       (.C(dri_clk),
        .CE(1'b1),
        .D(\phy_speed[1]_i_1_n_0 ),
        .Q(\phy_speed_reg[1]_0 [1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFF2F00000020)) 
    read_next_i_1
       (.I0(start_next_reg_n_0),
        .I1(flow_cnt[1]),
        .I2(read_next_i_2_n_0),
        .I3(flow_cnt[0]),
        .I4(flow_cnt[2]),
        .I5(read_next_reg_n_0),
        .O(read_next_i_1_n_0));
  LUT6 #(
    .INIT(64'h2000200020FF2000)) 
    read_next_i_2
       (.I0(op_done),
        .I1(op_rd_ack),
        .I2(read_next_reg_n_0),
        .I3(flow_cnt[1]),
        .I4(start_next_reg_n_0),
        .I5(timer_done_reg_n_0),
        .O(read_next_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    read_next_reg
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(read_next_i_1_n_0),
        .Q(read_next_reg_n_0));
  LUT6 #(
    .INIT(64'hFF88FF88FF88FE88)) 
    start_next_i_1
       (.I0(start_next),
        .I1(flow_cnt[0]),
        .I2(timer_done_reg_n_0),
        .I3(start_next_reg_n_0),
        .I4(flow_cnt[1]),
        .I5(flow_cnt[2]),
        .O(start_next_i_1_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    start_next_i_2
       (.I0(flow_cnt[2]),
        .I1(flow_cnt[1]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(start_next));
  FDCE #(
    .INIT(1'b0)) 
    start_next_reg
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(start_next_i_1_n_0),
        .Q(start_next_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \timer_cnt[0]_i_1 
       (.I0(timer_cnt[0]),
        .O(timer_cnt_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timer_cnt[10]_i_1 
       (.I0(\timer_cnt[23]_i_2_n_0 ),
        .I1(\timer_cnt_reg[12]_i_2_n_6 ),
        .O(timer_cnt_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timer_cnt[11]_i_1 
       (.I0(\timer_cnt[23]_i_2_n_0 ),
        .I1(\timer_cnt_reg[12]_i_2_n_5 ),
        .O(timer_cnt_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timer_cnt[12]_i_1 
       (.I0(\timer_cnt[23]_i_2_n_0 ),
        .I1(\timer_cnt_reg[12]_i_2_n_4 ),
        .O(timer_cnt_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timer_cnt[13]_i_1 
       (.I0(\timer_cnt[23]_i_2_n_0 ),
        .I1(\timer_cnt_reg[16]_i_2_n_7 ),
        .O(timer_cnt_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timer_cnt[14]_i_1 
       (.I0(\timer_cnt[23]_i_2_n_0 ),
        .I1(\timer_cnt_reg[16]_i_2_n_6 ),
        .O(timer_cnt_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timer_cnt[15]_i_1 
       (.I0(\timer_cnt[23]_i_2_n_0 ),
        .I1(\timer_cnt_reg[16]_i_2_n_5 ),
        .O(timer_cnt_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timer_cnt[16]_i_1 
       (.I0(\timer_cnt[23]_i_2_n_0 ),
        .I1(\timer_cnt_reg[16]_i_2_n_4 ),
        .O(timer_cnt_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timer_cnt[17]_i_1 
       (.I0(\timer_cnt[23]_i_2_n_0 ),
        .I1(\timer_cnt_reg[20]_i_2_n_7 ),
        .O(timer_cnt_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timer_cnt[18]_i_1 
       (.I0(\timer_cnt[23]_i_2_n_0 ),
        .I1(\timer_cnt_reg[20]_i_2_n_6 ),
        .O(timer_cnt_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timer_cnt[19]_i_1 
       (.I0(\timer_cnt[23]_i_2_n_0 ),
        .I1(\timer_cnt_reg[20]_i_2_n_5 ),
        .O(timer_cnt_0[19]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timer_cnt[1]_i_1 
       (.I0(\timer_cnt[23]_i_2_n_0 ),
        .I1(\timer_cnt_reg[4]_i_2_n_7 ),
        .O(timer_cnt_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timer_cnt[20]_i_1 
       (.I0(\timer_cnt[23]_i_2_n_0 ),
        .I1(\timer_cnt_reg[20]_i_2_n_4 ),
        .O(timer_cnt_0[20]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timer_cnt[21]_i_1 
       (.I0(\timer_cnt[23]_i_2_n_0 ),
        .I1(\timer_cnt_reg[23]_i_3_n_7 ),
        .O(timer_cnt_0[21]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timer_cnt[22]_i_1 
       (.I0(\timer_cnt[23]_i_2_n_0 ),
        .I1(\timer_cnt_reg[23]_i_3_n_6 ),
        .O(timer_cnt_0[22]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timer_cnt[23]_i_1 
       (.I0(\timer_cnt[23]_i_2_n_0 ),
        .I1(\timer_cnt_reg[23]_i_3_n_5 ),
        .O(timer_cnt_0[23]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timer_cnt[23]_i_2 
       (.I0(\timer_cnt[23]_i_4_n_0 ),
        .I1(\timer_cnt[23]_i_5_n_0 ),
        .I2(\timer_cnt[23]_i_6_n_0 ),
        .I3(\timer_cnt[23]_i_7_n_0 ),
        .I4(\timer_cnt[23]_i_8_n_0 ),
        .I5(\timer_cnt[23]_i_9_n_0 ),
        .O(\timer_cnt[23]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \timer_cnt[23]_i_4 
       (.I0(timer_cnt[17]),
        .I1(timer_cnt[16]),
        .I2(timer_cnt[19]),
        .I3(timer_cnt[18]),
        .O(\timer_cnt[23]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer_cnt[23]_i_5 
       (.I0(timer_cnt[21]),
        .I1(timer_cnt[20]),
        .I2(timer_cnt[23]),
        .I3(timer_cnt[22]),
        .O(\timer_cnt[23]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \timer_cnt[23]_i_6 
       (.I0(timer_cnt[9]),
        .I1(timer_cnt[8]),
        .I2(timer_cnt[11]),
        .I3(timer_cnt[10]),
        .O(\timer_cnt[23]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \timer_cnt[23]_i_7 
       (.I0(timer_cnt[13]),
        .I1(timer_cnt[12]),
        .I2(timer_cnt[14]),
        .I3(timer_cnt[15]),
        .O(\timer_cnt[23]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \timer_cnt[23]_i_8 
       (.I0(timer_cnt[5]),
        .I1(timer_cnt[4]),
        .I2(timer_cnt[7]),
        .I3(timer_cnt[6]),
        .O(\timer_cnt[23]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \timer_cnt[23]_i_9 
       (.I0(timer_cnt[1]),
        .I1(timer_cnt[0]),
        .I2(timer_cnt[3]),
        .I3(timer_cnt[2]),
        .O(\timer_cnt[23]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timer_cnt[2]_i_1 
       (.I0(\timer_cnt[23]_i_2_n_0 ),
        .I1(\timer_cnt_reg[4]_i_2_n_6 ),
        .O(timer_cnt_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timer_cnt[3]_i_1 
       (.I0(\timer_cnt[23]_i_2_n_0 ),
        .I1(\timer_cnt_reg[4]_i_2_n_5 ),
        .O(timer_cnt_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timer_cnt[4]_i_1 
       (.I0(\timer_cnt[23]_i_2_n_0 ),
        .I1(\timer_cnt_reg[4]_i_2_n_4 ),
        .O(timer_cnt_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timer_cnt[5]_i_1 
       (.I0(\timer_cnt[23]_i_2_n_0 ),
        .I1(\timer_cnt_reg[8]_i_2_n_7 ),
        .O(timer_cnt_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timer_cnt[6]_i_1 
       (.I0(\timer_cnt[23]_i_2_n_0 ),
        .I1(\timer_cnt_reg[8]_i_2_n_6 ),
        .O(timer_cnt_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timer_cnt[7]_i_1 
       (.I0(\timer_cnt[23]_i_2_n_0 ),
        .I1(\timer_cnt_reg[8]_i_2_n_5 ),
        .O(timer_cnt_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timer_cnt[8]_i_1 
       (.I0(\timer_cnt[23]_i_2_n_0 ),
        .I1(\timer_cnt_reg[8]_i_2_n_4 ),
        .O(timer_cnt_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timer_cnt[9]_i_1 
       (.I0(\timer_cnt[23]_i_2_n_0 ),
        .I1(\timer_cnt_reg[12]_i_2_n_7 ),
        .O(timer_cnt_0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[0] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(timer_cnt_0[0]),
        .Q(timer_cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[10] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(timer_cnt_0[10]),
        .Q(timer_cnt[10]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[11] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(timer_cnt_0[11]),
        .Q(timer_cnt[11]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[12] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(timer_cnt_0[12]),
        .Q(timer_cnt[12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \timer_cnt_reg[12]_i_2 
       (.CI(\timer_cnt_reg[8]_i_2_n_0 ),
        .CO({\timer_cnt_reg[12]_i_2_n_0 ,\timer_cnt_reg[12]_i_2_n_1 ,\timer_cnt_reg[12]_i_2_n_2 ,\timer_cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_cnt_reg[12]_i_2_n_4 ,\timer_cnt_reg[12]_i_2_n_5 ,\timer_cnt_reg[12]_i_2_n_6 ,\timer_cnt_reg[12]_i_2_n_7 }),
        .S(timer_cnt[12:9]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[13] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(timer_cnt_0[13]),
        .Q(timer_cnt[13]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[14] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(timer_cnt_0[14]),
        .Q(timer_cnt[14]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[15] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(timer_cnt_0[15]),
        .Q(timer_cnt[15]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[16] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(timer_cnt_0[16]),
        .Q(timer_cnt[16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \timer_cnt_reg[16]_i_2 
       (.CI(\timer_cnt_reg[12]_i_2_n_0 ),
        .CO({\timer_cnt_reg[16]_i_2_n_0 ,\timer_cnt_reg[16]_i_2_n_1 ,\timer_cnt_reg[16]_i_2_n_2 ,\timer_cnt_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_cnt_reg[16]_i_2_n_4 ,\timer_cnt_reg[16]_i_2_n_5 ,\timer_cnt_reg[16]_i_2_n_6 ,\timer_cnt_reg[16]_i_2_n_7 }),
        .S(timer_cnt[16:13]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[17] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(timer_cnt_0[17]),
        .Q(timer_cnt[17]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[18] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(timer_cnt_0[18]),
        .Q(timer_cnt[18]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[19] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(timer_cnt_0[19]),
        .Q(timer_cnt[19]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[1] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(timer_cnt_0[1]),
        .Q(timer_cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[20] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(timer_cnt_0[20]),
        .Q(timer_cnt[20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \timer_cnt_reg[20]_i_2 
       (.CI(\timer_cnt_reg[16]_i_2_n_0 ),
        .CO({\timer_cnt_reg[20]_i_2_n_0 ,\timer_cnt_reg[20]_i_2_n_1 ,\timer_cnt_reg[20]_i_2_n_2 ,\timer_cnt_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_cnt_reg[20]_i_2_n_4 ,\timer_cnt_reg[20]_i_2_n_5 ,\timer_cnt_reg[20]_i_2_n_6 ,\timer_cnt_reg[20]_i_2_n_7 }),
        .S(timer_cnt[20:17]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[21] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(timer_cnt_0[21]),
        .Q(timer_cnt[21]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[22] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(timer_cnt_0[22]),
        .Q(timer_cnt[22]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[23] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(timer_cnt_0[23]),
        .Q(timer_cnt[23]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \timer_cnt_reg[23]_i_3 
       (.CI(\timer_cnt_reg[20]_i_2_n_0 ),
        .CO({\NLW_timer_cnt_reg[23]_i_3_CO_UNCONNECTED [3:2],\timer_cnt_reg[23]_i_3_n_2 ,\timer_cnt_reg[23]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_timer_cnt_reg[23]_i_3_O_UNCONNECTED [3],\timer_cnt_reg[23]_i_3_n_5 ,\timer_cnt_reg[23]_i_3_n_6 ,\timer_cnt_reg[23]_i_3_n_7 }),
        .S({1'b0,timer_cnt[23:21]}));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[2] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(timer_cnt_0[2]),
        .Q(timer_cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[3] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(timer_cnt_0[3]),
        .Q(timer_cnt[3]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[4] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(timer_cnt_0[4]),
        .Q(timer_cnt[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \timer_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\timer_cnt_reg[4]_i_2_n_0 ,\timer_cnt_reg[4]_i_2_n_1 ,\timer_cnt_reg[4]_i_2_n_2 ,\timer_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(timer_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_cnt_reg[4]_i_2_n_4 ,\timer_cnt_reg[4]_i_2_n_5 ,\timer_cnt_reg[4]_i_2_n_6 ,\timer_cnt_reg[4]_i_2_n_7 }),
        .S(timer_cnt[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[5] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(timer_cnt_0[5]),
        .Q(timer_cnt[5]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[6] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(timer_cnt_0[6]),
        .Q(timer_cnt[6]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[7] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(timer_cnt_0[7]),
        .Q(timer_cnt[7]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[8] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(timer_cnt_0[8]),
        .Q(timer_cnt[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \timer_cnt_reg[8]_i_2 
       (.CI(\timer_cnt_reg[4]_i_2_n_0 ),
        .CO({\timer_cnt_reg[8]_i_2_n_0 ,\timer_cnt_reg[8]_i_2_n_1 ,\timer_cnt_reg[8]_i_2_n_2 ,\timer_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_cnt_reg[8]_i_2_n_4 ,\timer_cnt_reg[8]_i_2_n_5 ,\timer_cnt_reg[8]_i_2_n_6 ,\timer_cnt_reg[8]_i_2_n_7 }),
        .S(timer_cnt[8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[9] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(timer_cnt_0[9]),
        .Q(timer_cnt[9]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT1 #(
    .INIT(2'h1)) 
    timer_done_i_1
       (.I0(\timer_cnt[23]_i_2_n_0 ),
        .O(timer_done));
  FDCE #(
    .INIT(1'b0)) 
    timer_done_reg
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(timer_done),
        .Q(timer_done_reg_n_0));
endmodule

module mdio_dri
   (eth_mdc_OBUF,
    dri_clk_reg_0,
    op_done,
    eth_mdio_OBUF,
    op_rd_ack,
    eth_mdio_TRI,
    Q,
    dri_clk,
    reset,
    sys_clk,
    eth_mdio_IBUF,
    op_exec,
    D,
    \addr_t_reg[4]_0 );
  output eth_mdc_OBUF;
  output dri_clk_reg_0;
  output op_done;
  output eth_mdio_OBUF;
  output op_rd_ack;
  output eth_mdio_TRI;
  output [3:0]Q;
  input dri_clk;
  input reset;
  input sys_clk;
  input eth_mdio_IBUF;
  input op_exec;
  input [1:0]D;
  input [1:0]\addr_t_reg[4]_0 ;

  wire [1:0]D;
  wire [3:0]Q;
  wire [1:0]\addr_t_reg[4]_0 ;
  wire \addr_t_reg_n_0_[0] ;
  wire [5:0]clk_cnt;
  wire \clk_cnt[0]_i_1_n_0 ;
  wire [5:1]clk_cnt_0;
  wire [6:0]cnt;
  wire \cnt[1]_i_2__0_n_0 ;
  wire \cnt[2]_i_2__0_n_0 ;
  wire \cnt[2]_i_3_n_0 ;
  wire \cnt[2]_i_4__0_n_0 ;
  wire \cnt[2]_i_5_n_0 ;
  wire \cnt[4]_i_2__0_n_0 ;
  wire \cnt[4]_i_3__0_n_0 ;
  wire \cnt[4]_i_4__0_n_0 ;
  wire \cnt[6]_i_2_n_0 ;
  wire \cnt[6]_i_3_n_0 ;
  wire \cnt[6]_i_4_n_0 ;
  wire \cnt[6]_i_5_n_0 ;
  wire \cnt[6]_i_6_n_0 ;
  wire \cnt[6]_i_7_n_0 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[6] ;
  wire [5:0]cur_state;
  wire \cur_state[5]_i_3_n_0 ;
  wire data0;
  wire dri_clk;
  wire dri_clk__0_n_0;
  wire dri_clk_i_1_n_0;
  wire dri_clk_reg_0;
  wire eth_mdc_OBUF;
  wire eth_mdc_i_1_n_0;
  wire eth_mdio_IBUF;
  wire eth_mdio_OBUF;
  wire eth_mdio_TRI;
  wire mdio_dir;
  wire mdio_dir_i_1_n_0;
  wire mdio_dir_i_2_n_0;
  wire mdio_dir_i_3_n_0;
  wire mdio_dir_i_4_n_0;
  wire mdio_dir_i_5_n_0;
  wire mdio_dir_i_6_n_0;
  wire mdio_dir_i_7_n_0;
  wire mdio_out_i_10_n_0;
  wire mdio_out_i_11_n_0;
  wire mdio_out_i_12_n_0;
  wire mdio_out_i_1_n_0;
  wire mdio_out_i_2_n_0;
  wire mdio_out_i_3_n_0;
  wire mdio_out_i_4_n_0;
  wire mdio_out_i_5_n_0;
  wire mdio_out_i_6_n_0;
  wire mdio_out_i_7_n_0;
  wire mdio_out_i_8_n_0;
  wire mdio_out_i_9_n_0;
  wire [5:0]next_state;
  wire op_code;
  wire \op_code_reg_n_0_[0] ;
  wire \op_code_reg_n_0_[1] ;
  wire op_done;
  wire op_done_i_1_n_0;
  wire op_done_i_2_n_0;
  wire op_exec;
  wire op_rd_ack;
  wire op_rd_ack_i_1_n_0;
  wire op_rd_ack_i_2_n_0;
  wire op_rd_ack_i_3_n_0;
  wire \op_rd_data[15]_i_1_n_0 ;
  wire [15:2]rd_data_t;
  wire \rd_data_t[14]_i_1_n_0 ;
  wire \rd_data_t[15]_i_1_n_0 ;
  wire \rd_data_t[15]_i_2_n_0 ;
  wire \rd_data_t[15]_i_3_n_0 ;
  wire \rd_data_t[15]_i_4_n_0 ;
  wire \rd_data_t[15]_i_5_n_0 ;
  wire \rd_data_t[2]_i_1_n_0 ;
  wire \rd_data_t[5]_i_1_n_0 ;
  wire \rd_data_t[5]_i_2_n_0 ;
  wire \rd_data_t[5]_i_3_n_0 ;
  wire reset;
  wire st_done;
  wire st_done_i_2_n_0;
  wire st_done_i_3_n_0;
  wire st_done_i_4_n_0;
  wire st_done_i_5_n_0;
  wire st_done_reg_n_0;
  wire sys_clk;

  FDCE #(
    .INIT(1'b0)) 
    \addr_t_reg[0] 
       (.C(dri_clk),
        .CE(op_code),
        .CLR(reset),
        .D(\addr_t_reg[4]_0 [0]),
        .Q(\addr_t_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_t_reg[4] 
       (.C(dri_clk),
        .CE(op_code),
        .CLR(reset),
        .D(\addr_t_reg[4]_0 [1]),
        .Q(data0));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_cnt[0]_i_1 
       (.I0(clk_cnt[0]),
        .O(\clk_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clk_cnt[1]_i_1 
       (.I0(clk_cnt[1]),
        .I1(clk_cnt[0]),
        .O(clk_cnt_0[1]));
  LUT6 #(
    .INIT(64'h5554AAAAAAAAAAAA)) 
    \clk_cnt[2]_i_1 
       (.I0(clk_cnt[2]),
        .I1(clk_cnt[4]),
        .I2(clk_cnt[5]),
        .I3(clk_cnt[3]),
        .I4(clk_cnt[1]),
        .I5(clk_cnt[0]),
        .O(clk_cnt_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \clk_cnt[3]_i_1 
       (.I0(clk_cnt[2]),
        .I1(clk_cnt[3]),
        .I2(clk_cnt[1]),
        .I3(clk_cnt[0]),
        .O(clk_cnt_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h6CCCCCCC)) 
    \clk_cnt[4]_i_1 
       (.I0(clk_cnt[2]),
        .I1(clk_cnt[4]),
        .I2(clk_cnt[3]),
        .I3(clk_cnt[1]),
        .I4(clk_cnt[0]),
        .O(clk_cnt_0[4]));
  LUT6 #(
    .INIT(64'h78F0F0F0F0F0F0F0)) 
    \clk_cnt[5]_i_1 
       (.I0(clk_cnt[2]),
        .I1(clk_cnt[4]),
        .I2(clk_cnt[5]),
        .I3(clk_cnt[3]),
        .I4(clk_cnt[1]),
        .I5(clk_cnt[0]),
        .O(clk_cnt_0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\clk_cnt[0]_i_1_n_0 ),
        .Q(clk_cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(clk_cnt_0[1]),
        .Q(clk_cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(clk_cnt_0[2]),
        .Q(clk_cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(clk_cnt_0[3]),
        .Q(clk_cnt[3]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(clk_cnt_0[4]),
        .Q(clk_cnt[4]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(clk_cnt_0[5]),
        .Q(clk_cnt[5]));
  LUT6 #(
    .INIT(64'h0000FFA80000FFFF)) 
    \cnt[0]_i_1 
       (.I0(\cnt[2]_i_3_n_0 ),
        .I1(\cnt[6]_i_4_n_0 ),
        .I2(\cnt[1]_i_2__0_n_0 ),
        .I3(\cnt[2]_i_2__0_n_0 ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(\cur_state[5]_i_3_n_0 ),
        .O(cnt[0]));
  LUT6 #(
    .INIT(64'h0000FFEEFFEA0000)) 
    \cnt[1]_i_1__0 
       (.I0(\cnt[2]_i_2__0_n_0 ),
        .I1(\cnt[2]_i_3_n_0 ),
        .I2(\cnt[1]_i_2__0_n_0 ),
        .I3(\cnt[6]_i_3_n_0 ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\cnt_reg_n_0_[0] ),
        .O(cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[1]_i_2__0 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[6] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\cnt[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFEA00000000FFC0)) 
    \cnt[2]_i_1__0 
       (.I0(\cnt[2]_i_2__0_n_0 ),
        .I1(\cnt[2]_i_3_n_0 ),
        .I2(\cnt[2]_i_4__0_n_0 ),
        .I3(\cnt[6]_i_3_n_0 ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\cnt[2]_i_5_n_0 ),
        .O(cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \cnt[2]_i_2__0 
       (.I0(cur_state[3]),
        .I1(cur_state[2]),
        .I2(mdio_dir),
        .O(\cnt[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cnt[2]_i_3 
       (.I0(cur_state[4]),
        .I1(cur_state[5]),
        .O(\cnt[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cnt[2]_i_4__0 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[6] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[0] ),
        .O(\cnt[2]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cnt[2]_i_5 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .O(\cnt[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0EE0E0E0E0E0E0E0)) 
    \cnt[3]_i_1__0 
       (.I0(\cnt[6]_i_2_n_0 ),
        .I1(\cnt[6]_i_3_n_0 ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\cnt_reg_n_0_[0] ),
        .O(cnt[3]));
  LUT6 #(
    .INIT(64'h00FEFE00FE00FE00)) 
    \cnt[4]_i_1__0 
       (.I0(\cnt[6]_i_2_n_0 ),
        .I1(\cnt[4]_i_2__0_n_0 ),
        .I2(\cnt[4]_i_3__0_n_0 ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt[6]_i_5_n_0 ),
        .I5(\cnt_reg_n_0_[3] ),
        .O(cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hFFFFFFB8)) 
    \cnt[4]_i_2__0 
       (.I0(cur_state[3]),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(cur_state[2]),
        .I3(\cnt[6]_i_7_n_0 ),
        .I4(\cnt[6]_i_6_n_0 ),
        .O(\cnt[4]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFDFD5)) 
    \cnt[4]_i_3__0 
       (.I0(\cur_state[5]_i_3_n_0 ),
        .I1(cur_state[2]),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(cur_state[3]),
        .I4(\cnt[4]_i_4__0_n_0 ),
        .O(\cnt[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \cnt[4]_i_4__0 
       (.I0(cur_state[2]),
        .I1(cur_state[3]),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[5] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(mdio_dir),
        .O(\cnt[4]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h0EE0E0E0E0E0E0E0)) 
    \cnt[5]_i_1__0 
       (.I0(\cnt[6]_i_2_n_0 ),
        .I1(\cnt[6]_i_3_n_0 ),
        .I2(\cnt_reg_n_0_[5] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(\cnt[6]_i_5_n_0 ),
        .O(cnt[5]));
  LUT6 #(
    .INIT(64'hE00EE0E0E0E0E0E0)) 
    \cnt[6]_i_1 
       (.I0(\cnt[6]_i_2_n_0 ),
        .I1(\cnt[6]_i_3_n_0 ),
        .I2(\cnt_reg_n_0_[6] ),
        .I3(\cnt[6]_i_4_n_0 ),
        .I4(\cnt_reg_n_0_[4] ),
        .I5(\cnt[6]_i_5_n_0 ),
        .O(cnt[6]));
  LUT6 #(
    .INIT(64'hFFF2FFF2FFFAAAAA)) 
    \cnt[6]_i_2 
       (.I0(\cnt[2]_i_2__0_n_0 ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(cur_state[4]),
        .I3(cur_state[5]),
        .I4(\cnt[1]_i_2__0_n_0 ),
        .I5(\cnt_reg_n_0_[0] ),
        .O(\cnt[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEEEFE)) 
    \cnt[6]_i_3 
       (.I0(\cnt[6]_i_6_n_0 ),
        .I1(\cnt[6]_i_7_n_0 ),
        .I2(cur_state[2]),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(cur_state[3]),
        .I5(\cnt[4]_i_3__0_n_0 ),
        .O(\cnt[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cnt[6]_i_4 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[5] ),
        .O(\cnt[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cnt[6]_i_5 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[0] ),
        .O(\cnt[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8FFA8FFA8FFA8)) 
    \cnt[6]_i_6 
       (.I0(\cnt_reg_n_0_[6] ),
        .I1(cur_state[3]),
        .I2(cur_state[2]),
        .I3(mdio_dir),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(\cnt_reg_n_0_[5] ),
        .O(\cnt[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0EEEFFFF0EEE0EEE)) 
    \cnt[6]_i_7 
       (.I0(cur_state[4]),
        .I1(cur_state[5]),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[5] ),
        .I4(\cnt_reg_n_0_[4] ),
        .I5(mdio_dir),
        .O(\cnt[6]_i_7_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt[0]),
        .Q(\cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt[6]),
        .Q(\cnt_reg_n_0_[6] ));
  LUT6 #(
    .INIT(64'hFF5DFF5DFF5D5D5D)) 
    \cur_state[0]_i_1 
       (.I0(\cur_state[5]_i_3_n_0 ),
        .I1(cur_state[0]),
        .I2(op_exec),
        .I3(st_done_reg_n_0),
        .I4(cur_state[4]),
        .I5(cur_state[5]),
        .O(next_state[0]));
  LUT5 #(
    .INIT(32'h8800F800)) 
    \cur_state[1]_i_1__0 
       (.I0(op_exec),
        .I1(cur_state[0]),
        .I2(mdio_dir),
        .I3(\cur_state[5]_i_3_n_0 ),
        .I4(st_done_reg_n_0),
        .O(next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    \cur_state[2]_i_1__0 
       (.I0(mdio_dir),
        .I1(cur_state[2]),
        .I2(\cur_state[5]_i_3_n_0 ),
        .I3(st_done_reg_n_0),
        .O(next_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    \cur_state[3]_i_1__0 
       (.I0(cur_state[2]),
        .I1(cur_state[3]),
        .I2(\cur_state[5]_i_3_n_0 ),
        .I3(st_done_reg_n_0),
        .O(next_state[3]));
  LUT6 #(
    .INIT(64'h08080000FF000000)) 
    \cur_state[4]_i_1__0 
       (.I0(cur_state[3]),
        .I1(\op_code_reg_n_0_[0] ),
        .I2(\op_code_reg_n_0_[1] ),
        .I3(cur_state[4]),
        .I4(\cur_state[5]_i_3_n_0 ),
        .I5(st_done_reg_n_0),
        .O(next_state[4]));
  LUT6 #(
    .INIT(64'hD0D00000FF000000)) 
    \cur_state[5]_i_1 
       (.I0(\op_code_reg_n_0_[0] ),
        .I1(\op_code_reg_n_0_[1] ),
        .I2(cur_state[3]),
        .I3(cur_state[5]),
        .I4(\cur_state[5]_i_3_n_0 ),
        .I5(st_done_reg_n_0),
        .O(next_state[5]));
  LUT6 #(
    .INIT(64'h0000000100010116)) 
    \cur_state[5]_i_3 
       (.I0(cur_state[0]),
        .I1(mdio_dir),
        .I2(cur_state[2]),
        .I3(cur_state[3]),
        .I4(cur_state[4]),
        .I5(cur_state[5]),
        .O(\cur_state[5]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "st_pre:000010,st_start:000100,st_addr:001000,st_wr_data:010000,st_rd_data:100000,st_idle:000001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \cur_state_reg[0] 
       (.C(dri_clk),
        .CE(1'b1),
        .D(next_state[0]),
        .PRE(reset),
        .Q(cur_state[0]));
  (* FSM_ENCODED_STATES = "st_pre:000010,st_start:000100,st_addr:001000,st_wr_data:010000,st_rd_data:100000,st_idle:000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[1] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(next_state[1]),
        .Q(mdio_dir));
  (* FSM_ENCODED_STATES = "st_pre:000010,st_start:000100,st_addr:001000,st_wr_data:010000,st_rd_data:100000,st_idle:000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[2] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(next_state[2]),
        .Q(cur_state[2]));
  (* FSM_ENCODED_STATES = "st_pre:000010,st_start:000100,st_addr:001000,st_wr_data:010000,st_rd_data:100000,st_idle:000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[3] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(next_state[3]),
        .Q(cur_state[3]));
  (* FSM_ENCODED_STATES = "st_pre:000010,st_start:000100,st_addr:001000,st_wr_data:010000,st_rd_data:100000,st_idle:000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[4] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(next_state[4]),
        .Q(cur_state[4]));
  (* FSM_ENCODED_STATES = "st_pre:000010,st_start:000100,st_addr:001000,st_wr_data:010000,st_rd_data:100000,st_idle:000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[5] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(next_state[5]),
        .Q(cur_state[5]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h7)) 
    dri_clk__0
       (.I0(clk_cnt[0]),
        .I1(clk_cnt[1]),
        .O(dri_clk__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    dri_clk_i_1
       (.I0(dri_clk__0_n_0),
        .I1(clk_cnt[2]),
        .I2(clk_cnt[5]),
        .I3(clk_cnt[3]),
        .I4(clk_cnt[4]),
        .I5(dri_clk_reg_0),
        .O(dri_clk_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    dri_clk_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(dri_clk_i_1_n_0),
        .Q(dri_clk_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT1 #(
    .INIT(2'h1)) 
    eth_mdc_i_1
       (.I0(\cnt_reg_n_0_[0] ),
        .O(eth_mdc_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    eth_mdc_reg
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(eth_mdc_i_1_n_0),
        .Q(eth_mdc_OBUF));
  LUT1 #(
    .INIT(2'h1)) 
    mdio_dir_i_1
       (.I0(mdio_dir_i_2_n_0),
        .O(mdio_dir_i_1_n_0));
  LUT6 #(
    .INIT(64'hF5F5F4F5A0A0A0B0)) 
    mdio_dir_i_2
       (.I0(mdio_dir_i_3_n_0),
        .I1(\cnt[2]_i_3_n_0 ),
        .I2(mdio_dir),
        .I3(cur_state[0]),
        .I4(mdio_dir_i_4_n_0),
        .I5(mdio_dir_i_5_n_0),
        .O(mdio_dir_i_2_n_0));
  LUT6 #(
    .INIT(64'h8888000088F80000)) 
    mdio_dir_i_3
       (.I0(mdio_dir_i_6_n_0),
        .I1(mdio_dir_i_7_n_0),
        .I2(\rd_data_t[5]_i_2_n_0 ),
        .I3(st_done_i_4_n_0),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(\cnt[1]_i_2__0_n_0 ),
        .O(mdio_dir_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'hE)) 
    mdio_dir_i_4
       (.I0(cur_state[2]),
        .I1(cur_state[3]),
        .O(mdio_dir_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mdio_dir_i_5
       (.I0(eth_mdio_TRI),
        .O(mdio_dir_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    mdio_dir_i_6
       (.I0(cur_state[4]),
        .I1(cur_state[5]),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[5] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(op_rd_ack_i_3_n_0),
        .O(mdio_dir_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    mdio_dir_i_7
       (.I0(mdio_dir),
        .I1(cur_state[2]),
        .I2(cur_state[3]),
        .I3(cur_state[0]),
        .O(mdio_dir_i_7_n_0));
  FDPE #(
    .INIT(1'b1)) 
    mdio_dir_reg
       (.C(dri_clk),
        .CE(1'b1),
        .D(mdio_dir_i_1_n_0),
        .PRE(reset),
        .Q(eth_mdio_TRI));
  LUT5 #(
    .INIT(32'hFEFFFE00)) 
    mdio_out_i_1
       (.I0(mdio_out_i_2_n_0),
        .I1(mdio_out_i_3_n_0),
        .I2(mdio_out_i_4_n_0),
        .I3(mdio_out_i_5_n_0),
        .I4(eth_mdio_OBUF),
        .O(mdio_out_i_1_n_0));
  LUT6 #(
    .INIT(64'h0040004000440040)) 
    mdio_out_i_10
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(mdio_out_i_12_n_0),
        .I2(cur_state[4]),
        .I3(\cnt_reg_n_0_[6] ),
        .I4(cur_state[3]),
        .I5(\cnt_reg_n_0_[4] ),
        .O(mdio_out_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h004F0044)) 
    mdio_out_i_11
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(cur_state[3]),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[6] ),
        .I4(cur_state[2]),
        .O(mdio_out_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mdio_out_i_12
       (.I0(\cur_state[5]_i_3_n_0 ),
        .I1(\cnt_reg_n_0_[0] ),
        .O(mdio_out_i_12_n_0));
  LUT6 #(
    .INIT(64'hC000C000C000C100)) 
    mdio_out_i_2
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[5] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(cur_state[4]),
        .I4(\cnt_reg_n_0_[4] ),
        .I5(\cnt_reg_n_0_[1] ),
        .O(mdio_out_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFB000)) 
    mdio_out_i_3
       (.I0(\op_code_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(cur_state[2]),
        .I4(mdio_dir),
        .I5(cur_state[0]),
        .O(mdio_out_i_3_n_0));
  LUT5 #(
    .INIT(32'hFEEEEEEE)) 
    mdio_out_i_4
       (.I0(cur_state[5]),
        .I1(mdio_out_i_6_n_0),
        .I2(mdio_out_i_7_n_0),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(cur_state[3]),
        .O(mdio_out_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEFEFE)) 
    mdio_out_i_5
       (.I0(mdio_out_i_8_n_0),
        .I1(mdio_out_i_9_n_0),
        .I2(mdio_out_i_10_n_0),
        .I3(\cur_state[5]_i_3_n_0 ),
        .I4(cur_state[0]),
        .I5(mdio_dir),
        .O(mdio_out_i_5_n_0));
  LUT6 #(
    .INIT(64'h4444004000400040)) 
    mdio_out_i_6
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(cur_state[3]),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\op_code_reg_n_0_[1] ),
        .I5(cur_state[2]),
        .O(mdio_out_i_6_n_0));
  LUT5 #(
    .INIT(32'h2F202020)) 
    mdio_out_i_7
       (.I0(data0),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\addr_t_reg_n_0_[0] ),
        .I4(\cnt_reg_n_0_[4] ),
        .O(mdio_out_i_7_n_0));
  LUT6 #(
    .INIT(64'h4000400040404000)) 
    mdio_out_i_8
       (.I0(st_done_i_4_n_0),
        .I1(\cur_state[5]_i_3_n_0 ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(mdio_out_i_11_n_0),
        .I4(cur_state[5]),
        .I5(\cnt[1]_i_2__0_n_0 ),
        .O(mdio_out_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000800080008)) 
    mdio_out_i_9
       (.I0(mdio_out_i_12_n_0),
        .I1(cur_state[4]),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\rd_data_t[15]_i_5_n_0 ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\cnt_reg_n_0_[2] ),
        .O(mdio_out_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    mdio_out_reg
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(mdio_out_i_1_n_0),
        .Q(eth_mdio_OBUF));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \op_code[1]_i_1 
       (.I0(\cnt[2]_i_3_n_0 ),
        .I1(cur_state[3]),
        .I2(cur_state[2]),
        .I3(mdio_dir),
        .I4(cur_state[0]),
        .I5(op_exec),
        .O(op_code));
  FDCE #(
    .INIT(1'b0)) 
    \op_code_reg[0] 
       (.C(dri_clk),
        .CE(op_code),
        .CLR(reset),
        .D(D[0]),
        .Q(\op_code_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_code_reg[1] 
       (.C(dri_clk),
        .CE(op_code),
        .CLR(reset),
        .D(D[1]),
        .Q(\op_code_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hEFE0)) 
    op_done_i_1
       (.I0(cur_state[4]),
        .I1(cur_state[5]),
        .I2(op_done_i_2_n_0),
        .I3(op_done),
        .O(op_done_i_1_n_0));
  LUT6 #(
    .INIT(64'h0004000400040114)) 
    op_done_i_2
       (.I0(\cnt[2]_i_2__0_n_0 ),
        .I1(cur_state[0]),
        .I2(cur_state[5]),
        .I3(cur_state[4]),
        .I4(\cnt[6]_i_4_n_0 ),
        .I5(\cnt[2]_i_4__0_n_0 ),
        .O(op_done_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    op_done_reg
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(op_done_i_1_n_0),
        .Q(op_done));
  LUT6 #(
    .INIT(64'hE2E2E2FFE2E2E200)) 
    op_rd_ack_i_1
       (.I0(eth_mdio_IBUF),
        .I1(cur_state[0]),
        .I2(op_exec),
        .I3(op_code),
        .I4(op_rd_ack_i_2_n_0),
        .I5(op_rd_ack),
        .O(op_rd_ack_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    op_rd_ack_i_2
       (.I0(op_rd_ack_i_3_n_0),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[5] ),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(\rd_data_t[5]_i_2_n_0 ),
        .O(op_rd_ack_i_2_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    op_rd_ack_i_3
       (.I0(\cnt_reg_n_0_[6] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .O(op_rd_ack_i_3_n_0));
  FDPE #(
    .INIT(1'b1)) 
    op_rd_ack_reg
       (.C(dri_clk),
        .CE(1'b1),
        .D(op_rd_ack_i_1_n_0),
        .PRE(reset),
        .Q(op_rd_ack));
  LUT3 #(
    .INIT(8'h80)) 
    \op_rd_data[15]_i_1 
       (.I0(\rd_data_t[15]_i_4_n_0 ),
        .I1(\cnt_reg_n_0_[5] ),
        .I2(\cnt_reg_n_0_[3] ),
        .O(\op_rd_data[15]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \op_rd_data_reg[14] 
       (.C(dri_clk),
        .CE(\op_rd_data[15]_i_1_n_0 ),
        .CLR(reset),
        .D(rd_data_t[14]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \op_rd_data_reg[15] 
       (.C(dri_clk),
        .CE(\op_rd_data[15]_i_1_n_0 ),
        .CLR(reset),
        .D(rd_data_t[15]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \op_rd_data_reg[2] 
       (.C(dri_clk),
        .CE(\op_rd_data[15]_i_1_n_0 ),
        .CLR(reset),
        .D(rd_data_t[2]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \op_rd_data_reg[5] 
       (.C(dri_clk),
        .CE(\op_rd_data[15]_i_1_n_0 ),
        .CLR(reset),
        .D(rd_data_t[5]),
        .Q(Q[1]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \rd_data_t[14]_i_1 
       (.I0(\rd_data_t[15]_i_2_n_0 ),
        .I1(\rd_data_t[15]_i_4_n_0 ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(rd_data_t[14]),
        .O(\rd_data_t[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABFFFFBBA8000088)) 
    \rd_data_t[15]_i_1 
       (.I0(\rd_data_t[15]_i_2_n_0 ),
        .I1(\rd_data_t[15]_i_3_n_0 ),
        .I2(\rd_data_t[15]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[5] ),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(rd_data_t[15]),
        .O(\rd_data_t[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rd_data_t[15]_i_2 
       (.I0(eth_mdio_IBUF),
        .I1(\cnt_reg_n_0_[5] ),
        .O(\rd_data_t[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \rd_data_t[15]_i_3 
       (.I0(\rd_data_t[15]_i_5_n_0 ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\rd_data_t[5]_i_2_n_0 ),
        .O(\rd_data_t[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \rd_data_t[15]_i_4 
       (.I0(\rd_data_t[5]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg_n_0_[6] ),
        .I5(\cnt_reg_n_0_[2] ),
        .O(\rd_data_t[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rd_data_t[15]_i_5 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[6] ),
        .O(\rd_data_t[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \rd_data_t[2]_i_1 
       (.I0(eth_mdio_IBUF),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\rd_data_t[15]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[5] ),
        .I4(rd_data_t[2]),
        .O(\rd_data_t[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBABBB8888A888)) 
    \rd_data_t[5]_i_1 
       (.I0(\rd_data_t[15]_i_2_n_0 ),
        .I1(\op_rd_data[15]_i_1_n_0 ),
        .I2(\rd_data_t[5]_i_2_n_0 ),
        .I3(\rd_data_t[5]_i_3_n_0 ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(rd_data_t[5]),
        .O(\rd_data_t[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \rd_data_t[5]_i_2 
       (.I0(cur_state[4]),
        .I1(cur_state[5]),
        .I2(cur_state[0]),
        .I3(cur_state[3]),
        .I4(cur_state[2]),
        .I5(mdio_dir),
        .O(\rd_data_t[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \rd_data_t[5]_i_3 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[6] ),
        .I5(\cnt_reg_n_0_[5] ),
        .O(\rd_data_t[5]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \rd_data_t_reg[14] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\rd_data_t[14]_i_1_n_0 ),
        .Q(rd_data_t[14]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_data_t_reg[15] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\rd_data_t[15]_i_1_n_0 ),
        .Q(rd_data_t[15]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_data_t_reg[2] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\rd_data_t[2]_i_1_n_0 ),
        .Q(rd_data_t[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_data_t_reg[5] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\rd_data_t[5]_i_1_n_0 ),
        .Q(rd_data_t[5]));
  LUT6 #(
    .INIT(64'hF000880000008800)) 
    st_done_i_1
       (.I0(st_done_i_2_n_0),
        .I1(\cur_state[5]_i_3_n_0 ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(st_done_i_3_n_0),
        .O(st_done));
  LUT6 #(
    .INIT(64'h00000000FF004040)) 
    st_done_i_2
       (.I0(st_done_i_4_n_0),
        .I1(cur_state[2]),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(st_done_i_5_n_0),
        .I4(\cnt_reg_n_0_[4] ),
        .I5(\cnt_reg_n_0_[6] ),
        .O(st_done_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    st_done_i_3
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[6] ),
        .I2(\cnt[2]_i_3_n_0 ),
        .I3(\cur_state[5]_i_3_n_0 ),
        .I4(\cnt_reg_n_0_[5] ),
        .I5(\cnt_reg_n_0_[3] ),
        .O(st_done_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'hE)) 
    st_done_i_4
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[5] ),
        .O(st_done_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h80800300)) 
    st_done_i_5
       (.I0(mdio_dir),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[5] ),
        .I3(cur_state[3]),
        .I4(\cnt_reg_n_0_[2] ),
        .O(st_done_i_5_n_0));
  FDCE #(
    .INIT(1'b0)) 
    st_done_reg
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(st_done),
        .Q(st_done_reg_n_0));
endmodule

module mdio_rw_test
   (eth_mdc_OBUF,
    dri_clk_reg,
    eth_mdio_OBUF,
    eth_mdio_TRI,
    \phy_speed_reg[1] ,
    dri_clk,
    reset,
    sys_clk,
    eth_mdio_IBUF,
    eth_rst_n_OBUF);
  output eth_mdc_OBUF;
  output dri_clk_reg;
  output eth_mdio_OBUF;
  output eth_mdio_TRI;
  output [1:0]\phy_speed_reg[1] ;
  input dri_clk;
  input reset;
  input sys_clk;
  input eth_mdio_IBUF;
  input eth_rst_n_OBUF;

  wire dri_clk;
  wire dri_clk_reg;
  wire eth_mdc_OBUF;
  wire eth_mdio_IBUF;
  wire eth_mdio_OBUF;
  wire eth_mdio_TRI;
  wire eth_rst_n_OBUF;
  wire op_done;
  wire op_exec;
  wire op_rd_ack;
  wire [15:2]op_rd_data;
  wire op_rh_wl;
  wire [0:0]p_0_out;
  wire [1:0]\phy_speed_reg[1] ;
  wire reset;
  wire sys_clk;
  wire u_mdio_ctrl_n_5;
  wire u_mdio_ctrl_n_6;

  mdio_ctrl u_mdio_ctrl
       (.D({op_rh_wl,p_0_out}),
        .Q({op_rd_data[15:14],op_rd_data[5],op_rd_data[2]}),
        .dri_clk(dri_clk),
        .eth_rst_n_OBUF(eth_rst_n_OBUF),
        .\op_addr_reg[4]_0 ({u_mdio_ctrl_n_5,u_mdio_ctrl_n_6}),
        .op_done(op_done),
        .op_exec(op_exec),
        .op_rd_ack(op_rd_ack),
        .\phy_speed_reg[1]_0 (\phy_speed_reg[1] ),
        .reset(reset));
  mdio_dri u_mdio_dri
       (.D({op_rh_wl,p_0_out}),
        .Q({op_rd_data[15:14],op_rd_data[5],op_rd_data[2]}),
        .\addr_t_reg[4]_0 ({u_mdio_ctrl_n_5,u_mdio_ctrl_n_6}),
        .dri_clk(dri_clk),
        .dri_clk_reg_0(dri_clk_reg),
        .eth_mdc_OBUF(eth_mdc_OBUF),
        .eth_mdio_IBUF(eth_mdio_IBUF),
        .eth_mdio_OBUF(eth_mdio_OBUF),
        .eth_mdio_TRI(eth_mdio_TRI),
        .op_done(op_done),
        .op_exec(op_exec),
        .op_rd_ack(op_rd_ack),
        .reset(reset),
        .sys_clk(sys_clk));
endmodule

module rgmii_rx
   (bbstub_locked,
    gmii_rx_dv,
    Q,
    eth_rx_ctl_IBUF,
    eth_rxc_sample,
    locked,
    eth_rxd_IBUF,
    reset);
  output bbstub_locked;
  output gmii_rx_dv;
  output [7:0]Q;
  input eth_rx_ctl_IBUF;
  input eth_rxc_sample;
  input locked;
  input [3:0]eth_rxd_IBUF;
  input reset;

  wire [7:0]Q;
  wire bbstub_locked;
  wire eth_rx_ctl_IBUF;
  wire eth_rxc_sample;
  wire [3:0]eth_rxd_IBUF;
  wire gmii_rx_dv;
  wire \gmii_rxd_r[0]_i_1_n_0 ;
  wire \gmii_rxd_r[1]_i_1_n_0 ;
  wire \gmii_rxd_r[2]_i_1_n_0 ;
  wire \gmii_rxd_r[3]_i_1_n_0 ;
  wire \gmii_rxd_r[4]_i_1_n_0 ;
  wire \gmii_rxd_r[5]_i_1_n_0 ;
  wire \gmii_rxd_r[6]_i_1_n_0 ;
  wire \gmii_rxd_r[7]_i_1_n_0 ;
  wire gmii_rxdv_t_0;
  wire gmii_rxdv_t_1;
  wire locked;
  wire reset;

  LUT2 #(
    .INIT(4'h8)) 
    eth_txc_OBUF_inst_i_1
       (.I0(eth_rxc_sample),
        .I1(locked),
        .O(bbstub_locked));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gmii_rxd_r[0]_i_1 
       (.I0(eth_rx_ctl_IBUF),
        .I1(Q[4]),
        .O(\gmii_rxd_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gmii_rxd_r[1]_i_1 
       (.I0(eth_rx_ctl_IBUF),
        .I1(Q[5]),
        .O(\gmii_rxd_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gmii_rxd_r[2]_i_1 
       (.I0(eth_rx_ctl_IBUF),
        .I1(Q[6]),
        .O(\gmii_rxd_r[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gmii_rxd_r[3]_i_1 
       (.I0(eth_rx_ctl_IBUF),
        .I1(Q[7]),
        .O(\gmii_rxd_r[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gmii_rxd_r[4]_i_1 
       (.I0(eth_rx_ctl_IBUF),
        .I1(eth_rxd_IBUF[0]),
        .O(\gmii_rxd_r[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gmii_rxd_r[5]_i_1 
       (.I0(eth_rx_ctl_IBUF),
        .I1(eth_rxd_IBUF[1]),
        .O(\gmii_rxd_r[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gmii_rxd_r[6]_i_1 
       (.I0(eth_rx_ctl_IBUF),
        .I1(eth_rxd_IBUF[2]),
        .O(\gmii_rxd_r[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gmii_rxd_r[7]_i_1 
       (.I0(eth_rx_ctl_IBUF),
        .I1(eth_rxd_IBUF[3]),
        .O(\gmii_rxd_r[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \gmii_rxd_r_reg[0] 
       (.C(bbstub_locked),
        .CE(1'b1),
        .CLR(reset),
        .D(\gmii_rxd_r[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gmii_rxd_r_reg[1] 
       (.C(bbstub_locked),
        .CE(1'b1),
        .CLR(reset),
        .D(\gmii_rxd_r[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gmii_rxd_r_reg[2] 
       (.C(bbstub_locked),
        .CE(1'b1),
        .CLR(reset),
        .D(\gmii_rxd_r[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gmii_rxd_r_reg[3] 
       (.C(bbstub_locked),
        .CE(1'b1),
        .CLR(reset),
        .D(\gmii_rxd_r[3]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gmii_rxd_r_reg[4] 
       (.C(bbstub_locked),
        .CE(1'b1),
        .CLR(reset),
        .D(\gmii_rxd_r[4]_i_1_n_0 ),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gmii_rxd_r_reg[5] 
       (.C(bbstub_locked),
        .CE(1'b1),
        .CLR(reset),
        .D(\gmii_rxd_r[5]_i_1_n_0 ),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gmii_rxd_r_reg[6] 
       (.C(bbstub_locked),
        .CE(1'b1),
        .CLR(reset),
        .D(\gmii_rxd_r[6]_i_1_n_0 ),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gmii_rxd_r_reg[7] 
       (.C(bbstub_locked),
        .CE(1'b1),
        .CLR(reset),
        .D(\gmii_rxd_r[7]_i_1_n_0 ),
        .Q(Q[7]));
  LUT2 #(
    .INIT(4'h8)) 
    u_arp_rx_i_1
       (.I0(gmii_rxdv_t_0),
        .I1(gmii_rxdv_t_1),
        .O(gmii_rx_dv));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    u_iddr_rx_ctl
       (.C(bbstub_locked),
        .CE(1'b1),
        .D(eth_rx_ctl_IBUF),
        .Q1(gmii_rxdv_t_0),
        .Q2(gmii_rxdv_t_1),
        .R(1'b0),
        .S(1'b0));
endmodule

module rgmii_tx
   (eth_tx_ctl_OBUF,
    cur_pos,
    eth_txd_OBUF,
    gmii_tx_en,
    \rgmii_txd_r_reg[0]_0 ,
    cur_pos_reg_0,
    \rgmii_txd_r_reg[0]_1 ,
    \rgmii_txd_r_reg[3]_0 ,
    \rgmii_txd_r_reg[2]_0 ,
    \rgmii_txd_r_reg[1]_0 ,
    \rgmii_txd_r_reg[0]_2 );
  output eth_tx_ctl_OBUF;
  output cur_pos;
  output [3:0]eth_txd_OBUF;
  input gmii_tx_en;
  input \rgmii_txd_r_reg[0]_0 ;
  input cur_pos_reg_0;
  input \rgmii_txd_r_reg[0]_1 ;
  input \rgmii_txd_r_reg[3]_0 ;
  input \rgmii_txd_r_reg[2]_0 ;
  input \rgmii_txd_r_reg[1]_0 ;
  input \rgmii_txd_r_reg[0]_2 ;

  wire cur_pos;
  wire cur_pos_reg_0;
  wire eth_tx_ctl_OBUF;
  wire [3:0]eth_txd_OBUF;
  wire gmii_tx_en;
  wire \rgmii_txd_r_reg[0]_0 ;
  wire \rgmii_txd_r_reg[0]_1 ;
  wire \rgmii_txd_r_reg[0]_2 ;
  wire \rgmii_txd_r_reg[1]_0 ;
  wire \rgmii_txd_r_reg[2]_0 ;
  wire \rgmii_txd_r_reg[3]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    cur_pos_reg
       (.C(\rgmii_txd_r_reg[0]_0 ),
        .CE(1'b1),
        .D(cur_pos_reg_0),
        .Q(cur_pos),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    gmii_tx_en_delay_reg
       (.C(\rgmii_txd_r_reg[0]_0 ),
        .CE(1'b1),
        .D(gmii_tx_en),
        .Q(eth_tx_ctl_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rgmii_txd_r_reg[0] 
       (.C(\rgmii_txd_r_reg[0]_0 ),
        .CE(1'b1),
        .D(\rgmii_txd_r_reg[0]_2 ),
        .Q(eth_txd_OBUF[0]),
        .R(\rgmii_txd_r_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rgmii_txd_r_reg[1] 
       (.C(\rgmii_txd_r_reg[0]_0 ),
        .CE(1'b1),
        .D(\rgmii_txd_r_reg[1]_0 ),
        .Q(eth_txd_OBUF[1]),
        .R(\rgmii_txd_r_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rgmii_txd_r_reg[2] 
       (.C(\rgmii_txd_r_reg[0]_0 ),
        .CE(1'b1),
        .D(\rgmii_txd_r_reg[2]_0 ),
        .Q(eth_txd_OBUF[2]),
        .R(\rgmii_txd_r_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rgmii_txd_r_reg[3] 
       (.C(\rgmii_txd_r_reg[0]_0 ),
        .CE(1'b1),
        .D(\rgmii_txd_r_reg[3]_0 ),
        .Q(eth_txd_OBUF[3]),
        .R(\rgmii_txd_r_reg[0]_1 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
