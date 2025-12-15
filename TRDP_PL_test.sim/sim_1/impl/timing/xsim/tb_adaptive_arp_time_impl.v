// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Dec 26 19:27:14 2024
// Host        : LAPTOP-90OVKT21 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/LYG/Desktop/testV/ADP_ARP/ADP_ARP.sim/sim_1/impl/timing/xsim/tb_adaptive_arp_time_impl.v
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

(* BOARD_IP = "-1062731510" *) (* BOARD_MAC = "48'b000000000001000100100010001100110100010001010101" *) (* DES_IP = "-1062731311" *) 
(* DES_MAC = "48'b111111111111111111111111111111111111111111111111" *) (* ECO_CHECKSUM = "5d10cfbc" *) (* IDELAY_VALUE = "0" *) 
(* PHY_ADDR = "5'b00100" *) 
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
  wire clk_wiz_0_locked;
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
  wire eth_rxc;
  wire [3:0]eth_rxd;
  wire [3:0]eth_rxd_IBUF;
  wire eth_tx_ctl;
  wire eth_tx_ctl_OBUF;
  wire eth_txc;
  wire eth_txc_OBUF;
  wire eth_txc_OBUF_BUFG;
  wire [3:0]eth_txd;
  wire [3:0]eth_txd_OBUF;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire [7:0]gmii_txd;
  wire [1:0]led;
  wire [1:0]led_OBUF;
  wire [1:0]phy_speed;
  wire sys_clk;
  wire sys_clk_IBUF;
  wire sys_rst_n;
  wire sys_rst_n_IBUF;
  wire touch_key;
  wire touch_key_IBUF;
  wire u_arp_n_0;
  wire u_arp_n_1;
  wire u_arp_n_10;
  wire u_arp_n_11;
  wire u_arp_n_8;
  wire u_arp_n_9;
  wire [3:0]\u_arp_rx/cur_state ;
  wire [5:1]\u_arp_rx/p_0_in__0 ;
  wire u_gmii2rgmii_n_10;
  wire u_gmii2rgmii_n_11;
  wire u_gmii2rgmii_n_12;
  wire u_gmii2rgmii_n_13;
  wire u_gmii2rgmii_n_14;
  wire u_gmii2rgmii_n_15;
  wire u_gmii2rgmii_n_16;
  wire u_gmii2rgmii_n_17;
  wire u_mdio_rw_test_n_1;
  wire \u_rgmii_rx_1000m/gmii_rxdv_t_0 ;
  wire \u_rgmii_rx_1000m/gmii_rxdv_t_1 ;
  wire NLW_u_clk_wiz_0_clk_out1_UNCONNECTED;
  wire NLW_u_gmii2rgmii_clk_out1_UNCONNECTED;

initial begin
 $sdf_annotate("tb_adaptive_arp_time_impl.sdf",,,,"tool_control");
end
  BUFG \cur_state_reg[5]_i_2 
       (.I(u_mdio_rw_test_n_1),
        .O(dri_clk));
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
  IBUF eth_rxc_IBUF_inst
       (.I(eth_rxc),
        .O(eth_txc_OBUF));
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
  BUFG eth_txc_OBUF_BUFG_inst
       (.I(eth_txc_OBUF),
        .O(eth_txc_OBUF_BUFG));
  OBUF eth_txc_OBUF_inst
       (.I(eth_txc_OBUF_BUFG),
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
        .O(sys_rst_n_IBUF));
  IBUF touch_key_IBUF_inst
       (.I(touch_key),
        .O(touch_key_IBUF));
  arp u_arp
       (.CLK(eth_txc_OBUF_BUFG),
        .D(arp_tx_en),
        .Q({\u_arp_rx/cur_state [3],\u_arp_rx/cur_state [1:0]}),
        .arp_rx_done(arp_rx_done),
        .arp_rx_type(arp_rx_type),
        .arp_tx_type(arp_tx_type),
        .\cnt_reg[0] (u_gmii2rgmii_n_12),
        .\cnt_reg[2] (u_arp_n_9),
        .\cnt_reg[3] (u_arp_n_8),
        .\cnt_reg[3]_0 (u_arp_n_11),
        .\cnt_reg[4] (u_arp_n_10),
        .error_en_reg(u_gmii2rgmii_n_10),
        .error_en_reg_0(u_gmii2rgmii_n_13),
        .error_en_reg_1(u_gmii2rgmii_n_16),
        .\eth_type_reg[13] ({\u_arp_rx/p_0_in__0 [5:3],\u_arp_rx/p_0_in__0 [1]}),
        .gmii_rxd(gmii_rxd),
        .gmii_rxdv_t_0(\u_rgmii_rx_1000m/gmii_rxdv_t_0 ),
        .gmii_rxdv_t_1(\u_rgmii_rx_1000m/gmii_rxdv_t_1 ),
        .gmii_tx_en(gmii_tx_en),
        .\gmii_txd_reg[7] (gmii_txd),
        .locked(clk_wiz_0_locked),
        .\op_data_reg[15] (u_gmii2rgmii_n_15),
        .\phy_speed_delay_reg[0][1]_0 (phy_speed),
        .\phy_speed_delay_reg[1][1]_0 (led_OBUF),
        .skip_en_reg(u_arp_n_0),
        .skip_en_reg_0(u_gmii2rgmii_n_17),
        .skip_en_reg_1(u_gmii2rgmii_n_11),
        .\src_ip_reg[0] (u_gmii2rgmii_n_14),
        .sys_rst_n(u_arp_n_1),
        .sys_rst_n_IBUF(sys_rst_n_IBUF));
  arp_ctrl u_arp_ctrl
       (.CLK(eth_txc_OBUF_BUFG),
        .D(arp_tx_en),
        .arp_rx_done(arp_rx_done),
        .arp_rx_type(arp_rx_type),
        .arp_tx_type(arp_tx_type),
        .arp_tx_type_reg_0(u_arp_n_1),
        .\touch_key_delay_reg[0]_0 (touch_key_IBUF));
  (* IMPORTED_FROM = "c:/Users/LYG/Desktop/testV/ADP_ARP/ADP_ARP.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  clk_wiz_0 u_clk_wiz_0
       (.clk_in1(sys_clk_IBUF),
        .clk_out1(NLW_u_clk_wiz_0_clk_out1_UNCONNECTED),
        .locked(clk_wiz_0_locked),
        .reset(sys_rst_n_IBUF));
  gmii2rgmii u_gmii2rgmii
       (.CLK(eth_txc_OBUF_BUFG),
        .Q({\u_arp_rx/cur_state [3],\u_arp_rx/cur_state [1:0]}),
        .clk_out1(NLW_u_gmii2rgmii_clk_out1_UNCONNECTED),
        .\cnt_reg[0] (u_arp_n_0),
        .\cur_state_reg[3] (u_gmii2rgmii_n_14),
        .error_en_i_10(u_arp_n_8),
        .error_en_i_5({\u_arp_rx/p_0_in__0 [5:3],\u_arp_rx/p_0_in__0 [1]}),
        .error_en_reg(u_arp_n_11),
        .error_en_reg_0(u_arp_n_10),
        .eth_rx_ctl_IBUF(eth_rx_ctl_IBUF),
        .eth_rxd_IBUF(eth_rxd_IBUF),
        .eth_txc_OBUF(eth_txc_OBUF),
        .\eth_type_reg[13] (u_gmii2rgmii_n_16),
        .gmii_rxd(gmii_rxd),
        .gmii_rxdv_t_0(\u_rgmii_rx_1000m/gmii_rxdv_t_0 ),
        .gmii_rxdv_t_1(\u_rgmii_rx_1000m/gmii_rxdv_t_1 ),
        .gmii_tx_en(gmii_tx_en),
        .gmii_txd(gmii_txd),
        .rgmii_tx_ctl(eth_tx_ctl_OBUF),
        .rgmii_txd(eth_txd_OBUF),
        .\rxdata_bus[3].u_iddr_rxd (u_gmii2rgmii_n_10),
        .\rxdata_bus[3].u_iddr_rxd_0 (u_gmii2rgmii_n_17),
        .skip_en_reg(u_gmii2rgmii_n_12),
        .skip_en_reg_0(u_arp_n_9),
        .u_iddr_rx_ctl(u_gmii2rgmii_n_11),
        .u_iddr_rx_ctl_0(u_gmii2rgmii_n_13),
        .u_iddr_rx_ctl_1(u_gmii2rgmii_n_15));
  mdio_rw_test u_mdio_rw_test
       (.dri_clk(dri_clk),
        .dri_clk_reg(u_mdio_rw_test_n_1),
        .eth_mdc_OBUF(eth_mdc_OBUF),
        .eth_mdio_IBUF(eth_mdio_IBUF),
        .eth_mdio_OBUF(eth_mdio_OBUF),
        .eth_mdio_TRI(eth_mdio_TRI),
        .eth_rst_n_OBUF(eth_rst_n_OBUF),
        .locked(clk_wiz_0_locked),
        .mdio_dir_reg(u_arp_n_1),
        .\phy_speed_reg[1] (phy_speed),
        .sys_clk(sys_clk_IBUF),
        .sys_rst_n_IBUF(sys_rst_n_IBUF));
endmodule

module arp
   (skip_en_reg,
    sys_rst_n,
    arp_rx_done,
    gmii_tx_en,
    arp_rx_type,
    Q,
    \cnt_reg[3] ,
    \cnt_reg[2] ,
    \cnt_reg[4] ,
    \cnt_reg[3]_0 ,
    \eth_type_reg[13] ,
    \gmii_txd_reg[7] ,
    \phy_speed_delay_reg[1][1]_0 ,
    CLK,
    \cnt_reg[0] ,
    skip_en_reg_0,
    \op_data_reg[15] ,
    gmii_rxd,
    skip_en_reg_1,
    error_en_reg,
    error_en_reg_0,
    gmii_rxdv_t_0,
    gmii_rxdv_t_1,
    error_en_reg_1,
    \src_ip_reg[0] ,
    locked,
    sys_rst_n_IBUF,
    D,
    arp_tx_type,
    \phy_speed_delay_reg[0][1]_0 );
  output skip_en_reg;
  output sys_rst_n;
  output arp_rx_done;
  output gmii_tx_en;
  output arp_rx_type;
  output [2:0]Q;
  output [0:0]\cnt_reg[3] ;
  output \cnt_reg[2] ;
  output \cnt_reg[4] ;
  output \cnt_reg[3]_0 ;
  output [3:0]\eth_type_reg[13] ;
  output [7:0]\gmii_txd_reg[7] ;
  output [1:0]\phy_speed_delay_reg[1][1]_0 ;
  input CLK;
  input \cnt_reg[0] ;
  input skip_en_reg_0;
  input \op_data_reg[15] ;
  input [7:0]gmii_rxd;
  input skip_en_reg_1;
  input error_en_reg;
  input error_en_reg_0;
  input gmii_rxdv_t_0;
  input gmii_rxdv_t_1;
  input error_en_reg_1;
  input \src_ip_reg[0] ;
  input locked;
  input sys_rst_n_IBUF;
  input [0:0]D;
  input arp_tx_type;
  input [1:0]\phy_speed_delay_reg[0][1]_0 ;

  wire CLK;
  wire [0:0]D;
  wire [2:0]Q;
  wire arp_rx_done;
  wire arp_rx_type;
  wire arp_tx_type;
  wire \cnt_reg[0] ;
  wire \cnt_reg[2] ;
  wire [0:0]\cnt_reg[3] ;
  wire \cnt_reg[3]_0 ;
  wire \cnt_reg[4] ;
  wire [31:0]crc_data;
  wire [31:0]des_ip;
  wire [47:0]des_mac;
  wire error_en_reg;
  wire error_en_reg_0;
  wire error_en_reg_1;
  wire [3:0]\eth_type_reg[13] ;
  wire [7:0]gmii_rxd;
  wire gmii_rxdv_t_0;
  wire gmii_rxdv_t_1;
  wire gmii_tx_en;
  wire [7:0]\gmii_txd_reg[7] ;
  wire locked;
  wire \op_data_reg[15] ;
  wire [6:1]p_1_in;
  wire [31:0]p_1_in_0;
  wire [1:0]\phy_speed_delay_reg[0][1]_0 ;
  wire [1:0]\phy_speed_delay_reg[0]_11 ;
  wire [1:0]\phy_speed_delay_reg[1][1]_0 ;
  wire skip_en_reg;
  wire skip_en_reg_0;
  wire skip_en_reg_1;
  wire \src_ip_reg[0] ;
  wire sys_rst_n;
  wire sys_rst_n_IBUF;
  wire u_arp_rx_n_11;
  wire u_arp_rx_n_60;
  wire u_arp_rx_n_93;
  wire u_arp_tx_n_0;
  wire u_arp_tx_n_13;
  wire u_arp_tx_n_2;
  wire u_arp_tx_n_3;
  wire u_arp_tx_n_31;
  wire u_arp_tx_n_32;
  wire u_arp_tx_n_4;
  wire u_crc32_d8_n_31;
  wire u_crc32_d8_n_32;
  wire u_crc32_d8_n_33;
  wire u_crc32_d8_n_34;
  wire u_crc32_d8_n_35;
  wire u_crc32_d8_n_36;

  FDCE #(
    .INIT(1'b0)) 
    \phy_speed_delay_reg[0][0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(sys_rst_n),
        .D(\phy_speed_delay_reg[0][1]_0 [0]),
        .Q(\phy_speed_delay_reg[0]_11 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \phy_speed_delay_reg[0][1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(sys_rst_n),
        .D(\phy_speed_delay_reg[0][1]_0 [1]),
        .Q(\phy_speed_delay_reg[0]_11 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \phy_speed_delay_reg[1][0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(sys_rst_n),
        .D(\phy_speed_delay_reg[0]_11 [0]),
        .Q(\phy_speed_delay_reg[1][1]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \phy_speed_delay_reg[1][1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(sys_rst_n),
        .D(\phy_speed_delay_reg[0]_11 [1]),
        .Q(\phy_speed_delay_reg[1][1]_0 [1]));
  arp_rx u_arp_rx
       (.CLK(CLK),
        .Q(Q),
        .arp_rx_done(arp_rx_done),
        .arp_rx_type(arp_rx_type),
        .\cnt_reg[0]_0 (\cnt_reg[0] ),
        .\cnt_reg[2]_0 (\cnt_reg[2] ),
        .\cnt_reg[3]_0 (\cnt_reg[3] ),
        .\cnt_reg[3]_1 (\cnt_reg[3]_0 ),
        .\cnt_reg[4]_0 (\cnt_reg[4] ),
        .error_en_reg_0(error_en_reg),
        .error_en_reg_1(error_en_reg_0),
        .error_en_reg_2(error_en_reg_1),
        .\eth_type_reg[13]_0 (\eth_type_reg[13] ),
        .gmii_rxd(gmii_rxd),
        .gmii_rxdv_t_0(gmii_rxdv_t_0),
        .gmii_rxdv_t_1(gmii_rxdv_t_1),
        .locked(locked),
        .\op_data_reg[15]_0 (\op_data_reg[15] ),
        .skip_en_reg_0(skip_en_reg),
        .skip_en_reg_1(skip_en_reg_0),
        .skip_en_reg_2(skip_en_reg_1),
        .\src_ip_reg[0]_0 (\src_ip_reg[0] ),
        .\src_ip_reg[14]_0 (u_arp_rx_n_60),
        .\src_ip_reg[31]_0 (des_ip),
        .\src_ip_reg[31]_1 (u_arp_rx_n_93),
        .\src_mac_reg[37]_0 (u_arp_rx_n_11),
        .\src_mac_reg[47]_0 (des_mac),
        .sys_rst_n(sys_rst_n),
        .sys_rst_n_IBUF(sys_rst_n_IBUF));
  arp_tx u_arp_tx
       (.CLK(CLK),
        .D({p_1_in_0[31:28],p_1_in_0[25:23],p_1_in_0[21],p_1_in_0[19:17],p_1_in_0[13],p_1_in_0[7],p_1_in_0[3:0]}),
        .E(u_arp_tx_n_4),
        .Q({u_arp_tx_n_2,u_arp_tx_n_3}),
        .\arp_data_reg[24][0]_0 (u_arp_rx_n_93),
        .\arp_data_reg[24][0]_1 (u_arp_rx_n_60),
        .\arp_data_reg[24][7]_0 (des_ip),
        .arp_tx_type(arp_tx_type),
        .\crc_data_reg[28] (u_crc32_d8_n_32),
        .\crc_data_reg[30] ({crc_data[31:20],crc_data[17:15],crc_data[13:0]}),
        .\crc_data_reg[7] (u_crc32_d8_n_36),
        .\eth_head_reg[0][0]_0 (u_arp_rx_n_11),
        .\eth_head_reg[0][7]_0 (des_mac),
        .gmii_tx_en(gmii_tx_en),
        .\gmii_txd_reg[0]_0 (u_arp_tx_n_13),
        .\gmii_txd_reg[2]_0 (u_arp_tx_n_31),
        .\gmii_txd_reg[2]_1 (u_crc32_d8_n_31),
        .\gmii_txd_reg[3]_0 (u_crc32_d8_n_33),
        .\gmii_txd_reg[4]_0 (u_arp_tx_n_32),
        .\gmii_txd_reg[4]_1 (u_crc32_d8_n_34),
        .\gmii_txd_reg[5]_0 (u_crc32_d8_n_35),
        .\gmii_txd_reg[7]_0 (\gmii_txd_reg[7] ),
        .\gmii_txd_reg[7]_1 (sys_rst_n),
        .p_1_in({p_1_in[6],p_1_in[1]}),
        .tx_done_reg_0(u_arp_tx_n_0),
        .\tx_en_delay_reg[0]_0 (D));
  crc32_d8 u_crc32_d8
       (.CLK(CLK),
        .D({p_1_in_0[31:28],p_1_in_0[25:23],p_1_in_0[21],p_1_in_0[19:17],p_1_in_0[13],p_1_in_0[7],p_1_in_0[3:0]}),
        .E(u_arp_tx_n_4),
        .Q({crc_data[31:20],crc_data[17:15],crc_data[13:0]}),
        .\crc_data_reg[10]_0 (u_arp_tx_n_31),
        .\crc_data_reg[16]_0 (\gmii_txd_reg[7] ),
        .\crc_data_reg[20]_0 (u_crc32_d8_n_33),
        .\crc_data_reg[21]_0 (u_crc32_d8_n_31),
        .\crc_data_reg[25]_0 (u_crc32_d8_n_34),
        .\crc_data_reg[27]_0 (u_crc32_d8_n_36),
        .\crc_data_reg[30]_0 (u_crc32_d8_n_32),
        .\crc_data_reg[30]_1 (u_crc32_d8_n_35),
        .\crc_data_reg[31]_0 (sys_rst_n),
        .\crc_data_reg[4]_0 (u_arp_tx_n_0),
        .\crc_data_reg[6]_0 (u_arp_tx_n_13),
        .\gmii_txd[2]_i_3 (u_arp_tx_n_32),
        .\gmii_txd[6]_i_3 ({u_arp_tx_n_2,u_arp_tx_n_3}),
        .p_1_in({p_1_in[6],p_1_in[1]}));
endmodule

module arp_ctrl
   (D,
    arp_tx_type,
    CLK,
    arp_tx_type_reg_0,
    arp_rx_type,
    arp_rx_done,
    \touch_key_delay_reg[0]_0 );
  output [0:0]D;
  output arp_tx_type;
  input CLK;
  input arp_tx_type_reg_0;
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
  wire arp_tx_type_reg_0;
  wire p_0_in2_in;
  wire [0:0]\touch_key_delay_reg[0]_0 ;
  wire \touch_key_delay_reg_n_0_[0] ;
  wire \touch_key_delay_reg_n_0_[2] ;

  (* SOFT_HLUTNM = "soft_lutpair52" *) 
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
        .CLR(arp_tx_type_reg_0),
        .D(arp_tx_en_i_1_n_0),
        .Q(D));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
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
        .CLR(arp_tx_type_reg_0),
        .D(arp_tx_type_i_1_n_0),
        .Q(arp_tx_type));
  FDCE #(
    .INIT(1'b0)) 
    \touch_key_delay_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(arp_tx_type_reg_0),
        .D(\touch_key_delay_reg[0]_0 ),
        .Q(\touch_key_delay_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \touch_key_delay_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(arp_tx_type_reg_0),
        .D(\touch_key_delay_reg_n_0_[0] ),
        .Q(p_0_in2_in));
  FDCE #(
    .INIT(1'b0)) 
    \touch_key_delay_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(arp_tx_type_reg_0),
        .D(p_0_in2_in),
        .Q(\touch_key_delay_reg_n_0_[2] ));
endmodule

module arp_rx
   (skip_en_reg_0,
    sys_rst_n,
    arp_rx_done,
    arp_rx_type,
    Q,
    \cnt_reg[3]_0 ,
    \cnt_reg[2]_0 ,
    \cnt_reg[4]_0 ,
    \cnt_reg[3]_1 ,
    \src_mac_reg[37]_0 ,
    \src_mac_reg[47]_0 ,
    \src_ip_reg[14]_0 ,
    \src_ip_reg[31]_0 ,
    \src_ip_reg[31]_1 ,
    \eth_type_reg[13]_0 ,
    CLK,
    \cnt_reg[0]_0 ,
    skip_en_reg_1,
    \op_data_reg[15]_0 ,
    gmii_rxd,
    skip_en_reg_2,
    error_en_reg_0,
    error_en_reg_1,
    gmii_rxdv_t_0,
    gmii_rxdv_t_1,
    error_en_reg_2,
    \src_ip_reg[0]_0 ,
    locked,
    sys_rst_n_IBUF);
  output skip_en_reg_0;
  output sys_rst_n;
  output arp_rx_done;
  output arp_rx_type;
  output [2:0]Q;
  output [0:0]\cnt_reg[3]_0 ;
  output \cnt_reg[2]_0 ;
  output \cnt_reg[4]_0 ;
  output \cnt_reg[3]_1 ;
  output \src_mac_reg[37]_0 ;
  output [47:0]\src_mac_reg[47]_0 ;
  output \src_ip_reg[14]_0 ;
  output [31:0]\src_ip_reg[31]_0 ;
  output \src_ip_reg[31]_1 ;
  output [3:0]\eth_type_reg[13]_0 ;
  input CLK;
  input \cnt_reg[0]_0 ;
  input skip_en_reg_1;
  input \op_data_reg[15]_0 ;
  input [7:0]gmii_rxd;
  input skip_en_reg_2;
  input error_en_reg_0;
  input error_en_reg_1;
  input gmii_rxdv_t_0;
  input gmii_rxdv_t_1;
  input error_en_reg_2;
  input \src_ip_reg[0]_0 ;
  input locked;
  input sys_rst_n_IBUF;

  wire CLK;
  wire [2:0]Q;
  wire \arp_data[27][7]_i_10_n_0 ;
  wire \arp_data[27][7]_i_5_n_0 ;
  wire \arp_data[27][7]_i_6_n_0 ;
  wire \arp_data[27][7]_i_7_n_0 ;
  wire \arp_data[27][7]_i_8_n_0 ;
  wire \arp_data[27][7]_i_9_n_0 ;
  wire arp_rx_done;
  wire arp_rx_done_i_10_n_0;
  wire arp_rx_done_i_11_n_0;
  wire arp_rx_done_i_12_n_0;
  wire arp_rx_done_i_13_n_0;
  wire arp_rx_done_i_14_n_0;
  wire arp_rx_done_i_1_n_0;
  wire arp_rx_done_i_3_n_0;
  wire arp_rx_done_i_4_n_0;
  wire arp_rx_done_i_5_n_0;
  wire arp_rx_done_i_6_n_0;
  wire arp_rx_done_i_7_n_0;
  wire arp_rx_done_i_8_n_0;
  wire arp_rx_done_i_9_n_0;
  wire arp_rx_type;
  wire arp_rx_type0;
  wire arp_rx_type_i_1_n_0;
  wire [4:0]cnt;
  wire \cnt[0]_i_2_n_0 ;
  wire \cnt[0]_i_3_n_0 ;
  wire \cnt[1]_i_2_n_0 ;
  wire \cnt[1]_i_3__0_n_0 ;
  wire \cnt[3]_i_2_n_0 ;
  wire \cnt[4]_i_1_n_0 ;
  wire \cnt[4]_i_3_n_0 ;
  wire \cnt[4]_i_4_n_0 ;
  wire \cnt[4]_i_5_n_0 ;
  wire \cnt[4]_i_6_n_0 ;
  wire \cnt[4]_i_7_n_0 ;
  wire \cnt_reg[0]_0 ;
  wire \cnt_reg[2]_0 ;
  wire [0:0]\cnt_reg[3]_0 ;
  wire \cnt_reg[3]_1 ;
  wire \cnt_reg[4]_0 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[4] ;
  wire [4:2]cur_state;
  wire \cur_state[4]_i_3_n_0 ;
  wire \cur_state[4]_i_4_n_0 ;
  wire des_ip_t;
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
  wire \des_ip_t[31]_i_2_n_0 ;
  wire \des_ip_t[31]_i_3_n_0 ;
  wire \des_ip_t[3]_i_1_n_0 ;
  wire \des_ip_t[4]_i_1_n_0 ;
  wire \des_ip_t[5]_i_1_n_0 ;
  wire \des_ip_t[6]_i_1_n_0 ;
  wire \des_ip_t[7]_i_1_n_0 ;
  wire \des_ip_t[8]_i_1_n_0 ;
  wire \des_ip_t[9]_i_1_n_0 ;
  wire \des_ip_t_reg_n_0_[24] ;
  wire \des_ip_t_reg_n_0_[25] ;
  wire \des_ip_t_reg_n_0_[26] ;
  wire \des_ip_t_reg_n_0_[27] ;
  wire \des_ip_t_reg_n_0_[28] ;
  wire \des_ip_t_reg_n_0_[29] ;
  wire \des_ip_t_reg_n_0_[30] ;
  wire \des_ip_t_reg_n_0_[31] ;
  wire [47:0]des_mac_t;
  wire \des_mac_t[47]_i_1_n_0 ;
  wire \des_mac_t[47]_i_3_n_0 ;
  wire \des_mac_t[47]_i_4_n_0 ;
  wire \des_mac_t[47]_i_5_n_0 ;
  wire \des_mac_t[47]_i_6_n_0 ;
  wire \des_mac_t[47]_i_7_n_0 ;
  wire \des_mac_t[47]_i_8_n_0 ;
  wire \des_mac_t[47]_i_9_n_0 ;
  wire \des_mac_t_reg_n_0_[40] ;
  wire \des_mac_t_reg_n_0_[41] ;
  wire \des_mac_t_reg_n_0_[42] ;
  wire \des_mac_t_reg_n_0_[43] ;
  wire \des_mac_t_reg_n_0_[44] ;
  wire \des_mac_t_reg_n_0_[45] ;
  wire \des_mac_t_reg_n_0_[46] ;
  wire \des_mac_t_reg_n_0_[47] ;
  wire error_en;
  wire error_en_i_11_n_0;
  wire error_en_i_12_n_0;
  wire error_en_i_13_n_0;
  wire error_en_i_14_n_0;
  wire error_en_i_15_n_0;
  wire error_en_i_16_n_0;
  wire error_en_i_17_n_0;
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
  wire error_en_i_30_n_0;
  wire error_en_i_31_n_0;
  wire error_en_i_32_n_0;
  wire error_en_i_33_n_0;
  wire error_en_i_34_n_0;
  wire error_en_i_35_n_0;
  wire error_en_i_36_n_0;
  wire error_en_i_37_n_0;
  wire error_en_i_38_n_0;
  wire error_en_i_4_n_0;
  wire error_en_i_5_n_0;
  wire error_en_i_6_n_0;
  wire error_en_i_9_n_0;
  wire error_en_reg_0;
  wire error_en_reg_1;
  wire error_en_reg_2;
  wire error_en_reg_n_0;
  wire \eth_head[5][7]_i_10_n_0 ;
  wire \eth_head[5][7]_i_11_n_0 ;
  wire \eth_head[5][7]_i_12_n_0 ;
  wire \eth_head[5][7]_i_13_n_0 ;
  wire \eth_head[5][7]_i_14_n_0 ;
  wire \eth_head[5][7]_i_15_n_0 ;
  wire \eth_head[5][7]_i_16_n_0 ;
  wire \eth_head[5][7]_i_5_n_0 ;
  wire \eth_head[5][7]_i_6_n_0 ;
  wire \eth_head[5][7]_i_7_n_0 ;
  wire \eth_head[5][7]_i_8_n_0 ;
  wire \eth_head[5][7]_i_9_n_0 ;
  wire [8:8]eth_type;
  wire \eth_type[15]_i_2_n_0 ;
  wire \eth_type[15]_i_3_n_0 ;
  wire [3:0]\eth_type_reg[13]_0 ;
  wire [7:0]gmii_rxd;
  wire gmii_rxdv_t_0;
  wire gmii_rxdv_t_1;
  wire [47:8]in17;
  wire locked;
  wire [4:0]next_state;
  wire [0:0]op_data;
  wire \op_data[15]_i_1_n_0 ;
  wire \op_data[15]_i_2_n_0 ;
  wire \op_data_reg[15]_0 ;
  wire \op_data_reg_n_0_[0] ;
  wire \op_data_reg_n_0_[10] ;
  wire \op_data_reg_n_0_[11] ;
  wire \op_data_reg_n_0_[12] ;
  wire \op_data_reg_n_0_[13] ;
  wire \op_data_reg_n_0_[14] ;
  wire \op_data_reg_n_0_[15] ;
  wire \op_data_reg_n_0_[1] ;
  wire \op_data_reg_n_0_[2] ;
  wire \op_data_reg_n_0_[3] ;
  wire \op_data_reg_n_0_[4] ;
  wire \op_data_reg_n_0_[5] ;
  wire \op_data_reg_n_0_[6] ;
  wire \op_data_reg_n_0_[7] ;
  wire \op_data_reg_n_0_[8] ;
  wire \op_data_reg_n_0_[9] ;
  wire [31:8]p_0_in;
  wire [7:0]p_0_in__0;
  wire skip_en;
  wire skip_en_i_3_n_0;
  wire skip_en_i_5_n_0;
  wire skip_en_i_7_n_0;
  wire skip_en_i_8_n_0;
  wire skip_en_i_9_n_0;
  wire skip_en_reg_0;
  wire skip_en_reg_1;
  wire skip_en_reg_2;
  wire \src_ip_reg[0]_0 ;
  wire \src_ip_reg[14]_0 ;
  wire [31:0]\src_ip_reg[31]_0 ;
  wire \src_ip_reg[31]_1 ;
  wire src_ip_t;
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
  wire \src_ip_t[31]_i_2_n_0 ;
  wire \src_ip_t[3]_i_1_n_0 ;
  wire \src_ip_t[4]_i_1_n_0 ;
  wire \src_ip_t[5]_i_1_n_0 ;
  wire \src_ip_t[6]_i_1_n_0 ;
  wire \src_ip_t[7]_i_1_n_0 ;
  wire \src_ip_t[8]_i_1_n_0 ;
  wire \src_ip_t[9]_i_1_n_0 ;
  wire \src_ip_t_reg_n_0_[0] ;
  wire \src_ip_t_reg_n_0_[10] ;
  wire \src_ip_t_reg_n_0_[11] ;
  wire \src_ip_t_reg_n_0_[12] ;
  wire \src_ip_t_reg_n_0_[13] ;
  wire \src_ip_t_reg_n_0_[14] ;
  wire \src_ip_t_reg_n_0_[15] ;
  wire \src_ip_t_reg_n_0_[16] ;
  wire \src_ip_t_reg_n_0_[17] ;
  wire \src_ip_t_reg_n_0_[18] ;
  wire \src_ip_t_reg_n_0_[19] ;
  wire \src_ip_t_reg_n_0_[1] ;
  wire \src_ip_t_reg_n_0_[20] ;
  wire \src_ip_t_reg_n_0_[21] ;
  wire \src_ip_t_reg_n_0_[22] ;
  wire \src_ip_t_reg_n_0_[23] ;
  wire \src_ip_t_reg_n_0_[24] ;
  wire \src_ip_t_reg_n_0_[25] ;
  wire \src_ip_t_reg_n_0_[26] ;
  wire \src_ip_t_reg_n_0_[27] ;
  wire \src_ip_t_reg_n_0_[28] ;
  wire \src_ip_t_reg_n_0_[29] ;
  wire \src_ip_t_reg_n_0_[2] ;
  wire \src_ip_t_reg_n_0_[30] ;
  wire \src_ip_t_reg_n_0_[31] ;
  wire \src_ip_t_reg_n_0_[3] ;
  wire \src_ip_t_reg_n_0_[4] ;
  wire \src_ip_t_reg_n_0_[5] ;
  wire \src_ip_t_reg_n_0_[6] ;
  wire \src_ip_t_reg_n_0_[7] ;
  wire \src_ip_t_reg_n_0_[8] ;
  wire \src_ip_t_reg_n_0_[9] ;
  wire \src_mac_reg[37]_0 ;
  wire [47:0]\src_mac_reg[47]_0 ;
  wire src_mac_t;
  wire \src_mac_t[0]_i_1_n_0 ;
  wire \src_mac_t[10]_i_1_n_0 ;
  wire \src_mac_t[11]_i_1_n_0 ;
  wire \src_mac_t[12]_i_1_n_0 ;
  wire \src_mac_t[13]_i_1_n_0 ;
  wire \src_mac_t[14]_i_1_n_0 ;
  wire \src_mac_t[15]_i_1_n_0 ;
  wire \src_mac_t[16]_i_1_n_0 ;
  wire \src_mac_t[17]_i_1_n_0 ;
  wire \src_mac_t[18]_i_1_n_0 ;
  wire \src_mac_t[19]_i_1_n_0 ;
  wire \src_mac_t[1]_i_1_n_0 ;
  wire \src_mac_t[20]_i_1_n_0 ;
  wire \src_mac_t[21]_i_1_n_0 ;
  wire \src_mac_t[22]_i_1_n_0 ;
  wire \src_mac_t[23]_i_1_n_0 ;
  wire \src_mac_t[24]_i_1_n_0 ;
  wire \src_mac_t[25]_i_1_n_0 ;
  wire \src_mac_t[26]_i_1_n_0 ;
  wire \src_mac_t[27]_i_1_n_0 ;
  wire \src_mac_t[28]_i_1_n_0 ;
  wire \src_mac_t[29]_i_1_n_0 ;
  wire \src_mac_t[2]_i_1_n_0 ;
  wire \src_mac_t[30]_i_1_n_0 ;
  wire \src_mac_t[31]_i_1_n_0 ;
  wire \src_mac_t[32]_i_1_n_0 ;
  wire \src_mac_t[33]_i_1_n_0 ;
  wire \src_mac_t[34]_i_1_n_0 ;
  wire \src_mac_t[35]_i_1_n_0 ;
  wire \src_mac_t[36]_i_1_n_0 ;
  wire \src_mac_t[37]_i_1_n_0 ;
  wire \src_mac_t[38]_i_1_n_0 ;
  wire \src_mac_t[39]_i_1_n_0 ;
  wire \src_mac_t[3]_i_1_n_0 ;
  wire \src_mac_t[40]_i_1_n_0 ;
  wire \src_mac_t[41]_i_1_n_0 ;
  wire \src_mac_t[42]_i_1_n_0 ;
  wire \src_mac_t[43]_i_1_n_0 ;
  wire \src_mac_t[44]_i_1_n_0 ;
  wire \src_mac_t[45]_i_1_n_0 ;
  wire \src_mac_t[46]_i_1_n_0 ;
  wire \src_mac_t[47]_i_2_n_0 ;
  wire \src_mac_t[4]_i_1_n_0 ;
  wire \src_mac_t[5]_i_1_n_0 ;
  wire \src_mac_t[6]_i_1_n_0 ;
  wire \src_mac_t[7]_i_1_n_0 ;
  wire \src_mac_t[8]_i_1_n_0 ;
  wire \src_mac_t[9]_i_1_n_0 ;
  wire \src_mac_t_reg_n_0_[0] ;
  wire \src_mac_t_reg_n_0_[10] ;
  wire \src_mac_t_reg_n_0_[11] ;
  wire \src_mac_t_reg_n_0_[12] ;
  wire \src_mac_t_reg_n_0_[13] ;
  wire \src_mac_t_reg_n_0_[14] ;
  wire \src_mac_t_reg_n_0_[15] ;
  wire \src_mac_t_reg_n_0_[16] ;
  wire \src_mac_t_reg_n_0_[17] ;
  wire \src_mac_t_reg_n_0_[18] ;
  wire \src_mac_t_reg_n_0_[19] ;
  wire \src_mac_t_reg_n_0_[1] ;
  wire \src_mac_t_reg_n_0_[20] ;
  wire \src_mac_t_reg_n_0_[21] ;
  wire \src_mac_t_reg_n_0_[22] ;
  wire \src_mac_t_reg_n_0_[23] ;
  wire \src_mac_t_reg_n_0_[24] ;
  wire \src_mac_t_reg_n_0_[25] ;
  wire \src_mac_t_reg_n_0_[26] ;
  wire \src_mac_t_reg_n_0_[27] ;
  wire \src_mac_t_reg_n_0_[28] ;
  wire \src_mac_t_reg_n_0_[29] ;
  wire \src_mac_t_reg_n_0_[2] ;
  wire \src_mac_t_reg_n_0_[30] ;
  wire \src_mac_t_reg_n_0_[31] ;
  wire \src_mac_t_reg_n_0_[32] ;
  wire \src_mac_t_reg_n_0_[33] ;
  wire \src_mac_t_reg_n_0_[34] ;
  wire \src_mac_t_reg_n_0_[35] ;
  wire \src_mac_t_reg_n_0_[36] ;
  wire \src_mac_t_reg_n_0_[37] ;
  wire \src_mac_t_reg_n_0_[38] ;
  wire \src_mac_t_reg_n_0_[39] ;
  wire \src_mac_t_reg_n_0_[3] ;
  wire \src_mac_t_reg_n_0_[40] ;
  wire \src_mac_t_reg_n_0_[41] ;
  wire \src_mac_t_reg_n_0_[42] ;
  wire \src_mac_t_reg_n_0_[43] ;
  wire \src_mac_t_reg_n_0_[44] ;
  wire \src_mac_t_reg_n_0_[45] ;
  wire \src_mac_t_reg_n_0_[46] ;
  wire \src_mac_t_reg_n_0_[47] ;
  wire \src_mac_t_reg_n_0_[4] ;
  wire \src_mac_t_reg_n_0_[5] ;
  wire \src_mac_t_reg_n_0_[6] ;
  wire \src_mac_t_reg_n_0_[7] ;
  wire \src_mac_t_reg_n_0_[8] ;
  wire \src_mac_t_reg_n_0_[9] ;
  wire sys_rst_n;
  wire sys_rst_n_IBUF;

  LUT4 #(
    .INIT(16'hFFFE)) 
    \arp_data[27][7]_i_10 
       (.I0(\src_ip_reg[31]_0 [2]),
        .I1(\src_ip_reg[31]_0 [3]),
        .I2(\src_ip_reg[31]_0 [0]),
        .I3(\src_ip_reg[31]_0 [1]),
        .O(\arp_data[27][7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \arp_data[27][7]_i_3 
       (.I0(\arp_data[27][7]_i_5_n_0 ),
        .I1(\src_ip_reg[31]_0 [31]),
        .I2(\src_ip_reg[31]_0 [30]),
        .I3(\src_ip_reg[31]_0 [28]),
        .I4(\src_ip_reg[31]_0 [29]),
        .I5(\arp_data[27][7]_i_6_n_0 ),
        .O(\src_ip_reg[31]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \arp_data[27][7]_i_4 
       (.I0(\arp_data[27][7]_i_7_n_0 ),
        .I1(\src_ip_reg[31]_0 [14]),
        .I2(\src_ip_reg[31]_0 [15]),
        .I3(\src_ip_reg[31]_0 [12]),
        .I4(\src_ip_reg[31]_0 [13]),
        .I5(\arp_data[27][7]_i_8_n_0 ),
        .O(\src_ip_reg[14]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \arp_data[27][7]_i_5 
       (.I0(\src_ip_reg[31]_0 [26]),
        .I1(\src_ip_reg[31]_0 [27]),
        .I2(\src_ip_reg[31]_0 [24]),
        .I3(\src_ip_reg[31]_0 [25]),
        .O(\arp_data[27][7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \arp_data[27][7]_i_6 
       (.I0(\src_ip_reg[31]_0 [21]),
        .I1(\src_ip_reg[31]_0 [20]),
        .I2(\src_ip_reg[31]_0 [23]),
        .I3(\src_ip_reg[31]_0 [22]),
        .I4(\arp_data[27][7]_i_9_n_0 ),
        .O(\arp_data[27][7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \arp_data[27][7]_i_7 
       (.I0(\src_ip_reg[31]_0 [10]),
        .I1(\src_ip_reg[31]_0 [11]),
        .I2(\src_ip_reg[31]_0 [8]),
        .I3(\src_ip_reg[31]_0 [9]),
        .O(\arp_data[27][7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \arp_data[27][7]_i_8 
       (.I0(\src_ip_reg[31]_0 [5]),
        .I1(\src_ip_reg[31]_0 [4]),
        .I2(\src_ip_reg[31]_0 [7]),
        .I3(\src_ip_reg[31]_0 [6]),
        .I4(\arp_data[27][7]_i_10_n_0 ),
        .O(\arp_data[27][7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \arp_data[27][7]_i_9 
       (.I0(\src_ip_reg[31]_0 [18]),
        .I1(\src_ip_reg[31]_0 [19]),
        .I2(\src_ip_reg[31]_0 [16]),
        .I3(\src_ip_reg[31]_0 [17]),
        .O(\arp_data[27][7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    arp_rx_done_i_1
       (.I0(\des_ip_t[31]_i_3_n_0 ),
        .I1(\cnt_reg[4]_0 ),
        .I2(arp_rx_done_i_3_n_0),
        .I3(arp_rx_done_i_4_n_0),
        .I4(arp_rx_done_i_5_n_0),
        .I5(arp_rx_done_i_6_n_0),
        .O(arp_rx_done_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    arp_rx_done_i_10
       (.I0(p_0_in[16]),
        .I1(p_0_in[8]),
        .I2(\des_ip_t_reg_n_0_[28] ),
        .I3(\des_ip_t_reg_n_0_[29] ),
        .O(arp_rx_done_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    arp_rx_done_i_11
       (.I0(\des_ip_t_reg_n_0_[31] ),
        .I1(p_0_in[24]),
        .I2(\des_ip_t_reg_n_0_[25] ),
        .I3(p_0_in[25]),
        .O(arp_rx_done_i_11_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    arp_rx_done_i_12
       (.I0(p_0_in[29]),
        .I1(p_0_in[23]),
        .I2(p_0_in[15]),
        .I3(p_0_in[26]),
        .O(arp_rx_done_i_12_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    arp_rx_done_i_13
       (.I0(\op_data_reg_n_0_[2] ),
        .I1(\op_data_reg_n_0_[12] ),
        .I2(\op_data_reg_n_0_[13] ),
        .I3(\op_data_reg_n_0_[3] ),
        .O(arp_rx_done_i_13_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    arp_rx_done_i_14
       (.I0(\op_data_reg_n_0_[7] ),
        .I1(\op_data_reg_n_0_[6] ),
        .I2(\op_data_reg_n_0_[9] ),
        .I3(\op_data_reg_n_0_[11] ),
        .I4(\op_data_reg_n_0_[14] ),
        .I5(\op_data_reg_n_0_[10] ),
        .O(arp_rx_done_i_14_n_0));
  LUT5 #(
    .INIT(32'h00000080)) 
    arp_rx_done_i_2
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg[3]_0 ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[0] ),
        .O(\cnt_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    arp_rx_done_i_3
       (.I0(arp_rx_done_i_7_n_0),
        .I1(arp_rx_done_i_8_n_0),
        .I2(p_0_in[27]),
        .I3(\op_data_reg_n_0_[15] ),
        .I4(p_0_in[21]),
        .I5(p_0_in[14]),
        .O(arp_rx_done_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    arp_rx_done_i_4
       (.I0(arp_rx_done_i_9_n_0),
        .I1(arp_rx_done_i_10_n_0),
        .I2(arp_rx_done_i_11_n_0),
        .I3(arp_rx_done_i_12_n_0),
        .O(arp_rx_done_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF9)) 
    arp_rx_done_i_5
       (.I0(\op_data_reg_n_0_[1] ),
        .I1(\op_data_reg_n_0_[0] ),
        .I2(p_0_in[13]),
        .I3(p_0_in[19]),
        .I4(p_0_in[10]),
        .I5(arp_rx_done_i_13_n_0),
        .O(arp_rx_done_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    arp_rx_done_i_6
       (.I0(\op_data_reg_n_0_[8] ),
        .I1(\op_data_reg_n_0_[4] ),
        .I2(\op_data_reg_n_0_[5] ),
        .I3(arp_rx_done_i_14_n_0),
        .O(arp_rx_done_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    arp_rx_done_i_7
       (.I0(p_0_in[31]),
        .I1(\des_ip_t_reg_n_0_[27] ),
        .I2(p_0_in[18]),
        .I3(p_0_in[9]),
        .I4(\des_ip_t_reg_n_0_[24] ),
        .I5(p_0_in[22]),
        .O(arp_rx_done_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    arp_rx_done_i_8
       (.I0(p_0_in[30]),
        .I1(p_0_in[28]),
        .I2(\des_ip_t_reg_n_0_[26] ),
        .I3(p_0_in[20]),
        .O(arp_rx_done_i_8_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    arp_rx_done_i_9
       (.I0(p_0_in[12]),
        .I1(p_0_in[17]),
        .I2(p_0_in[11]),
        .I3(\des_ip_t_reg_n_0_[30] ),
        .O(arp_rx_done_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    arp_rx_done_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(sys_rst_n),
        .D(arp_rx_done_i_1_n_0),
        .Q(arp_rx_done));
  LUT3 #(
    .INIT(8'hB8)) 
    arp_rx_type_i_1
       (.I0(arp_rx_type0),
        .I1(arp_rx_done_i_1_n_0),
        .I2(arp_rx_type),
        .O(arp_rx_type_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    arp_rx_type_i_2
       (.I0(arp_rx_done_i_6_n_0),
        .I1(\op_data_reg_n_0_[15] ),
        .I2(\op_data_reg_n_0_[0] ),
        .I3(\op_data_reg_n_0_[1] ),
        .I4(arp_rx_done_i_13_n_0),
        .O(arp_rx_type0));
  FDCE #(
    .INIT(1'b0)) 
    arp_rx_type_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(sys_rst_n),
        .D(arp_rx_type_i_1_n_0),
        .Q(arp_rx_type));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFFBBFB)) 
    \cnt[0]_i_1 
       (.I0(Q[0]),
        .I1(\cnt[0]_i_2_n_0 ),
        .I2(Q[1]),
        .I3(\cnt[0]_i_3_n_0 ),
        .I4(cur_state[2]),
        .I5(\cnt_reg_n_0_[0] ),
        .O(cnt[0]));
  LUT6 #(
    .INIT(64'h10000000FFFFFFFF)) 
    \cnt[0]_i_2 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg[3]_0 ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(\cnt[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \cnt[0]_i_3 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg[3]_0 ),
        .O(\cnt[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h66606666)) 
    \cnt[1]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(Q[2]),
        .I3(\cnt[1]_i_2_n_0 ),
        .I4(\cnt[1]_i_3__0_n_0 ),
        .O(cnt[1]));
  LUT6 #(
    .INIT(64'hAA8AAAAAAAAAAAAA)) 
    \cnt[1]_i_2 
       (.I0(cur_state[2]),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .I5(\cnt_reg_n_0_[2] ),
        .O(\cnt[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00040000FFFFFFFF)) 
    \cnt[1]_i_3__0 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg[3]_0 ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(skip_en_reg_1),
        .I5(Q[1]),
        .O(\cnt[1]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h2A80)) 
    \cnt[2]_i_1 
       (.I0(\cnt[3]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(cnt[2]));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cnt[3]_i_1 
       (.I0(\cnt[3]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(cnt[3]));
  LUT5 #(
    .INIT(32'hFFFFD0FF)) 
    \cnt[3]_i_2 
       (.I0(\cnt[0]_i_3_n_0 ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(Q[1]),
        .I3(\cnt[0]_i_2_n_0 ),
        .I4(\cnt[1]_i_2_n_0 ),
        .O(\cnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF57550000)) 
    \cnt[4]_i_1 
       (.I0(\cnt[4]_i_3_n_0 ),
        .I1(cur_state[2]),
        .I2(Q[1]),
        .I3(\cnt_reg[0]_0 ),
        .I4(\cnt[4]_i_4_n_0 ),
        .I5(\cnt[4]_i_5_n_0 ),
        .O(\cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \cnt[4]_i_2 
       (.I0(\cnt[4]_i_6_n_0 ),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\cnt_reg_n_0_[4] ),
        .O(cnt[4]));
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    \cnt[4]_i_3 
       (.I0(Q[1]),
        .I1(gmii_rxdv_t_0),
        .I2(gmii_rxdv_t_1),
        .I3(Q[0]),
        .I4(cur_state[2]),
        .O(\cnt[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \cnt[4]_i_4 
       (.I0(cur_state[4]),
        .I1(Q[2]),
        .O(\cnt[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000001100010100)) 
    \cnt[4]_i_5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\op_data_reg[15]_0 ),
        .I3(cur_state[2]),
        .I4(Q[2]),
        .I5(cur_state[4]),
        .O(\cnt[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDCD5D5D5)) 
    \cnt[4]_i_6 
       (.I0(\cnt[0]_i_2_n_0 ),
        .I1(cur_state[2]),
        .I2(\cnt[4]_i_7_n_0 ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(Q[1]),
        .O(\cnt[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \cnt[4]_i_7 
       (.I0(\cnt_reg[3]_0 ),
        .I1(\cnt_reg_n_0_[4] ),
        .O(\cnt[4]_i_7_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(CLK),
        .CE(\cnt[4]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(cnt[0]),
        .Q(\cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(\cnt[4]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(CLK),
        .CE(\cnt[4]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(CLK),
        .CE(\cnt[4]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(cnt[3]),
        .Q(\cnt_reg[3]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(CLK),
        .CE(\cnt[4]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \cur_state[0]_i_1 
       (.I0(Q[0]),
        .I1(skip_en_reg_0),
        .I2(cur_state[4]),
        .I3(\cur_state[4]_i_3_n_0 ),
        .O(next_state[0]));
  LUT5 #(
    .INIT(32'hAA080008)) 
    \cur_state[1]_i_1 
       (.I0(\cur_state[4]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(error_en_reg_n_0),
        .I3(skip_en_reg_0),
        .I4(Q[0]),
        .O(next_state[1]));
  LUT5 #(
    .INIT(32'hAA080008)) 
    \cur_state[2]_i_1 
       (.I0(\cur_state[4]_i_3_n_0 ),
        .I1(cur_state[2]),
        .I2(error_en_reg_n_0),
        .I3(skip_en_reg_0),
        .I4(Q[1]),
        .O(next_state[2]));
  LUT5 #(
    .INIT(32'hAA080008)) 
    \cur_state[3]_i_1 
       (.I0(\cur_state[4]_i_3_n_0 ),
        .I1(Q[2]),
        .I2(error_en_reg_n_0),
        .I3(skip_en_reg_0),
        .I4(cur_state[2]),
        .O(next_state[3]));
  LUT6 #(
    .INIT(64'hAAAA080AA8A80808)) 
    \cur_state[4]_i_1 
       (.I0(\cur_state[4]_i_3_n_0 ),
        .I1(cur_state[4]),
        .I2(skip_en_reg_0),
        .I3(\cur_state[4]_i_4_n_0 ),
        .I4(Q[2]),
        .I5(error_en_reg_n_0),
        .O(next_state[4]));
  LUT2 #(
    .INIT(4'h7)) 
    \cur_state[4]_i_2__0 
       (.I0(locked),
        .I1(sys_rst_n_IBUF),
        .O(sys_rst_n));
  LUT5 #(
    .INIT(32'h00010116)) 
    \cur_state[4]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(cur_state[2]),
        .I3(Q[2]),
        .I4(cur_state[4]),
        .O(\cur_state[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \cur_state[4]_i_4 
       (.I0(cur_state[2]),
        .I1(Q[1]),
        .O(\cur_state[4]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "st_preamble:00010,st_eth_head:00100,st_arp_data:01000,st_rx_end:10000,st_idle:00001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \cur_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(next_state[0]),
        .PRE(sys_rst_n),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "st_preamble:00010,st_eth_head:00100,st_arp_data:01000,st_rx_end:10000,st_idle:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(sys_rst_n),
        .D(next_state[1]),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "st_preamble:00010,st_eth_head:00100,st_arp_data:01000,st_rx_end:10000,st_idle:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(sys_rst_n),
        .D(next_state[2]),
        .Q(cur_state[2]));
  (* FSM_ENCODED_STATES = "st_preamble:00010,st_eth_head:00100,st_arp_data:01000,st_rx_end:10000,st_idle:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(sys_rst_n),
        .D(next_state[3]),
        .Q(Q[2]));
  (* FSM_ENCODED_STATES = "st_preamble:00010,st_eth_head:00100,st_arp_data:01000,st_rx_end:10000,st_idle:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(sys_rst_n),
        .D(next_state[4]),
        .Q(cur_state[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[0]_i_1 
       (.I0(gmii_rxd[0]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[10]_i_1 
       (.I0(p_0_in[10]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[11]_i_1 
       (.I0(p_0_in[11]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[12]_i_1 
       (.I0(p_0_in[12]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[13]_i_1 
       (.I0(p_0_in[13]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[14]_i_1 
       (.I0(p_0_in[14]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[15]_i_1 
       (.I0(p_0_in[15]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[16]_i_1 
       (.I0(p_0_in[16]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[17]_i_1 
       (.I0(p_0_in[17]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[18]_i_1 
       (.I0(p_0_in[18]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[19]_i_1 
       (.I0(p_0_in[19]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[1]_i_1 
       (.I0(gmii_rxd[1]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[20]_i_1 
       (.I0(p_0_in[20]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[21]_i_1 
       (.I0(p_0_in[21]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[22]_i_1 
       (.I0(p_0_in[22]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[23]_i_1 
       (.I0(p_0_in[23]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[24]_i_1 
       (.I0(p_0_in[24]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[25]_i_1 
       (.I0(p_0_in[25]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[26]_i_1 
       (.I0(p_0_in[26]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[27]_i_1 
       (.I0(p_0_in[27]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[28]_i_1 
       (.I0(p_0_in[28]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[29]_i_1 
       (.I0(p_0_in[29]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[2]_i_1 
       (.I0(gmii_rxd[2]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[30]_i_1 
       (.I0(p_0_in[30]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAAAAAAA)) 
    \des_ip_t[31]_i_1 
       (.I0(arp_rx_done_i_1_n_0),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg[3]_0 ),
        .I4(\des_ip_t[31]_i_3_n_0 ),
        .O(des_ip_t));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[31]_i_2 
       (.I0(p_0_in[31]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \des_ip_t[31]_i_3 
       (.I0(\cnt[0]_i_3_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\src_ip_reg[0]_0 ),
        .I4(cur_state[4]),
        .I5(cur_state[2]),
        .O(\des_ip_t[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[3]_i_1 
       (.I0(gmii_rxd[3]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[4]_i_1 
       (.I0(gmii_rxd[4]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[5]_i_1 
       (.I0(gmii_rxd[5]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[6]_i_1 
       (.I0(gmii_rxd[6]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[7]_i_1 
       (.I0(gmii_rxd[7]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[8]_i_1 
       (.I0(p_0_in[8]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[9]_i_1 
       (.I0(p_0_in[9]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[0] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[0]_i_1_n_0 ),
        .Q(p_0_in[8]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[10] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[10]_i_1_n_0 ),
        .Q(p_0_in[18]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[11] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[11]_i_1_n_0 ),
        .Q(p_0_in[19]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[12] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[12]_i_1_n_0 ),
        .Q(p_0_in[20]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[13] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[13]_i_1_n_0 ),
        .Q(p_0_in[21]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[14] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[14]_i_1_n_0 ),
        .Q(p_0_in[22]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[15] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[15]_i_1_n_0 ),
        .Q(p_0_in[23]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[16] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[16]_i_1_n_0 ),
        .Q(p_0_in[24]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[17] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[17]_i_1_n_0 ),
        .Q(p_0_in[25]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[18] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[18]_i_1_n_0 ),
        .Q(p_0_in[26]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[19] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[19]_i_1_n_0 ),
        .Q(p_0_in[27]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[1] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[1]_i_1_n_0 ),
        .Q(p_0_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[20] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[20]_i_1_n_0 ),
        .Q(p_0_in[28]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[21] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[21]_i_1_n_0 ),
        .Q(p_0_in[29]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[22] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[22]_i_1_n_0 ),
        .Q(p_0_in[30]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[23] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[23]_i_1_n_0 ),
        .Q(p_0_in[31]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[24] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[24]_i_1_n_0 ),
        .Q(\des_ip_t_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[25] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[25]_i_1_n_0 ),
        .Q(\des_ip_t_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[26] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[26]_i_1_n_0 ),
        .Q(\des_ip_t_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[27] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[27]_i_1_n_0 ),
        .Q(\des_ip_t_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[28] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[28]_i_1_n_0 ),
        .Q(\des_ip_t_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[29] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[29]_i_1_n_0 ),
        .Q(\des_ip_t_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[2] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[2]_i_1_n_0 ),
        .Q(p_0_in[10]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[30] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[30]_i_1_n_0 ),
        .Q(\des_ip_t_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[31] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[31]_i_2_n_0 ),
        .Q(\des_ip_t_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[3] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[3]_i_1_n_0 ),
        .Q(p_0_in[11]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[4] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[4]_i_1_n_0 ),
        .Q(p_0_in[12]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[5] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[5]_i_1_n_0 ),
        .Q(p_0_in[13]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[6] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[6]_i_1_n_0 ),
        .Q(p_0_in[14]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[7] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[7]_i_1_n_0 ),
        .Q(p_0_in[15]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[8] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[8]_i_1_n_0 ),
        .Q(p_0_in[16]));
  FDCE #(
    .INIT(1'b0)) 
    \des_ip_t_reg[9] 
       (.C(CLK),
        .CE(des_ip_t),
        .CLR(sys_rst_n),
        .D(\des_ip_t[9]_i_1_n_0 ),
        .Q(p_0_in[17]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[0]_i_1 
       (.I0(gmii_rxd[0]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[10]_i_1 
       (.I0(in17[10]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[10]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[11]_i_1 
       (.I0(in17[11]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[11]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[12]_i_1 
       (.I0(in17[12]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[12]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[13]_i_1 
       (.I0(in17[13]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[13]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[14]_i_1 
       (.I0(in17[14]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[14]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[15]_i_1 
       (.I0(in17[15]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[15]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[16]_i_1 
       (.I0(in17[16]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[16]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[17]_i_1 
       (.I0(in17[17]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[17]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[18]_i_1 
       (.I0(in17[18]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[18]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[19]_i_1 
       (.I0(in17[19]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[19]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[1]_i_1 
       (.I0(gmii_rxd[1]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[20]_i_1 
       (.I0(in17[20]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[20]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[21]_i_1 
       (.I0(in17[21]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[21]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[22]_i_1 
       (.I0(in17[22]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[22]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[23]_i_1 
       (.I0(in17[23]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[23]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[24]_i_1 
       (.I0(in17[24]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[24]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[25]_i_1 
       (.I0(in17[25]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[25]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[26]_i_1 
       (.I0(in17[26]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[26]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[27]_i_1 
       (.I0(in17[27]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[27]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[28]_i_1 
       (.I0(in17[28]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[28]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[29]_i_1 
       (.I0(in17[29]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[29]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[2]_i_1 
       (.I0(gmii_rxd[2]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[30]_i_1 
       (.I0(in17[30]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[30]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[31]_i_1 
       (.I0(in17[31]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[31]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[32]_i_1 
       (.I0(in17[32]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[32]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[33]_i_1 
       (.I0(in17[33]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[33]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[34]_i_1 
       (.I0(in17[34]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[34]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[35]_i_1 
       (.I0(in17[35]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[35]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[36]_i_1 
       (.I0(in17[36]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[36]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[37]_i_1 
       (.I0(in17[37]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[37]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[38]_i_1 
       (.I0(in17[38]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[38]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[39]_i_1 
       (.I0(in17[39]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[39]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[3]_i_1 
       (.I0(gmii_rxd[3]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[40]_i_1 
       (.I0(in17[40]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[40]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[41]_i_1 
       (.I0(in17[41]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[41]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[42]_i_1 
       (.I0(in17[42]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[42]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[43]_i_1 
       (.I0(in17[43]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[43]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[44]_i_1 
       (.I0(in17[44]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[44]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[45]_i_1 
       (.I0(in17[45]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[45]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[46]_i_1 
       (.I0(in17[46]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[46]));
  LUT6 #(
    .INIT(64'h0000110111111111)) 
    \des_mac_t[47]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\des_mac_t[47]_i_3_n_0 ),
        .I3(\des_mac_t[47]_i_4_n_0 ),
        .I4(\des_mac_t[47]_i_5_n_0 ),
        .I5(\des_mac_t[47]_i_6_n_0 ),
        .O(\des_mac_t[47]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[47]_i_2 
       (.I0(in17[47]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[47]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \des_mac_t[47]_i_3 
       (.I0(arp_rx_done_i_6_n_0),
        .I1(arp_rx_done_i_5_n_0),
        .I2(\des_mac_t[47]_i_7_n_0 ),
        .I3(\des_mac_t[47]_i_8_n_0 ),
        .I4(arp_rx_done_i_3_n_0),
        .I5(\cnt_reg[4]_0 ),
        .O(\des_mac_t[47]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4440)) 
    \des_mac_t[47]_i_4 
       (.I0(\cnt_reg[3]_0 ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_mac_t[47]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFAEAEBE)) 
    \des_mac_t[47]_i_5 
       (.I0(\des_mac_t[47]_i_9_n_0 ),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[1] ),
        .O(\des_mac_t[47]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7FFFFFFFFF)) 
    \des_mac_t[47]_i_6 
       (.I0(cur_state[2]),
        .I1(gmii_rxdv_t_1),
        .I2(gmii_rxdv_t_0),
        .I3(Q[2]),
        .I4(cur_state[4]),
        .I5(\cnt_reg[2]_0 ),
        .O(\des_mac_t[47]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \des_mac_t[47]_i_7 
       (.I0(p_0_in[26]),
        .I1(p_0_in[15]),
        .I2(p_0_in[23]),
        .I3(p_0_in[29]),
        .I4(arp_rx_done_i_11_n_0),
        .O(\des_mac_t[47]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \des_mac_t[47]_i_8 
       (.I0(\des_ip_t_reg_n_0_[29] ),
        .I1(\des_ip_t_reg_n_0_[28] ),
        .I2(p_0_in[8]),
        .I3(p_0_in[16]),
        .I4(arp_rx_done_i_9_n_0),
        .O(\des_mac_t[47]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    \des_mac_t[47]_i_9 
       (.I0(gmii_rxdv_t_0),
        .I1(gmii_rxdv_t_1),
        .I2(Q[2]),
        .I3(cur_state[4]),
        .I4(cur_state[2]),
        .O(\des_mac_t[47]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[4]_i_1 
       (.I0(gmii_rxd[4]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[5]_i_1 
       (.I0(gmii_rxd[5]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[6]_i_1 
       (.I0(gmii_rxd[6]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[7]_i_1 
       (.I0(gmii_rxd[7]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[7]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[8]_i_1 
       (.I0(in17[8]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[8]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20202000)) 
    \des_mac_t[9]_i_1 
       (.I0(in17[9]),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[9]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[0] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[0]),
        .Q(in17[8]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[10] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[10]),
        .Q(in17[18]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[11] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[11]),
        .Q(in17[19]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[12] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[12]),
        .Q(in17[20]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[13] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[13]),
        .Q(in17[21]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[14] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[14]),
        .Q(in17[22]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[15] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[15]),
        .Q(in17[23]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[16] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[16]),
        .Q(in17[24]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[17] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[17]),
        .Q(in17[25]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[18] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[18]),
        .Q(in17[26]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[19] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[19]),
        .Q(in17[27]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[1] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[1]),
        .Q(in17[9]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[20] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[20]),
        .Q(in17[28]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[21] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[21]),
        .Q(in17[29]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[22] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[22]),
        .Q(in17[30]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[23] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[23]),
        .Q(in17[31]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[24] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[24]),
        .Q(in17[32]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[25] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[25]),
        .Q(in17[33]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[26] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[26]),
        .Q(in17[34]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[27] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[27]),
        .Q(in17[35]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[28] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[28]),
        .Q(in17[36]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[29] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[29]),
        .Q(in17[37]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[2] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[2]),
        .Q(in17[10]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[30] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[30]),
        .Q(in17[38]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[31] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[31]),
        .Q(in17[39]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[32] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[32]),
        .Q(in17[40]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[33] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[33]),
        .Q(in17[41]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[34] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[34]),
        .Q(in17[42]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[35] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[35]),
        .Q(in17[43]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[36] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[36]),
        .Q(in17[44]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[37] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[37]),
        .Q(in17[45]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[38] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[38]),
        .Q(in17[46]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[39] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[39]),
        .Q(in17[47]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[3] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[3]),
        .Q(in17[11]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[40] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[40]),
        .Q(\des_mac_t_reg_n_0_[40] ));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[41] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[41]),
        .Q(\des_mac_t_reg_n_0_[41] ));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[42] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[42]),
        .Q(\des_mac_t_reg_n_0_[42] ));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[43] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[43]),
        .Q(\des_mac_t_reg_n_0_[43] ));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[44] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[44]),
        .Q(\des_mac_t_reg_n_0_[44] ));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[45] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[45]),
        .Q(\des_mac_t_reg_n_0_[45] ));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[46] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[46]),
        .Q(\des_mac_t_reg_n_0_[46] ));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[47] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[47]),
        .Q(\des_mac_t_reg_n_0_[47] ));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[4] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[4]),
        .Q(in17[12]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[5] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[5]),
        .Q(in17[13]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[6] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[6]),
        .Q(in17[14]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[7] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[7]),
        .Q(in17[15]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[8] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[8]),
        .Q(in17[16]));
  FDCE #(
    .INIT(1'b0)) 
    \des_mac_t_reg[9] 
       (.C(CLK),
        .CE(\des_mac_t[47]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(des_mac_t[9]),
        .Q(in17[17]));
  LUT6 #(
    .INIT(64'h8A888A888A88AAAA)) 
    error_en_i_1
       (.I0(\cur_state[4]_i_3_n_0 ),
        .I1(error_en_reg_0),
        .I2(error_en_reg_1),
        .I3(error_en_i_4_n_0),
        .I4(error_en_i_5_n_0),
        .I5(error_en_i_6_n_0),
        .O(error_en));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    error_en_i_11
       (.I0(p_0_in__0[2]),
        .I1(p_0_in__0[0]),
        .I2(gmii_rxd[6]),
        .I3(p_0_in__0[6]),
        .I4(gmii_rxd[4]),
        .I5(p_0_in__0[7]),
        .O(error_en_i_11_n_0));
  LUT4 #(
    .INIT(16'h0040)) 
    error_en_i_12
       (.I0(\cnt_reg[3]_0 ),
        .I1(in17[14]),
        .I2(in17[10]),
        .I3(error_en_i_20_n_0),
        .O(error_en_i_12_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    error_en_i_13
       (.I0(error_en_i_21_n_0),
        .I1(error_en_i_22_n_0),
        .I2(error_en_i_23_n_0),
        .I3(error_en_i_24_n_0),
        .O(error_en_i_13_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    error_en_i_14
       (.I0(error_en_i_25_n_0),
        .I1(error_en_i_26_n_0),
        .I2(error_en_i_27_n_0),
        .I3(error_en_i_28_n_0),
        .I4(error_en_i_29_n_0),
        .I5(error_en_i_30_n_0),
        .O(error_en_i_14_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    error_en_i_15
       (.I0(in17[23]),
        .I1(in17[31]),
        .I2(\des_mac_t_reg_n_0_[41] ),
        .I3(in17[34]),
        .I4(error_en_i_31_n_0),
        .O(error_en_i_15_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    error_en_i_16
       (.I0(in17[30]),
        .I1(in17[33]),
        .I2(\des_mac_t_reg_n_0_[42] ),
        .I3(in17[41]),
        .I4(error_en_i_32_n_0),
        .O(error_en_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    error_en_i_17
       (.I0(error_en_i_33_n_0),
        .I1(error_en_i_34_n_0),
        .I2(error_en_i_35_n_0),
        .I3(error_en_i_36_n_0),
        .I4(error_en_i_37_n_0),
        .I5(error_en_i_38_n_0),
        .O(error_en_i_17_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    error_en_i_20
       (.I0(in17[12]),
        .I1(in17[25]),
        .I2(in17[24]),
        .I3(in17[28]),
        .I4(in17[8]),
        .I5(in17[29]),
        .O(error_en_i_20_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    error_en_i_21
       (.I0(in17[22]),
        .I1(\des_mac_t_reg_n_0_[42] ),
        .I2(in17[32]),
        .I3(in17[11]),
        .O(error_en_i_21_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    error_en_i_22
       (.I0(\des_mac_t_reg_n_0_[40] ),
        .I1(in17[18]),
        .I2(in17[19]),
        .I3(\des_mac_t_reg_n_0_[46] ),
        .O(error_en_i_22_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    error_en_i_23
       (.I0(in17[44]),
        .I1(\des_mac_t_reg_n_0_[47] ),
        .I2(in17[43]),
        .I3(in17[30]),
        .O(error_en_i_23_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    error_en_i_24
       (.I0(\des_mac_t_reg_n_0_[41] ),
        .I1(in17[46]),
        .I2(in17[27]),
        .I3(in17[45]),
        .O(error_en_i_24_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    error_en_i_25
       (.I0(in17[37]),
        .I1(in17[40]),
        .I2(in17[9]),
        .I3(\des_mac_t_reg_n_0_[44] ),
        .O(error_en_i_25_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    error_en_i_26
       (.I0(in17[17]),
        .I1(in17[13]),
        .I2(\des_mac_t_reg_n_0_[45] ),
        .I3(in17[33]),
        .O(error_en_i_26_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    error_en_i_27
       (.I0(in17[39]),
        .I1(in17[38]),
        .I2(in17[47]),
        .I3(in17[16]),
        .O(error_en_i_27_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    error_en_i_28
       (.I0(in17[23]),
        .I1(in17[36]),
        .I2(\des_mac_t_reg_n_0_[43] ),
        .I3(in17[34]),
        .O(error_en_i_28_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    error_en_i_29
       (.I0(in17[35]),
        .I1(in17[21]),
        .I2(in17[42]),
        .I3(in17[26]),
        .O(error_en_i_29_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    error_en_i_30
       (.I0(in17[15]),
        .I1(in17[31]),
        .I2(in17[41]),
        .I3(in17[20]),
        .O(error_en_i_30_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    error_en_i_31
       (.I0(\des_mac_t_reg_n_0_[43] ),
        .I1(in17[11]),
        .I2(in17[44]),
        .I3(\des_mac_t_reg_n_0_[47] ),
        .O(error_en_i_31_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    error_en_i_32
       (.I0(in17[42]),
        .I1(in17[36]),
        .I2(in17[22]),
        .I3(in17[46]),
        .O(error_en_i_32_n_0));
  LUT4 #(
    .INIT(16'hFFF7)) 
    error_en_i_33
       (.I0(in17[37]),
        .I1(in17[40]),
        .I2(\des_mac_t_reg_n_0_[40] ),
        .I3(\des_mac_t_reg_n_0_[44] ),
        .O(error_en_i_33_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    error_en_i_34
       (.I0(in17[15]),
        .I1(\des_mac_t_reg_n_0_[46] ),
        .I2(in17[9]),
        .I3(in17[38]),
        .O(error_en_i_34_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    error_en_i_35
       (.I0(in17[39]),
        .I1(in17[35]),
        .I2(\des_mac_t_reg_n_0_[45] ),
        .I3(in17[16]),
        .O(error_en_i_35_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    error_en_i_36
       (.I0(in17[18]),
        .I1(in17[20]),
        .I2(in17[27]),
        .I3(in17[45]),
        .O(error_en_i_36_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    error_en_i_37
       (.I0(in17[19]),
        .I1(in17[47]),
        .I2(in17[21]),
        .I3(in17[32]),
        .O(error_en_i_37_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    error_en_i_38
       (.I0(in17[26]),
        .I1(in17[13]),
        .I2(in17[17]),
        .I3(in17[43]),
        .O(error_en_i_38_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    error_en_i_4
       (.I0(arp_rx_done_i_3_n_0),
        .I1(\des_mac_t[47]_i_8_n_0 ),
        .I2(\des_mac_t[47]_i_7_n_0 ),
        .I3(arp_rx_done_i_5_n_0),
        .I4(arp_rx_done_i_6_n_0),
        .O(error_en_i_4_n_0));
  LUT6 #(
    .INIT(64'hEFFFFFFFEFFFEFFF)) 
    error_en_i_5
       (.I0(error_en_i_9_n_0),
        .I1(\cnt_reg[2]_0 ),
        .I2(gmii_rxdv_t_1),
        .I3(gmii_rxdv_t_0),
        .I4(error_en_reg_2),
        .I5(error_en_i_11_n_0),
        .O(error_en_i_5_n_0));
  LUT6 #(
    .INIT(64'h08080808080808AA)) 
    error_en_i_6
       (.I0(error_en_i_12_n_0),
        .I1(error_en_i_13_n_0),
        .I2(error_en_i_14_n_0),
        .I3(error_en_i_15_n_0),
        .I4(error_en_i_16_n_0),
        .I5(error_en_i_17_n_0),
        .O(error_en_i_6_n_0));
  LUT5 #(
    .INIT(32'h00001000)) 
    error_en_i_8
       (.I0(\cnt_reg[3]_0 ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[0] ),
        .O(\cnt_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hFFDFFFFFFFFFDFFF)) 
    error_en_i_9
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(cur_state[2]),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(\cnt_reg[3]_0 ),
        .O(error_en_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    error_en_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(sys_rst_n),
        .D(error_en),
        .Q(error_en_reg_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \eth_head[5][7]_i_10 
       (.I0(\src_mac_reg[47]_0 [21]),
        .I1(\src_mac_reg[47]_0 [20]),
        .I2(\src_mac_reg[47]_0 [23]),
        .I3(\src_mac_reg[47]_0 [22]),
        .I4(\eth_head[5][7]_i_16_n_0 ),
        .O(\eth_head[5][7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \eth_head[5][7]_i_11 
       (.I0(\src_mac_reg[47]_0 [34]),
        .I1(\src_mac_reg[47]_0 [35]),
        .I2(\src_mac_reg[47]_0 [32]),
        .I3(\src_mac_reg[47]_0 [33]),
        .O(\eth_head[5][7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \eth_head[5][7]_i_12 
       (.I0(\src_mac_reg[47]_0 [42]),
        .I1(\src_mac_reg[47]_0 [43]),
        .I2(\src_mac_reg[47]_0 [40]),
        .I3(\src_mac_reg[47]_0 [41]),
        .O(\eth_head[5][7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \eth_head[5][7]_i_13 
       (.I0(\src_mac_reg[47]_0 [10]),
        .I1(\src_mac_reg[47]_0 [11]),
        .I2(\src_mac_reg[47]_0 [8]),
        .I3(\src_mac_reg[47]_0 [9]),
        .O(\eth_head[5][7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \eth_head[5][7]_i_14 
       (.I0(\src_mac_reg[47]_0 [2]),
        .I1(\src_mac_reg[47]_0 [3]),
        .I2(\src_mac_reg[47]_0 [0]),
        .I3(\src_mac_reg[47]_0 [1]),
        .O(\eth_head[5][7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \eth_head[5][7]_i_15 
       (.I0(\src_mac_reg[47]_0 [26]),
        .I1(\src_mac_reg[47]_0 [27]),
        .I2(\src_mac_reg[47]_0 [24]),
        .I3(\src_mac_reg[47]_0 [25]),
        .O(\eth_head[5][7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \eth_head[5][7]_i_16 
       (.I0(\src_mac_reg[47]_0 [18]),
        .I1(\src_mac_reg[47]_0 [19]),
        .I2(\src_mac_reg[47]_0 [16]),
        .I3(\src_mac_reg[47]_0 [17]),
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
        .O(\src_mac_reg[37]_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \eth_head[5][7]_i_5 
       (.I0(\src_mac_reg[47]_0 [37]),
        .I1(\src_mac_reg[47]_0 [36]),
        .I2(\src_mac_reg[47]_0 [39]),
        .I3(\src_mac_reg[47]_0 [38]),
        .I4(\eth_head[5][7]_i_11_n_0 ),
        .O(\eth_head[5][7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \eth_head[5][7]_i_6 
       (.I0(\src_mac_reg[47]_0 [45]),
        .I1(\src_mac_reg[47]_0 [44]),
        .I2(\src_mac_reg[47]_0 [46]),
        .I3(\src_mac_reg[47]_0 [47]),
        .I4(\eth_head[5][7]_i_12_n_0 ),
        .O(\eth_head[5][7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \eth_head[5][7]_i_7 
       (.I0(\src_mac_reg[47]_0 [13]),
        .I1(\src_mac_reg[47]_0 [12]),
        .I2(\src_mac_reg[47]_0 [15]),
        .I3(\src_mac_reg[47]_0 [14]),
        .I4(\eth_head[5][7]_i_13_n_0 ),
        .O(\eth_head[5][7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \eth_head[5][7]_i_8 
       (.I0(\src_mac_reg[47]_0 [5]),
        .I1(\src_mac_reg[47]_0 [4]),
        .I2(\src_mac_reg[47]_0 [7]),
        .I3(\src_mac_reg[47]_0 [6]),
        .I4(\eth_head[5][7]_i_14_n_0 ),
        .O(\eth_head[5][7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \eth_head[5][7]_i_9 
       (.I0(\src_mac_reg[47]_0 [29]),
        .I1(\src_mac_reg[47]_0 [28]),
        .I2(\src_mac_reg[47]_0 [31]),
        .I3(\src_mac_reg[47]_0 [30]),
        .I4(\eth_head[5][7]_i_15_n_0 ),
        .O(\eth_head[5][7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \eth_type[15]_i_1 
       (.I0(Q[2]),
        .I1(cur_state[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\eth_type[15]_i_2_n_0 ),
        .I5(\eth_type[15]_i_3_n_0 ),
        .O(eth_type));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \eth_type[15]_i_2 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(cur_state[2]),
        .I5(\cnt_reg_n_0_[4] ),
        .O(\eth_type[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0111FFFFFFFFFFFF)) 
    \eth_type[15]_i_3 
       (.I0(\cnt_reg[3]_0 ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(gmii_rxdv_t_1),
        .I5(gmii_rxdv_t_0),
        .O(\eth_type[15]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \eth_type_reg[10] 
       (.C(CLK),
        .CE(eth_type),
        .CLR(sys_rst_n),
        .D(gmii_rxd[2]),
        .Q(p_0_in__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \eth_type_reg[11] 
       (.C(CLK),
        .CE(eth_type),
        .CLR(sys_rst_n),
        .D(gmii_rxd[3]),
        .Q(\eth_type_reg[13]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \eth_type_reg[12] 
       (.C(CLK),
        .CE(eth_type),
        .CLR(sys_rst_n),
        .D(gmii_rxd[4]),
        .Q(\eth_type_reg[13]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \eth_type_reg[13] 
       (.C(CLK),
        .CE(eth_type),
        .CLR(sys_rst_n),
        .D(gmii_rxd[5]),
        .Q(\eth_type_reg[13]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \eth_type_reg[14] 
       (.C(CLK),
        .CE(eth_type),
        .CLR(sys_rst_n),
        .D(gmii_rxd[6]),
        .Q(p_0_in__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \eth_type_reg[15] 
       (.C(CLK),
        .CE(eth_type),
        .CLR(sys_rst_n),
        .D(gmii_rxd[7]),
        .Q(p_0_in__0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \eth_type_reg[8] 
       (.C(CLK),
        .CE(eth_type),
        .CLR(sys_rst_n),
        .D(gmii_rxd[0]),
        .Q(p_0_in__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \eth_type_reg[9] 
       (.C(CLK),
        .CE(eth_type),
        .CLR(sys_rst_n),
        .D(gmii_rxd[1]),
        .Q(\eth_type_reg[13]_0 [0]));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \op_data[15]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .I5(\op_data[15]_i_2_n_0 ),
        .O(\op_data[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \op_data[15]_i_2 
       (.I0(cur_state[2]),
        .I1(cur_state[4]),
        .I2(Q[2]),
        .I3(\op_data_reg[15]_0 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\op_data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \op_data[7]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .I5(\op_data[15]_i_2_n_0 ),
        .O(op_data));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[0] 
       (.C(CLK),
        .CE(op_data),
        .CLR(sys_rst_n),
        .D(gmii_rxd[0]),
        .Q(\op_data_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[10] 
       (.C(CLK),
        .CE(\op_data[15]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(gmii_rxd[2]),
        .Q(\op_data_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[11] 
       (.C(CLK),
        .CE(\op_data[15]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(gmii_rxd[3]),
        .Q(\op_data_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[12] 
       (.C(CLK),
        .CE(\op_data[15]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(gmii_rxd[4]),
        .Q(\op_data_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[13] 
       (.C(CLK),
        .CE(\op_data[15]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(gmii_rxd[5]),
        .Q(\op_data_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[14] 
       (.C(CLK),
        .CE(\op_data[15]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(gmii_rxd[6]),
        .Q(\op_data_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[15] 
       (.C(CLK),
        .CE(\op_data[15]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(gmii_rxd[7]),
        .Q(\op_data_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[1] 
       (.C(CLK),
        .CE(op_data),
        .CLR(sys_rst_n),
        .D(gmii_rxd[1]),
        .Q(\op_data_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[2] 
       (.C(CLK),
        .CE(op_data),
        .CLR(sys_rst_n),
        .D(gmii_rxd[2]),
        .Q(\op_data_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[3] 
       (.C(CLK),
        .CE(op_data),
        .CLR(sys_rst_n),
        .D(gmii_rxd[3]),
        .Q(\op_data_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[4] 
       (.C(CLK),
        .CE(op_data),
        .CLR(sys_rst_n),
        .D(gmii_rxd[4]),
        .Q(\op_data_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[5] 
       (.C(CLK),
        .CE(op_data),
        .CLR(sys_rst_n),
        .D(gmii_rxd[5]),
        .Q(\op_data_reg_n_0_[5] ));
  (* \PinAttr:D:HOLD_DETOUR  = "1245" *) 
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[6] 
       (.C(CLK),
        .CE(op_data),
        .CLR(sys_rst_n),
        .D(gmii_rxd[6]),
        .Q(\op_data_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[7] 
       (.C(CLK),
        .CE(op_data),
        .CLR(sys_rst_n),
        .D(gmii_rxd[7]),
        .Q(\op_data_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[8] 
       (.C(CLK),
        .CE(\op_data[15]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(gmii_rxd[0]),
        .Q(\op_data_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[9] 
       (.C(CLK),
        .CE(\op_data[15]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(gmii_rxd[1]),
        .Q(\op_data_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'hAAA8A8A8)) 
    skip_en_i_1
       (.I0(\cur_state[4]_i_3_n_0 ),
        .I1(\cnt_reg[0]_0 ),
        .I2(skip_en_i_3_n_0),
        .I3(skip_en_reg_1),
        .I4(skip_en_i_5_n_0),
        .O(skip_en));
  LUT4 #(
    .INIT(16'h0007)) 
    skip_en_i_12
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg[3]_0 ),
        .O(\cnt_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCAAAFAAAA)) 
    skip_en_i_3
       (.I0(\eth_type[15]_i_2_n_0 ),
        .I1(skip_en_i_7_n_0),
        .I2(skip_en_i_8_n_0),
        .I3(skip_en_i_9_n_0),
        .I4(Q[2]),
        .I5(\op_data_reg[15]_0 ),
        .O(skip_en_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    skip_en_i_5
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(skip_en_reg_2),
        .O(skip_en_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    skip_en_i_7
       (.I0(cur_state[4]),
        .I1(skip_en_reg_0),
        .O(skip_en_i_7_n_0));
  LUT3 #(
    .INIT(8'hBF)) 
    skip_en_i_8
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg[3]_0 ),
        .O(skip_en_i_8_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    skip_en_i_9
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .O(skip_en_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    skip_en_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(sys_rst_n),
        .D(skip_en),
        .Q(skip_en_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[0] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[0] ),
        .Q(\src_ip_reg[31]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[10] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[10] ),
        .Q(\src_ip_reg[31]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[11] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[11] ),
        .Q(\src_ip_reg[31]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[12] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[12] ),
        .Q(\src_ip_reg[31]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[13] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[13] ),
        .Q(\src_ip_reg[31]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[14] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[14] ),
        .Q(\src_ip_reg[31]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[15] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[15] ),
        .Q(\src_ip_reg[31]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[16] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[16] ),
        .Q(\src_ip_reg[31]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[17] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[17] ),
        .Q(\src_ip_reg[31]_0 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[18] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[18] ),
        .Q(\src_ip_reg[31]_0 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[19] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[19] ),
        .Q(\src_ip_reg[31]_0 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[1] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[1] ),
        .Q(\src_ip_reg[31]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[20] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[20] ),
        .Q(\src_ip_reg[31]_0 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[21] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[21] ),
        .Q(\src_ip_reg[31]_0 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[22] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[22] ),
        .Q(\src_ip_reg[31]_0 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[23] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[23] ),
        .Q(\src_ip_reg[31]_0 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[24] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[24] ),
        .Q(\src_ip_reg[31]_0 [24]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[25] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[25] ),
        .Q(\src_ip_reg[31]_0 [25]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[26] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[26] ),
        .Q(\src_ip_reg[31]_0 [26]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[27] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[27] ),
        .Q(\src_ip_reg[31]_0 [27]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[28] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[28] ),
        .Q(\src_ip_reg[31]_0 [28]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[29] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[29] ),
        .Q(\src_ip_reg[31]_0 [29]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[2] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[2] ),
        .Q(\src_ip_reg[31]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[30] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[30] ),
        .Q(\src_ip_reg[31]_0 [30]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[31] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[31] ),
        .Q(\src_ip_reg[31]_0 [31]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[3] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[3] ),
        .Q(\src_ip_reg[31]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[4] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[4] ),
        .Q(\src_ip_reg[31]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[5] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[5] ),
        .Q(\src_ip_reg[31]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[6] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[6] ),
        .Q(\src_ip_reg[31]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[7] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[7] ),
        .Q(\src_ip_reg[31]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[8] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[8] ),
        .Q(\src_ip_reg[31]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[9] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[9] ),
        .Q(\src_ip_reg[31]_0 [9]));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[0]_i_1 
       (.I0(gmii_rxd[0]),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[10]_i_1 
       (.I0(\src_ip_t_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[11]_i_1 
       (.I0(\src_ip_t_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[12]_i_1 
       (.I0(\src_ip_t_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[13]_i_1 
       (.I0(\src_ip_t_reg_n_0_[5] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[14]_i_1 
       (.I0(\src_ip_t_reg_n_0_[6] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[15]_i_1 
       (.I0(\src_ip_t_reg_n_0_[7] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[16]_i_1 
       (.I0(\src_ip_t_reg_n_0_[8] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[17]_i_1 
       (.I0(\src_ip_t_reg_n_0_[9] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[18]_i_1 
       (.I0(\src_ip_t_reg_n_0_[10] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[19]_i_1 
       (.I0(\src_ip_t_reg_n_0_[11] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[1]_i_1 
       (.I0(gmii_rxd[1]),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[20]_i_1 
       (.I0(\src_ip_t_reg_n_0_[12] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[21]_i_1 
       (.I0(\src_ip_t_reg_n_0_[13] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[22]_i_1 
       (.I0(\src_ip_t_reg_n_0_[14] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[23]_i_1 
       (.I0(\src_ip_t_reg_n_0_[15] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[24]_i_1 
       (.I0(\src_ip_t_reg_n_0_[16] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[25]_i_1 
       (.I0(\src_ip_t_reg_n_0_[17] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[26]_i_1 
       (.I0(\src_ip_t_reg_n_0_[18] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[27]_i_1 
       (.I0(\src_ip_t_reg_n_0_[19] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[28]_i_1 
       (.I0(\src_ip_t_reg_n_0_[20] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[29]_i_1 
       (.I0(\src_ip_t_reg_n_0_[21] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[2]_i_1 
       (.I0(gmii_rxd[2]),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[30]_i_1 
       (.I0(\src_ip_t_reg_n_0_[22] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEAAAABAAAAAAAAA)) 
    \src_ip_t[31]_i_1 
       (.I0(arp_rx_done_i_1_n_0),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\des_ip_t[31]_i_3_n_0 ),
        .O(src_ip_t));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[31]_i_2 
       (.I0(\src_ip_t_reg_n_0_[23] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[31]_i_2_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "1428" *) 
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[3]_i_1 
       (.I0(gmii_rxd[3]),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[4]_i_1 
       (.I0(gmii_rxd[4]),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[5]_i_1 
       (.I0(gmii_rxd[5]),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[6]_i_1 
       (.I0(gmii_rxd[6]),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[7]_i_1 
       (.I0(gmii_rxd[7]),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[8]_i_1 
       (.I0(\src_ip_t_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800200)) 
    \src_ip_t[9]_i_1 
       (.I0(\src_ip_t_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_ip_t[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[0] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[0]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[10] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[10]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[11] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[11]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[12] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[12]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[13] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[13]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[14] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[14]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[15] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[15]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[16] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[16]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[17] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[17]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[18] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[18]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[19] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[19]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[1] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[1]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[20] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[20]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[21] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[21]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[22] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[22]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[23] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[23]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[24] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[24]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[25] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[25]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[26] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[26]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[27] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[27]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[28] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[28]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[29] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[29]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[2] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[2]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[30] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[30]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[31] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[31]_i_2_n_0 ),
        .Q(\src_ip_t_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[3] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[3]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[4] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[4]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[5] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[5]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[6] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[6]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[7] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[7]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[8] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[8]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_t_reg[9] 
       (.C(CLK),
        .CE(src_ip_t),
        .CLR(sys_rst_n),
        .D(\src_ip_t[9]_i_1_n_0 ),
        .Q(\src_ip_t_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[0] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[0] ),
        .Q(\src_mac_reg[47]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[10] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[10] ),
        .Q(\src_mac_reg[47]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[11] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[11] ),
        .Q(\src_mac_reg[47]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[12] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[12] ),
        .Q(\src_mac_reg[47]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[13] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[13] ),
        .Q(\src_mac_reg[47]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[14] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[14] ),
        .Q(\src_mac_reg[47]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[15] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[15] ),
        .Q(\src_mac_reg[47]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[16] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[16] ),
        .Q(\src_mac_reg[47]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[17] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[17] ),
        .Q(\src_mac_reg[47]_0 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[18] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[18] ),
        .Q(\src_mac_reg[47]_0 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[19] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[19] ),
        .Q(\src_mac_reg[47]_0 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[1] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[1] ),
        .Q(\src_mac_reg[47]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[20] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[20] ),
        .Q(\src_mac_reg[47]_0 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[21] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[21] ),
        .Q(\src_mac_reg[47]_0 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[22] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[22] ),
        .Q(\src_mac_reg[47]_0 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[23] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[23] ),
        .Q(\src_mac_reg[47]_0 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[24] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[24] ),
        .Q(\src_mac_reg[47]_0 [24]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[25] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[25] ),
        .Q(\src_mac_reg[47]_0 [25]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[26] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[26] ),
        .Q(\src_mac_reg[47]_0 [26]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[27] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[27] ),
        .Q(\src_mac_reg[47]_0 [27]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[28] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[28] ),
        .Q(\src_mac_reg[47]_0 [28]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[29] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[29] ),
        .Q(\src_mac_reg[47]_0 [29]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[2] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[2] ),
        .Q(\src_mac_reg[47]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[30] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[30] ),
        .Q(\src_mac_reg[47]_0 [30]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[31] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[31] ),
        .Q(\src_mac_reg[47]_0 [31]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[32] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[32] ),
        .Q(\src_mac_reg[47]_0 [32]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[33] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[33] ),
        .Q(\src_mac_reg[47]_0 [33]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[34] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[34] ),
        .Q(\src_mac_reg[47]_0 [34]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[35] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[35] ),
        .Q(\src_mac_reg[47]_0 [35]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[36] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[36] ),
        .Q(\src_mac_reg[47]_0 [36]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[37] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[37] ),
        .Q(\src_mac_reg[47]_0 [37]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[38] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[38] ),
        .Q(\src_mac_reg[47]_0 [38]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[39] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[39] ),
        .Q(\src_mac_reg[47]_0 [39]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[3] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[3] ),
        .Q(\src_mac_reg[47]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[40] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[40] ),
        .Q(\src_mac_reg[47]_0 [40]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[41] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[41] ),
        .Q(\src_mac_reg[47]_0 [41]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[42] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[42] ),
        .Q(\src_mac_reg[47]_0 [42]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[43] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[43] ),
        .Q(\src_mac_reg[47]_0 [43]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[44] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[44] ),
        .Q(\src_mac_reg[47]_0 [44]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[45] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[45] ),
        .Q(\src_mac_reg[47]_0 [45]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[46] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[46] ),
        .Q(\src_mac_reg[47]_0 [46]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[47] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[47] ),
        .Q(\src_mac_reg[47]_0 [47]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[4] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[4] ),
        .Q(\src_mac_reg[47]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[5] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[5] ),
        .Q(\src_mac_reg[47]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[6] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[6] ),
        .Q(\src_mac_reg[47]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[7] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[7] ),
        .Q(\src_mac_reg[47]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[8] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[8] ),
        .Q(\src_mac_reg[47]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[9] 
       (.C(CLK),
        .CE(arp_rx_done_i_1_n_0),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[9] ),
        .Q(\src_mac_reg[47]_0 [9]));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[0]_i_1 
       (.I0(gmii_rxd[0]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[10]_i_1 
       (.I0(\src_mac_t_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[11]_i_1 
       (.I0(\src_mac_t_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[12]_i_1 
       (.I0(\src_mac_t_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[13]_i_1 
       (.I0(\src_mac_t_reg_n_0_[5] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[14]_i_1 
       (.I0(\src_mac_t_reg_n_0_[6] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[15]_i_1 
       (.I0(\src_mac_t_reg_n_0_[7] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[16]_i_1 
       (.I0(\src_mac_t_reg_n_0_[8] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[17]_i_1 
       (.I0(\src_mac_t_reg_n_0_[9] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[18]_i_1 
       (.I0(\src_mac_t_reg_n_0_[10] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[19]_i_1 
       (.I0(\src_mac_t_reg_n_0_[11] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[1]_i_1 
       (.I0(gmii_rxd[1]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[20]_i_1 
       (.I0(\src_mac_t_reg_n_0_[12] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[21]_i_1 
       (.I0(\src_mac_t_reg_n_0_[13] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[22]_i_1 
       (.I0(\src_mac_t_reg_n_0_[14] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[23]_i_1 
       (.I0(\src_mac_t_reg_n_0_[15] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[24]_i_1 
       (.I0(\src_mac_t_reg_n_0_[16] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[25]_i_1 
       (.I0(\src_mac_t_reg_n_0_[17] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[26]_i_1 
       (.I0(\src_mac_t_reg_n_0_[18] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[27]_i_1 
       (.I0(\src_mac_t_reg_n_0_[19] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[28]_i_1 
       (.I0(\src_mac_t_reg_n_0_[20] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[29]_i_1 
       (.I0(\src_mac_t_reg_n_0_[21] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[2]_i_1 
       (.I0(gmii_rxd[2]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[30]_i_1 
       (.I0(\src_mac_t_reg_n_0_[22] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[31]_i_1 
       (.I0(\src_mac_t_reg_n_0_[23] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[32]_i_1 
       (.I0(\src_mac_t_reg_n_0_[24] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[32]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[33]_i_1 
       (.I0(\src_mac_t_reg_n_0_[25] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[33]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[34]_i_1 
       (.I0(\src_mac_t_reg_n_0_[26] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[34]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[35]_i_1 
       (.I0(\src_mac_t_reg_n_0_[27] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[35]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[36]_i_1 
       (.I0(\src_mac_t_reg_n_0_[28] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[36]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[37]_i_1 
       (.I0(\src_mac_t_reg_n_0_[29] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[37]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[38]_i_1 
       (.I0(\src_mac_t_reg_n_0_[30] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[38]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[39]_i_1 
       (.I0(\src_mac_t_reg_n_0_[31] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[39]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[3]_i_1 
       (.I0(gmii_rxd[3]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[40]_i_1 
       (.I0(\src_mac_t_reg_n_0_[32] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[40]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[41]_i_1 
       (.I0(\src_mac_t_reg_n_0_[33] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[41]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[42]_i_1 
       (.I0(\src_mac_t_reg_n_0_[34] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[42]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[43]_i_1 
       (.I0(\src_mac_t_reg_n_0_[35] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[43]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[44]_i_1 
       (.I0(\src_mac_t_reg_n_0_[36] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[44]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[45]_i_1 
       (.I0(\src_mac_t_reg_n_0_[37] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[45]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[46]_i_1 
       (.I0(\src_mac_t_reg_n_0_[38] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[46]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAEEEAAAAAAAA)) 
    \src_mac_t[47]_i_1 
       (.I0(arp_rx_done_i_1_n_0),
        .I1(\cnt_reg[3]_0 ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[4] ),
        .I5(\des_ip_t[31]_i_3_n_0 ),
        .O(src_mac_t));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[47]_i_2 
       (.I0(\src_mac_t_reg_n_0_[39] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[47]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[4]_i_1 
       (.I0(gmii_rxd[4]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[5]_i_1 
       (.I0(gmii_rxd[5]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[6]_i_1 
       (.I0(gmii_rxd[6]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[7]_i_1 
       (.I0(gmii_rxd[7]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[8]_i_1 
       (.I0(\src_mac_t_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[9]_i_1 
       (.I0(\src_mac_t_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[3]_0 ),
        .O(\src_mac_t[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[0] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[0]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[10] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[10]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[11] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[11]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[12] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[12]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[13] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[13]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[14] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[14]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[15] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[15]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[16] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[16]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[17] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[17]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[18] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[18]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[19] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[19]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[1] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[1]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[20] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[20]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[21] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[21]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[22] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[22]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[23] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[23]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[24] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[24]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[25] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[25]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[26] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[26]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[27] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[27]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[28] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[28]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[29] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[29]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[2] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[2]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[30] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[30]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[31] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[31]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[32] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[32]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[32] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[33] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[33]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[33] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[34] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[34]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[34] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[35] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[35]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[35] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[36] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[36]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[36] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[37] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[37]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[37] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[38] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[38]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[38] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[39] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[39]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[39] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[3] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[3]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[40] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[40]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[40] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[41] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[41]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[41] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[42] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[42]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[42] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[43] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[43]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[43] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[44] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[44]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[44] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[45] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[45]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[45] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[46] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[46]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[46] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[47] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[47]_i_2_n_0 ),
        .Q(\src_mac_t_reg_n_0_[47] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[4] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[4]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[5] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[5]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[6] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[6]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[7] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[7]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[8] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[8]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_t_reg[9] 
       (.C(CLK),
        .CE(src_mac_t),
        .CLR(sys_rst_n),
        .D(\src_mac_t[9]_i_1_n_0 ),
        .Q(\src_mac_t_reg_n_0_[9] ));
endmodule

module arp_tx
   (tx_done_reg_0,
    gmii_tx_en,
    Q,
    E,
    \gmii_txd_reg[7]_0 ,
    \gmii_txd_reg[0]_0 ,
    D,
    \gmii_txd_reg[2]_0 ,
    \gmii_txd_reg[4]_0 ,
    CLK,
    \gmii_txd_reg[7]_1 ,
    \eth_head_reg[0][0]_0 ,
    \arp_data_reg[24][0]_0 ,
    \arp_data_reg[24][0]_1 ,
    \crc_data_reg[30] ,
    p_1_in,
    \gmii_txd_reg[2]_1 ,
    \gmii_txd_reg[3]_0 ,
    \gmii_txd_reg[4]_1 ,
    \gmii_txd_reg[5]_0 ,
    \crc_data_reg[28] ,
    \crc_data_reg[7] ,
    \tx_en_delay_reg[0]_0 ,
    \eth_head_reg[0][7]_0 ,
    \arp_data_reg[24][7]_0 ,
    arp_tx_type);
  output tx_done_reg_0;
  output gmii_tx_en;
  output [1:0]Q;
  output [0:0]E;
  output [7:0]\gmii_txd_reg[7]_0 ;
  output \gmii_txd_reg[0]_0 ;
  output [16:0]D;
  output \gmii_txd_reg[2]_0 ;
  output \gmii_txd_reg[4]_0 ;
  input CLK;
  input \gmii_txd_reg[7]_1 ;
  input \eth_head_reg[0][0]_0 ;
  input \arp_data_reg[24][0]_0 ;
  input \arp_data_reg[24][0]_1 ;
  input [28:0]\crc_data_reg[30] ;
  input [1:0]p_1_in;
  input \gmii_txd_reg[2]_1 ;
  input \gmii_txd_reg[3]_0 ;
  input \gmii_txd_reg[4]_1 ;
  input \gmii_txd_reg[5]_0 ;
  input \crc_data_reg[28] ;
  input \crc_data_reg[7] ;
  input [0:0]\tx_en_delay_reg[0]_0 ;
  input [47:0]\eth_head_reg[0][7]_0 ;
  input [31:0]\arp_data_reg[24][7]_0 ;
  input arp_tx_type;

  wire CLK;
  wire [16:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire arp_data;
  wire \arp_data[27][7]_i_2_n_0 ;
  wire \arp_data[7][0]_i_1_n_0 ;
  wire \arp_data[7][1]_i_1_n_0 ;
  wire \arp_data[7][1]_i_2_n_0 ;
  wire \arp_data_reg[24][0]_0 ;
  wire \arp_data_reg[24][0]_1 ;
  wire [31:0]\arp_data_reg[24][7]_0 ;
  wire [7:0]\arp_data_reg[24]_9 ;
  wire [7:0]\arp_data_reg[25]_8 ;
  wire [7:0]\arp_data_reg[26]_7 ;
  wire [7:0]\arp_data_reg[27]_6 ;
  wire [1:0]\arp_data_reg[7]_10 ;
  wire arp_tx_type;
  wire [5:0]cnt;
  wire \cnt[1]_i_2__0_n_0 ;
  wire \cnt[1]_i_3_n_0 ;
  wire \cnt[2]_i_2_n_0 ;
  wire \cnt[2]_i_3__0_n_0 ;
  wire \cnt[2]_i_4_n_0 ;
  wire \cnt[3]_i_2__0_n_0 ;
  wire \cnt[3]_i_3_n_0 ;
  wire \cnt[3]_i_4_n_0 ;
  wire \cnt[4]_i_2__0_n_0 ;
  wire \cnt[4]_i_3__0_n_0 ;
  wire \cnt[4]_i_4__0_n_0 ;
  wire \cnt[5]_i_10_n_0 ;
  wire \cnt[5]_i_11_n_0 ;
  wire \cnt[5]_i_1__0_n_0 ;
  wire \cnt[5]_i_3_n_0 ;
  wire \cnt[5]_i_4_n_0 ;
  wire \cnt[5]_i_5_n_0 ;
  wire \cnt[5]_i_6_n_0 ;
  wire \cnt[5]_i_7_n_0 ;
  wire \cnt[5]_i_8_n_0 ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \crc_data[23]_i_2_n_0 ;
  wire \crc_data_reg[28] ;
  wire [28:0]\crc_data_reg[30] ;
  wire \crc_data_reg[7] ;
  wire crc_en;
  wire crc_en_i_1_n_0;
  wire [4:0]cur_state;
  wire \cur_state[0]_i_1__1_n_0 ;
  wire \cur_state[4]_i_2_n_0 ;
  wire eth_head;
  wire \eth_head[5][7]_i_4_n_0 ;
  wire \eth_head_reg[0][0]_0 ;
  wire [47:0]\eth_head_reg[0][7]_0 ;
  wire [7:0]\eth_head_reg[0]_5 ;
  wire [7:0]\eth_head_reg[1]_4 ;
  wire [7:0]\eth_head_reg[2]_3 ;
  wire [7:0]\eth_head_reg[3]_2 ;
  wire [7:0]\eth_head_reg[4]_1 ;
  wire [7:0]\eth_head_reg[5]_0 ;
  wire gmii_tx_en;
  wire \gmii_txd[0]_i_10_n_0 ;
  wire \gmii_txd[0]_i_11_n_0 ;
  wire \gmii_txd[0]_i_1_n_0 ;
  wire \gmii_txd[0]_i_2_n_0 ;
  wire \gmii_txd[0]_i_4_n_0 ;
  wire \gmii_txd[0]_i_5_n_0 ;
  wire \gmii_txd[0]_i_6_n_0 ;
  wire \gmii_txd[0]_i_7_n_0 ;
  wire \gmii_txd[0]_i_8_n_0 ;
  wire \gmii_txd[0]_i_9_n_0 ;
  wire \gmii_txd[1]_i_10_n_0 ;
  wire \gmii_txd[1]_i_12_n_0 ;
  wire \gmii_txd[1]_i_1_n_0 ;
  wire \gmii_txd[1]_i_2_n_0 ;
  wire \gmii_txd[1]_i_3_n_0 ;
  wire \gmii_txd[1]_i_4_n_0 ;
  wire \gmii_txd[1]_i_5_n_0 ;
  wire \gmii_txd[1]_i_6_n_0 ;
  wire \gmii_txd[1]_i_8_n_0 ;
  wire \gmii_txd[1]_i_9_n_0 ;
  wire \gmii_txd[2]_i_10_n_0 ;
  wire \gmii_txd[2]_i_12_n_0 ;
  wire \gmii_txd[2]_i_1_n_0 ;
  wire \gmii_txd[2]_i_2_n_0 ;
  wire \gmii_txd[2]_i_4_n_0 ;
  wire \gmii_txd[2]_i_5_n_0 ;
  wire \gmii_txd[2]_i_7_n_0 ;
  wire \gmii_txd[2]_i_8_n_0 ;
  wire \gmii_txd[2]_i_9_n_0 ;
  wire \gmii_txd[3]_i_11_n_0 ;
  wire \gmii_txd[3]_i_12_n_0 ;
  wire \gmii_txd[3]_i_1_n_0 ;
  wire \gmii_txd[3]_i_2_n_0 ;
  wire \gmii_txd[3]_i_5_n_0 ;
  wire \gmii_txd[3]_i_6_n_0 ;
  wire \gmii_txd[3]_i_8_n_0 ;
  wire \gmii_txd[3]_i_9_n_0 ;
  wire \gmii_txd[4]_i_10_n_0 ;
  wire \gmii_txd[4]_i_11_n_0 ;
  wire \gmii_txd[4]_i_1_n_0 ;
  wire \gmii_txd[4]_i_2_n_0 ;
  wire \gmii_txd[4]_i_5_n_0 ;
  wire \gmii_txd[4]_i_7_n_0 ;
  wire \gmii_txd[4]_i_8_n_0 ;
  wire \gmii_txd[4]_i_9_n_0 ;
  wire \gmii_txd[5]_i_10_n_0 ;
  wire \gmii_txd[5]_i_11_n_0 ;
  wire \gmii_txd[5]_i_12_n_0 ;
  wire \gmii_txd[5]_i_1_n_0 ;
  wire \gmii_txd[5]_i_2_n_0 ;
  wire \gmii_txd[5]_i_5_n_0 ;
  wire \gmii_txd[5]_i_6_n_0 ;
  wire \gmii_txd[5]_i_8_n_0 ;
  wire \gmii_txd[5]_i_9_n_0 ;
  wire \gmii_txd[6]_i_11_n_0 ;
  wire \gmii_txd[6]_i_1_n_0 ;
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
  wire \gmii_txd[7]_i_2_n_0 ;
  wire \gmii_txd[7]_i_4_n_0 ;
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
  wire \gmii_txd_reg[4]_i_4_n_0 ;
  wire \gmii_txd_reg[5]_0 ;
  wire \gmii_txd_reg[5]_i_4_n_0 ;
  wire [7:0]\gmii_txd_reg[7]_0 ;
  wire \gmii_txd_reg[7]_1 ;
  wire \gmii_txd_reg[7]_i_3_n_0 ;
  wire [7:0]in17;
  wire [4:1]next_state;
  wire p_0_in3_in;
  wire [1:0]p_1_in;
  wire p_1_in_0;
  wire pos_tx_en__0;
  wire skip_en;
  wire skip_en2_out;
  wire skip_en_i_2__0_n_0;
  wire skip_en_i_3__0_n_0;
  wire skip_en_i_4_n_0;
  wire skip_en_i_5__0_n_0;
  wire skip_en_i_7__0_n_0;
  wire skip_en_reg_n_0;
  wire tx_done_reg_0;
  wire tx_done_t;
  wire tx_done_t_i_2_n_0;
  wire tx_done_t_reg_n_0;
  wire [0:0]\tx_en_delay_reg[0]_0 ;
  wire \tx_en_delay_reg_n_0_[0] ;
  wire \tx_en_delay_reg_n_0_[2] ;

  LUT6 #(
    .INIT(64'h0000000054000000)) 
    \arp_data[27][7]_i_1 
       (.I0(\arp_data[27][7]_i_2_n_0 ),
        .I1(\arp_data_reg[24][0]_0 ),
        .I2(\arp_data_reg[24][0]_1 ),
        .I3(pos_tx_en__0),
        .I4(cur_state[0]),
        .I5(\eth_head[5][7]_i_4_n_0 ),
        .O(arp_data));
  LUT2 #(
    .INIT(4'hE)) 
    \arp_data[27][7]_i_2 
       (.I0(cur_state[4]),
        .I1(cur_state[1]),
        .O(\arp_data[27][7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h74)) 
    \arp_data[7][0]_i_1 
       (.I0(arp_tx_type),
        .I1(\arp_data[7][1]_i_2_n_0 ),
        .I2(\arp_data_reg[7]_10 [0]),
        .O(\arp_data[7][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \arp_data[7][1]_i_1 
       (.I0(arp_tx_type),
        .I1(\arp_data[7][1]_i_2_n_0 ),
        .I2(\arp_data_reg[7]_10 [1]),
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
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\arp_data_reg[24][7]_0 [24]),
        .Q(\arp_data_reg[24]_9 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[24][1] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\arp_data_reg[24][7]_0 [25]),
        .Q(\arp_data_reg[24]_9 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[24][2] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\arp_data_reg[24][7]_0 [26]),
        .Q(\arp_data_reg[24]_9 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[24][3] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\arp_data_reg[24][7]_0 [27]),
        .Q(\arp_data_reg[24]_9 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[24][4] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\arp_data_reg[24][7]_0 [28]),
        .Q(\arp_data_reg[24]_9 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[24][5] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\arp_data_reg[24][7]_0 [29]),
        .Q(\arp_data_reg[24]_9 [5]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[24][6] 
       (.C(CLK),
        .CE(arp_data),
        .D(\arp_data_reg[24][7]_0 [30]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\arp_data_reg[24]_9 [6]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[24][7] 
       (.C(CLK),
        .CE(arp_data),
        .D(\arp_data_reg[24][7]_0 [31]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\arp_data_reg[24]_9 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[25][0] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\arp_data_reg[24][7]_0 [16]),
        .Q(\arp_data_reg[25]_8 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[25][1] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\arp_data_reg[24][7]_0 [17]),
        .Q(\arp_data_reg[25]_8 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[25][2] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\arp_data_reg[24][7]_0 [18]),
        .Q(\arp_data_reg[25]_8 [2]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[25][3] 
       (.C(CLK),
        .CE(arp_data),
        .D(\arp_data_reg[24][7]_0 [19]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\arp_data_reg[25]_8 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[25][4] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\arp_data_reg[24][7]_0 [20]),
        .Q(\arp_data_reg[25]_8 [4]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[25][5] 
       (.C(CLK),
        .CE(arp_data),
        .D(\arp_data_reg[24][7]_0 [21]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\arp_data_reg[25]_8 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[25][6] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\arp_data_reg[24][7]_0 [22]),
        .Q(\arp_data_reg[25]_8 [6]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[25][7] 
       (.C(CLK),
        .CE(arp_data),
        .D(\arp_data_reg[24][7]_0 [23]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\arp_data_reg[25]_8 [7]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[26][0] 
       (.C(CLK),
        .CE(arp_data),
        .D(\arp_data_reg[24][7]_0 [8]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\arp_data_reg[26]_7 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[26][1] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\arp_data_reg[24][7]_0 [9]),
        .Q(\arp_data_reg[26]_7 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[26][2] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\arp_data_reg[24][7]_0 [10]),
        .Q(\arp_data_reg[26]_7 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[26][3] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\arp_data_reg[24][7]_0 [11]),
        .Q(\arp_data_reg[26]_7 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[26][4] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\arp_data_reg[24][7]_0 [12]),
        .Q(\arp_data_reg[26]_7 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[26][5] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\arp_data_reg[24][7]_0 [13]),
        .Q(\arp_data_reg[26]_7 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[26][6] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\arp_data_reg[24][7]_0 [14]),
        .Q(\arp_data_reg[26]_7 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[26][7] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\arp_data_reg[24][7]_0 [15]),
        .Q(\arp_data_reg[26]_7 [7]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[27][0] 
       (.C(CLK),
        .CE(arp_data),
        .D(\arp_data_reg[24][7]_0 [0]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\arp_data_reg[27]_6 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[27][1] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\arp_data_reg[24][7]_0 [1]),
        .Q(\arp_data_reg[27]_6 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[27][2] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\arp_data_reg[24][7]_0 [2]),
        .Q(\arp_data_reg[27]_6 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[27][3] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\arp_data_reg[24][7]_0 [3]),
        .Q(\arp_data_reg[27]_6 [3]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[27][4] 
       (.C(CLK),
        .CE(arp_data),
        .D(\arp_data_reg[24][7]_0 [4]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\arp_data_reg[27]_6 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[27][5] 
       (.C(CLK),
        .CE(arp_data),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\arp_data_reg[24][7]_0 [5]),
        .Q(\arp_data_reg[27]_6 [5]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[27][6] 
       (.C(CLK),
        .CE(arp_data),
        .D(\arp_data_reg[24][7]_0 [6]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\arp_data_reg[27]_6 [6]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[27][7] 
       (.C(CLK),
        .CE(arp_data),
        .D(\arp_data_reg[24][7]_0 [7]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\arp_data_reg[27]_6 [7]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[7][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\arp_data[7][0]_i_1_n_0 ),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\arp_data_reg[7]_10 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[7][1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\arp_data[7][1]_i_1_n_0 ),
        .Q(\arp_data_reg[7]_10 [1]));
  LUT5 #(
    .INIT(32'h33333332)) 
    \cnt[0]_i_1__1 
       (.I0(cur_state[3]),
        .I1(Q[0]),
        .I2(cur_state[4]),
        .I3(cur_state[2]),
        .I4(cur_state[1]),
        .O(cnt[0]));
  LUT5 #(
    .INIT(32'hFFFFAEEA)) 
    \cnt[1]_i_1__0 
       (.I0(\cnt[1]_i_2__0_n_0 ),
        .I1(cur_state[4]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\cnt[1]_i_3_n_0 ),
        .O(cnt[1]));
  LUT6 #(
    .INIT(64'h0FF008F008C008C0)) 
    \cnt[1]_i_2__0 
       (.I0(\cnt[5]_i_8_n_0 ),
        .I1(cur_state[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(p_1_in_0),
        .I5(cur_state[2]),
        .O(\cnt[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h2828282828282820)) 
    \cnt[1]_i_3 
       (.I0(cur_state[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\cnt[5]_i_10_n_0 ),
        .I4(\cnt[5]_i_11_n_0 ),
        .I5(\gmii_txd[7]_i_7_n_0 ),
        .O(\cnt[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEAAEAAA)) 
    \cnt[2]_i_1__0 
       (.I0(\cnt[2]_i_2_n_0 ),
        .I1(cur_state[4]),
        .I2(\cnt[5]_i_4_n_0 ),
        .I3(\cnt[2]_i_3__0_n_0 ),
        .I4(\cnt[5]_i_6_n_0 ),
        .I5(\cnt[2]_i_4_n_0 ),
        .O(cnt[2]));
  LUT6 #(
    .INIT(64'hF0F080F080C080C0)) 
    \cnt[2]_i_2 
       (.I0(\cnt[5]_i_8_n_0 ),
        .I1(cur_state[1]),
        .I2(\cnt[2]_i_3__0_n_0 ),
        .I3(Q[0]),
        .I4(p_1_in_0),
        .I5(cur_state[2]),
        .O(\cnt[2]_i_2_n_0 ));
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
        .I3(\cnt[5]_i_10_n_0 ),
        .I4(\cnt[5]_i_11_n_0 ),
        .I5(\gmii_txd[7]_i_7_n_0 ),
        .O(\cnt[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEAAEAAA)) 
    \cnt[3]_i_1__0 
       (.I0(\cnt[3]_i_2__0_n_0 ),
        .I1(cur_state[4]),
        .I2(\cnt[5]_i_4_n_0 ),
        .I3(\cnt[3]_i_3_n_0 ),
        .I4(\cnt[5]_i_6_n_0 ),
        .I5(\cnt[3]_i_4_n_0 ),
        .O(cnt[3]));
  LUT6 #(
    .INIT(64'hF0F080F080C080C0)) 
    \cnt[3]_i_2__0 
       (.I0(\cnt[5]_i_8_n_0 ),
        .I1(cur_state[1]),
        .I2(\cnt[3]_i_3_n_0 ),
        .I3(Q[0]),
        .I4(p_1_in_0),
        .I5(cur_state[2]),
        .O(\cnt[3]_i_2__0_n_0 ));
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
        .I3(\cnt[5]_i_10_n_0 ),
        .I4(\cnt[5]_i_11_n_0 ),
        .I5(\gmii_txd[7]_i_7_n_0 ),
        .O(\cnt[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEAAEAAA)) 
    \cnt[4]_i_1__0 
       (.I0(\cnt[4]_i_2__0_n_0 ),
        .I1(cur_state[4]),
        .I2(\cnt[5]_i_4_n_0 ),
        .I3(\cnt[4]_i_3__0_n_0 ),
        .I4(\cnt[5]_i_6_n_0 ),
        .I5(\cnt[4]_i_4__0_n_0 ),
        .O(cnt[4]));
  LUT6 #(
    .INIT(64'hF0F080F080C080C0)) 
    \cnt[4]_i_2__0 
       (.I0(\cnt[5]_i_8_n_0 ),
        .I1(cur_state[1]),
        .I2(\cnt[4]_i_3__0_n_0 ),
        .I3(Q[0]),
        .I4(p_1_in_0),
        .I5(cur_state[2]),
        .O(\cnt[4]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt[4]_i_3__0 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg_n_0_[4] ),
        .O(\cnt[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A0A020)) 
    \cnt[4]_i_4__0 
       (.I0(cur_state[3]),
        .I1(Q[0]),
        .I2(\cnt[4]_i_3__0_n_0 ),
        .I3(\cnt[5]_i_10_n_0 ),
        .I4(\cnt[5]_i_11_n_0 ),
        .I5(\gmii_txd[7]_i_7_n_0 ),
        .O(\cnt[4]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hFBFFFFFF)) 
    \cnt[5]_i_10 
       (.I0(Q[1]),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg_n_0_[5] ),
        .O(\cnt[5]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h15FF)) 
    \cnt[5]_i_11 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[5] ),
        .O(\cnt[5]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00000116)) 
    \cnt[5]_i_1__0 
       (.I0(cur_state[4]),
        .I1(cur_state[3]),
        .I2(cur_state[2]),
        .I3(cur_state[1]),
        .I4(cur_state[0]),
        .O(\cnt[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEAAEAAA)) 
    \cnt[5]_i_2 
       (.I0(\cnt[5]_i_3_n_0 ),
        .I1(cur_state[4]),
        .I2(\cnt[5]_i_4_n_0 ),
        .I3(\cnt[5]_i_5_n_0 ),
        .I4(\cnt[5]_i_6_n_0 ),
        .I5(\cnt[5]_i_7_n_0 ),
        .O(cnt[5]));
  LUT6 #(
    .INIT(64'hF0F080F080C080C0)) 
    \cnt[5]_i_3 
       (.I0(\cnt[5]_i_8_n_0 ),
        .I1(cur_state[1]),
        .I2(\cnt[5]_i_5_n_0 ),
        .I3(Q[0]),
        .I4(p_1_in_0),
        .I5(cur_state[2]),
        .O(\cnt[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \cnt[5]_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\cnt[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt[5]_i_5 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[4] ),
        .I5(\cnt_reg_n_0_[5] ),
        .O(\cnt[5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[5]_i_6 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[5] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .O(\cnt[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A0A020)) 
    \cnt[5]_i_7 
       (.I0(cur_state[3]),
        .I1(Q[0]),
        .I2(\cnt[5]_i_5_n_0 ),
        .I3(\cnt[5]_i_10_n_0 ),
        .I4(\cnt[5]_i_11_n_0 ),
        .I5(\gmii_txd[7]_i_7_n_0 ),
        .O(\cnt[5]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    \cnt[5]_i_8 
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(Q[1]),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\cnt[5]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \cnt[5]_i_9 
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(Q[1]),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(p_1_in_0));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(CLK),
        .CE(\cnt[5]_i_1__0_n_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(cnt[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(\cnt[5]_i_1__0_n_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(cnt[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(CLK),
        .CE(\cnt[5]_i_1__0_n_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(CLK),
        .CE(\cnt[5]_i_1__0_n_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(CLK),
        .CE(\cnt[5]_i_1__0_n_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(CLK),
        .CE(\cnt[5]_i_1__0_n_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ));
  LUT5 #(
    .INIT(32'hFFFF6996)) 
    \crc_data[0]_i_1 
       (.I0(\crc_data_reg[30] [27]),
        .I1(\gmii_txd_reg[7]_0 [1]),
        .I2(\crc_data_reg[30] [21]),
        .I3(\gmii_txd_reg[7]_0 [7]),
        .I4(tx_done_reg_0),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF96696996)) 
    \crc_data[13]_i_1 
       (.I0(\gmii_txd_reg[4]_0 ),
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
        .I2(\gmii_txd_reg[7]_0 [2]),
        .I3(\crc_data_reg[30] [9]),
        .I4(tx_done_reg_0),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hFFFF6996)) 
    \crc_data[18]_i_1 
       (.I0(\gmii_txd_reg[0]_0 ),
        .I1(\gmii_txd_reg[7]_0 [1]),
        .I2(\crc_data_reg[30] [27]),
        .I3(\crc_data_reg[30] [10]),
        .I4(tx_done_reg_0),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF96696996)) 
    \crc_data[19]_i_1 
       (.I0(\gmii_txd_reg[7]_0 [4]),
        .I1(\crc_data_reg[30] [24]),
        .I2(\crc_data_reg[30] [11]),
        .I3(\gmii_txd_reg[7]_0 [0]),
        .I4(\crc_data_reg[30] [28]),
        .I5(tx_done_reg_0),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFF96696996)) 
    \crc_data[1]_i_1 
       (.I0(\crc_data_reg[30] [28]),
        .I1(\gmii_txd_reg[7]_0 [0]),
        .I2(\crc_data[23]_i_2_n_0 ),
        .I3(\gmii_txd_reg[7]_0 [7]),
        .I4(\crc_data_reg[30] [21]),
        .I5(tx_done_reg_0),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hFF96)) 
    \crc_data[21]_i_1 
       (.I0(\gmii_txd_reg[7]_0 [2]),
        .I1(\crc_data_reg[30] [26]),
        .I2(\crc_data_reg[30] [13]),
        .I3(tx_done_reg_0),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hFFFF6996)) 
    \crc_data[23]_i_1 
       (.I0(\crc_data_reg[30] [14]),
        .I1(\crc_data[23]_i_2_n_0 ),
        .I2(\gmii_txd_reg[7]_0 [7]),
        .I3(\crc_data_reg[30] [21]),
        .I4(tx_done_reg_0),
        .O(D[10]));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_data[23]_i_2 
       (.I0(\gmii_txd_reg[7]_0 [1]),
        .I1(\crc_data_reg[30] [27]),
        .I2(\gmii_txd_reg[7]_0 [6]),
        .I3(\crc_data_reg[30] [22]),
        .O(\crc_data[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF6996)) 
    \crc_data[24]_i_1 
       (.I0(\gmii_txd_reg[0]_0 ),
        .I1(\gmii_txd_reg[7]_0 [6]),
        .I2(\crc_data_reg[30] [22]),
        .I3(\crc_data_reg[30] [15]),
        .I4(tx_done_reg_0),
        .O(D[11]));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_data[24]_i_2 
       (.I0(\gmii_txd_reg[7]_0 [0]),
        .I1(\crc_data_reg[30] [28]),
        .I2(\gmii_txd_reg[7]_0 [5]),
        .I3(\crc_data_reg[30] [23]),
        .O(\gmii_txd_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF96696996)) 
    \crc_data[25]_i_1 
       (.I0(\gmii_txd_reg[7]_0 [5]),
        .I1(\crc_data_reg[30] [23]),
        .I2(\crc_data_reg[30] [24]),
        .I3(\gmii_txd_reg[7]_0 [4]),
        .I4(\crc_data_reg[30] [16]),
        .I5(tx_done_reg_0),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFF96696996)) 
    \crc_data[28]_i_1 
       (.I0(\gmii_txd_reg[2]_0 ),
        .I1(\gmii_txd_reg[7]_0 [5]),
        .I2(\crc_data_reg[30] [23]),
        .I3(\crc_data_reg[28] ),
        .I4(\crc_data_reg[30] [17]),
        .I5(tx_done_reg_0),
        .O(D[13]));
  LUT2 #(
    .INIT(4'h6)) 
    \crc_data[28]_i_2 
       (.I0(\gmii_txd_reg[7]_0 [2]),
        .I1(\crc_data_reg[30] [26]),
        .O(\gmii_txd_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF96696996)) 
    \crc_data[29]_i_1 
       (.I0(\gmii_txd_reg[4]_0 ),
        .I1(\gmii_txd_reg[7]_0 [0]),
        .I2(\crc_data_reg[30] [28]),
        .I3(\crc_data_reg[28] ),
        .I4(\crc_data_reg[30] [18]),
        .I5(tx_done_reg_0),
        .O(D[14]));
  LUT2 #(
    .INIT(4'h6)) 
    \crc_data[29]_i_2 
       (.I0(\gmii_txd_reg[7]_0 [4]),
        .I1(\crc_data_reg[30] [24]),
        .O(\gmii_txd_reg[4]_0 ));
  LUT5 #(
    .INIT(32'hFFFF6996)) 
    \crc_data[2]_i_1 
       (.I0(\gmii_txd_reg[0]_0 ),
        .I1(\crc_data[23]_i_2_n_0 ),
        .I2(\gmii_txd_reg[7]_0 [7]),
        .I3(\crc_data_reg[30] [21]),
        .I4(tx_done_reg_0),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF96696996)) 
    \crc_data[30]_i_1 
       (.I0(\gmii_txd_reg[7]_0 [0]),
        .I1(\crc_data_reg[30] [28]),
        .I2(\gmii_txd_reg[7]_0 [3]),
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
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hFF96)) 
    \crc_data[31]_i_2 
       (.I0(\gmii_txd_reg[7]_0 [2]),
        .I1(\crc_data_reg[30] [26]),
        .I2(\crc_data_reg[30] [20]),
        .I3(tx_done_reg_0),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFF96696996)) 
    \crc_data[3]_i_1 
       (.I0(\crc_data_reg[30] [22]),
        .I1(\gmii_txd_reg[7]_0 [6]),
        .I2(\gmii_txd_reg[0]_0 ),
        .I3(\crc_data_reg[30] [24]),
        .I4(\gmii_txd_reg[7]_0 [4]),
        .I5(tx_done_reg_0),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hFFFF6996)) 
    \crc_data[7]_i_1 
       (.I0(\crc_data_reg[7] ),
        .I1(\gmii_txd_reg[0]_0 ),
        .I2(\crc_data_reg[30] [26]),
        .I3(\gmii_txd_reg[7]_0 [2]),
        .I4(tx_done_reg_0),
        .O(D[4]));
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
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(crc_en_i_1_n_0),
        .Q(crc_en));
  LUT4 #(
    .INIT(16'hB8FF)) 
    \cur_state[0]_i_1__1 
       (.I0(cur_state[4]),
        .I1(skip_en_reg_n_0),
        .I2(cur_state[0]),
        .I3(\cur_state[4]_i_2_n_0 ),
        .O(\cur_state[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \cur_state[1]_i_1__0 
       (.I0(\cur_state[4]_i_2_n_0 ),
        .I1(cur_state[1]),
        .I2(skip_en_reg_n_0),
        .I3(cur_state[0]),
        .O(next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \cur_state[2]_i_1__0 
       (.I0(\cur_state[4]_i_2_n_0 ),
        .I1(cur_state[2]),
        .I2(skip_en_reg_n_0),
        .I3(cur_state[1]),
        .O(next_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \cur_state[3]_i_1__0 
       (.I0(\cur_state[4]_i_2_n_0 ),
        .I1(cur_state[3]),
        .I2(skip_en_reg_n_0),
        .I3(cur_state[2]),
        .O(next_state[3]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \cur_state[4]_i_1__0 
       (.I0(\cur_state[4]_i_2_n_0 ),
        .I1(cur_state[4]),
        .I2(skip_en_reg_n_0),
        .I3(cur_state[3]),
        .O(next_state[4]));
  LUT5 #(
    .INIT(32'h00010116)) 
    \cur_state[4]_i_2 
       (.I0(cur_state[0]),
        .I1(cur_state[1]),
        .I2(cur_state[2]),
        .I3(cur_state[3]),
        .I4(cur_state[4]),
        .O(\cur_state[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "st_preamble:00010,st_eth_head:00100,st_arp_data:01000,st_crc:10000,st_idle:00001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \cur_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cur_state[0]_i_1__1_n_0 ),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(cur_state[0]));
  (* FSM_ENCODED_STATES = "st_preamble:00010,st_eth_head:00100,st_arp_data:01000,st_crc:10000,st_idle:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(next_state[1]),
        .Q(cur_state[1]));
  (* FSM_ENCODED_STATES = "st_preamble:00010,st_eth_head:00100,st_arp_data:01000,st_crc:10000,st_idle:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(next_state[2]),
        .Q(cur_state[2]));
  (* FSM_ENCODED_STATES = "st_preamble:00010,st_eth_head:00100,st_arp_data:01000,st_crc:10000,st_idle:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(next_state[3]),
        .Q(cur_state[3]));
  (* FSM_ENCODED_STATES = "st_preamble:00010,st_eth_head:00100,st_arp_data:01000,st_crc:10000,st_idle:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(next_state[4]),
        .Q(cur_state[4]));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \eth_head[5][7]_i_1 
       (.I0(cur_state[1]),
        .I1(cur_state[4]),
        .I2(\eth_head_reg[0][0]_0 ),
        .I3(pos_tx_en__0),
        .I4(cur_state[0]),
        .I5(\eth_head[5][7]_i_4_n_0 ),
        .O(eth_head));
  LUT2 #(
    .INIT(4'h2)) 
    \eth_head[5][7]_i_3 
       (.I0(p_0_in3_in),
        .I1(\tx_en_delay_reg_n_0_[2] ),
        .O(pos_tx_en__0));
  LUT2 #(
    .INIT(4'hE)) 
    \eth_head[5][7]_i_4 
       (.I0(cur_state[3]),
        .I1(cur_state[2]),
        .O(\eth_head[5][7]_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[0][0] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [40]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[0]_5 [0]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[0][1] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [41]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[0]_5 [1]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[0][2] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [42]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[0]_5 [2]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[0][3] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [43]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[0]_5 [3]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[0][4] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [44]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[0]_5 [4]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[0][5] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [45]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[0]_5 [5]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[0][6] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [46]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[0]_5 [6]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[0][7] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [47]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[0]_5 [7]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[1][0] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [32]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[1]_4 [0]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[1][1] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [33]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[1]_4 [1]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[1][2] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [34]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[1]_4 [2]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[1][3] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [35]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[1]_4 [3]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[1][4] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [36]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[1]_4 [4]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[1][5] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [37]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[1]_4 [5]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[1][6] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [38]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[1]_4 [6]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[1][7] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [39]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[1]_4 [7]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[2][0] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [24]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[2]_3 [0]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[2][1] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [25]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[2]_3 [1]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[2][2] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [26]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[2]_3 [2]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[2][3] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [27]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[2]_3 [3]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[2][4] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [28]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[2]_3 [4]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[2][5] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [29]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[2]_3 [5]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[2][6] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [30]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[2]_3 [6]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[2][7] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [31]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[2]_3 [7]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[3][0] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [16]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[3]_2 [0]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[3][1] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [17]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[3]_2 [1]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[3][2] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [18]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[3]_2 [2]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[3][3] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [19]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[3]_2 [3]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[3][4] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [20]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[3]_2 [4]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[3][5] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [21]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[3]_2 [5]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[3][6] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [22]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[3]_2 [6]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[3][7] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [23]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[3]_2 [7]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[4][0] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [8]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[4]_1 [0]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[4][1] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [9]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[4]_1 [1]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[4][2] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [10]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[4]_1 [2]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[4][3] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [11]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[4]_1 [3]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[4][4] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [12]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[4]_1 [4]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[4][5] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [13]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[4]_1 [5]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[4][6] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [14]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[4]_1 [6]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[4][7] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [15]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[4]_1 [7]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[5][0] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [0]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[5]_0 [0]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[5][1] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [1]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[5]_0 [1]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[5][2] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [2]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[5]_0 [2]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[5][3] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [3]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[5]_0 [3]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[5][4] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [4]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[5]_0 [4]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[5][5] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [5]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[5]_0 [5]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[5][6] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [6]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[5]_0 [6]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[5][7] 
       (.C(CLK),
        .CE(eth_head),
        .D(\eth_head_reg[0][7]_0 [7]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[5]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    gmii_tx_en_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\cnt[5]_i_1__0_n_0 ),
        .Q(gmii_tx_en));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \gmii_txd[0]_i_1 
       (.I0(\gmii_txd[0]_i_2_n_0 ),
        .I1(cur_state[4]),
        .I2(in17[0]),
        .I3(cur_state[3]),
        .I4(\gmii_txd[0]_i_4_n_0 ),
        .I5(\gmii_txd[7]_i_7_n_0 ),
        .O(\gmii_txd[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[0]_i_10 
       (.I0(\eth_head_reg[3]_2 [0]),
        .I1(\eth_head_reg[2]_3 [0]),
        .I2(Q[1]),
        .I3(\eth_head_reg[1]_4 [0]),
        .I4(Q[0]),
        .I5(\eth_head_reg[0]_5 [0]),
        .O(\gmii_txd[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[0]_i_11 
       (.I0(\eth_head_reg[5]_0 [0]),
        .I1(\eth_head_reg[4]_1 [0]),
        .I2(Q[1]),
        .I3(\eth_head_reg[3]_2 [0]),
        .I4(Q[0]),
        .I5(\eth_head_reg[2]_3 [0]),
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
       (.I0(\cnt[5]_i_6_n_0 ),
        .I1(\gmii_txd[0]_i_6_n_0 ),
        .I2(\crc_data_reg[30] [7]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\crc_data_reg[30] [14]),
        .O(in17[0]));
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
        .I1(\eth_head_reg[5]_0 [0]),
        .I2(Q[0]),
        .I3(\eth_head_reg[4]_1 [0]),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\gmii_txd[0]_i_10_n_0 ),
        .O(\gmii_txd[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000F69)) 
    \gmii_txd[0]_i_6 
       (.I0(\crc_data_reg[30] [26]),
        .I1(\gmii_txd_reg[7]_0 [2]),
        .I2(\crc_data_reg[30] [20]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\gmii_txd[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h4A00AF00)) 
    \gmii_txd[0]_i_7 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\arp_data_reg[7]_10 [0]),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\gmii_txd[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[0]_i_8 
       (.I0(\arp_data_reg[27]_6 [0]),
        .I1(\arp_data_reg[26]_7 [0]),
        .I2(Q[1]),
        .I3(\arp_data_reg[25]_8 [0]),
        .I4(Q[0]),
        .I5(\arp_data_reg[24]_9 [0]),
        .O(\gmii_txd[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB8B88888BB88BBBB)) 
    \gmii_txd[0]_i_9 
       (.I0(\gmii_txd[0]_i_11_n_0 ),
        .I1(\gmii_txd[7]_i_17_n_0 ),
        .I2(\eth_head_reg[1]_4 [0]),
        .I3(\eth_head_reg[0]_5 [0]),
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
        .O(\gmii_txd[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8BBBBBB888888)) 
    \gmii_txd[1]_i_10 
       (.I0(\gmii_txd[1]_i_12_n_0 ),
        .I1(\gmii_txd[7]_i_17_n_0 ),
        .I2(\eth_head_reg[1]_4 [1]),
        .I3(\eth_head_reg[0]_5 [1]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\gmii_txd[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[1]_i_12 
       (.I0(\eth_head_reg[5]_0 [1]),
        .I1(\eth_head_reg[4]_1 [1]),
        .I2(Q[1]),
        .I3(\eth_head_reg[3]_2 [1]),
        .I4(Q[0]),
        .I5(\eth_head_reg[2]_3 [1]),
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
        .I1(p_1_in[0]),
        .I2(\cnt[5]_i_6_n_0 ),
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
  LUT3 #(
    .INIT(8'hB8)) 
    \gmii_txd[1]_i_5 
       (.I0(\eth_head_reg[5]_0 [1]),
        .I1(Q[0]),
        .I2(\eth_head_reg[4]_1 [1]),
        .O(\gmii_txd[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[1]_i_6 
       (.I0(\eth_head_reg[3]_2 [1]),
        .I1(\eth_head_reg[2]_3 [1]),
        .I2(Q[1]),
        .I3(\eth_head_reg[1]_4 [1]),
        .I4(Q[0]),
        .I5(\eth_head_reg[0]_5 [1]),
        .O(\gmii_txd[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h62042204)) 
    \gmii_txd[1]_i_8 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\arp_data_reg[7]_10 [1]),
        .O(\gmii_txd[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[1]_i_9 
       (.I0(\arp_data_reg[27]_6 [1]),
        .I1(\arp_data_reg[26]_7 [1]),
        .I2(Q[1]),
        .I3(\arp_data_reg[25]_8 [1]),
        .I4(Q[0]),
        .I5(\arp_data_reg[24]_9 [1]),
        .O(\gmii_txd[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \gmii_txd[2]_i_1 
       (.I0(\gmii_txd[2]_i_2_n_0 ),
        .I1(cur_state[4]),
        .I2(in17[2]),
        .I3(cur_state[3]),
        .I4(\gmii_txd[2]_i_4_n_0 ),
        .I5(\gmii_txd[7]_i_7_n_0 ),
        .O(\gmii_txd[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[2]_i_10 
       (.I0(\eth_head_reg[3]_2 [2]),
        .I1(\eth_head_reg[2]_3 [2]),
        .I2(Q[1]),
        .I3(\eth_head_reg[1]_4 [2]),
        .I4(Q[0]),
        .I5(\eth_head_reg[0]_5 [2]),
        .O(\gmii_txd[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[2]_i_12 
       (.I0(\eth_head_reg[5]_0 [2]),
        .I1(\eth_head_reg[4]_1 [2]),
        .I2(Q[1]),
        .I3(\eth_head_reg[3]_2 [2]),
        .I4(Q[0]),
        .I5(\eth_head_reg[2]_3 [2]),
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
       (.I0(\cnt[5]_i_6_n_0 ),
        .I1(\gmii_txd_reg[2]_1 ),
        .I2(\crc_data_reg[30] [5]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\crc_data_reg[30] [13]),
        .O(in17[2]));
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
       (.I0(\arp_data_reg[27]_6 [2]),
        .I1(\arp_data_reg[26]_7 [2]),
        .I2(Q[1]),
        .I3(\arp_data_reg[25]_8 [2]),
        .I4(Q[0]),
        .I5(\arp_data_reg[24]_9 [2]),
        .O(\gmii_txd[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \gmii_txd[2]_i_8 
       (.I0(\gmii_txd[2]_i_12_n_0 ),
        .I1(\gmii_txd[7]_i_17_n_0 ),
        .I2(Q[1]),
        .I3(\eth_head_reg[0]_5 [2]),
        .I4(Q[0]),
        .I5(\eth_head_reg[1]_4 [2]),
        .O(\gmii_txd[2]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \gmii_txd[2]_i_9 
       (.I0(\eth_head_reg[5]_0 [2]),
        .I1(Q[0]),
        .I2(\eth_head_reg[4]_1 [2]),
        .O(\gmii_txd[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \gmii_txd[3]_i_1 
       (.I0(\gmii_txd[3]_i_2_n_0 ),
        .I1(cur_state[4]),
        .I2(in17[3]),
        .I3(cur_state[3]),
        .I4(\gmii_txd_reg[3]_i_4_n_0 ),
        .I5(\gmii_txd[7]_i_7_n_0 ),
        .O(\gmii_txd[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[3]_i_11 
       (.I0(\eth_head_reg[5]_0 [3]),
        .I1(\eth_head_reg[4]_1 [3]),
        .I2(Q[1]),
        .I3(\eth_head_reg[3]_2 [3]),
        .I4(Q[0]),
        .I5(\eth_head_reg[2]_3 [3]),
        .O(\gmii_txd[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[3]_i_12 
       (.I0(\arp_data_reg[27]_6 [3]),
        .I1(\arp_data_reg[26]_7 [3]),
        .I2(Q[1]),
        .I3(\arp_data_reg[25]_8 [3]),
        .I4(Q[0]),
        .I5(\arp_data_reg[24]_9 [3]),
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
       (.I0(\cnt[5]_i_6_n_0 ),
        .I1(\gmii_txd_reg[3]_0 ),
        .I2(\crc_data_reg[30] [4]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\crc_data_reg[30] [12]),
        .O(in17[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[3]_i_5 
       (.I0(\eth_head_reg[3]_2 [3]),
        .I1(\eth_head_reg[2]_3 [3]),
        .I2(Q[1]),
        .I3(\eth_head_reg[1]_4 [3]),
        .I4(Q[0]),
        .I5(\eth_head_reg[0]_5 [3]),
        .O(\gmii_txd[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \gmii_txd[3]_i_6 
       (.I0(\eth_head_reg[4]_1 [3]),
        .I1(Q[0]),
        .I2(\eth_head_reg[5]_0 [3]),
        .I3(Q[1]),
        .O(\gmii_txd[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8BBBBBB888888)) 
    \gmii_txd[3]_i_8 
       (.I0(\gmii_txd[3]_i_11_n_0 ),
        .I1(\gmii_txd[7]_i_17_n_0 ),
        .I2(\eth_head_reg[1]_4 [3]),
        .I3(\eth_head_reg[0]_5 [3]),
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
        .I2(in17[4]),
        .I3(cur_state[3]),
        .I4(\gmii_txd_reg[4]_i_4_n_0 ),
        .I5(\gmii_txd[7]_i_7_n_0 ),
        .O(\gmii_txd[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[4]_i_10 
       (.I0(\eth_head_reg[5]_0 [4]),
        .I1(\eth_head_reg[4]_1 [4]),
        .I2(Q[1]),
        .I3(\eth_head_reg[3]_2 [4]),
        .I4(Q[0]),
        .I5(\eth_head_reg[2]_3 [4]),
        .O(\gmii_txd[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[4]_i_11 
       (.I0(\arp_data_reg[27]_6 [4]),
        .I1(\arp_data_reg[26]_7 [4]),
        .I2(Q[1]),
        .I3(\arp_data_reg[25]_8 [4]),
        .I4(Q[0]),
        .I5(\arp_data_reg[24]_9 [4]),
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
       (.I0(\cnt[5]_i_6_n_0 ),
        .I1(\gmii_txd_reg[4]_1 ),
        .I2(\crc_data_reg[30] [3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\crc_data_reg[30] [11]),
        .O(in17[4]));
  LUT6 #(
    .INIT(64'hE5E0FFFFE5E00000)) 
    \gmii_txd[4]_i_5 
       (.I0(Q[1]),
        .I1(\eth_head_reg[5]_0 [4]),
        .I2(Q[0]),
        .I3(\eth_head_reg[4]_1 [4]),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\gmii_txd[4]_i_9_n_0 ),
        .O(\gmii_txd[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \gmii_txd[4]_i_7 
       (.I0(\gmii_txd[4]_i_10_n_0 ),
        .I1(\gmii_txd[7]_i_17_n_0 ),
        .I2(Q[1]),
        .I3(\eth_head_reg[0]_5 [4]),
        .I4(Q[0]),
        .I5(\eth_head_reg[1]_4 [4]),
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
       (.I0(\eth_head_reg[3]_2 [4]),
        .I1(\eth_head_reg[2]_3 [4]),
        .I2(Q[1]),
        .I3(\eth_head_reg[1]_4 [4]),
        .I4(Q[0]),
        .I5(\eth_head_reg[0]_5 [4]),
        .O(\gmii_txd[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \gmii_txd[5]_i_1 
       (.I0(\gmii_txd[5]_i_2_n_0 ),
        .I1(cur_state[4]),
        .I2(in17[5]),
        .I3(cur_state[3]),
        .I4(\gmii_txd_reg[5]_i_4_n_0 ),
        .I5(\gmii_txd[7]_i_7_n_0 ),
        .O(\gmii_txd[5]_i_1_n_0 ));
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
       (.I0(\eth_head_reg[5]_0 [5]),
        .I1(\eth_head_reg[4]_1 [5]),
        .I2(Q[1]),
        .I3(\eth_head_reg[3]_2 [5]),
        .I4(Q[0]),
        .I5(\eth_head_reg[2]_3 [5]),
        .O(\gmii_txd[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[5]_i_12 
       (.I0(\arp_data_reg[27]_6 [5]),
        .I1(\arp_data_reg[26]_7 [5]),
        .I2(Q[1]),
        .I3(\arp_data_reg[25]_8 [5]),
        .I4(Q[0]),
        .I5(\arp_data_reg[24]_9 [5]),
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
       (.I0(\cnt[5]_i_6_n_0 ),
        .I1(\gmii_txd_reg[5]_0 ),
        .I2(\crc_data_reg[30] [2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\crc_data_reg[30] [10]),
        .O(in17[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[5]_i_5 
       (.I0(\eth_head_reg[3]_2 [5]),
        .I1(\eth_head_reg[2]_3 [5]),
        .I2(Q[1]),
        .I3(\eth_head_reg[1]_4 [5]),
        .I4(Q[0]),
        .I5(\eth_head_reg[0]_5 [5]),
        .O(\gmii_txd[5]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \gmii_txd[5]_i_6 
       (.I0(\eth_head_reg[5]_0 [5]),
        .I1(Q[0]),
        .I2(\eth_head_reg[4]_1 [5]),
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
        .I3(\eth_head_reg[0]_5 [5]),
        .I4(Q[0]),
        .I5(\eth_head_reg[1]_4 [5]),
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
        .O(\gmii_txd[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[6]_i_11 
       (.I0(\eth_head_reg[5]_0 [6]),
        .I1(\eth_head_reg[4]_1 [6]),
        .I2(Q[1]),
        .I3(\eth_head_reg[3]_2 [6]),
        .I4(Q[0]),
        .I5(\eth_head_reg[2]_3 [6]),
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
        .I1(p_1_in[1]),
        .I2(\cnt[5]_i_6_n_0 ),
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
       (.I0(\eth_head_reg[3]_2 [6]),
        .I1(\eth_head_reg[2]_3 [6]),
        .I2(Q[1]),
        .I3(\eth_head_reg[1]_4 [6]),
        .I4(Q[0]),
        .I5(\eth_head_reg[0]_5 [6]),
        .O(\gmii_txd[6]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \gmii_txd[6]_i_6 
       (.I0(\eth_head_reg[5]_0 [6]),
        .I1(Q[0]),
        .I2(\eth_head_reg[4]_1 [6]),
        .O(\gmii_txd[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[6]_i_8 
       (.I0(\arp_data_reg[27]_6 [6]),
        .I1(\arp_data_reg[26]_7 [6]),
        .I2(Q[1]),
        .I3(\arp_data_reg[25]_8 [6]),
        .I4(Q[0]),
        .I5(\arp_data_reg[24]_9 [6]),
        .O(\gmii_txd[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \gmii_txd[6]_i_9 
       (.I0(\gmii_txd[6]_i_11_n_0 ),
        .I1(\gmii_txd[7]_i_17_n_0 ),
        .I2(Q[1]),
        .I3(\eth_head_reg[0]_5 [6]),
        .I4(Q[0]),
        .I5(\eth_head_reg[1]_4 [6]),
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
  LUT2 #(
    .INIT(4'h7)) 
    \gmii_txd[7]_i_10 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\gmii_txd[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \gmii_txd[7]_i_11 
       (.I0(\eth_head_reg[4]_1 [7]),
        .I1(Q[0]),
        .I2(\eth_head_reg[5]_0 [7]),
        .I3(Q[1]),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\gmii_txd[7]_i_15_n_0 ),
        .O(\gmii_txd[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000FF9669)) 
    \gmii_txd[7]_i_12 
       (.I0(\crc_data_reg[30] [22]),
        .I1(\gmii_txd_reg[7]_0 [6]),
        .I2(\gmii_txd_reg[0]_0 ),
        .I3(\crc_data_reg[30] [15]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\gmii_txd[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[7]_i_13 
       (.I0(\arp_data_reg[27]_6 [7]),
        .I1(\arp_data_reg[26]_7 [7]),
        .I2(Q[1]),
        .I3(\arp_data_reg[25]_8 [7]),
        .I4(Q[0]),
        .I5(\arp_data_reg[24]_9 [7]),
        .O(\gmii_txd[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \gmii_txd[7]_i_14 
       (.I0(\gmii_txd[7]_i_16_n_0 ),
        .I1(\gmii_txd[7]_i_17_n_0 ),
        .I2(Q[1]),
        .I3(\eth_head_reg[0]_5 [7]),
        .I4(Q[0]),
        .I5(\eth_head_reg[1]_4 [7]),
        .O(\gmii_txd[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[7]_i_15 
       (.I0(\eth_head_reg[3]_2 [7]),
        .I1(\eth_head_reg[2]_3 [7]),
        .I2(Q[1]),
        .I3(\eth_head_reg[1]_4 [7]),
        .I4(Q[0]),
        .I5(\eth_head_reg[0]_5 [7]),
        .O(\gmii_txd[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[7]_i_16 
       (.I0(\eth_head_reg[5]_0 [7]),
        .I1(\eth_head_reg[4]_1 [7]),
        .I2(Q[1]),
        .I3(\eth_head_reg[3]_2 [7]),
        .I4(Q[0]),
        .I5(\eth_head_reg[2]_3 [7]),
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
        .I2(in17[7]),
        .I3(cur_state[3]),
        .I4(\gmii_txd[7]_i_6_n_0 ),
        .I5(\gmii_txd[7]_i_7_n_0 ),
        .O(\gmii_txd[7]_i_2_n_0 ));
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
       (.I0(\cnt[5]_i_6_n_0 ),
        .I1(\gmii_txd[7]_i_12_n_0 ),
        .I2(\crc_data_reg[30] [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\crc_data_reg[30] [8]),
        .O(in17[7]));
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
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\gmii_txd[0]_i_1_n_0 ),
        .Q(\gmii_txd_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gmii_txd_reg[1] 
       (.C(CLK),
        .CE(\gmii_txd[7]_i_1_n_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\gmii_txd[1]_i_1_n_0 ),
        .Q(\gmii_txd_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gmii_txd_reg[2] 
       (.C(CLK),
        .CE(\gmii_txd[7]_i_1_n_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\gmii_txd[2]_i_1_n_0 ),
        .Q(\gmii_txd_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gmii_txd_reg[3] 
       (.C(CLK),
        .CE(\gmii_txd[7]_i_1_n_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\gmii_txd[3]_i_1_n_0 ),
        .Q(\gmii_txd_reg[7]_0 [3]));
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
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\gmii_txd[4]_i_1_n_0 ),
        .Q(\gmii_txd_reg[7]_0 [4]));
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
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\gmii_txd[5]_i_1_n_0 ),
        .Q(\gmii_txd_reg[7]_0 [5]));
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
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\gmii_txd[6]_i_1_n_0 ),
        .Q(\gmii_txd_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \gmii_txd_reg[7] 
       (.C(CLK),
        .CE(\gmii_txd[7]_i_1_n_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\gmii_txd[7]_i_2_n_0 ),
        .Q(\gmii_txd_reg[7]_0 [7]));
  MUXF7 \gmii_txd_reg[7]_i_3 
       (.I0(\gmii_txd[7]_i_8_n_0 ),
        .I1(\gmii_txd[7]_i_9_n_0 ),
        .O(\gmii_txd_reg[7]_i_3_n_0 ),
        .S(cur_state[3]));
  LUT6 #(
    .INIT(64'hAAAAAA8AAA8AAA8A)) 
    skip_en_i_1__0
       (.I0(\cur_state[4]_i_2_n_0 ),
        .I1(skip_en_i_2__0_n_0),
        .I2(skip_en_i_3__0_n_0),
        .I3(skip_en_i_4_n_0),
        .I4(cur_state[1]),
        .I5(skip_en_i_5__0_n_0),
        .O(skip_en));
  LUT6 #(
    .INIT(64'h88888F8888888888)) 
    skip_en_i_2__0
       (.I0(skip_en2_out),
        .I1(cur_state[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\cnt[5]_i_6_n_0 ),
        .I5(cur_state[4]),
        .O(skip_en_i_2__0_n_0));
  LUT3 #(
    .INIT(8'hBF)) 
    skip_en_i_3__0
       (.I0(\tx_en_delay_reg_n_0_[2] ),
        .I1(p_0_in3_in),
        .I2(cur_state[0]),
        .O(skip_en_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    skip_en_i_4
       (.I0(cur_state[2]),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(skip_en_i_7__0_n_0),
        .I4(\cnt_reg_n_0_[4] ),
        .I5(\cnt_reg_n_0_[5] ),
        .O(skip_en_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    skip_en_i_5__0
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(Q[1]),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(Q[0]),
        .O(skip_en_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    skip_en_i_6__0
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\cnt_reg_n_0_[5] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(\cnt_reg_n_0_[2] ),
        .O(skip_en2_out));
  LUT2 #(
    .INIT(4'h1)) 
    skip_en_i_7__0
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(skip_en_i_7__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    skip_en_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(skip_en),
        .Q(skip_en_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tx_done_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(tx_done_t_reg_n_0),
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
        .O(tx_done_t));
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
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(tx_done_t),
        .Q(tx_done_t_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \tx_en_delay_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\tx_en_delay_reg[0]_0 ),
        .Q(\tx_en_delay_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \tx_en_delay_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\tx_en_delay_reg_n_0_[0] ),
        .Q(p_0_in3_in));
  FDCE #(
    .INIT(1'b0)) 
    \tx_en_delay_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(p_0_in3_in),
        .Q(\tx_en_delay_reg_n_0_[2] ));
endmodule

module clk_wiz_0
   (clk_out1,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;

  (* IBUF_LOW_PWR *) wire clk_in1;
  wire locked;
  wire reset;
  wire NLW_inst_clk_out1_UNCONNECTED;

  clk_wiz_0_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(NLW_inst_clk_out1_UNCONNECTED),
        .locked(locked),
        .reset(reset));
endmodule

module clk_wiz_0_clk_wiz
   (clk_out1,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire locked;
  wire reset;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0_UNCONNECTED;
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
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO RETARGET SWEEP" *) 
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
    .IS_RST_INVERTED(1'b1),
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
        .CLKOUT0(NLW_mmcm_adv_inst_CLKOUT0_UNCONNECTED),
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
   (p_1_in,
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
    D,
    \crc_data_reg[4]_0 ,
    \crc_data_reg[6]_0 ,
    E,
    CLK,
    \crc_data_reg[31]_0 );
  output [1:0]p_1_in;
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
  input [16:0]D;
  input \crc_data_reg[4]_0 ;
  input \crc_data_reg[6]_0 ;
  input [0:0]E;
  input CLK;
  input \crc_data_reg[31]_0 ;

  wire CLK;
  wire [16:0]D;
  wire [0:0]E;
  wire [28:0]Q;
  wire [19:14]crc_data;
  wire \crc_data[12]_i_2_n_0 ;
  wire \crc_data[14]_i_2_n_0 ;
  wire \crc_data[16]_i_2_n_0 ;
  wire \crc_data[26]_i_2_n_0 ;
  wire \crc_data[27]_i_2_n_0 ;
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
  wire \crc_data_reg[4]_0 ;
  wire \crc_data_reg[6]_0 ;
  wire [30:25]crc_next;
  wire \gmii_txd[2]_i_11_n_0 ;
  wire \gmii_txd[2]_i_3 ;
  wire \gmii_txd[3]_i_10_n_0 ;
  wire [1:0]\gmii_txd[6]_i_3 ;
  wire [1:0]p_1_in;
  wire [27:4]p_1_in_0;

  LUT6 #(
    .INIT(64'hFFFFFFFF96696996)) 
    \crc_data[10]_i_1 
       (.I0(\crc_data_reg[27]_0 ),
        .I1(\crc_data_reg[10]_0 ),
        .I2(\crc_data_reg[16]_0 [5]),
        .I3(Q[23]),
        .I4(Q[2]),
        .I5(\crc_data_reg[4]_0 ),
        .O(p_1_in_0[10]));
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
        .I4(\crc_data_reg[4]_0 ),
        .O(p_1_in_0[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFF96696996)) 
    \crc_data[12]_i_1 
       (.I0(\crc_data[12]_i_2_n_0 ),
        .I1(\crc_data[16]_i_2_n_0 ),
        .I2(\crc_data_reg[16]_0 [5]),
        .I3(Q[23]),
        .I4(Q[4]),
        .I5(\crc_data_reg[4]_0 ),
        .O(p_1_in_0[12]));
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
        .I5(\crc_data_reg[4]_0 ),
        .O(p_1_in_0[14]));
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
        .I4(\crc_data_reg[4]_0 ),
        .O(p_1_in_0[15]));
  LUT5 #(
    .INIT(32'hFFFF6996)) 
    \crc_data[16]_i_1 
       (.I0(\crc_data[16]_i_2_n_0 ),
        .I1(\crc_data_reg[16]_0 [7]),
        .I2(Q[21]),
        .I3(Q[8]),
        .I4(\crc_data_reg[4]_0 ),
        .O(p_1_in_0[16]));
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
        .I3(\crc_data_reg[4]_0 ),
        .O(p_1_in_0[20]));
  LUT4 #(
    .INIT(16'hFF96)) 
    \crc_data[22]_i_1 
       (.I0(Q[21]),
        .I1(\crc_data_reg[16]_0 [7]),
        .I2(crc_data[14]),
        .I3(\crc_data_reg[4]_0 ),
        .O(p_1_in_0[22]));
  LUT5 #(
    .INIT(32'hFFFF6996)) 
    \crc_data[26]_i_1 
       (.I0(\crc_data[26]_i_2_n_0 ),
        .I1(\crc_data_reg[16]_0 [1]),
        .I2(Q[27]),
        .I3(crc_data[18]),
        .I4(\crc_data_reg[4]_0 ),
        .O(p_1_in_0[26]));
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
  LUT5 #(
    .INIT(32'hFFFF6996)) 
    \crc_data[27]_i_1 
       (.I0(\crc_data[27]_i_2_n_0 ),
        .I1(\crc_data_reg[16]_0 [6]),
        .I2(Q[22]),
        .I3(crc_data[19]),
        .I4(\crc_data_reg[4]_0 ),
        .O(p_1_in_0[27]));
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
        .I5(\crc_data_reg[4]_0 ),
        .O(p_1_in_0[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFF96696996)) 
    \crc_data[5]_i_1 
       (.I0(\crc_data[27]_i_2_n_0 ),
        .I1(\crc_data_reg[27]_0 ),
        .I2(\crc_data[9]_i_2_n_0 ),
        .I3(Q[27]),
        .I4(\crc_data_reg[16]_0 [1]),
        .I5(\crc_data_reg[4]_0 ),
        .O(p_1_in_0[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFF96696996)) 
    \crc_data[6]_i_1 
       (.I0(\crc_data[16]_i_2_n_0 ),
        .I1(\crc_data_reg[6]_0 ),
        .I2(\crc_data[9]_i_2_n_0 ),
        .I3(Q[27]),
        .I4(\crc_data_reg[16]_0 [1]),
        .I5(\crc_data_reg[4]_0 ),
        .O(p_1_in_0[6]));
  LUT5 #(
    .INIT(32'hFFFF6996)) 
    \crc_data[8]_i_1 
       (.I0(\crc_data[26]_i_2_n_0 ),
        .I1(\crc_data_reg[16]_0 [6]),
        .I2(Q[22]),
        .I3(Q[0]),
        .I4(\crc_data_reg[4]_0 ),
        .O(p_1_in_0[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFF96696996)) 
    \crc_data[9]_i_1 
       (.I0(\crc_data[16]_i_2_n_0 ),
        .I1(\crc_data_reg[16]_0 [5]),
        .I2(Q[23]),
        .I3(\crc_data[9]_i_2_n_0 ),
        .I4(Q[1]),
        .I5(\crc_data_reg[4]_0 ),
        .O(p_1_in_0[9]));
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
        .D(p_1_in_0[10]),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[10]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in_0[11]),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[11]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in_0[12]),
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
        .D(p_1_in_0[14]),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(crc_data[14]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in_0[15]),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[14]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[16] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in_0[16]),
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
        .D(p_1_in_0[20]),
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
        .D(p_1_in_0[22]),
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
        .D(p_1_in_0[26]),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[23]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[27] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in_0[27]),
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
        .D(p_1_in_0[4]),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[4]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in_0[5]),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[5]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in_0[6]),
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
        .D(p_1_in_0[8]),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[8]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in_0[9]),
        .PRE(\crc_data_reg[31]_0 ),
        .Q(Q[9]));
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
        .O(p_1_in[0]));
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
        .O(p_1_in[1]));
endmodule

module gmii2rgmii
   (gmii_rxd,
    gmii_rxdv_t_0,
    gmii_rxdv_t_1,
    \rxdata_bus[3].u_iddr_rxd ,
    u_iddr_rx_ctl,
    skip_en_reg,
    u_iddr_rx_ctl_0,
    \cur_state_reg[3] ,
    u_iddr_rx_ctl_1,
    \eth_type_reg[13] ,
    \rxdata_bus[3].u_iddr_rxd_0 ,
    rgmii_txd,
    rgmii_tx_ctl,
    eth_rxd_IBUF,
    eth_txc_OBUF,
    clk_out1,
    eth_rx_ctl_IBUF,
    skip_en_reg_0,
    error_en_reg,
    \cnt_reg[0] ,
    Q,
    error_en_reg_0,
    error_en_i_5,
    error_en_i_10,
    CLK,
    gmii_txd,
    gmii_tx_en);
  output [7:0]gmii_rxd;
  output gmii_rxdv_t_0;
  output gmii_rxdv_t_1;
  output \rxdata_bus[3].u_iddr_rxd ;
  output u_iddr_rx_ctl;
  output skip_en_reg;
  output u_iddr_rx_ctl_0;
  output \cur_state_reg[3] ;
  output u_iddr_rx_ctl_1;
  output \eth_type_reg[13] ;
  output \rxdata_bus[3].u_iddr_rxd_0 ;
  output [3:0]rgmii_txd;
  output rgmii_tx_ctl;
  input [3:0]eth_rxd_IBUF;
  input eth_txc_OBUF;
  input clk_out1;
  input eth_rx_ctl_IBUF;
  input skip_en_reg_0;
  input error_en_reg;
  input \cnt_reg[0] ;
  input [2:0]Q;
  input error_en_reg_0;
  input [3:0]error_en_i_5;
  input [0:0]error_en_i_10;
  input CLK;
  input [7:0]gmii_txd;
  input gmii_tx_en;

  wire CLK;
  wire [2:0]Q;
  wire \cnt_reg[0] ;
  wire \cur_state_reg[3] ;
  wire [0:0]error_en_i_10;
  wire [3:0]error_en_i_5;
  wire error_en_reg;
  wire error_en_reg_0;
  wire eth_rx_ctl_IBUF;
  wire [3:0]eth_rxd_IBUF;
  wire eth_txc_OBUF;
  wire \eth_type_reg[13] ;
  wire [7:0]gmii_rxd;
  wire gmii_rxdv_t_0;
  wire gmii_rxdv_t_1;
  wire gmii_tx_en;
  wire [7:0]gmii_txd;
  wire rgmii_tx_ctl;
  wire [3:0]rgmii_txd;
  wire \rxdata_bus[3].u_iddr_rxd ;
  wire \rxdata_bus[3].u_iddr_rxd_0 ;
  wire skip_en_reg;
  wire skip_en_reg_0;
  wire u_iddr_rx_ctl;
  wire u_iddr_rx_ctl_0;
  wire u_iddr_rx_ctl_1;
  wire NLW_u_rgmii_rx_1000m_clk_out1_UNCONNECTED;

  rgmii_rx_1000m u_rgmii_rx_1000m
       (.Q(Q),
        .clk_out1(NLW_u_rgmii_rx_1000m_clk_out1_UNCONNECTED),
        .\cnt_reg[0] (\cnt_reg[0] ),
        .\cur_state_reg[3] (\cur_state_reg[3] ),
        .error_en_i_10_0(error_en_i_10),
        .error_en_i_5(error_en_i_5),
        .error_en_reg(error_en_reg),
        .error_en_reg_0(error_en_reg_0),
        .eth_rx_ctl_IBUF(eth_rx_ctl_IBUF),
        .eth_rxd_IBUF(eth_rxd_IBUF),
        .eth_txc_OBUF(eth_txc_OBUF),
        .\eth_type_reg[13] (\eth_type_reg[13] ),
        .gmii_rxd(gmii_rxd),
        .\rxdata_bus[3].u_iddr_rxd_0 (\rxdata_bus[3].u_iddr_rxd ),
        .\rxdata_bus[3].u_iddr_rxd_1 (\rxdata_bus[3].u_iddr_rxd_0 ),
        .skip_en_reg(skip_en_reg),
        .skip_en_reg_0(skip_en_reg_0),
        .u_iddr_rx_ctl_0(gmii_rxdv_t_0),
        .u_iddr_rx_ctl_1(gmii_rxdv_t_1),
        .u_iddr_rx_ctl_2(u_iddr_rx_ctl),
        .u_iddr_rx_ctl_3(u_iddr_rx_ctl_0),
        .u_iddr_rx_ctl_4(u_iddr_rx_ctl_1));
  rgmii_tx_1000m u_rgmii_tx_1000m
       (.CLK(CLK),
        .gmii_tx_en(gmii_tx_en),
        .gmii_txd(gmii_txd),
        .rgmii_tx_ctl(rgmii_tx_ctl),
        .rgmii_txd(rgmii_txd));
endmodule

module mdio_ctrl
   (op_exec,
    D,
    eth_rst_n_OBUF,
    \op_addr_reg[4]_0 ,
    \phy_speed_reg[1]_0 ,
    dri_clk,
    op_exec_reg_0,
    op_done,
    Q,
    op_rd_ack,
    sys_rst_n_IBUF,
    locked);
  output op_exec;
  output [1:0]D;
  output eth_rst_n_OBUF;
  output [1:0]\op_addr_reg[4]_0 ;
  output [1:0]\phy_speed_reg[1]_0 ;
  input dri_clk;
  input op_exec_reg_0;
  input op_done;
  input [3:0]Q;
  input op_rd_ack;
  input sys_rst_n_IBUF;
  input locked;

  wire [1:0]D;
  wire \FSM_sequential_flow_cnt[0]_i_1_n_0 ;
  wire \FSM_sequential_flow_cnt[1]_i_1_n_0 ;
  wire \FSM_sequential_flow_cnt[2]_i_1_n_0 ;
  wire \FSM_sequential_flow_cnt[2]_i_2_n_0 ;
  wire [3:0]Q;
  wire dri_clk;
  wire eth_rst_n_OBUF;
  wire [2:0]flow_cnt;
  wire locked;
  wire \op_addr[0]_i_1_n_0 ;
  wire \op_addr[4]_i_1_n_0 ;
  wire [1:0]\op_addr_reg[4]_0 ;
  wire op_done;
  wire op_exec;
  wire op_exec_i_1_n_0;
  wire op_exec_reg_0;
  wire op_rd_ack;
  wire op_rh_wl_i_1_n_0;
  wire \phy_speed[0]_i_1_n_0 ;
  wire \phy_speed[1]_i_1_n_0 ;
  wire [1:0]\phy_speed_reg[1]_0 ;
  wire read_next_i_1_n_0;
  wire read_next_i_2_n_0;
  wire read_next_reg_n_0;
  wire start_next;
  wire start_next_i_1_n_0;
  wire start_next_reg_n_0;
  wire sys_rst_n_IBUF;
  wire [23:0]timer_cnt;
  wire \timer_cnt[23]_i_4_n_0 ;
  wire \timer_cnt[23]_i_5_n_0 ;
  wire \timer_cnt[23]_i_6_n_0 ;
  wire \timer_cnt[23]_i_7_n_0 ;
  wire \timer_cnt[23]_i_8_n_0 ;
  wire \timer_cnt[23]_i_9_n_0 ;
  wire [23:0]timer_cnt_0;
  wire \timer_cnt_reg[12]_i_2_n_0 ;
  wire \timer_cnt_reg[12]_i_2_n_4 ;
  wire \timer_cnt_reg[12]_i_2_n_5 ;
  wire \timer_cnt_reg[12]_i_2_n_6 ;
  wire \timer_cnt_reg[12]_i_2_n_7 ;
  wire \timer_cnt_reg[16]_i_2_n_0 ;
  wire \timer_cnt_reg[16]_i_2_n_4 ;
  wire \timer_cnt_reg[16]_i_2_n_5 ;
  wire \timer_cnt_reg[16]_i_2_n_6 ;
  wire \timer_cnt_reg[16]_i_2_n_7 ;
  wire \timer_cnt_reg[20]_i_2_n_0 ;
  wire \timer_cnt_reg[20]_i_2_n_4 ;
  wire \timer_cnt_reg[20]_i_2_n_5 ;
  wire \timer_cnt_reg[20]_i_2_n_6 ;
  wire \timer_cnt_reg[20]_i_2_n_7 ;
  wire \timer_cnt_reg[23]_i_3_n_5 ;
  wire \timer_cnt_reg[23]_i_3_n_6 ;
  wire \timer_cnt_reg[23]_i_3_n_7 ;
  wire \timer_cnt_reg[4]_i_2_n_0 ;
  wire \timer_cnt_reg[4]_i_2_n_4 ;
  wire \timer_cnt_reg[4]_i_2_n_5 ;
  wire \timer_cnt_reg[4]_i_2_n_6 ;
  wire \timer_cnt_reg[4]_i_2_n_7 ;
  wire \timer_cnt_reg[8]_i_2_n_0 ;
  wire \timer_cnt_reg[8]_i_2_n_4 ;
  wire \timer_cnt_reg[8]_i_2_n_5 ;
  wire \timer_cnt_reg[8]_i_2_n_6 ;
  wire \timer_cnt_reg[8]_i_2_n_7 ;
  wire timer_done;
  wire timer_done_reg_n_0;
  wire [2:0]\NLW_timer_cnt_reg[12]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_cnt_reg[16]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_cnt_reg[20]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_timer_cnt_reg[23]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_timer_cnt_reg[23]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_timer_cnt_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_cnt_reg[8]_i_2_CO_UNCONNECTED ;

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
        .CLR(op_exec_reg_0),
        .D(\FSM_sequential_flow_cnt[0]_i_1_n_0 ),
        .Q(flow_cnt[0]));
  (* FSM_ENCODED_STATES = "iSTATE:010,iSTATE0:001,iSTATE1:011,iSTATE2:000,iSTATE3:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_flow_cnt_reg[1] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(op_exec_reg_0),
        .D(\FSM_sequential_flow_cnt[1]_i_1_n_0 ),
        .Q(flow_cnt[1]));
  (* FSM_ENCODED_STATES = "iSTATE:010,iSTATE0:001,iSTATE1:011,iSTATE2:000,iSTATE3:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_flow_cnt_reg[2] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(op_exec_reg_0),
        .D(\FSM_sequential_flow_cnt[2]_i_1_n_0 ),
        .Q(flow_cnt[2]));
  LUT2 #(
    .INIT(4'h8)) 
    eth_rst_n_OBUF_inst_i_1
       (.I0(sys_rst_n_IBUF),
        .I1(locked),
        .O(eth_rst_n_OBUF));
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
        .CLR(op_exec_reg_0),
        .D(\op_addr[0]_i_1_n_0 ),
        .Q(\op_addr_reg[4]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \op_addr_reg[4] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(op_exec_reg_0),
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
        .CLR(op_exec_reg_0),
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
        .CLR(op_exec_reg_0),
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
        .CLR(op_exec_reg_0),
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
        .CLR(op_exec_reg_0),
        .D(start_next_i_1_n_0),
        .Q(start_next_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \timer_cnt[0]_i_1 
       (.I0(timer_cnt[0]),
        .O(timer_cnt_0[0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \timer_cnt[10]_i_1 
       (.I0(timer_done),
        .I1(\timer_cnt_reg[12]_i_2_n_6 ),
        .O(timer_cnt_0[10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \timer_cnt[11]_i_1 
       (.I0(timer_done),
        .I1(\timer_cnt_reg[12]_i_2_n_5 ),
        .O(timer_cnt_0[11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \timer_cnt[12]_i_1 
       (.I0(timer_done),
        .I1(\timer_cnt_reg[12]_i_2_n_4 ),
        .O(timer_cnt_0[12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \timer_cnt[13]_i_1 
       (.I0(timer_done),
        .I1(\timer_cnt_reg[16]_i_2_n_7 ),
        .O(timer_cnt_0[13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \timer_cnt[14]_i_1 
       (.I0(timer_done),
        .I1(\timer_cnt_reg[16]_i_2_n_6 ),
        .O(timer_cnt_0[14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \timer_cnt[15]_i_1 
       (.I0(timer_done),
        .I1(\timer_cnt_reg[16]_i_2_n_5 ),
        .O(timer_cnt_0[15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \timer_cnt[16]_i_1 
       (.I0(timer_done),
        .I1(\timer_cnt_reg[16]_i_2_n_4 ),
        .O(timer_cnt_0[16]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \timer_cnt[17]_i_1 
       (.I0(timer_done),
        .I1(\timer_cnt_reg[20]_i_2_n_7 ),
        .O(timer_cnt_0[17]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \timer_cnt[18]_i_1 
       (.I0(timer_done),
        .I1(\timer_cnt_reg[20]_i_2_n_6 ),
        .O(timer_cnt_0[18]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \timer_cnt[19]_i_1 
       (.I0(timer_done),
        .I1(\timer_cnt_reg[20]_i_2_n_5 ),
        .O(timer_cnt_0[19]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \timer_cnt[1]_i_1 
       (.I0(timer_done),
        .I1(\timer_cnt_reg[4]_i_2_n_7 ),
        .O(timer_cnt_0[1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \timer_cnt[20]_i_1 
       (.I0(timer_done),
        .I1(\timer_cnt_reg[20]_i_2_n_4 ),
        .O(timer_cnt_0[20]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \timer_cnt[21]_i_1 
       (.I0(timer_done),
        .I1(\timer_cnt_reg[23]_i_3_n_7 ),
        .O(timer_cnt_0[21]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \timer_cnt[22]_i_1 
       (.I0(timer_done),
        .I1(\timer_cnt_reg[23]_i_3_n_6 ),
        .O(timer_cnt_0[22]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \timer_cnt[23]_i_1 
       (.I0(timer_done),
        .I1(\timer_cnt_reg[23]_i_3_n_5 ),
        .O(timer_cnt_0[23]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \timer_cnt[23]_i_2 
       (.I0(\timer_cnt[23]_i_4_n_0 ),
        .I1(\timer_cnt[23]_i_5_n_0 ),
        .I2(\timer_cnt[23]_i_6_n_0 ),
        .I3(\timer_cnt[23]_i_7_n_0 ),
        .I4(\timer_cnt[23]_i_8_n_0 ),
        .I5(\timer_cnt[23]_i_9_n_0 ),
        .O(timer_done));
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
  LUT4 #(
    .INIT(16'h7FFF)) 
    \timer_cnt[23]_i_9 
       (.I0(timer_cnt[1]),
        .I1(timer_cnt[0]),
        .I2(timer_cnt[3]),
        .I3(timer_cnt[2]),
        .O(\timer_cnt[23]_i_9_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \timer_cnt[2]_i_1 
       (.I0(timer_done),
        .I1(\timer_cnt_reg[4]_i_2_n_6 ),
        .O(timer_cnt_0[2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \timer_cnt[3]_i_1 
       (.I0(timer_done),
        .I1(\timer_cnt_reg[4]_i_2_n_5 ),
        .O(timer_cnt_0[3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \timer_cnt[4]_i_1 
       (.I0(timer_done),
        .I1(\timer_cnt_reg[4]_i_2_n_4 ),
        .O(timer_cnt_0[4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \timer_cnt[5]_i_1 
       (.I0(timer_done),
        .I1(\timer_cnt_reg[8]_i_2_n_7 ),
        .O(timer_cnt_0[5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \timer_cnt[6]_i_1 
       (.I0(timer_done),
        .I1(\timer_cnt_reg[8]_i_2_n_6 ),
        .O(timer_cnt_0[6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \timer_cnt[7]_i_1 
       (.I0(timer_done),
        .I1(\timer_cnt_reg[8]_i_2_n_5 ),
        .O(timer_cnt_0[7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \timer_cnt[8]_i_1 
       (.I0(timer_done),
        .I1(\timer_cnt_reg[8]_i_2_n_4 ),
        .O(timer_cnt_0[8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \timer_cnt[9]_i_1 
       (.I0(timer_done),
        .I1(\timer_cnt_reg[12]_i_2_n_7 ),
        .O(timer_cnt_0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[0] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(op_exec_reg_0),
        .D(timer_cnt_0[0]),
        .Q(timer_cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[10] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(op_exec_reg_0),
        .D(timer_cnt_0[10]),
        .Q(timer_cnt[10]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[11] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(op_exec_reg_0),
        .D(timer_cnt_0[11]),
        .Q(timer_cnt[11]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[12] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(op_exec_reg_0),
        .D(timer_cnt_0[12]),
        .Q(timer_cnt[12]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \timer_cnt_reg[12]_i_2 
       (.CI(\timer_cnt_reg[8]_i_2_n_0 ),
        .CO({\timer_cnt_reg[12]_i_2_n_0 ,\NLW_timer_cnt_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_cnt_reg[12]_i_2_n_4 ,\timer_cnt_reg[12]_i_2_n_5 ,\timer_cnt_reg[12]_i_2_n_6 ,\timer_cnt_reg[12]_i_2_n_7 }),
        .S(timer_cnt[12:9]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[13] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(op_exec_reg_0),
        .D(timer_cnt_0[13]),
        .Q(timer_cnt[13]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[14] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(op_exec_reg_0),
        .D(timer_cnt_0[14]),
        .Q(timer_cnt[14]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[15] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(op_exec_reg_0),
        .D(timer_cnt_0[15]),
        .Q(timer_cnt[15]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[16] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(op_exec_reg_0),
        .D(timer_cnt_0[16]),
        .Q(timer_cnt[16]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \timer_cnt_reg[16]_i_2 
       (.CI(\timer_cnt_reg[12]_i_2_n_0 ),
        .CO({\timer_cnt_reg[16]_i_2_n_0 ,\NLW_timer_cnt_reg[16]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_cnt_reg[16]_i_2_n_4 ,\timer_cnt_reg[16]_i_2_n_5 ,\timer_cnt_reg[16]_i_2_n_6 ,\timer_cnt_reg[16]_i_2_n_7 }),
        .S(timer_cnt[16:13]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[17] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(op_exec_reg_0),
        .D(timer_cnt_0[17]),
        .Q(timer_cnt[17]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[18] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(op_exec_reg_0),
        .D(timer_cnt_0[18]),
        .Q(timer_cnt[18]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[19] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(op_exec_reg_0),
        .D(timer_cnt_0[19]),
        .Q(timer_cnt[19]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[1] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(op_exec_reg_0),
        .D(timer_cnt_0[1]),
        .Q(timer_cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[20] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(op_exec_reg_0),
        .D(timer_cnt_0[20]),
        .Q(timer_cnt[20]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \timer_cnt_reg[20]_i_2 
       (.CI(\timer_cnt_reg[16]_i_2_n_0 ),
        .CO({\timer_cnt_reg[20]_i_2_n_0 ,\NLW_timer_cnt_reg[20]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_cnt_reg[20]_i_2_n_4 ,\timer_cnt_reg[20]_i_2_n_5 ,\timer_cnt_reg[20]_i_2_n_6 ,\timer_cnt_reg[20]_i_2_n_7 }),
        .S(timer_cnt[20:17]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[21] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(op_exec_reg_0),
        .D(timer_cnt_0[21]),
        .Q(timer_cnt[21]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[22] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(op_exec_reg_0),
        .D(timer_cnt_0[22]),
        .Q(timer_cnt[22]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[23] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(op_exec_reg_0),
        .D(timer_cnt_0[23]),
        .Q(timer_cnt[23]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \timer_cnt_reg[23]_i_3 
       (.CI(\timer_cnt_reg[20]_i_2_n_0 ),
        .CO(\NLW_timer_cnt_reg[23]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_timer_cnt_reg[23]_i_3_O_UNCONNECTED [3],\timer_cnt_reg[23]_i_3_n_5 ,\timer_cnt_reg[23]_i_3_n_6 ,\timer_cnt_reg[23]_i_3_n_7 }),
        .S({1'b0,timer_cnt[23:21]}));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[2] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(op_exec_reg_0),
        .D(timer_cnt_0[2]),
        .Q(timer_cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[3] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(op_exec_reg_0),
        .D(timer_cnt_0[3]),
        .Q(timer_cnt[3]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[4] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(op_exec_reg_0),
        .D(timer_cnt_0[4]),
        .Q(timer_cnt[4]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \timer_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\timer_cnt_reg[4]_i_2_n_0 ,\NLW_timer_cnt_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(timer_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_cnt_reg[4]_i_2_n_4 ,\timer_cnt_reg[4]_i_2_n_5 ,\timer_cnt_reg[4]_i_2_n_6 ,\timer_cnt_reg[4]_i_2_n_7 }),
        .S(timer_cnt[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[5] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(op_exec_reg_0),
        .D(timer_cnt_0[5]),
        .Q(timer_cnt[5]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[6] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(op_exec_reg_0),
        .D(timer_cnt_0[6]),
        .Q(timer_cnt[6]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[7] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(op_exec_reg_0),
        .D(timer_cnt_0[7]),
        .Q(timer_cnt[7]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[8] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(op_exec_reg_0),
        .D(timer_cnt_0[8]),
        .Q(timer_cnt[8]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \timer_cnt_reg[8]_i_2 
       (.CI(\timer_cnt_reg[4]_i_2_n_0 ),
        .CO({\timer_cnt_reg[8]_i_2_n_0 ,\NLW_timer_cnt_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_cnt_reg[8]_i_2_n_4 ,\timer_cnt_reg[8]_i_2_n_5 ,\timer_cnt_reg[8]_i_2_n_6 ,\timer_cnt_reg[8]_i_2_n_7 }),
        .S(timer_cnt[8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[9] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(op_exec_reg_0),
        .D(timer_cnt_0[9]),
        .Q(timer_cnt[9]));
  FDCE #(
    .INIT(1'b0)) 
    timer_done_reg
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(op_exec_reg_0),
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
    mdio_dir_reg_0,
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
  input mdio_dir_reg_0;
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
  wire \cnt[1]_i_2__1_n_0 ;
  wire \cnt[2]_i_2__0_n_0 ;
  wire \cnt[2]_i_3_n_0 ;
  wire \cnt[2]_i_4__0_n_0 ;
  wire \cnt[2]_i_5_n_0 ;
  wire \cnt[4]_i_2__1_n_0 ;
  wire \cnt[4]_i_3__1_n_0 ;
  wire \cnt[4]_i_4__1_n_0 ;
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
  wire mdio_dir_i_3_n_0;
  wire mdio_dir_i_4_n_0;
  wire mdio_dir_i_6_n_0;
  wire mdio_dir_i_7_n_0;
  wire mdio_dir_reg_0;
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
        .CLR(mdio_dir_reg_0),
        .D(\addr_t_reg[4]_0 [0]),
        .Q(\addr_t_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_t_reg[4] 
       (.C(dri_clk),
        .CE(op_code),
        .CLR(mdio_dir_reg_0),
        .D(\addr_t_reg[4]_0 [1]),
        .Q(data0));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_cnt[0]_i_1 
       (.I0(clk_cnt[0]),
        .O(\clk_cnt[0]_i_1_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \clk_cnt[3]_i_1 
       (.I0(clk_cnt[2]),
        .I1(clk_cnt[3]),
        .I2(clk_cnt[1]),
        .I3(clk_cnt[0]),
        .O(clk_cnt_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
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
        .CLR(mdio_dir_reg_0),
        .D(\clk_cnt[0]_i_1_n_0 ),
        .Q(clk_cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(mdio_dir_reg_0),
        .D(clk_cnt_0[1]),
        .Q(clk_cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(mdio_dir_reg_0),
        .D(clk_cnt_0[2]),
        .Q(clk_cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(mdio_dir_reg_0),
        .D(clk_cnt_0[3]),
        .Q(clk_cnt[3]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(mdio_dir_reg_0),
        .D(clk_cnt_0[4]),
        .Q(clk_cnt[4]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(mdio_dir_reg_0),
        .D(clk_cnt_0[5]),
        .Q(clk_cnt[5]));
  LUT6 #(
    .INIT(64'h0000FFA80000FFFF)) 
    \cnt[0]_i_1__0 
       (.I0(\cnt[2]_i_3_n_0 ),
        .I1(\cnt[6]_i_4_n_0 ),
        .I2(\cnt[1]_i_2__1_n_0 ),
        .I3(\cnt[2]_i_2__0_n_0 ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(\cur_state[5]_i_3_n_0 ),
        .O(cnt[0]));
  LUT6 #(
    .INIT(64'h0000FFEEFFEA0000)) 
    \cnt[1]_i_1__1 
       (.I0(\cnt[2]_i_2__0_n_0 ),
        .I1(\cnt[2]_i_3_n_0 ),
        .I2(\cnt[1]_i_2__1_n_0 ),
        .I3(\cnt[6]_i_3_n_0 ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\cnt_reg_n_0_[0] ),
        .O(cnt[1]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[1]_i_2__1 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[6] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\cnt[1]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEA00000000FFC0)) 
    \cnt[2]_i_1__1 
       (.I0(\cnt[2]_i_2__0_n_0 ),
        .I1(\cnt[2]_i_3_n_0 ),
        .I2(\cnt[2]_i_4__0_n_0 ),
        .I3(\cnt[6]_i_3_n_0 ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\cnt[2]_i_5_n_0 ),
        .O(cnt[2]));
  LUT3 #(
    .INIT(8'hFE)) 
    \cnt[2]_i_2__0 
       (.I0(cur_state[3]),
        .I1(cur_state[2]),
        .I2(mdio_dir),
        .O(\cnt[2]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \cnt[2]_i_3 
       (.I0(cur_state[4]),
        .I1(cur_state[5]),
        .O(\cnt[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cnt[2]_i_4__0 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[6] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[0] ),
        .O(\cnt[2]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \cnt[2]_i_5 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .O(\cnt[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0EE0E0E0E0E0E0E0)) 
    \cnt[3]_i_1__1 
       (.I0(\cnt[6]_i_2_n_0 ),
        .I1(\cnt[6]_i_3_n_0 ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\cnt_reg_n_0_[0] ),
        .O(cnt[3]));
  LUT6 #(
    .INIT(64'h00FEFE00FE00FE00)) 
    \cnt[4]_i_1__1 
       (.I0(\cnt[6]_i_2_n_0 ),
        .I1(\cnt[4]_i_2__1_n_0 ),
        .I2(\cnt[4]_i_3__1_n_0 ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt[6]_i_5_n_0 ),
        .I5(\cnt_reg_n_0_[3] ),
        .O(cnt[4]));
  LUT5 #(
    .INIT(32'hFFFFFFB8)) 
    \cnt[4]_i_2__1 
       (.I0(cur_state[3]),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(cur_state[2]),
        .I3(\cnt[6]_i_7_n_0 ),
        .I4(\cnt[6]_i_6_n_0 ),
        .O(\cnt[4]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFDFD5)) 
    \cnt[4]_i_3__1 
       (.I0(\cur_state[5]_i_3_n_0 ),
        .I1(cur_state[2]),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(cur_state[3]),
        .I4(\cnt[4]_i_4__1_n_0 ),
        .O(\cnt[4]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \cnt[4]_i_4__1 
       (.I0(cur_state[2]),
        .I1(cur_state[3]),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[5] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(mdio_dir),
        .O(\cnt[4]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'h0EE0E0E0E0E0E0E0)) 
    \cnt[5]_i_1 
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
        .I4(\cnt[1]_i_2__1_n_0 ),
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
        .I5(\cnt[4]_i_3__1_n_0 ),
        .O(\cnt[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \cnt[6]_i_4 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[5] ),
        .O(\cnt[6]_i_4_n_0 ));
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
        .CLR(mdio_dir_reg_0),
        .D(cnt[0]),
        .Q(\cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(mdio_dir_reg_0),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(mdio_dir_reg_0),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(mdio_dir_reg_0),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(mdio_dir_reg_0),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(mdio_dir_reg_0),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(mdio_dir_reg_0),
        .D(cnt[6]),
        .Q(\cnt_reg_n_0_[6] ));
  LUT6 #(
    .INIT(64'hFF5DFF5DFF5D5D5D)) 
    \cur_state[0]_i_1__0 
       (.I0(\cur_state[5]_i_3_n_0 ),
        .I1(cur_state[0]),
        .I2(op_exec),
        .I3(st_done_reg_n_0),
        .I4(cur_state[4]),
        .I5(cur_state[5]),
        .O(next_state[0]));
  LUT5 #(
    .INIT(32'h8800F800)) 
    \cur_state[1]_i_1__1 
       (.I0(op_exec),
        .I1(cur_state[0]),
        .I2(mdio_dir),
        .I3(\cur_state[5]_i_3_n_0 ),
        .I4(st_done_reg_n_0),
        .O(next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    \cur_state[2]_i_1__1 
       (.I0(mdio_dir),
        .I1(cur_state[2]),
        .I2(\cur_state[5]_i_3_n_0 ),
        .I3(st_done_reg_n_0),
        .O(next_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    \cur_state[3]_i_1__1 
       (.I0(cur_state[2]),
        .I1(cur_state[3]),
        .I2(\cur_state[5]_i_3_n_0 ),
        .I3(st_done_reg_n_0),
        .O(next_state[3]));
  LUT6 #(
    .INIT(64'h08080000FF000000)) 
    \cur_state[4]_i_1__1 
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
        .PRE(mdio_dir_reg_0),
        .Q(cur_state[0]));
  (* FSM_ENCODED_STATES = "st_pre:000010,st_start:000100,st_addr:001000,st_wr_data:010000,st_rd_data:100000,st_idle:000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[1] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(mdio_dir_reg_0),
        .D(next_state[1]),
        .Q(mdio_dir));
  (* FSM_ENCODED_STATES = "st_pre:000010,st_start:000100,st_addr:001000,st_wr_data:010000,st_rd_data:100000,st_idle:000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[2] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(mdio_dir_reg_0),
        .D(next_state[2]),
        .Q(cur_state[2]));
  (* FSM_ENCODED_STATES = "st_pre:000010,st_start:000100,st_addr:001000,st_wr_data:010000,st_rd_data:100000,st_idle:000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[3] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(mdio_dir_reg_0),
        .D(next_state[3]),
        .Q(cur_state[3]));
  (* FSM_ENCODED_STATES = "st_pre:000010,st_start:000100,st_addr:001000,st_wr_data:010000,st_rd_data:100000,st_idle:000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[4] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(mdio_dir_reg_0),
        .D(next_state[4]),
        .Q(cur_state[4]));
  (* FSM_ENCODED_STATES = "st_pre:000010,st_start:000100,st_addr:001000,st_wr_data:010000,st_rd_data:100000,st_idle:000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[5] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(mdio_dir_reg_0),
        .D(next_state[5]),
        .Q(cur_state[5]));
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
        .CLR(mdio_dir_reg_0),
        .D(dri_clk_i_1_n_0),
        .Q(dri_clk_reg_0));
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
        .CLR(mdio_dir_reg_0),
        .D(eth_mdc_i_1_n_0),
        .Q(eth_mdc_OBUF));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h5F5F5F4F0A0A0B0A)) 
    mdio_dir_i_2
       (.I0(mdio_dir_i_3_n_0),
        .I1(\cnt[2]_i_3_n_0 ),
        .I2(mdio_dir),
        .I3(cur_state[0]),
        .I4(mdio_dir_i_4_n_0),
        .I5(eth_mdio_TRI),
        .O(mdio_dir_i_1_n_0));
  LUT6 #(
    .INIT(64'h8888000088F80000)) 
    mdio_dir_i_3
       (.I0(mdio_dir_i_6_n_0),
        .I1(mdio_dir_i_7_n_0),
        .I2(\rd_data_t[5]_i_2_n_0 ),
        .I3(st_done_i_4_n_0),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(\cnt[1]_i_2__1_n_0 ),
        .O(mdio_dir_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    mdio_dir_i_4
       (.I0(cur_state[2]),
        .I1(cur_state[3]),
        .O(mdio_dir_i_4_n_0));
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
        .PRE(mdio_dir_reg_0),
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
  LUT5 #(
    .INIT(32'h004F0044)) 
    mdio_out_i_11
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(cur_state[3]),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[6] ),
        .I4(cur_state[2]),
        .O(mdio_out_i_11_n_0));
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
        .I5(\cnt[1]_i_2__1_n_0 ),
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
        .CLR(mdio_dir_reg_0),
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
        .CLR(mdio_dir_reg_0),
        .D(D[0]),
        .Q(\op_code_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_code_reg[1] 
       (.C(dri_clk),
        .CE(op_code),
        .CLR(mdio_dir_reg_0),
        .D(D[1]),
        .Q(\op_code_reg_n_0_[1] ));
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
        .CLR(mdio_dir_reg_0),
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
        .PRE(mdio_dir_reg_0),
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
        .CLR(mdio_dir_reg_0),
        .D(rd_data_t[14]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \op_rd_data_reg[15] 
       (.C(dri_clk),
        .CE(\op_rd_data[15]_i_1_n_0 ),
        .CLR(mdio_dir_reg_0),
        .D(rd_data_t[15]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \op_rd_data_reg[2] 
       (.C(dri_clk),
        .CE(\op_rd_data[15]_i_1_n_0 ),
        .CLR(mdio_dir_reg_0),
        .D(rd_data_t[2]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \op_rd_data_reg[5] 
       (.C(dri_clk),
        .CE(\op_rd_data[15]_i_1_n_0 ),
        .CLR(mdio_dir_reg_0),
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
  LUT2 #(
    .INIT(4'hE)) 
    \rd_data_t[15]_i_5 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[6] ),
        .O(\rd_data_t[15]_i_5_n_0 ));
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
        .CLR(mdio_dir_reg_0),
        .D(\rd_data_t[14]_i_1_n_0 ),
        .Q(rd_data_t[14]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_data_t_reg[15] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(mdio_dir_reg_0),
        .D(\rd_data_t[15]_i_1_n_0 ),
        .Q(rd_data_t[15]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_data_t_reg[2] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(mdio_dir_reg_0),
        .D(\rd_data_t[2]_i_1_n_0 ),
        .Q(rd_data_t[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_data_t_reg[5] 
       (.C(dri_clk),
        .CE(1'b1),
        .CLR(mdio_dir_reg_0),
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
  LUT2 #(
    .INIT(4'hE)) 
    st_done_i_4
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[5] ),
        .O(st_done_i_4_n_0));
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
        .CLR(mdio_dir_reg_0),
        .D(st_done),
        .Q(st_done_reg_n_0));
endmodule

module mdio_rw_test
   (eth_mdc_OBUF,
    dri_clk_reg,
    eth_mdio_OBUF,
    eth_mdio_TRI,
    eth_rst_n_OBUF,
    \phy_speed_reg[1] ,
    dri_clk,
    mdio_dir_reg,
    sys_clk,
    sys_rst_n_IBUF,
    locked,
    eth_mdio_IBUF);
  output eth_mdc_OBUF;
  output dri_clk_reg;
  output eth_mdio_OBUF;
  output eth_mdio_TRI;
  output eth_rst_n_OBUF;
  output [1:0]\phy_speed_reg[1] ;
  input dri_clk;
  input mdio_dir_reg;
  input sys_clk;
  input sys_rst_n_IBUF;
  input locked;
  input eth_mdio_IBUF;

  wire dri_clk;
  wire dri_clk_reg;
  wire eth_mdc_OBUF;
  wire eth_mdio_IBUF;
  wire eth_mdio_OBUF;
  wire eth_mdio_TRI;
  wire eth_rst_n_OBUF;
  wire locked;
  wire mdio_dir_reg;
  wire op_done;
  wire op_exec;
  wire op_rd_ack;
  wire [15:2]op_rd_data;
  wire op_rh_wl;
  wire [0:0]p_0_out;
  wire [1:0]\phy_speed_reg[1] ;
  wire sys_clk;
  wire sys_rst_n_IBUF;
  wire u_mdio_ctrl_n_4;
  wire u_mdio_ctrl_n_5;

  mdio_ctrl u_mdio_ctrl
       (.D({op_rh_wl,p_0_out}),
        .Q({op_rd_data[15:14],op_rd_data[5],op_rd_data[2]}),
        .dri_clk(dri_clk),
        .eth_rst_n_OBUF(eth_rst_n_OBUF),
        .locked(locked),
        .\op_addr_reg[4]_0 ({u_mdio_ctrl_n_4,u_mdio_ctrl_n_5}),
        .op_done(op_done),
        .op_exec(op_exec),
        .op_exec_reg_0(mdio_dir_reg),
        .op_rd_ack(op_rd_ack),
        .\phy_speed_reg[1]_0 (\phy_speed_reg[1] ),
        .sys_rst_n_IBUF(sys_rst_n_IBUF));
  mdio_dri u_mdio_dri
       (.D({op_rh_wl,p_0_out}),
        .Q({op_rd_data[15:14],op_rd_data[5],op_rd_data[2]}),
        .\addr_t_reg[4]_0 ({u_mdio_ctrl_n_4,u_mdio_ctrl_n_5}),
        .dri_clk(dri_clk),
        .dri_clk_reg_0(dri_clk_reg),
        .eth_mdc_OBUF(eth_mdc_OBUF),
        .eth_mdio_IBUF(eth_mdio_IBUF),
        .eth_mdio_OBUF(eth_mdio_OBUF),
        .eth_mdio_TRI(eth_mdio_TRI),
        .mdio_dir_reg_0(mdio_dir_reg),
        .op_done(op_done),
        .op_exec(op_exec),
        .op_rd_ack(op_rd_ack),
        .sys_clk(sys_clk));
endmodule

module rgmii_rx_1000m
   (gmii_rxd,
    u_iddr_rx_ctl_0,
    u_iddr_rx_ctl_1,
    \rxdata_bus[3].u_iddr_rxd_0 ,
    u_iddr_rx_ctl_2,
    skip_en_reg,
    u_iddr_rx_ctl_3,
    \cur_state_reg[3] ,
    u_iddr_rx_ctl_4,
    \eth_type_reg[13] ,
    \rxdata_bus[3].u_iddr_rxd_1 ,
    eth_rxd_IBUF,
    eth_txc_OBUF,
    clk_out1,
    eth_rx_ctl_IBUF,
    skip_en_reg_0,
    error_en_reg,
    \cnt_reg[0] ,
    Q,
    error_en_reg_0,
    error_en_i_5,
    error_en_i_10_0);
  output [7:0]gmii_rxd;
  output u_iddr_rx_ctl_0;
  output u_iddr_rx_ctl_1;
  output \rxdata_bus[3].u_iddr_rxd_0 ;
  output u_iddr_rx_ctl_2;
  output skip_en_reg;
  output u_iddr_rx_ctl_3;
  output \cur_state_reg[3] ;
  output u_iddr_rx_ctl_4;
  output \eth_type_reg[13] ;
  output \rxdata_bus[3].u_iddr_rxd_1 ;
  input [3:0]eth_rxd_IBUF;
  input eth_txc_OBUF;
  input clk_out1;
  input eth_rx_ctl_IBUF;
  input skip_en_reg_0;
  input error_en_reg;
  input \cnt_reg[0] ;
  input [2:0]Q;
  input error_en_reg_0;
  input [3:0]error_en_i_5;
  input [0:0]error_en_i_10_0;

  wire [2:0]Q;
  wire \cnt_reg[0] ;
  wire \cur_state_reg[3] ;
  wire [0:0]error_en_i_10_0;
  wire error_en_i_18_n_0;
  wire error_en_i_19_n_0;
  wire [3:0]error_en_i_5;
  wire error_en_i_7_n_0;
  wire error_en_reg;
  wire error_en_reg_0;
  wire eth_rx_ctl_IBUF;
  wire [3:0]eth_rxd_IBUF;
  wire eth_txc_OBUF;
  wire \eth_type_reg[13] ;
  wire [7:0]gmii_rxd;
  wire rgmii_rxc_bufio;
  wire \rxdata_bus[3].u_iddr_rxd_0 ;
  wire \rxdata_bus[3].u_iddr_rxd_1 ;
  wire skip_en_i_11_n_0;
  wire skip_en_i_6_n_0;
  wire skip_en_reg;
  wire skip_en_reg_0;
  wire u_iddr_rx_ctl_0;
  wire u_iddr_rx_ctl_1;
  wire u_iddr_rx_ctl_2;
  wire u_iddr_rx_ctl_3;
  wire u_iddr_rx_ctl_4;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFIO BUFIO_inst
       (.I(eth_txc_OBUF),
        .O(rgmii_rxc_bufio));
  LUT3 #(
    .INIT(8'h80)) 
    \des_ip_t[31]_i_4 
       (.I0(Q[2]),
        .I1(u_iddr_rx_ctl_1),
        .I2(u_iddr_rx_ctl_0),
        .O(\cur_state_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    error_en_i_10
       (.I0(error_en_i_18_n_0),
        .I1(error_en_i_19_n_0),
        .I2(error_en_i_5[3]),
        .I3(error_en_i_5[0]),
        .I4(error_en_i_5[1]),
        .I5(gmii_rxd[7]),
        .O(\eth_type_reg[13] ));
  LUT3 #(
    .INIT(8'hFB)) 
    error_en_i_18
       (.I0(gmii_rxd[3]),
        .I1(gmii_rxd[2]),
        .I2(gmii_rxd[5]),
        .O(error_en_i_18_n_0));
  LUT4 #(
    .INIT(16'hFFF7)) 
    error_en_i_19
       (.I0(gmii_rxd[1]),
        .I1(error_en_i_10_0),
        .I2(error_en_i_5[2]),
        .I3(gmii_rxd[0]),
        .O(error_en_i_19_n_0));
  LUT6 #(
    .INIT(64'h00000000FFDFEF00)) 
    error_en_i_2
       (.I0(gmii_rxd[7]),
        .I1(error_en_i_7_n_0),
        .I2(skip_en_i_11_n_0),
        .I3(skip_en_reg_0),
        .I4(error_en_reg),
        .I5(u_iddr_rx_ctl_2),
        .O(\rxdata_bus[3].u_iddr_rxd_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    error_en_i_3
       (.I0(u_iddr_rx_ctl_0),
        .I1(u_iddr_rx_ctl_1),
        .I2(Q[2]),
        .I3(error_en_reg_0),
        .O(u_iddr_rx_ctl_3));
  LUT3 #(
    .INIT(8'hDF)) 
    error_en_i_7
       (.I0(gmii_rxd[6]),
        .I1(gmii_rxd[1]),
        .I2(gmii_rxd[4]),
        .O(error_en_i_7_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \rxdata_bus[0].u_iddr_rxd 
       (.C(rgmii_rxc_bufio),
        .CE(1'b1),
        .D(eth_rxd_IBUF[0]),
        .Q1(gmii_rxd[0]),
        .Q2(gmii_rxd[4]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \rxdata_bus[1].u_iddr_rxd 
       (.C(rgmii_rxc_bufio),
        .CE(1'b1),
        .D(eth_rxd_IBUF[1]),
        .Q1(gmii_rxd[1]),
        .Q2(gmii_rxd[5]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \rxdata_bus[2].u_iddr_rxd 
       (.C(rgmii_rxc_bufio),
        .CE(1'b1),
        .D(eth_rxd_IBUF[2]),
        .Q1(gmii_rxd[2]),
        .Q2(gmii_rxd[6]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \rxdata_bus[3].u_iddr_rxd 
       (.C(rgmii_rxc_bufio),
        .CE(1'b1),
        .D(eth_rxd_IBUF[3]),
        .Q1(gmii_rxd[3]),
        .Q2(gmii_rxd[7]),
        .R(1'b0),
        .S(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    skip_en_i_10
       (.I0(u_iddr_rx_ctl_0),
        .I1(u_iddr_rx_ctl_1),
        .O(u_iddr_rx_ctl_4));
  LUT4 #(
    .INIT(16'h0020)) 
    skip_en_i_11
       (.I0(gmii_rxd[0]),
        .I1(gmii_rxd[5]),
        .I2(gmii_rxd[2]),
        .I3(gmii_rxd[3]),
        .O(skip_en_i_11_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    skip_en_i_13
       (.I0(u_iddr_rx_ctl_1),
        .I1(u_iddr_rx_ctl_0),
        .I2(Q[1]),
        .O(u_iddr_rx_ctl_2));
  LUT5 #(
    .INIT(32'h20000000)) 
    skip_en_i_2
       (.I0(skip_en_i_6_n_0),
        .I1(\cnt_reg[0] ),
        .I2(Q[0]),
        .I3(u_iddr_rx_ctl_0),
        .I4(u_iddr_rx_ctl_1),
        .O(skip_en_reg));
  LUT6 #(
    .INIT(64'h04000000FFFFFFFF)) 
    skip_en_i_4__0
       (.I0(gmii_rxd[7]),
        .I1(gmii_rxd[4]),
        .I2(gmii_rxd[1]),
        .I3(gmii_rxd[6]),
        .I4(skip_en_i_11_n_0),
        .I5(skip_en_reg_0),
        .O(\rxdata_bus[3].u_iddr_rxd_1 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    skip_en_i_6
       (.I0(skip_en_i_11_n_0),
        .I1(gmii_rxd[6]),
        .I2(gmii_rxd[1]),
        .I3(gmii_rxd[4]),
        .I4(gmii_rxd[7]),
        .O(skip_en_i_6_n_0));
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
       (.C(rgmii_rxc_bufio),
        .CE(1'b1),
        .D(eth_rx_ctl_IBUF),
        .Q1(u_iddr_rx_ctl_0),
        .Q2(u_iddr_rx_ctl_1),
        .R(1'b0),
        .S(1'b0));
endmodule

module rgmii_tx_1000m
   (rgmii_txd,
    rgmii_tx_ctl,
    CLK,
    gmii_txd,
    gmii_tx_en);
  output [3:0]rgmii_txd;
  output rgmii_tx_ctl;
  input CLK;
  input [7:0]gmii_txd;
  input gmii_tx_en;

  wire CLK;
  wire gmii_tx_en;
  wire [7:0]gmii_txd;
  wire rgmii_tx_ctl;
  wire [3:0]rgmii_txd;
  wire \NLW_txdata_bus[0].u_oddr_tx_R_UNCONNECTED ;
  wire \NLW_txdata_bus[0].u_oddr_tx_S_UNCONNECTED ;
  wire \NLW_txdata_bus[1].u_oddr_tx_R_UNCONNECTED ;
  wire \NLW_txdata_bus[1].u_oddr_tx_S_UNCONNECTED ;
  wire \NLW_txdata_bus[2].u_oddr_tx_R_UNCONNECTED ;
  wire \NLW_txdata_bus[2].u_oddr_tx_S_UNCONNECTED ;
  wire \NLW_txdata_bus[3].u_oddr_tx_R_UNCONNECTED ;
  wire \NLW_txdata_bus[3].u_oddr_tx_S_UNCONNECTED ;
  wire NLW_u_oddr_tx_ctl_R_UNCONNECTED;
  wire NLW_u_oddr_tx_ctl_S_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \txdata_bus[0].u_oddr_tx 
       (.C(CLK),
        .CE(1'b1),
        .D1(gmii_txd[0]),
        .D2(gmii_txd[4]),
        .Q(rgmii_txd[0]),
        .R(\NLW_txdata_bus[0].u_oddr_tx_R_UNCONNECTED ),
        .S(\NLW_txdata_bus[0].u_oddr_tx_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \txdata_bus[1].u_oddr_tx 
       (.C(CLK),
        .CE(1'b1),
        .D1(gmii_txd[1]),
        .D2(gmii_txd[5]),
        .Q(rgmii_txd[1]),
        .R(\NLW_txdata_bus[1].u_oddr_tx_R_UNCONNECTED ),
        .S(\NLW_txdata_bus[1].u_oddr_tx_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \txdata_bus[2].u_oddr_tx 
       (.C(CLK),
        .CE(1'b1),
        .D1(gmii_txd[2]),
        .D2(gmii_txd[6]),
        .Q(rgmii_txd[2]),
        .R(\NLW_txdata_bus[2].u_oddr_tx_R_UNCONNECTED ),
        .S(\NLW_txdata_bus[2].u_oddr_tx_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \txdata_bus[3].u_oddr_tx 
       (.C(CLK),
        .CE(1'b1),
        .D1(gmii_txd[3]),
        .D2(gmii_txd[7]),
        .Q(rgmii_txd[3]),
        .R(\NLW_txdata_bus[3].u_oddr_tx_R_UNCONNECTED ),
        .S(\NLW_txdata_bus[3].u_oddr_tx_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    u_oddr_tx_ctl
       (.C(CLK),
        .CE(1'b1),
        .D1(gmii_tx_en),
        .D2(gmii_tx_en),
        .Q(rgmii_tx_ctl),
        .R(NLW_u_oddr_tx_ctl_R_UNCONNECTED),
        .S(NLW_u_oddr_tx_ctl_S_UNCONNECTED));
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
