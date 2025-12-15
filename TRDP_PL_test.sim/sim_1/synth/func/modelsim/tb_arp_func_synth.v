// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri Dec 20 15:37:57 2024
// Host        : LAPTOP-90OVKT21 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/LYG/Desktop/testV/ARP/ARP.sim/sim_1/synth/func/modelsim/tb_arp_func_synth.v
// Design      : eth_arp_test
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

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
    probe4);
  input clk;
  input [36:0]SL_IPORT_I;
  output [16:0]SL_OPORT_O;
  input [0:3]probe0;
  input [0:7]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;


endmodule

module arp
   (Q,
    reset,
    arp_rx_done,
    arp_rx_type,
    gmii_tx_en,
    CLK,
    gmii_rxd,
    gmii_rx_dv,
    \crc_data_reg[31] ,
    D,
    arp_tx_type,
    rst_n);
  output [7:0]Q;
  output reset;
  output arp_rx_done;
  output arp_rx_type;
  output gmii_tx_en;
  input CLK;
  input [7:0]gmii_rxd;
  input gmii_rx_dv;
  input \crc_data_reg[31] ;
  input [0:0]D;
  input arp_tx_type;
  input rst_n;

  wire CLK;
  wire [0:0]D;
  wire [7:0]Q;
  wire arp_data;
  wire arp_rx_done;
  wire arp_rx_type;
  wire arp_tx_type;
  wire [31:0]crc_data;
  wire \crc_data_reg[31] ;
  wire [31:0]des_ip;
  wire [47:0]des_mac;
  wire eth_head;
  wire gmii_rx_dv;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire [31:0]p_1_in;
  wire reset;
  wire rst_n;
  wire u_arp_tx_n_0;
  wire u_arp_tx_n_15;
  wire u_arp_tx_n_2;
  wire u_arp_tx_n_3;
  wire u_arp_tx_n_4;
  wire u_arp_tx_n_46;
  wire u_arp_tx_n_47;
  wire u_arp_tx_n_5;
  wire u_arp_tx_n_6;
  wire u_crc32_d8_n_0;
  wire u_crc32_d8_n_32;
  wire u_crc32_d8_n_33;
  wire u_crc32_d8_n_34;
  wire u_crc32_d8_n_35;
  wire u_crc32_d8_n_36;
  wire u_crc32_d8_n_37;
  wire u_crc32_d8_n_38;
  wire u_crc32_d8_n_39;
  wire u_crc32_d8_n_40;
  wire u_crc32_d8_n_41;
  wire u_crc32_d8_n_42;
  wire u_crc32_d8_n_43;
  wire u_crc32_d8_n_44;
  wire u_crc32_d8_n_45;
  wire u_crc32_d8_n_46;
  wire u_crc32_d8_n_47;
  wire u_crc32_d8_n_48;

  arp_rx u_arp_rx
       (.CLK(CLK),
        .E(eth_head),
        .arp_rx_done(arp_rx_done),
        .arp_rx_type(arp_rx_type),
        .\eth_head_reg[5][7] (u_arp_tx_n_6),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rxd(gmii_rxd),
        .rst_n(rst_n),
        .src_ip(des_ip),
        .src_mac(des_mac),
        .sys_rst_n(reset),
        .\tx_en_delay_reg[2] (arp_data));
  arp_tx u_arp_tx
       (.D({p_1_in[31:28],p_1_in[26:10],p_1_in[8:0]}),
        .E(u_arp_tx_n_5),
        .Q({u_arp_tx_n_2,u_arp_tx_n_3}),
        .\arp_data_reg[27][7]_0 (arp_data),
        .arp_tx_type(arp_tx_type),
        .\cnt_reg[4]_0 (u_arp_tx_n_4),
        .\crc_data_reg[11] (u_crc32_d8_n_45),
        .\crc_data_reg[12] (u_crc32_d8_n_48),
        .\crc_data_reg[13] (u_crc32_d8_n_39),
        .\crc_data_reg[13]_0 (u_crc32_d8_n_44),
        .\crc_data_reg[15] (u_crc32_d8_n_33),
        .\crc_data_reg[17] (u_crc32_d8_n_46),
        .\crc_data_reg[18] (u_crc32_d8_n_0),
        .\crc_data_reg[19] ({crc_data[31:5],crc_data[3:0]}),
        .\crc_data_reg[24] (u_crc32_d8_n_40),
        .\crc_data_reg[28] (u_crc32_d8_n_38),
        .\crc_data_reg[2] (u_crc32_d8_n_32),
        .\crc_data_reg[3] (u_crc32_d8_n_42),
        .\crc_data_reg[4] (u_crc32_d8_n_43),
        .\crc_data_reg[7] (u_crc32_d8_n_47),
        .crc_en_reg_0(\crc_data_reg[31] ),
        .\eth_head_reg[5][7]_0 (eth_head),
        .gmii_tx_en(gmii_tx_en),
        .\gmii_txd_reg[0]_0 (u_arp_tx_n_15),
        .\gmii_txd_reg[1]_0 (u_arp_tx_n_46),
        .\gmii_txd_reg[2]_0 (u_arp_tx_n_47),
        .\gmii_txd_reg[2]_1 (u_crc32_d8_n_41),
        .\gmii_txd_reg[3]_0 (u_crc32_d8_n_34),
        .\gmii_txd_reg[4]_0 (u_crc32_d8_n_35),
        .\gmii_txd_reg[5]_0 (u_crc32_d8_n_36),
        .\gmii_txd_reg[6]_0 (u_crc32_d8_n_37),
        .\gmii_txd_reg[7]_0 (Q),
        .\gmii_txd_reg[7]_1 (reset),
        .src_ip(des_ip),
        .src_mac(des_mac),
        .tx_done_reg_0(u_arp_tx_n_0),
        .\tx_en_delay_reg[0]_0 (D),
        .\tx_en_delay_reg[2]_0 (u_arp_tx_n_6));
  crc32_d8 u_crc32_d8
       (.D({p_1_in[31:28],p_1_in[26:10],p_1_in[8:0]}),
        .E(u_arp_tx_n_5),
        .Q({crc_data[31:5],crc_data[3:0]}),
        .\crc_data_reg[12]_0 (u_arp_tx_n_47),
        .\crc_data_reg[13]_0 (u_arp_tx_n_46),
        .\crc_data_reg[17]_0 (u_crc32_d8_n_37),
        .\crc_data_reg[18]_0 (u_crc32_d8_n_36),
        .\crc_data_reg[19]_0 (u_crc32_d8_n_35),
        .\crc_data_reg[25]_0 (u_crc32_d8_n_32),
        .\crc_data_reg[25]_1 (u_crc32_d8_n_40),
        .\crc_data_reg[25]_2 (u_crc32_d8_n_44),
        .\crc_data_reg[26]_0 (u_crc32_d8_n_38),
        .\crc_data_reg[27]_0 (u_crc32_d8_n_39),
        .\crc_data_reg[27]_1 (u_crc32_d8_n_41),
        .\crc_data_reg[27]_2 (u_crc32_d8_n_45),
        .\crc_data_reg[27]_3 (u_arp_tx_n_0),
        .\crc_data_reg[29]_0 (u_crc32_d8_n_33),
        .\crc_data_reg[29]_1 (u_crc32_d8_n_46),
        .\crc_data_reg[30]_0 (u_crc32_d8_n_0),
        .\crc_data_reg[31]_0 (u_crc32_d8_n_42),
        .\crc_data_reg[31]_1 (\crc_data_reg[31] ),
        .\crc_data_reg[31]_2 (reset),
        .\crc_data_reg[4]_0 (u_crc32_d8_n_34),
        .\crc_data_reg[4]_1 (u_crc32_d8_n_48),
        .\crc_data_reg[7]_0 (Q),
        .\gmii_txd[2]_i_4 (u_arp_tx_n_15),
        .\gmii_txd_reg[2] (u_crc32_d8_n_47),
        .\gmii_txd_reg[3] ({u_arp_tx_n_2,u_arp_tx_n_3}),
        .\gmii_txd_reg[3]_0 (u_arp_tx_n_4),
        .\gmii_txd_reg[5] (u_crc32_d8_n_43));
endmodule

module arp_ctrl
   (clk,
    rst_n,
    touch_key,
    arp_rx_done,
    arp_rx_type,
    arp_tx_en,
    arp_tx_type);
  input clk;
  input rst_n;
  input touch_key;
  input arp_rx_done;
  input arp_rx_type;
  output arp_tx_en;
  output arp_tx_type;

  wire arp_rx_done;
  wire arp_rx_type;
  wire arp_tx_en;
  wire arp_tx_en_i_1_n_0;
  wire arp_tx_en_i_2_n_0;
  wire arp_tx_type;
  wire arp_tx_type_i_1_n_0;
  wire clk;
  wire p_0_in2_in;
  wire rst_n;
  wire touch_key;
  wire \touch_key_delay_reg_n_0_[0] ;
  wire \touch_key_delay_reg_n_0_[2] ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    arp_tx_en_i_1
       (.I0(\touch_key_delay_reg_n_0_[2] ),
        .I1(p_0_in2_in),
        .I2(arp_rx_type),
        .I3(arp_rx_done),
        .O(arp_tx_en_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    arp_tx_en_i_2
       (.I0(rst_n),
        .O(arp_tx_en_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    arp_tx_en_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(arp_tx_en_i_2_n_0),
        .D(arp_tx_en_i_1_n_0),
        .Q(arp_tx_en));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
       (.C(clk),
        .CE(1'b1),
        .CLR(arp_tx_en_i_2_n_0),
        .D(arp_tx_type_i_1_n_0),
        .Q(arp_tx_type));
  FDCE #(
    .INIT(1'b0)) 
    \touch_key_delay_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(arp_tx_en_i_2_n_0),
        .D(touch_key),
        .Q(\touch_key_delay_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \touch_key_delay_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(arp_tx_en_i_2_n_0),
        .D(\touch_key_delay_reg_n_0_[0] ),
        .Q(p_0_in2_in));
  FDCE #(
    .INIT(1'b0)) 
    \touch_key_delay_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(arp_tx_en_i_2_n_0),
        .D(p_0_in2_in),
        .Q(\touch_key_delay_reg_n_0_[2] ));
endmodule

module arp_rx
   (E,
    src_mac,
    \tx_en_delay_reg[2] ,
    src_ip,
    sys_rst_n,
    arp_rx_done,
    arp_rx_type,
    \eth_head_reg[5][7] ,
    rst_n,
    CLK,
    gmii_rxd,
    gmii_rx_dv);
  output [0:0]E;
  output [47:0]src_mac;
  output [0:0]\tx_en_delay_reg[2] ;
  output [31:0]src_ip;
  output sys_rst_n;
  output arp_rx_done;
  output arp_rx_type;
  input \eth_head_reg[5][7] ;
  input rst_n;
  input CLK;
  input [7:0]gmii_rxd;
  input gmii_rx_dv;

  wire CLK;
  wire [0:0]E;
  wire \arp_data[27][7]_i_2_n_0 ;
  wire \arp_data[27][7]_i_3_n_0 ;
  wire \arp_data[27][7]_i_4_n_0 ;
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
  wire arp_rx_done_i_15_n_0;
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
  wire arp_rx_type_i_1_n_0;
  wire [4:0]cnt;
  wire \cnt[0]_i_2_n_0 ;
  wire \cnt[0]_i_3_n_0 ;
  wire \cnt[1]_i_2_n_0 ;
  wire \cnt[1]_i_3_n_0 ;
  wire \cnt[3]_i_2_n_0 ;
  wire \cnt[4]_i_1_n_0 ;
  wire \cnt[4]_i_3_n_0 ;
  wire \cnt[4]_i_4_n_0 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire [4:0]cur_state;
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
  wire \des_mac_t[47]_i_10_n_0 ;
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
  wire error_en_i_3_n_0;
  wire error_en_i_4_n_0;
  wire error_en_i_5_n_0;
  wire error_en_i_6_n_0;
  wire error_en_i_7_n_0;
  wire error_en_i_8_n_0;
  wire error_en_i_9_n_0;
  wire error_en_reg_n_0;
  wire \eth_head[5][7]_i_10_n_0 ;
  wire \eth_head[5][7]_i_11_n_0 ;
  wire \eth_head[5][7]_i_12_n_0 ;
  wire \eth_head[5][7]_i_13_n_0 ;
  wire \eth_head[5][7]_i_14_n_0 ;
  wire \eth_head[5][7]_i_3_n_0 ;
  wire \eth_head[5][7]_i_4_n_0 ;
  wire \eth_head[5][7]_i_5_n_0 ;
  wire \eth_head[5][7]_i_6_n_0 ;
  wire \eth_head[5][7]_i_7_n_0 ;
  wire \eth_head[5][7]_i_8_n_0 ;
  wire \eth_head[5][7]_i_9_n_0 ;
  wire \eth_head_reg[5][7] ;
  wire [8:8]eth_type;
  wire \eth_type[15]_i_2_n_0 ;
  wire gmii_rx_dv;
  wire [7:0]gmii_rxd;
  wire [47:8]in17;
  wire [4:0]next_state;
  wire [15:0]op_data;
  wire \op_data[15]_i_2_n_0 ;
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
  wire rst_n;
  wire skip_en;
  wire skip_en_i_10_n_0;
  wire skip_en_i_11_n_0;
  wire skip_en_i_2_n_0;
  wire skip_en_i_3_n_0;
  wire skip_en_i_4_n_0;
  wire skip_en_i_5_n_0;
  wire skip_en_i_6_n_0;
  wire skip_en_i_7_n_0;
  wire skip_en_i_8_n_0;
  wire skip_en_i_9_n_0;
  wire skip_en_reg_n_0;
  wire [31:0]src_ip;
  wire \src_ip[31]_i_1_n_0 ;
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
  wire [47:0]src_mac;
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
  wire [0:0]\tx_en_delay_reg[2] ;

  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \arp_data[27][7]_i_1 
       (.I0(\eth_head_reg[5][7] ),
        .I1(\arp_data[27][7]_i_2_n_0 ),
        .I2(\arp_data[27][7]_i_3_n_0 ),
        .I3(\arp_data[27][7]_i_4_n_0 ),
        .I4(\arp_data[27][7]_i_5_n_0 ),
        .O(\tx_en_delay_reg[2] ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \arp_data[27][7]_i_2 
       (.I0(src_ip[17]),
        .I1(src_ip[23]),
        .I2(src_ip[10]),
        .I3(src_ip[12]),
        .I4(\arp_data[27][7]_i_6_n_0 ),
        .O(\arp_data[27][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \arp_data[27][7]_i_3 
       (.I0(src_ip[0]),
        .I1(src_ip[31]),
        .I2(src_ip[2]),
        .I3(src_ip[28]),
        .I4(\arp_data[27][7]_i_7_n_0 ),
        .O(\arp_data[27][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \arp_data[27][7]_i_4 
       (.I0(src_ip[9]),
        .I1(src_ip[14]),
        .I2(src_ip[21]),
        .I3(src_ip[30]),
        .I4(\arp_data[27][7]_i_8_n_0 ),
        .O(\arp_data[27][7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \arp_data[27][7]_i_5 
       (.I0(src_ip[16]),
        .I1(src_ip[22]),
        .I2(src_ip[3]),
        .I3(src_ip[29]),
        .I4(\arp_data[27][7]_i_9_n_0 ),
        .O(\arp_data[27][7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \arp_data[27][7]_i_6 
       (.I0(src_ip[24]),
        .I1(src_ip[6]),
        .I2(src_ip[27]),
        .I3(src_ip[5]),
        .O(\arp_data[27][7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \arp_data[27][7]_i_7 
       (.I0(src_ip[13]),
        .I1(src_ip[11]),
        .I2(src_ip[26]),
        .I3(src_ip[7]),
        .O(\arp_data[27][7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \arp_data[27][7]_i_8 
       (.I0(src_ip[20]),
        .I1(src_ip[18]),
        .I2(src_ip[25]),
        .I3(src_ip[1]),
        .O(\arp_data[27][7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \arp_data[27][7]_i_9 
       (.I0(src_ip[19]),
        .I1(src_ip[4]),
        .I2(src_ip[15]),
        .I3(src_ip[8]),
        .O(\arp_data[27][7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    arp_rx_done_i_1
       (.I0(arp_rx_done_i_2_n_0),
        .I1(arp_rx_done_i_3_n_0),
        .I2(arp_rx_done_i_4_n_0),
        .I3(arp_rx_done_i_5_n_0),
        .I4(arp_rx_done_i_6_n_0),
        .I5(arp_rx_done_i_7_n_0),
        .O(arp_rx_done_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    arp_rx_done_i_10
       (.I0(p_0_in[27]),
        .I1(p_0_in[17]),
        .I2(p_0_in[11]),
        .I3(p_0_in[26]),
        .O(arp_rx_done_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    arp_rx_done_i_11
       (.I0(\des_ip_t_reg_n_0_[31] ),
        .I1(p_0_in[15]),
        .I2(\des_ip_t_reg_n_0_[25] ),
        .I3(p_0_in[21]),
        .O(arp_rx_done_i_11_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    arp_rx_done_i_12
       (.I0(p_0_in[13]),
        .I1(p_0_in[19]),
        .I2(p_0_in[29]),
        .I3(\des_ip_t_reg_n_0_[26] ),
        .O(arp_rx_done_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    arp_rx_done_i_13
       (.I0(\des_ip_t_reg_n_0_[30] ),
        .I1(p_0_in[8]),
        .I2(p_0_in[25]),
        .I3(p_0_in[23]),
        .O(arp_rx_done_i_13_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    arp_rx_done_i_14
       (.I0(\op_data_reg_n_0_[2] ),
        .I1(\op_data_reg_n_0_[12] ),
        .I2(\op_data_reg_n_0_[13] ),
        .I3(\op_data_reg_n_0_[3] ),
        .O(arp_rx_done_i_14_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    arp_rx_done_i_15
       (.I0(\op_data_reg_n_0_[7] ),
        .I1(\op_data_reg_n_0_[6] ),
        .I2(\op_data_reg_n_0_[9] ),
        .I3(\op_data_reg_n_0_[11] ),
        .I4(\op_data_reg_n_0_[14] ),
        .I5(\op_data_reg_n_0_[10] ),
        .O(arp_rx_done_i_15_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    arp_rx_done_i_2
       (.I0(arp_rx_done_i_8_n_0),
        .I1(arp_rx_done_i_9_n_0),
        .I2(\des_ip_t_reg_n_0_[29] ),
        .I3(p_0_in[16]),
        .I4(p_0_in[30]),
        .I5(p_0_in[24]),
        .O(arp_rx_done_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    arp_rx_done_i_3
       (.I0(arp_rx_done_i_10_n_0),
        .I1(arp_rx_done_i_11_n_0),
        .I2(arp_rx_done_i_12_n_0),
        .I3(arp_rx_done_i_13_n_0),
        .O(arp_rx_done_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF9F)) 
    arp_rx_done_i_4
       (.I0(\op_data_reg_n_0_[1] ),
        .I1(\op_data_reg_n_0_[0] ),
        .I2(p_0_in[9]),
        .I3(p_0_in[18]),
        .I4(p_0_in[28]),
        .I5(arp_rx_done_i_14_n_0),
        .O(arp_rx_done_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    arp_rx_done_i_5
       (.I0(\op_data_reg_n_0_[8] ),
        .I1(\op_data_reg_n_0_[4] ),
        .I2(\op_data_reg_n_0_[5] ),
        .I3(arp_rx_done_i_15_n_0),
        .O(arp_rx_done_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFF7FFFF)) 
    arp_rx_done_i_6
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\cnt_reg_n_0_[4] ),
        .O(arp_rx_done_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hBFBEBEBE)) 
    arp_rx_done_i_7
       (.I0(\op_data[15]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(arp_rx_done_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    arp_rx_done_i_8
       (.I0(\op_data_reg_n_0_[15] ),
        .I1(p_0_in[12]),
        .I2(p_0_in[22]),
        .I3(\des_ip_t_reg_n_0_[27] ),
        .I4(\des_ip_t_reg_n_0_[28] ),
        .I5(p_0_in[31]),
        .O(arp_rx_done_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    arp_rx_done_i_9
       (.I0(p_0_in[14]),
        .I1(\des_ip_t_reg_n_0_[24] ),
        .I2(p_0_in[10]),
        .I3(p_0_in[20]),
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
       (.I0(arp_rx_done_i_5_n_0),
        .I1(\op_data_reg_n_0_[15] ),
        .I2(\op_data_reg_n_0_[0] ),
        .I3(\op_data_reg_n_0_[1] ),
        .I4(arp_rx_done_i_14_n_0),
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
    .INIT(64'hAAAAAAAAFFFFFBBB)) 
    \cnt[0]_i_1 
       (.I0(cur_state[0]),
        .I1(\cnt[0]_i_2_n_0 ),
        .I2(cur_state[1]),
        .I3(\cnt[0]_i_3_n_0 ),
        .I4(cur_state[2]),
        .I5(\cnt_reg_n_0_[0] ),
        .O(cnt[0]));
  LUT6 #(
    .INIT(64'h555D555555555555)) 
    \cnt[0]_i_2 
       (.I0(cur_state[3]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\cnt_reg_n_0_[3] ),
        .O(\cnt[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \cnt[0]_i_3 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\cnt[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h66606666)) 
    \cnt[1]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(cur_state[3]),
        .I3(\cnt[1]_i_2_n_0 ),
        .I4(\cnt[1]_i_3_n_0 ),
        .O(cnt[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAA8AAAAAAA)) 
    \cnt[1]_i_2 
       (.I0(cur_state[2]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(\cnt_reg_n_0_[1] ),
        .O(\cnt[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555D55)) 
    \cnt[1]_i_3 
       (.I0(cur_state[1]),
        .I1(skip_en_i_2_n_0),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(\cnt_reg_n_0_[4] ),
        .O(\cnt[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \cnt[2]_i_1 
       (.I0(\cnt[3]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cnt[3]_i_1 
       (.I0(\cnt[3]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(cnt[3]));
  LUT5 #(
    .INIT(32'hFFFFE0FF)) 
    \cnt[3]_i_2 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt[0]_i_3_n_0 ),
        .I2(cur_state[1]),
        .I3(\cnt[0]_i_2_n_0 ),
        .I4(\cnt[1]_i_2_n_0 ),
        .O(\cnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \cnt[4]_i_1 
       (.I0(\cnt[4]_i_3_n_0 ),
        .I1(cur_state[3]),
        .I2(cur_state[4]),
        .I3(cur_state[1]),
        .I4(cur_state[2]),
        .I5(skip_en_i_5_n_0),
        .O(\cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \cnt[4]_i_2 
       (.I0(\cnt[4]_i_4_n_0 ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\cnt_reg_n_0_[4] ),
        .O(cnt[4]));
  LUT6 #(
    .INIT(64'h0001000001120010)) 
    \cnt[4]_i_3 
       (.I0(cur_state[1]),
        .I1(cur_state[0]),
        .I2(cur_state[4]),
        .I3(cur_state[2]),
        .I4(gmii_rx_dv),
        .I5(cur_state[3]),
        .O(\cnt[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFD55515)) 
    \cnt[4]_i_4 
       (.I0(\cnt[0]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(skip_en_i_8_n_0),
        .I4(cur_state[2]),
        .I5(cur_state[1]),
        .O(\cnt[4]_i_4_n_0 ));
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
        .Q(\cnt_reg_n_0_[3] ));
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
       (.I0(cur_state[0]),
        .I1(skip_en_reg_n_0),
        .I2(cur_state[4]),
        .I3(\cur_state[4]_i_3_n_0 ),
        .O(next_state[0]));
  LUT5 #(
    .INIT(32'hAA080008)) 
    \cur_state[1]_i_1 
       (.I0(\cur_state[4]_i_3_n_0 ),
        .I1(cur_state[1]),
        .I2(error_en_reg_n_0),
        .I3(skip_en_reg_n_0),
        .I4(cur_state[0]),
        .O(next_state[1]));
  LUT5 #(
    .INIT(32'hA2A00200)) 
    \cur_state[2]_i_1 
       (.I0(\cur_state[4]_i_3_n_0 ),
        .I1(error_en_reg_n_0),
        .I2(skip_en_reg_n_0),
        .I3(cur_state[2]),
        .I4(cur_state[1]),
        .O(next_state[2]));
  LUT5 #(
    .INIT(32'hAA080008)) 
    \cur_state[3]_i_1 
       (.I0(\cur_state[4]_i_3_n_0 ),
        .I1(cur_state[3]),
        .I2(error_en_reg_n_0),
        .I3(skip_en_reg_n_0),
        .I4(cur_state[2]),
        .O(next_state[3]));
  LUT6 #(
    .INIT(64'hAAA80808AAA80A08)) 
    \cur_state[4]_i_1 
       (.I0(\cur_state[4]_i_3_n_0 ),
        .I1(cur_state[4]),
        .I2(skip_en_reg_n_0),
        .I3(error_en_reg_n_0),
        .I4(cur_state[3]),
        .I5(\cur_state[4]_i_4_n_0 ),
        .O(next_state[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \cur_state[4]_i_2__0 
       (.I0(rst_n),
        .O(sys_rst_n));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00010116)) 
    \cur_state[4]_i_3 
       (.I0(cur_state[0]),
        .I1(cur_state[1]),
        .I2(cur_state[2]),
        .I3(cur_state[3]),
        .I4(cur_state[4]),
        .O(\cur_state[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cur_state[4]_i_4 
       (.I0(cur_state[2]),
        .I1(cur_state[1]),
        .O(\cur_state[4]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "st_preamble:00010,st_eth_head:00100,st_arp_data:01000,st_rx_end:10000,st_idle:00001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \cur_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(next_state[0]),
        .PRE(sys_rst_n),
        .Q(cur_state[0]));
  (* FSM_ENCODED_STATES = "st_preamble:00010,st_eth_head:00100,st_arp_data:01000,st_rx_end:10000,st_idle:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(sys_rst_n),
        .D(next_state[1]),
        .Q(cur_state[1]));
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
        .Q(cur_state[3]));
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
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[10]_i_1 
       (.I0(p_0_in[10]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[11]_i_1 
       (.I0(p_0_in[11]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[12]_i_1 
       (.I0(p_0_in[12]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[13]_i_1 
       (.I0(p_0_in[13]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[14]_i_1 
       (.I0(p_0_in[14]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[15]_i_1 
       (.I0(p_0_in[15]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[16]_i_1 
       (.I0(p_0_in[16]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[17]_i_1 
       (.I0(p_0_in[17]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[18]_i_1 
       (.I0(p_0_in[18]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[19]_i_1 
       (.I0(p_0_in[19]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[1]_i_1 
       (.I0(gmii_rxd[1]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[20]_i_1 
       (.I0(p_0_in[20]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[21]_i_1 
       (.I0(p_0_in[21]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[22]_i_1 
       (.I0(p_0_in[22]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[23]_i_1 
       (.I0(p_0_in[23]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[24]_i_1 
       (.I0(p_0_in[24]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[25]_i_1 
       (.I0(p_0_in[25]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[26]_i_1 
       (.I0(p_0_in[26]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[27]_i_1 
       (.I0(p_0_in[27]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[28]_i_1 
       (.I0(p_0_in[28]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[29]_i_1 
       (.I0(p_0_in[29]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[2]_i_1 
       (.I0(gmii_rxd[2]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[30]_i_1 
       (.I0(p_0_in[30]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000200230023002)) 
    \des_ip_t[31]_i_1 
       (.I0(\des_mac_t[47]_i_5_n_0 ),
        .I1(\op_data[15]_i_2_n_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\cnt_reg_n_0_[2] ),
        .O(des_ip_t));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[31]_i_2 
       (.I0(p_0_in[31]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[3]_i_1 
       (.I0(gmii_rxd[3]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[4]_i_1 
       (.I0(gmii_rxd[4]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[5]_i_1 
       (.I0(gmii_rxd[5]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[6]_i_1 
       (.I0(gmii_rxd[6]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[7]_i_1 
       (.I0(gmii_rxd[7]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[8]_i_1 
       (.I0(p_0_in[8]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_ip_t[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \des_ip_t[9]_i_1 
       (.I0(p_0_in[9]),
        .I1(\cnt_reg_n_0_[3] ),
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
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[0]_i_1 
       (.I0(gmii_rxd[0]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[10]_i_1 
       (.I0(in17[10]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[10]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[11]_i_1 
       (.I0(in17[11]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[11]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[12]_i_1 
       (.I0(in17[12]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[12]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[13]_i_1 
       (.I0(in17[13]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[13]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[14]_i_1 
       (.I0(in17[14]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[14]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[15]_i_1 
       (.I0(in17[15]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[15]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[16]_i_1 
       (.I0(in17[16]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[16]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[17]_i_1 
       (.I0(in17[17]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[17]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[18]_i_1 
       (.I0(in17[18]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[18]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[19]_i_1 
       (.I0(in17[19]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[19]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[1]_i_1 
       (.I0(gmii_rxd[1]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[20]_i_1 
       (.I0(in17[20]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[20]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[21]_i_1 
       (.I0(in17[21]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[21]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[22]_i_1 
       (.I0(in17[22]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[22]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[23]_i_1 
       (.I0(in17[23]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[23]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[24]_i_1 
       (.I0(in17[24]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[24]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[25]_i_1 
       (.I0(in17[25]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[25]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[26]_i_1 
       (.I0(in17[26]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[26]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[27]_i_1 
       (.I0(in17[27]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[27]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[28]_i_1 
       (.I0(in17[28]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[28]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[29]_i_1 
       (.I0(in17[29]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[29]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[2]_i_1 
       (.I0(gmii_rxd[2]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[30]_i_1 
       (.I0(in17[30]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[30]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[31]_i_1 
       (.I0(in17[31]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[31]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[32]_i_1 
       (.I0(in17[32]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[32]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[33]_i_1 
       (.I0(in17[33]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[33]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[34]_i_1 
       (.I0(in17[34]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[34]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[35]_i_1 
       (.I0(in17[35]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[35]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[36]_i_1 
       (.I0(in17[36]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[36]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[37]_i_1 
       (.I0(in17[37]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[37]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[38]_i_1 
       (.I0(in17[38]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[38]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[39]_i_1 
       (.I0(in17[39]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[39]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[3]_i_1 
       (.I0(gmii_rxd[3]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[40]_i_1 
       (.I0(in17[40]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[40]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[41]_i_1 
       (.I0(in17[41]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[41]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[42]_i_1 
       (.I0(in17[42]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[42]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[43]_i_1 
       (.I0(in17[43]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[43]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[44]_i_1 
       (.I0(in17[44]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[44]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[45]_i_1 
       (.I0(in17[45]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[45]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[46]_i_1 
       (.I0(in17[46]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[46]));
  LUT6 #(
    .INIT(64'h8880FFFF88808880)) 
    \des_mac_t[47]_i_1 
       (.I0(\des_mac_t[47]_i_3_n_0 ),
        .I1(\des_mac_t[47]_i_4_n_0 ),
        .I2(\des_mac_t[47]_i_5_n_0 ),
        .I3(\des_mac_t[47]_i_6_n_0 ),
        .I4(\des_mac_t[47]_i_7_n_0 ),
        .I5(\des_mac_t[47]_i_8_n_0 ),
        .O(\des_mac_t[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \des_mac_t[47]_i_10 
       (.I0(p_0_in[21]),
        .I1(\des_ip_t_reg_n_0_[25] ),
        .I2(p_0_in[15]),
        .I3(\des_ip_t_reg_n_0_[31] ),
        .I4(arp_rx_done_i_10_n_0),
        .O(\des_mac_t[47]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[47]_i_2 
       (.I0(in17[47]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[47]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000FFF7)) 
    \des_mac_t[47]_i_3 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\op_data[15]_i_2_n_0 ),
        .O(\des_mac_t[47]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hBBB9)) 
    \des_mac_t[47]_i_4 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_mac_t[47]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \des_mac_t[47]_i_5 
       (.I0(arp_rx_done_i_6_n_0),
        .I1(arp_rx_done_i_5_n_0),
        .I2(arp_rx_done_i_4_n_0),
        .I3(\des_mac_t[47]_i_9_n_0 ),
        .I4(\des_mac_t[47]_i_10_n_0 ),
        .I5(arp_rx_done_i_2_n_0),
        .O(\des_mac_t[47]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2220)) 
    \des_mac_t[47]_i_6 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_mac_t[47]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    \des_mac_t[47]_i_7 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\des_mac_t[47]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \des_mac_t[47]_i_8 
       (.I0(gmii_rx_dv),
        .I1(cur_state[4]),
        .I2(cur_state[3]),
        .I3(cur_state[0]),
        .I4(cur_state[1]),
        .I5(cur_state[2]),
        .O(\des_mac_t[47]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \des_mac_t[47]_i_9 
       (.I0(p_0_in[23]),
        .I1(p_0_in[25]),
        .I2(p_0_in[8]),
        .I3(\des_ip_t_reg_n_0_[30] ),
        .I4(arp_rx_done_i_12_n_0),
        .O(\des_mac_t[47]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[4]_i_1 
       (.I0(gmii_rxd[4]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[5]_i_1 
       (.I0(gmii_rxd[5]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[6]_i_1 
       (.I0(gmii_rxd[6]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[7]_i_1 
       (.I0(gmii_rxd[7]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[7]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[8]_i_1 
       (.I0(in17[8]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(cur_state[2]),
        .O(des_mac_t[8]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08080800)) 
    \des_mac_t[9]_i_1 
       (.I0(in17[9]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
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
    .INIT(64'h8A8A8A8A88888A88)) 
    error_en_i_1
       (.I0(\cur_state[4]_i_3_n_0 ),
        .I1(error_en_i_2_n_0),
        .I2(error_en_i_3_n_0),
        .I3(error_en_i_4_n_0),
        .I4(error_en_i_5_n_0),
        .I5(\cnt_reg_n_0_[3] ),
        .O(error_en));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    error_en_i_10
       (.I0(error_en_i_26_n_0),
        .I1(in17[17]),
        .I2(in17[45]),
        .I3(in17[47]),
        .I4(in17[44]),
        .O(error_en_i_10_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    error_en_i_11
       (.I0(in17[18]),
        .I1(\des_mac_t_reg_n_0_[46] ),
        .I2(in17[42]),
        .I3(in17[12]),
        .I4(error_en_i_27_n_0),
        .O(error_en_i_11_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    error_en_i_12
       (.I0(in17[37]),
        .I1(in17[20]),
        .I2(\des_mac_t_reg_n_0_[41] ),
        .I3(\des_mac_t_reg_n_0_[40] ),
        .I4(error_en_i_28_n_0),
        .O(error_en_i_12_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    error_en_i_13
       (.I0(in17[33]),
        .I1(in17[15]),
        .I2(in17[46]),
        .I3(in17[23]),
        .I4(error_en_i_29_n_0),
        .O(error_en_i_13_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    error_en_i_14
       (.I0(in17[16]),
        .I1(in17[35]),
        .I2(in17[40]),
        .I3(in17[24]),
        .I4(error_en_i_30_n_0),
        .O(error_en_i_14_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    error_en_i_15
       (.I0(in17[25]),
        .I1(in17[43]),
        .I2(in17[34]),
        .I3(in17[21]),
        .I4(error_en_i_31_n_0),
        .O(error_en_i_15_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    error_en_i_16
       (.I0(error_en_i_26_n_0),
        .I1(\des_mac_t_reg_n_0_[40] ),
        .I2(\des_mac_t_reg_n_0_[46] ),
        .I3(in17[36]),
        .I4(in17[10]),
        .O(error_en_i_16_n_0));
  LUT5 #(
    .INIT(32'h00000004)) 
    error_en_i_17
       (.I0(\des_mac_t_reg_n_0_[42] ),
        .I1(in17[27]),
        .I2(in17[47]),
        .I3(in17[18]),
        .I4(error_en_i_32_n_0),
        .O(error_en_i_17_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    error_en_i_18
       (.I0(in17[17]),
        .I1(in17[28]),
        .I2(\des_mac_t_reg_n_0_[41] ),
        .I3(in17[19]),
        .I4(error_en_i_33_n_0),
        .O(error_en_i_18_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    error_en_i_19
       (.I0(in17[21]),
        .I1(in17[14]),
        .I2(\des_mac_t_reg_n_0_[44] ),
        .I3(in17[12]),
        .I4(error_en_i_34_n_0),
        .O(error_en_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAA)) 
    error_en_i_2
       (.I0(error_en_i_6_n_0),
        .I1(arp_rx_done_i_2_n_0),
        .I2(arp_rx_done_i_3_n_0),
        .I3(arp_rx_done_i_4_n_0),
        .I4(arp_rx_done_i_5_n_0),
        .I5(error_en_i_7_n_0),
        .O(error_en_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    error_en_i_20
       (.I0(in17[23]),
        .I1(in17[44]),
        .I2(in17[26]),
        .I3(in17[45]),
        .I4(error_en_i_35_n_0),
        .O(error_en_i_20_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    error_en_i_21
       (.I0(in17[30]),
        .I1(in17[34]),
        .I2(in17[41]),
        .I3(in17[37]),
        .I4(error_en_i_36_n_0),
        .O(error_en_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    error_en_i_22
       (.I0(gmii_rx_dv),
        .I1(cur_state[1]),
        .O(error_en_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    error_en_i_23
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg_n_0_[4] ),
        .O(error_en_i_23_n_0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    error_en_i_24
       (.I0(gmii_rxd[6]),
        .I1(p_0_in__0[2]),
        .I2(gmii_rxd[7]),
        .I3(p_0_in__0[6]),
        .I4(p_0_in__0[3]),
        .I5(p_0_in__0[4]),
        .O(error_en_i_24_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    error_en_i_25
       (.I0(gmii_rxd[1]),
        .I1(gmii_rxd[4]),
        .I2(p_0_in__0[1]),
        .I3(p_0_in__0[5]),
        .O(error_en_i_25_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    error_en_i_26
       (.I0(in17[9]),
        .I1(in17[39]),
        .I2(in17[11]),
        .I3(in17[38]),
        .O(error_en_i_26_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    error_en_i_27
       (.I0(in17[28]),
        .I1(in17[14]),
        .I2(in17[36]),
        .I3(in17[32]),
        .O(error_en_i_27_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    error_en_i_28
       (.I0(in17[29]),
        .I1(in17[31]),
        .I2(in17[10]),
        .I3(\des_mac_t_reg_n_0_[43] ),
        .O(error_en_i_28_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    error_en_i_29
       (.I0(in17[8]),
        .I1(in17[26]),
        .I2(in17[19]),
        .I3(in17[22]),
        .O(error_en_i_29_n_0));
  LUT5 #(
    .INIT(32'hFFFCEFFF)) 
    error_en_i_3
       (.I0(error_en_i_8_n_0),
        .I1(error_en_i_9_n_0),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\cnt_reg_n_0_[1] ),
        .O(error_en_i_3_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    error_en_i_30
       (.I0(\des_mac_t_reg_n_0_[42] ),
        .I1(in17[13]),
        .I2(\des_mac_t_reg_n_0_[44] ),
        .I3(in17[41]),
        .O(error_en_i_30_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    error_en_i_31
       (.I0(\des_mac_t_reg_n_0_[45] ),
        .I1(in17[27]),
        .I2(\des_mac_t_reg_n_0_[47] ),
        .I3(in17[30]),
        .O(error_en_i_31_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    error_en_i_32
       (.I0(in17[22]),
        .I1(in17[40]),
        .I2(in17[43]),
        .I3(\des_mac_t_reg_n_0_[45] ),
        .O(error_en_i_32_n_0));
  LUT4 #(
    .INIT(16'hFFF7)) 
    error_en_i_33
       (.I0(in17[29]),
        .I1(in17[31]),
        .I2(\des_mac_t_reg_n_0_[47] ),
        .I3(in17[24]),
        .O(error_en_i_33_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    error_en_i_34
       (.I0(in17[20]),
        .I1(in17[46]),
        .I2(in17[32]),
        .I3(in17[35]),
        .O(error_en_i_34_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    error_en_i_35
       (.I0(in17[8]),
        .I1(in17[33]),
        .I2(in17[15]),
        .I3(\des_mac_t_reg_n_0_[43] ),
        .O(error_en_i_35_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    error_en_i_36
       (.I0(in17[16]),
        .I1(in17[13]),
        .I2(in17[25]),
        .I3(in17[42]),
        .O(error_en_i_36_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    error_en_i_4
       (.I0(error_en_i_10_n_0),
        .I1(error_en_i_11_n_0),
        .I2(error_en_i_12_n_0),
        .I3(error_en_i_13_n_0),
        .I4(error_en_i_14_n_0),
        .I5(error_en_i_15_n_0),
        .O(error_en_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    error_en_i_5
       (.I0(error_en_i_16_n_0),
        .I1(error_en_i_17_n_0),
        .I2(error_en_i_18_n_0),
        .I3(error_en_i_19_n_0),
        .I4(error_en_i_20_n_0),
        .I5(error_en_i_21_n_0),
        .O(error_en_i_5_n_0));
  LUT6 #(
    .INIT(64'h88808888AAAAAAA8)) 
    error_en_i_6
       (.I0(error_en_i_22_n_0),
        .I1(error_en_i_23_n_0),
        .I2(skip_en_i_11_n_0),
        .I3(skip_en_i_7_n_0),
        .I4(gmii_rxd[7]),
        .I5(\des_mac_t[47]_i_7_n_0 ),
        .O(error_en_i_6_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    error_en_i_7
       (.I0(gmii_rx_dv),
        .I1(cur_state[3]),
        .I2(\cnt[0]_i_3_n_0 ),
        .I3(arp_rx_done_i_6_n_0),
        .O(error_en_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    error_en_i_8
       (.I0(error_en_i_24_n_0),
        .I1(p_0_in__0[7]),
        .I2(p_0_in__0[0]),
        .I3(gmii_rxd[0]),
        .I4(error_en_i_25_n_0),
        .I5(skip_en_i_11_n_0),
        .O(error_en_i_8_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    error_en_i_9
       (.I0(cur_state[2]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(gmii_rx_dv),
        .O(error_en_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    error_en_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(sys_rst_n),
        .D(error_en),
        .Q(error_en_reg_n_0));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \eth_head[5][7]_i_1 
       (.I0(\eth_head_reg[5][7] ),
        .I1(\eth_head[5][7]_i_3_n_0 ),
        .I2(\eth_head[5][7]_i_4_n_0 ),
        .I3(\eth_head[5][7]_i_5_n_0 ),
        .O(E));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \eth_head[5][7]_i_10 
       (.I0(src_mac[12]),
        .I1(src_mac[6]),
        .I2(src_mac[41]),
        .I3(src_mac[10]),
        .O(\eth_head[5][7]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \eth_head[5][7]_i_11 
       (.I0(src_mac[35]),
        .I1(src_mac[37]),
        .I2(src_mac[17]),
        .I3(src_mac[46]),
        .I4(\eth_head[5][7]_i_14_n_0 ),
        .O(\eth_head[5][7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \eth_head[5][7]_i_12 
       (.I0(src_mac[7]),
        .I1(src_mac[1]),
        .I2(src_mac[28]),
        .I3(src_mac[22]),
        .O(\eth_head[5][7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \eth_head[5][7]_i_13 
       (.I0(src_mac[4]),
        .I1(src_mac[2]),
        .I2(src_mac[43]),
        .I3(src_mac[19]),
        .O(\eth_head[5][7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \eth_head[5][7]_i_14 
       (.I0(src_mac[29]),
        .I1(src_mac[14]),
        .I2(src_mac[8]),
        .I3(src_mac[0]),
        .O(\eth_head[5][7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \eth_head[5][7]_i_3 
       (.I0(\eth_head[5][7]_i_6_n_0 ),
        .I1(src_mac[34]),
        .I2(src_mac[30]),
        .I3(src_mac[13]),
        .I4(src_mac[3]),
        .I5(\eth_head[5][7]_i_7_n_0 ),
        .O(\eth_head[5][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \eth_head[5][7]_i_4 
       (.I0(\eth_head[5][7]_i_8_n_0 ),
        .I1(src_mac[38]),
        .I2(src_mac[32]),
        .I3(src_mac[44]),
        .I4(src_mac[18]),
        .I5(\eth_head[5][7]_i_9_n_0 ),
        .O(\eth_head[5][7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \eth_head[5][7]_i_5 
       (.I0(\eth_head[5][7]_i_10_n_0 ),
        .I1(src_mac[39]),
        .I2(src_mac[23]),
        .I3(src_mac[33]),
        .I4(src_mac[27]),
        .I5(\eth_head[5][7]_i_11_n_0 ),
        .O(\eth_head[5][7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \eth_head[5][7]_i_6 
       (.I0(src_mac[31]),
        .I1(src_mac[9]),
        .I2(src_mac[25]),
        .I3(src_mac[21]),
        .O(\eth_head[5][7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \eth_head[5][7]_i_7 
       (.I0(src_mac[16]),
        .I1(src_mac[40]),
        .I2(src_mac[26]),
        .I3(src_mac[47]),
        .I4(\eth_head[5][7]_i_12_n_0 ),
        .O(\eth_head[5][7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \eth_head[5][7]_i_8 
       (.I0(src_mac[11]),
        .I1(src_mac[5]),
        .I2(src_mac[42]),
        .I3(src_mac[20]),
        .O(\eth_head[5][7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \eth_head[5][7]_i_9 
       (.I0(src_mac[15]),
        .I1(src_mac[24]),
        .I2(src_mac[36]),
        .I3(src_mac[45]),
        .I4(\eth_head[5][7]_i_13_n_0 ),
        .O(\eth_head[5][7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \eth_type[15]_i_1 
       (.I0(cur_state[3]),
        .I1(cur_state[4]),
        .I2(gmii_rx_dv),
        .I3(cur_state[0]),
        .I4(cur_state[1]),
        .I5(\eth_type[15]_i_2_n_0 ),
        .O(eth_type));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    \eth_type[15]_i_2 
       (.I0(cur_state[2]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\cnt_reg_n_0_[0] ),
        .O(\eth_type[15]_i_2_n_0 ));
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
        .Q(p_0_in__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \eth_type_reg[12] 
       (.C(CLK),
        .CE(eth_type),
        .CLR(sys_rst_n),
        .D(gmii_rxd[4]),
        .Q(p_0_in__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \eth_type_reg[13] 
       (.C(CLK),
        .CE(eth_type),
        .CLR(sys_rst_n),
        .D(gmii_rxd[5]),
        .Q(p_0_in__0[5]));
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
        .Q(p_0_in__0[1]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \op_data[15]_i_1 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(\op_data[15]_i_2_n_0 ),
        .O(op_data[15]));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \op_data[15]_i_2 
       (.I0(cur_state[1]),
        .I1(cur_state[0]),
        .I2(cur_state[4]),
        .I3(cur_state[2]),
        .I4(gmii_rx_dv),
        .I5(cur_state[3]),
        .O(\op_data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \op_data[7]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\op_data[15]_i_2_n_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\cnt_reg_n_0_[2] ),
        .O(op_data[0]));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[0] 
       (.C(CLK),
        .CE(op_data[0]),
        .CLR(sys_rst_n),
        .D(gmii_rxd[0]),
        .Q(\op_data_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[10] 
       (.C(CLK),
        .CE(op_data[15]),
        .CLR(sys_rst_n),
        .D(gmii_rxd[2]),
        .Q(\op_data_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[11] 
       (.C(CLK),
        .CE(op_data[15]),
        .CLR(sys_rst_n),
        .D(gmii_rxd[3]),
        .Q(\op_data_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[12] 
       (.C(CLK),
        .CE(op_data[15]),
        .CLR(sys_rst_n),
        .D(gmii_rxd[4]),
        .Q(\op_data_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[13] 
       (.C(CLK),
        .CE(op_data[15]),
        .CLR(sys_rst_n),
        .D(gmii_rxd[5]),
        .Q(\op_data_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[14] 
       (.C(CLK),
        .CE(op_data[15]),
        .CLR(sys_rst_n),
        .D(gmii_rxd[6]),
        .Q(\op_data_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[15] 
       (.C(CLK),
        .CE(op_data[15]),
        .CLR(sys_rst_n),
        .D(gmii_rxd[7]),
        .Q(\op_data_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[1] 
       (.C(CLK),
        .CE(op_data[0]),
        .CLR(sys_rst_n),
        .D(gmii_rxd[1]),
        .Q(\op_data_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[2] 
       (.C(CLK),
        .CE(op_data[0]),
        .CLR(sys_rst_n),
        .D(gmii_rxd[2]),
        .Q(\op_data_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[3] 
       (.C(CLK),
        .CE(op_data[0]),
        .CLR(sys_rst_n),
        .D(gmii_rxd[3]),
        .Q(\op_data_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[4] 
       (.C(CLK),
        .CE(op_data[0]),
        .CLR(sys_rst_n),
        .D(gmii_rxd[4]),
        .Q(\op_data_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[5] 
       (.C(CLK),
        .CE(op_data[0]),
        .CLR(sys_rst_n),
        .D(gmii_rxd[5]),
        .Q(\op_data_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[6] 
       (.C(CLK),
        .CE(op_data[0]),
        .CLR(sys_rst_n),
        .D(gmii_rxd[6]),
        .Q(\op_data_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[7] 
       (.C(CLK),
        .CE(op_data[0]),
        .CLR(sys_rst_n),
        .D(gmii_rxd[7]),
        .Q(\op_data_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[8] 
       (.C(CLK),
        .CE(op_data[15]),
        .CLR(sys_rst_n),
        .D(gmii_rxd[0]),
        .Q(\op_data_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_data_reg[9] 
       (.C(CLK),
        .CE(op_data[15]),
        .CLR(sys_rst_n),
        .D(gmii_rxd[1]),
        .Q(\op_data_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA08AA)) 
    skip_en_i_1
       (.I0(\cur_state[4]_i_3_n_0 ),
        .I1(skip_en_i_2_n_0),
        .I2(skip_en_i_3_n_0),
        .I3(skip_en_i_4_n_0),
        .I4(skip_en_i_5_n_0),
        .I5(skip_en_i_6_n_0),
        .O(skip_en));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    skip_en_i_10
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .O(skip_en_i_10_n_0));
  LUT3 #(
    .INIT(8'hFB)) 
    skip_en_i_11
       (.I0(gmii_rxd[3]),
        .I1(gmii_rxd[2]),
        .I2(gmii_rxd[5]),
        .O(skip_en_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
    skip_en_i_2
       (.I0(gmii_rxd[5]),
        .I1(gmii_rxd[2]),
        .I2(gmii_rxd[3]),
        .I3(skip_en_i_7_n_0),
        .I4(gmii_rxd[7]),
        .I5(\des_mac_t[47]_i_7_n_0 ),
        .O(skip_en_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFDFFFFFFF)) 
    skip_en_i_3
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(skip_en_i_8_n_0),
        .I2(gmii_rx_dv),
        .I3(cur_state[1]),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(\cnt_reg_n_0_[1] ),
        .O(skip_en_i_3_n_0));
  LUT4 #(
    .INIT(16'hFD0D)) 
    skip_en_i_4
       (.I0(cur_state[4]),
        .I1(skip_en_reg_n_0),
        .I2(gmii_rx_dv),
        .I3(\eth_type[15]_i_2_n_0 ),
        .O(skip_en_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    skip_en_i_5
       (.I0(skip_en_i_9_n_0),
        .I1(gmii_rx_dv),
        .I2(skip_en_reg_n_0),
        .I3(cur_state[0]),
        .O(skip_en_i_5_n_0));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    skip_en_i_6
       (.I0(gmii_rx_dv),
        .I1(cur_state[3]),
        .I2(\cnt[0]_i_3_n_0 ),
        .I3(skip_en_i_10_n_0),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\cnt_reg_n_0_[0] ),
        .O(skip_en_i_6_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    skip_en_i_7
       (.I0(gmii_rxd[0]),
        .I1(gmii_rxd[4]),
        .I2(gmii_rxd[6]),
        .I3(gmii_rxd[1]),
        .O(skip_en_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    skip_en_i_8
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[4] ),
        .O(skip_en_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    skip_en_i_9
       (.I0(gmii_rxd[7]),
        .I1(gmii_rxd[0]),
        .I2(gmii_rxd[4]),
        .I3(gmii_rxd[6]),
        .I4(gmii_rxd[1]),
        .I5(skip_en_i_11_n_0),
        .O(skip_en_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    skip_en_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(sys_rst_n),
        .D(skip_en),
        .Q(skip_en_reg_n_0));
  LUT6 #(
    .INIT(64'h5455555500000000)) 
    \src_ip[31]_i_1 
       (.I0(\op_data[15]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\des_mac_t[47]_i_5_n_0 ),
        .O(\src_ip[31]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[0] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[0] ),
        .Q(src_ip[0]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[10] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[10] ),
        .Q(src_ip[10]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[11] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[11] ),
        .Q(src_ip[11]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[12] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[12] ),
        .Q(src_ip[12]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[13] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[13] ),
        .Q(src_ip[13]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[14] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[14] ),
        .Q(src_ip[14]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[15] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[15] ),
        .Q(src_ip[15]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[16] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[16] ),
        .Q(src_ip[16]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[17] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[17] ),
        .Q(src_ip[17]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[18] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[18] ),
        .Q(src_ip[18]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[19] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[19] ),
        .Q(src_ip[19]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[1] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[1] ),
        .Q(src_ip[1]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[20] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[20] ),
        .Q(src_ip[20]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[21] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[21] ),
        .Q(src_ip[21]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[22] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[22] ),
        .Q(src_ip[22]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[23] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[23] ),
        .Q(src_ip[23]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[24] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[24] ),
        .Q(src_ip[24]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[25] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[25] ),
        .Q(src_ip[25]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[26] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[26] ),
        .Q(src_ip[26]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[27] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[27] ),
        .Q(src_ip[27]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[28] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[28] ),
        .Q(src_ip[28]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[29] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[29] ),
        .Q(src_ip[29]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[2] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[2] ),
        .Q(src_ip[2]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[30] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[30] ),
        .Q(src_ip[30]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[31] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[31] ),
        .Q(src_ip[31]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[3] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[3] ),
        .Q(src_ip[3]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[4] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[4] ),
        .Q(src_ip[4]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[5] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[5] ),
        .Q(src_ip[5]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[6] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[6] ),
        .Q(src_ip[6]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[7] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[7] ),
        .Q(src_ip[7]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[8] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[8] ),
        .Q(src_ip[8]));
  FDCE #(
    .INIT(1'b0)) 
    \src_ip_reg[9] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_ip_t_reg_n_0_[9] ),
        .Q(src_ip[9]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[0]_i_1 
       (.I0(gmii_rxd[0]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[10]_i_1 
       (.I0(\src_ip_t_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[11]_i_1 
       (.I0(\src_ip_t_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[12]_i_1 
       (.I0(\src_ip_t_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[13]_i_1 
       (.I0(\src_ip_t_reg_n_0_[5] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[14]_i_1 
       (.I0(\src_ip_t_reg_n_0_[6] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[15]_i_1 
       (.I0(\src_ip_t_reg_n_0_[7] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[16]_i_1 
       (.I0(\src_ip_t_reg_n_0_[8] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[17]_i_1 
       (.I0(\src_ip_t_reg_n_0_[9] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[18]_i_1 
       (.I0(\src_ip_t_reg_n_0_[10] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[19]_i_1 
       (.I0(\src_ip_t_reg_n_0_[11] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[1]_i_1 
       (.I0(gmii_rxd[1]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[20]_i_1 
       (.I0(\src_ip_t_reg_n_0_[12] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[21]_i_1 
       (.I0(\src_ip_t_reg_n_0_[13] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[22]_i_1 
       (.I0(\src_ip_t_reg_n_0_[14] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[23]_i_1 
       (.I0(\src_ip_t_reg_n_0_[15] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[24]_i_1 
       (.I0(\src_ip_t_reg_n_0_[16] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[25]_i_1 
       (.I0(\src_ip_t_reg_n_0_[17] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[26]_i_1 
       (.I0(\src_ip_t_reg_n_0_[18] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[27]_i_1 
       (.I0(\src_ip_t_reg_n_0_[19] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[28]_i_1 
       (.I0(\src_ip_t_reg_n_0_[20] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[29]_i_1 
       (.I0(\src_ip_t_reg_n_0_[21] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[2]_i_1 
       (.I0(gmii_rxd[2]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[30]_i_1 
       (.I0(\src_ip_t_reg_n_0_[22] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAABEA2A)) 
    \src_ip_t[31]_i_1 
       (.I0(\des_mac_t[47]_i_5_n_0 ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg_n_0_[4] ),
        .I5(\op_data[15]_i_2_n_0 ),
        .O(src_ip_t));
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[31]_i_2 
       (.I0(\src_ip_t_reg_n_0_[23] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[3]_i_1 
       (.I0(gmii_rxd[3]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[4]_i_1 
       (.I0(gmii_rxd[4]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[5]_i_1 
       (.I0(gmii_rxd[5]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[6]_i_1 
       (.I0(gmii_rxd[6]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[7]_i_1 
       (.I0(gmii_rxd[7]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[8]_i_1 
       (.I0(\src_ip_t_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\src_ip_t[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000008)) 
    \src_ip_t[9]_i_1 
       (.I0(\src_ip_t_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
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
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[0] ),
        .Q(src_mac[0]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[10] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[10] ),
        .Q(src_mac[10]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[11] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[11] ),
        .Q(src_mac[11]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[12] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[12] ),
        .Q(src_mac[12]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[13] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[13] ),
        .Q(src_mac[13]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[14] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[14] ),
        .Q(src_mac[14]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[15] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[15] ),
        .Q(src_mac[15]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[16] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[16] ),
        .Q(src_mac[16]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[17] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[17] ),
        .Q(src_mac[17]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[18] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[18] ),
        .Q(src_mac[18]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[19] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[19] ),
        .Q(src_mac[19]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[1] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[1] ),
        .Q(src_mac[1]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[20] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[20] ),
        .Q(src_mac[20]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[21] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[21] ),
        .Q(src_mac[21]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[22] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[22] ),
        .Q(src_mac[22]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[23] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[23] ),
        .Q(src_mac[23]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[24] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[24] ),
        .Q(src_mac[24]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[25] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[25] ),
        .Q(src_mac[25]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[26] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[26] ),
        .Q(src_mac[26]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[27] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[27] ),
        .Q(src_mac[27]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[28] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[28] ),
        .Q(src_mac[28]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[29] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[29] ),
        .Q(src_mac[29]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[2] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[2] ),
        .Q(src_mac[2]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[30] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[30] ),
        .Q(src_mac[30]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[31] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[31] ),
        .Q(src_mac[31]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[32] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[32] ),
        .Q(src_mac[32]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[33] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[33] ),
        .Q(src_mac[33]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[34] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[34] ),
        .Q(src_mac[34]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[35] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[35] ),
        .Q(src_mac[35]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[36] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[36] ),
        .Q(src_mac[36]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[37] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[37] ),
        .Q(src_mac[37]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[38] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[38] ),
        .Q(src_mac[38]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[39] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[39] ),
        .Q(src_mac[39]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[3] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[3] ),
        .Q(src_mac[3]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[40] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[40] ),
        .Q(src_mac[40]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[41] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[41] ),
        .Q(src_mac[41]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[42] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[42] ),
        .Q(src_mac[42]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[43] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[43] ),
        .Q(src_mac[43]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[44] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[44] ),
        .Q(src_mac[44]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[45] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[45] ),
        .Q(src_mac[45]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[46] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[46] ),
        .Q(src_mac[46]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[47] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[47] ),
        .Q(src_mac[47]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[4] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[4] ),
        .Q(src_mac[4]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[5] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[5] ),
        .Q(src_mac[5]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[6] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[6] ),
        .Q(src_mac[6]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[7] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[7] ),
        .Q(src_mac[7]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[8] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[8] ),
        .Q(src_mac[8]));
  FDCE #(
    .INIT(1'b0)) 
    \src_mac_reg[9] 
       (.C(CLK),
        .CE(\src_ip[31]_i_1_n_0 ),
        .CLR(sys_rst_n),
        .D(\src_mac_t_reg_n_0_[9] ),
        .Q(src_mac[9]));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[0]_i_1 
       (.I0(gmii_rxd[0]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[10]_i_1 
       (.I0(\src_mac_t_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[11]_i_1 
       (.I0(\src_mac_t_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[12]_i_1 
       (.I0(\src_mac_t_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[13]_i_1 
       (.I0(\src_mac_t_reg_n_0_[5] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[14]_i_1 
       (.I0(\src_mac_t_reg_n_0_[6] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[15]_i_1 
       (.I0(\src_mac_t_reg_n_0_[7] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[16]_i_1 
       (.I0(\src_mac_t_reg_n_0_[8] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[17]_i_1 
       (.I0(\src_mac_t_reg_n_0_[9] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[18]_i_1 
       (.I0(\src_mac_t_reg_n_0_[10] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[19]_i_1 
       (.I0(\src_mac_t_reg_n_0_[11] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[1]_i_1 
       (.I0(gmii_rxd[1]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[20]_i_1 
       (.I0(\src_mac_t_reg_n_0_[12] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[21]_i_1 
       (.I0(\src_mac_t_reg_n_0_[13] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[22]_i_1 
       (.I0(\src_mac_t_reg_n_0_[14] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[23]_i_1 
       (.I0(\src_mac_t_reg_n_0_[15] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[24]_i_1 
       (.I0(\src_mac_t_reg_n_0_[16] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[25]_i_1 
       (.I0(\src_mac_t_reg_n_0_[17] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[26]_i_1 
       (.I0(\src_mac_t_reg_n_0_[18] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[27]_i_1 
       (.I0(\src_mac_t_reg_n_0_[19] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[28]_i_1 
       (.I0(\src_mac_t_reg_n_0_[20] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[29]_i_1 
       (.I0(\src_mac_t_reg_n_0_[21] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[2]_i_1 
       (.I0(gmii_rxd[2]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[30]_i_1 
       (.I0(\src_mac_t_reg_n_0_[22] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[31]_i_1 
       (.I0(\src_mac_t_reg_n_0_[23] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[32]_i_1 
       (.I0(\src_mac_t_reg_n_0_[24] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[32]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[33]_i_1 
       (.I0(\src_mac_t_reg_n_0_[25] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[33]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[34]_i_1 
       (.I0(\src_mac_t_reg_n_0_[26] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[34]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[35]_i_1 
       (.I0(\src_mac_t_reg_n_0_[27] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[35]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[36]_i_1 
       (.I0(\src_mac_t_reg_n_0_[28] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[36]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[37]_i_1 
       (.I0(\src_mac_t_reg_n_0_[29] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[37]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[38]_i_1 
       (.I0(\src_mac_t_reg_n_0_[30] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[38]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[39]_i_1 
       (.I0(\src_mac_t_reg_n_0_[31] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[39]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[3]_i_1 
       (.I0(gmii_rxd[3]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[40]_i_1 
       (.I0(\src_mac_t_reg_n_0_[32] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[40]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[41]_i_1 
       (.I0(\src_mac_t_reg_n_0_[33] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[41]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[42]_i_1 
       (.I0(\src_mac_t_reg_n_0_[34] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[42]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[43]_i_1 
       (.I0(\src_mac_t_reg_n_0_[35] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[43]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[44]_i_1 
       (.I0(\src_mac_t_reg_n_0_[36] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[44]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[45]_i_1 
       (.I0(\src_mac_t_reg_n_0_[37] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[45]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[46]_i_1 
       (.I0(\src_mac_t_reg_n_0_[38] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[46]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAA8EEE)) 
    \src_mac_t[47]_i_1 
       (.I0(\des_mac_t[47]_i_5_n_0 ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[4] ),
        .I5(\op_data[15]_i_2_n_0 ),
        .O(src_mac_t));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[47]_i_2 
       (.I0(\src_mac_t_reg_n_0_[39] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[47]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[4]_i_1 
       (.I0(gmii_rxd[4]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[5]_i_1 
       (.I0(gmii_rxd[5]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[6]_i_1 
       (.I0(gmii_rxd[6]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[7]_i_1 
       (.I0(gmii_rxd[7]),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[8]_i_1 
       (.I0(\src_mac_t_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\src_mac_t[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02220000)) 
    \src_mac_t[9]_i_1 
       (.I0(\src_mac_t_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
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
    \cnt_reg[4]_0 ,
    E,
    \tx_en_delay_reg[2]_0 ,
    \gmii_txd_reg[7]_0 ,
    \gmii_txd_reg[0]_0 ,
    D,
    \gmii_txd_reg[1]_0 ,
    \gmii_txd_reg[2]_0 ,
    crc_en_reg_0,
    \gmii_txd_reg[7]_1 ,
    \crc_data_reg[19] ,
    \gmii_txd_reg[3]_0 ,
    \gmii_txd_reg[6]_0 ,
    \gmii_txd_reg[4]_0 ,
    \gmii_txd_reg[2]_1 ,
    \gmii_txd_reg[5]_0 ,
    \crc_data_reg[24] ,
    \crc_data_reg[3] ,
    \crc_data_reg[2] ,
    \crc_data_reg[17] ,
    \crc_data_reg[18] ,
    \crc_data_reg[13] ,
    \crc_data_reg[13]_0 ,
    \crc_data_reg[15] ,
    \crc_data_reg[7] ,
    \crc_data_reg[4] ,
    \crc_data_reg[28] ,
    \crc_data_reg[12] ,
    \crc_data_reg[11] ,
    \tx_en_delay_reg[0]_0 ,
    \eth_head_reg[5][7]_0 ,
    src_mac,
    \arp_data_reg[27][7]_0 ,
    src_ip,
    arp_tx_type);
  output tx_done_reg_0;
  output gmii_tx_en;
  output [1:0]Q;
  output \cnt_reg[4]_0 ;
  output [0:0]E;
  output \tx_en_delay_reg[2]_0 ;
  output [7:0]\gmii_txd_reg[7]_0 ;
  output \gmii_txd_reg[0]_0 ;
  output [29:0]D;
  output \gmii_txd_reg[1]_0 ;
  output \gmii_txd_reg[2]_0 ;
  input crc_en_reg_0;
  input \gmii_txd_reg[7]_1 ;
  input [30:0]\crc_data_reg[19] ;
  input \gmii_txd_reg[3]_0 ;
  input \gmii_txd_reg[6]_0 ;
  input \gmii_txd_reg[4]_0 ;
  input \gmii_txd_reg[2]_1 ;
  input \gmii_txd_reg[5]_0 ;
  input \crc_data_reg[24] ;
  input \crc_data_reg[3] ;
  input \crc_data_reg[2] ;
  input \crc_data_reg[17] ;
  input \crc_data_reg[18] ;
  input \crc_data_reg[13] ;
  input \crc_data_reg[13]_0 ;
  input \crc_data_reg[15] ;
  input \crc_data_reg[7] ;
  input \crc_data_reg[4] ;
  input \crc_data_reg[28] ;
  input \crc_data_reg[12] ;
  input \crc_data_reg[11] ;
  input [0:0]\tx_en_delay_reg[0]_0 ;
  input [0:0]\eth_head_reg[5][7]_0 ;
  input [47:0]src_mac;
  input [0:0]\arp_data_reg[27][7]_0 ;
  input [31:0]src_ip;
  input arp_tx_type;

  wire [29:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire \arp_data[7][0]_i_1_n_0 ;
  wire \arp_data[7][1]_i_1_n_0 ;
  wire [7:0]\arp_data_reg[24]_9 ;
  wire [7:0]\arp_data_reg[25]_8 ;
  wire [7:0]\arp_data_reg[26]_7 ;
  wire [0:0]\arp_data_reg[27][7]_0 ;
  wire [7:0]\arp_data_reg[27]_6 ;
  wire [1:0]\arp_data_reg[7]_10 ;
  wire arp_tx_type;
  wire [5:1]cnt;
  wire \cnt[0]_i_1__0_n_0 ;
  wire \cnt[1]_i_2__0_n_0 ;
  wire \cnt[1]_i_3__0_n_0 ;
  wire \cnt[2]_i_2_n_0 ;
  wire \cnt[2]_i_3_n_0 ;
  wire \cnt[4]_i_2__0_n_0 ;
  wire \cnt[4]_i_3__0_n_0 ;
  wire \cnt[5]_i_1_n_0 ;
  wire \cnt[5]_i_3_n_0 ;
  wire \cnt[5]_i_4_n_0 ;
  wire \cnt[5]_i_5_n_0 ;
  wire \cnt[5]_i_7_n_0 ;
  wire \cnt[5]_i_8_n_0 ;
  wire \cnt[5]_i_9_n_0 ;
  wire \cnt_reg[4]_0 ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \crc_data[10]_i_2_n_0 ;
  wire \crc_data[12]_i_3_n_0 ;
  wire \crc_data[14]_i_2_n_0 ;
  wire \crc_data[23]_i_2_n_0 ;
  wire \crc_data[23]_i_3_n_0 ;
  wire \crc_data[26]_i_2_n_0 ;
  wire \crc_data[6]_i_2_n_0 ;
  wire \crc_data[6]_i_3_n_0 ;
  wire \crc_data_reg[11] ;
  wire \crc_data_reg[12] ;
  wire \crc_data_reg[13] ;
  wire \crc_data_reg[13]_0 ;
  wire \crc_data_reg[15] ;
  wire \crc_data_reg[17] ;
  wire \crc_data_reg[18] ;
  wire [30:0]\crc_data_reg[19] ;
  wire \crc_data_reg[24] ;
  wire \crc_data_reg[28] ;
  wire \crc_data_reg[2] ;
  wire \crc_data_reg[3] ;
  wire \crc_data_reg[4] ;
  wire \crc_data_reg[7] ;
  wire crc_en;
  wire crc_en_i_1_n_0;
  wire crc_en_reg_0;
  wire [4:0]cur_state;
  wire \cur_state[0]_i_1__0_n_0 ;
  wire \cur_state[1]_i_1__0_n_0 ;
  wire \cur_state[2]_i_1__0_n_0 ;
  wire \cur_state[3]_i_1__0_n_0 ;
  wire \cur_state[4]_i_1__0_n_0 ;
  wire \cur_state[4]_i_2_n_0 ;
  wire [7:0]\eth_head_reg[0]_5 ;
  wire [7:0]\eth_head_reg[1]_4 ;
  wire [7:0]\eth_head_reg[2]_3 ;
  wire [7:0]\eth_head_reg[3]_2 ;
  wire [7:0]\eth_head_reg[4]_1 ;
  wire [0:0]\eth_head_reg[5][7]_0 ;
  wire [7:0]\eth_head_reg[5]_0 ;
  wire gmii_tx_en;
  wire \gmii_txd[0]_i_10_n_0 ;
  wire \gmii_txd[0]_i_11_n_0 ;
  wire \gmii_txd[0]_i_1_n_0 ;
  wire \gmii_txd[0]_i_2_n_0 ;
  wire \gmii_txd[0]_i_3_n_0 ;
  wire \gmii_txd[0]_i_4_n_0 ;
  wire \gmii_txd[0]_i_5_n_0 ;
  wire \gmii_txd[0]_i_6_n_0 ;
  wire \gmii_txd[0]_i_7_n_0 ;
  wire \gmii_txd[0]_i_8_n_0 ;
  wire \gmii_txd[0]_i_9_n_0 ;
  wire \gmii_txd[1]_i_10_n_0 ;
  wire \gmii_txd[1]_i_11_n_0 ;
  wire \gmii_txd[1]_i_12_n_0 ;
  wire \gmii_txd[1]_i_1_n_0 ;
  wire \gmii_txd[1]_i_2_n_0 ;
  wire \gmii_txd[1]_i_3_n_0 ;
  wire \gmii_txd[1]_i_5_n_0 ;
  wire \gmii_txd[1]_i_6_n_0 ;
  wire \gmii_txd[1]_i_7_n_0 ;
  wire \gmii_txd[1]_i_8_n_0 ;
  wire \gmii_txd[1]_i_9_n_0 ;
  wire \gmii_txd[2]_i_11_n_0 ;
  wire \gmii_txd[2]_i_12_n_0 ;
  wire \gmii_txd[2]_i_1_n_0 ;
  wire \gmii_txd[2]_i_2_n_0 ;
  wire \gmii_txd[2]_i_3_n_0 ;
  wire \gmii_txd[2]_i_4_n_0 ;
  wire \gmii_txd[2]_i_5_n_0 ;
  wire \gmii_txd[2]_i_6_n_0 ;
  wire \gmii_txd[2]_i_7_n_0 ;
  wire \gmii_txd[2]_i_8_n_0 ;
  wire \gmii_txd[2]_i_9_n_0 ;
  wire \gmii_txd[3]_i_10_n_0 ;
  wire \gmii_txd[3]_i_11_n_0 ;
  wire \gmii_txd[3]_i_12_n_0 ;
  wire \gmii_txd[3]_i_13_n_0 ;
  wire \gmii_txd[3]_i_1_n_0 ;
  wire \gmii_txd[3]_i_4_n_0 ;
  wire \gmii_txd[3]_i_7_n_0 ;
  wire \gmii_txd[3]_i_8_n_0 ;
  wire \gmii_txd[3]_i_9_n_0 ;
  wire \gmii_txd[4]_i_10_n_0 ;
  wire \gmii_txd[4]_i_11_n_0 ;
  wire \gmii_txd[4]_i_12_n_0 ;
  wire \gmii_txd[4]_i_1_n_0 ;
  wire \gmii_txd[4]_i_2_n_0 ;
  wire \gmii_txd[4]_i_4_n_0 ;
  wire \gmii_txd[4]_i_5_n_0 ;
  wire \gmii_txd[4]_i_6_n_0 ;
  wire \gmii_txd[4]_i_7_n_0 ;
  wire \gmii_txd[4]_i_8_n_0 ;
  wire \gmii_txd[5]_i_10_n_0 ;
  wire \gmii_txd[5]_i_11_n_0 ;
  wire \gmii_txd[5]_i_12_n_0 ;
  wire \gmii_txd[5]_i_13_n_0 ;
  wire \gmii_txd[5]_i_14_n_0 ;
  wire \gmii_txd[5]_i_1_n_0 ;
  wire \gmii_txd[5]_i_2_n_0 ;
  wire \gmii_txd[5]_i_3_n_0 ;
  wire \gmii_txd[5]_i_4_n_0 ;
  wire \gmii_txd[5]_i_5_n_0 ;
  wire \gmii_txd[5]_i_6_n_0 ;
  wire \gmii_txd[5]_i_8_n_0 ;
  wire \gmii_txd[5]_i_9_n_0 ;
  wire \gmii_txd[6]_i_10_n_0 ;
  wire \gmii_txd[6]_i_11_n_0 ;
  wire \gmii_txd[6]_i_1_n_0 ;
  wire \gmii_txd[6]_i_3_n_0 ;
  wire \gmii_txd[6]_i_4_n_0 ;
  wire \gmii_txd[6]_i_5_n_0 ;
  wire \gmii_txd[6]_i_6_n_0 ;
  wire \gmii_txd[6]_i_7_n_0 ;
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
  wire \gmii_txd[7]_i_18_n_0 ;
  wire \gmii_txd[7]_i_1_n_0 ;
  wire \gmii_txd[7]_i_2_n_0 ;
  wire \gmii_txd[7]_i_3_n_0 ;
  wire \gmii_txd[7]_i_4_n_0 ;
  wire \gmii_txd[7]_i_5_n_0 ;
  wire \gmii_txd[7]_i_6_n_0 ;
  wire \gmii_txd[7]_i_7_n_0 ;
  wire \gmii_txd[7]_i_8_n_0 ;
  wire \gmii_txd[7]_i_9_n_0 ;
  wire \gmii_txd_reg[0]_0 ;
  wire \gmii_txd_reg[1]_0 ;
  wire \gmii_txd_reg[1]_i_4_n_0 ;
  wire \gmii_txd_reg[2]_0 ;
  wire \gmii_txd_reg[2]_1 ;
  wire \gmii_txd_reg[3]_0 ;
  wire \gmii_txd_reg[3]_i_3_n_0 ;
  wire \gmii_txd_reg[4]_0 ;
  wire \gmii_txd_reg[4]_i_3_n_0 ;
  wire \gmii_txd_reg[5]_0 ;
  wire \gmii_txd_reg[6]_0 ;
  wire [7:0]\gmii_txd_reg[7]_0 ;
  wire \gmii_txd_reg[7]_1 ;
  wire p_0_in3_in;
  wire skip_en;
  wire skip_en_i_2__0_n_0;
  wire skip_en_i_3__0_n_0;
  wire skip_en_i_4__0_n_0;
  wire skip_en_i_5__0_n_0;
  wire skip_en_i_6__0_n_0;
  wire skip_en_reg_n_0;
  wire [31:0]src_ip;
  wire [47:0]src_mac;
  wire tx_done_reg_0;
  wire tx_done_t;
  wire tx_done_t_i_2_n_0;
  wire tx_done_t_reg_n_0;
  wire [0:0]\tx_en_delay_reg[0]_0 ;
  wire \tx_en_delay_reg[2]_0 ;
  wire \tx_en_delay_reg_n_0_[0] ;
  wire \tx_en_delay_reg_n_0_[2] ;

  LUT3 #(
    .INIT(8'h74)) 
    \arp_data[7][0]_i_1 
       (.I0(arp_tx_type),
        .I1(\tx_en_delay_reg[2]_0 ),
        .I2(\arp_data_reg[7]_10 [0]),
        .O(\arp_data[7][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \arp_data[7][1]_i_1 
       (.I0(arp_tx_type),
        .I1(\tx_en_delay_reg[2]_0 ),
        .I2(\arp_data_reg[7]_10 [1]),
        .O(\arp_data[7][1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[24][0] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(src_ip[24]),
        .Q(\arp_data_reg[24]_9 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[24][1] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(src_ip[25]),
        .Q(\arp_data_reg[24]_9 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[24][2] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(src_ip[26]),
        .Q(\arp_data_reg[24]_9 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[24][3] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(src_ip[27]),
        .Q(\arp_data_reg[24]_9 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[24][4] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(src_ip[28]),
        .Q(\arp_data_reg[24]_9 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[24][5] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(src_ip[29]),
        .Q(\arp_data_reg[24]_9 [5]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[24][6] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .D(src_ip[30]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\arp_data_reg[24]_9 [6]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[24][7] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .D(src_ip[31]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\arp_data_reg[24]_9 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[25][0] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(src_ip[16]),
        .Q(\arp_data_reg[25]_8 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[25][1] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(src_ip[17]),
        .Q(\arp_data_reg[25]_8 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[25][2] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(src_ip[18]),
        .Q(\arp_data_reg[25]_8 [2]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[25][3] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .D(src_ip[19]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\arp_data_reg[25]_8 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[25][4] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(src_ip[20]),
        .Q(\arp_data_reg[25]_8 [4]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[25][5] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .D(src_ip[21]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\arp_data_reg[25]_8 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[25][6] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(src_ip[22]),
        .Q(\arp_data_reg[25]_8 [6]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[25][7] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .D(src_ip[23]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\arp_data_reg[25]_8 [7]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[26][0] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .D(src_ip[8]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\arp_data_reg[26]_7 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[26][1] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(src_ip[9]),
        .Q(\arp_data_reg[26]_7 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[26][2] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(src_ip[10]),
        .Q(\arp_data_reg[26]_7 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[26][3] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(src_ip[11]),
        .Q(\arp_data_reg[26]_7 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[26][4] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(src_ip[12]),
        .Q(\arp_data_reg[26]_7 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[26][5] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(src_ip[13]),
        .Q(\arp_data_reg[26]_7 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[26][6] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(src_ip[14]),
        .Q(\arp_data_reg[26]_7 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[26][7] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(src_ip[15]),
        .Q(\arp_data_reg[26]_7 [7]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[27][0] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .D(src_ip[0]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\arp_data_reg[27]_6 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[27][1] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(src_ip[1]),
        .Q(\arp_data_reg[27]_6 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[27][2] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(src_ip[2]),
        .Q(\arp_data_reg[27]_6 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[27][3] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(src_ip[3]),
        .Q(\arp_data_reg[27]_6 [3]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[27][4] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .D(src_ip[4]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\arp_data_reg[27]_6 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[27][5] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(src_ip[5]),
        .Q(\arp_data_reg[27]_6 [5]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[27][6] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .D(src_ip[6]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\arp_data_reg[27]_6 [6]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[27][7] 
       (.C(crc_en_reg_0),
        .CE(\arp_data_reg[27][7]_0 ),
        .D(src_ip[7]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\arp_data_reg[27]_6 [7]));
  FDPE #(
    .INIT(1'b1)) 
    \arp_data_reg[7][0] 
       (.C(crc_en_reg_0),
        .CE(1'b1),
        .D(\arp_data[7][0]_i_1_n_0 ),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\arp_data_reg[7]_10 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \arp_data_reg[7][1] 
       (.C(crc_en_reg_0),
        .CE(1'b1),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\arp_data[7][1]_i_1_n_0 ),
        .Q(\arp_data_reg[7]_10 [1]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h55555554)) 
    \cnt[0]_i_1__0 
       (.I0(Q[0]),
        .I1(cur_state[2]),
        .I2(cur_state[3]),
        .I3(cur_state[4]),
        .I4(cur_state[1]),
        .O(\cnt[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFEFFFE0000)) 
    \cnt[1]_i_1__0 
       (.I0(\cnt[1]_i_2__0_n_0 ),
        .I1(cur_state[1]),
        .I2(cur_state[4]),
        .I3(\cnt[5]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(cnt[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAA8AAAAAAA)) 
    \cnt[1]_i_2__0 
       (.I0(cur_state[2]),
        .I1(\cnt_reg_n_0_[5] ),
        .I2(Q[0]),
        .I3(\cnt[1]_i_3__0_n_0 ),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(\cnt_reg_n_0_[4] ),
        .O(\cnt[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[1]_i_3__0 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(Q[1]),
        .O(\cnt[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFF400004444FFF0)) 
    \cnt[2]_i_1__0 
       (.I0(\cnt[2]_i_2_n_0 ),
        .I1(\cnt[2]_i_3_n_0 ),
        .I2(\cnt[4]_i_3__0_n_0 ),
        .I3(\cnt[4]_i_2__0_n_0 ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\cnt[5]_i_5_n_0 ),
        .O(cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cnt[2]_i_2 
       (.I0(Q[0]),
        .I1(cur_state[1]),
        .O(\cnt[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \cnt[2]_i_3 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(Q[1]),
        .I2(\cnt_reg_n_0_[5] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(\cnt[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7F8000007F807F80)) 
    \cnt[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt[4]_i_2__0_n_0 ),
        .I5(\cnt[5]_i_7_n_0 ),
        .O(cnt[3]));
  LUT6 #(
    .INIT(64'hBF40BF40BF400000)) 
    \cnt[4]_i_1__0 
       (.I0(\cnt[5]_i_5_n_0 ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt[4]_i_2__0_n_0 ),
        .I5(\cnt[4]_i_3__0_n_0 ),
        .O(cnt[4]));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEEA)) 
    \cnt[4]_i_2__0 
       (.I0(\cnt[5]_i_4_n_0 ),
        .I1(cur_state[4]),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[5] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\cnt_reg_n_0_[3] ),
        .O(\cnt[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBFAAAAAAAA)) 
    \cnt[4]_i_3__0 
       (.I0(\cnt[1]_i_2__0_n_0 ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(Q[1]),
        .I3(skip_en_i_4__0_n_0),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(cur_state[1]),
        .O(\cnt[4]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'h00010114)) 
    \cnt[5]_i_1 
       (.I0(cur_state[0]),
        .I1(cur_state[1]),
        .I2(cur_state[3]),
        .I3(cur_state[2]),
        .I4(cur_state[4]),
        .O(\cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA88888AAAAAAAA)) 
    \cnt[5]_i_2 
       (.I0(\cnt[5]_i_3_n_0 ),
        .I1(\cnt[5]_i_4_n_0 ),
        .I2(\cnt[5]_i_5_n_0 ),
        .I3(\cnt_reg[4]_0 ),
        .I4(cur_state[4]),
        .I5(\cnt[5]_i_7_n_0 ),
        .O(cnt[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cnt[5]_i_3 
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\cnt_reg_n_0_[3] ),
        .O(\cnt[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \cnt[5]_i_4 
       (.I0(cur_state[3]),
        .I1(\cnt[5]_i_8_n_0 ),
        .I2(Q[0]),
        .O(\cnt[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cnt[5]_i_5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\cnt[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[5]_i_6 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[5] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .O(\cnt_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h0DDD05050D0D0505)) 
    \cnt[5]_i_7 
       (.I0(cur_state[1]),
        .I1(\cnt[2]_i_3_n_0 ),
        .I2(cur_state[2]),
        .I3(\cnt_reg_n_0_[5] ),
        .I4(Q[0]),
        .I5(\cnt[5]_i_9_n_0 ),
        .O(\cnt[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hFFBFFFFF)) 
    \cnt[5]_i_8 
       (.I0(Q[1]),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg_n_0_[5] ),
        .O(\cnt[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \cnt[5]_i_9 
       (.I0(Q[1]),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[4] ),
        .O(\cnt[5]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(crc_en_reg_0),
        .CE(\cnt[5]_i_1_n_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\cnt[0]_i_1__0_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(crc_en_reg_0),
        .CE(\cnt[5]_i_1_n_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(cnt[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(crc_en_reg_0),
        .CE(\cnt[5]_i_1_n_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(crc_en_reg_0),
        .CE(\cnt[5]_i_1_n_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(crc_en_reg_0),
        .CE(\cnt[5]_i_1_n_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(crc_en_reg_0),
        .CE(\cnt[5]_i_1_n_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hBEEBEBBE)) 
    \crc_data[0]_i_1 
       (.I0(tx_done_reg_0),
        .I1(\gmii_txd_reg[7]_0 [1]),
        .I2(\crc_data_reg[19] [29]),
        .I3(\gmii_txd_reg[7]_0 [7]),
        .I4(\crc_data_reg[19] [23]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hEBBEBEEBBEEBEBBE)) 
    \crc_data[10]_i_1 
       (.I0(tx_done_reg_0),
        .I1(\crc_data_reg[19] [2]),
        .I2(\crc_data_reg[19] [25]),
        .I3(\crc_data[23]_i_2_n_0 ),
        .I4(\crc_data[10]_i_2_n_0 ),
        .I5(\crc_data_reg[19] [26]),
        .O(D[9]));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_data[10]_i_2 
       (.I0(\gmii_txd_reg[7]_0 [2]),
        .I1(\gmii_txd_reg[7]_0 [5]),
        .I2(\crc_data_reg[19] [28]),
        .I3(\gmii_txd_reg[7]_0 [4]),
        .O(\crc_data[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBEEBEBBEEBBEBEEB)) 
    \crc_data[11]_i_1 
       (.I0(tx_done_reg_0),
        .I1(\crc_data_reg[11] ),
        .I2(\crc_data_reg[19] [3]),
        .I3(\gmii_txd_reg[7]_0 [3]),
        .I4(\crc_data_reg[19] [27]),
        .I5(\gmii_txd_reg[7]_0 [7]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hEBBEBEEBBEEBEBBE)) 
    \crc_data[12]_i_1 
       (.I0(tx_done_reg_0),
        .I1(\crc_data_reg[12] ),
        .I2(\gmii_txd_reg[7]_0 [1]),
        .I3(\gmii_txd_reg[7]_0 [6]),
        .I4(\crc_data[12]_i_3_n_0 ),
        .I5(\crc_data_reg[19] [29]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_data[12]_i_3 
       (.I0(\gmii_txd_reg[7]_0 [3]),
        .I1(\crc_data_reg[19] [27]),
        .O(\crc_data[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_data[12]_i_4 
       (.I0(\gmii_txd_reg[7]_0 [2]),
        .I1(\gmii_txd_reg[7]_0 [5]),
        .I2(\crc_data_reg[19] [25]),
        .I3(\gmii_txd_reg[7]_0 [7]),
        .O(\gmii_txd_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hEBBEBEEBBEEBEBBE)) 
    \crc_data[13]_i_1 
       (.I0(tx_done_reg_0),
        .I1(\gmii_txd_reg[0]_0 ),
        .I2(\gmii_txd_reg[7]_0 [2]),
        .I3(\crc_data_reg[13] ),
        .I4(\crc_data_reg[19] [4]),
        .I5(\crc_data_reg[13]_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hEBBEBEEBBEEBEBBE)) 
    \crc_data[14]_i_1 
       (.I0(tx_done_reg_0),
        .I1(\crc_data[26]_i_2_n_0 ),
        .I2(\crc_data_reg[19] [25]),
        .I3(\gmii_txd_reg[0]_0 ),
        .I4(\crc_data[14]_i_2_n_0 ),
        .I5(\crc_data_reg[19] [5]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_data[14]_i_2 
       (.I0(\gmii_txd_reg[7]_0 [5]),
        .I1(\crc_data_reg[19] [29]),
        .O(\crc_data[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBEEBEBBEEBBEBEEB)) 
    \crc_data[15]_i_1 
       (.I0(tx_done_reg_0),
        .I1(\crc_data_reg[15] ),
        .I2(\gmii_txd_reg[0]_0 ),
        .I3(\gmii_txd_reg[7]_0 [2]),
        .I4(\crc_data_reg[19] [6]),
        .I5(\crc_data_reg[13] ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hBEEBEBBEEBBEBEEB)) 
    \crc_data[16]_i_1 
       (.I0(tx_done_reg_0),
        .I1(\gmii_txd_reg[7]_0 [2]),
        .I2(\gmii_txd_reg[7]_0 [7]),
        .I3(\crc_data_reg[15] ),
        .I4(\crc_data_reg[19] [23]),
        .I5(\crc_data_reg[19] [7]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hEBBEBEEBBEEBEBBE)) 
    \crc_data[17]_i_1 
       (.I0(tx_done_reg_0),
        .I1(\gmii_txd_reg[7]_0 [2]),
        .I2(\gmii_txd_reg[7]_0 [1]),
        .I3(\crc_data_reg[19] [29]),
        .I4(\crc_data_reg[19] [8]),
        .I5(\crc_data_reg[17] ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hBEEBEBBEEBBEBEEB)) 
    \crc_data[18]_i_1 
       (.I0(tx_done_reg_0),
        .I1(\crc_data_reg[19] [9]),
        .I2(\crc_data_reg[19] [25]),
        .I3(\crc_data_reg[18] ),
        .I4(\gmii_txd_reg[7]_0 [5]),
        .I5(\gmii_txd_reg[7]_0 [1]),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hEBBEBEEBBEEBEBBE)) 
    \crc_data[19]_i_1 
       (.I0(tx_done_reg_0),
        .I1(\crc_data_reg[19] [10]),
        .I2(\crc_data_reg[19] [30]),
        .I3(\gmii_txd_reg[7]_0 [0]),
        .I4(\crc_data_reg[19] [26]),
        .I5(\gmii_txd_reg[7]_0 [4]),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hBEEBEBBEEBBEBEEB)) 
    \crc_data[1]_i_1 
       (.I0(tx_done_reg_0),
        .I1(\gmii_txd_reg[7]_0 [1]),
        .I2(\gmii_txd_reg[7]_0 [6]),
        .I3(\gmii_txd_reg[0]_0 ),
        .I4(\crc_data_reg[19] [29]),
        .I5(\crc_data_reg[2] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hEBBE)) 
    \crc_data[20]_i_1 
       (.I0(tx_done_reg_0),
        .I1(\gmii_txd_reg[7]_0 [3]),
        .I2(\crc_data_reg[19] [27]),
        .I3(\crc_data_reg[19] [11]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hEBBE)) 
    \crc_data[21]_i_1 
       (.I0(tx_done_reg_0),
        .I1(\crc_data_reg[19] [28]),
        .I2(\gmii_txd_reg[7]_0 [2]),
        .I3(\crc_data_reg[19] [12]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hEBBE)) 
    \crc_data[22]_i_1 
       (.I0(tx_done_reg_0),
        .I1(\gmii_txd_reg[7]_0 [7]),
        .I2(\crc_data_reg[19] [23]),
        .I3(\crc_data_reg[19] [13]),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hEBBEBEEBBEEBEBBE)) 
    \crc_data[23]_i_1 
       (.I0(tx_done_reg_0),
        .I1(\crc_data[23]_i_2_n_0 ),
        .I2(\crc_data_reg[19] [29]),
        .I3(\crc_data[23]_i_3_n_0 ),
        .I4(\crc_data_reg[19] [24]),
        .I5(\crc_data_reg[19] [14]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_data[23]_i_2 
       (.I0(\gmii_txd_reg[7]_0 [7]),
        .I1(\crc_data_reg[19] [23]),
        .O(\crc_data[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_data[23]_i_3 
       (.I0(\gmii_txd_reg[7]_0 [6]),
        .I1(\gmii_txd_reg[7]_0 [1]),
        .O(\crc_data[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEBBEBEEBBEEBEBBE)) 
    \crc_data[24]_i_1 
       (.I0(tx_done_reg_0),
        .I1(\crc_data_reg[24] ),
        .I2(\crc_data_reg[19] [15]),
        .I3(\gmii_txd_reg[7]_0 [6]),
        .I4(\gmii_txd_reg[7]_0 [5]),
        .I5(\gmii_txd_reg[0]_0 ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hEBBEBEEBBEEBEBBE)) 
    \crc_data[25]_i_1 
       (.I0(tx_done_reg_0),
        .I1(\gmii_txd_reg[7]_0 [4]),
        .I2(\crc_data_reg[19] [26]),
        .I3(\gmii_txd_reg[7]_0 [5]),
        .I4(\crc_data_reg[19] [25]),
        .I5(\crc_data_reg[19] [16]),
        .O(D[24]));
  LUT6 #(
    .INIT(64'hEBBEBEEBBEEBEBBE)) 
    \crc_data[26]_i_1 
       (.I0(tx_done_reg_0),
        .I1(\crc_data_reg[19] [17]),
        .I2(\gmii_txd_reg[7]_0 [7]),
        .I3(\crc_data_reg[19] [23]),
        .I4(\crc_data_reg[19] [29]),
        .I5(\crc_data[26]_i_2_n_0 ),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_data[26]_i_2 
       (.I0(\crc_data_reg[19] [27]),
        .I1(\gmii_txd_reg[7]_0 [3]),
        .I2(\crc_data_reg[19] [26]),
        .I3(\gmii_txd_reg[7]_0 [4]),
        .I4(\gmii_txd_reg[7]_0 [1]),
        .O(\crc_data[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEBBEBEEBBEEBEBBE)) 
    \crc_data[28]_i_1 
       (.I0(tx_done_reg_0),
        .I1(\crc_data_reg[28] ),
        .I2(\crc_data_reg[19] [19]),
        .I3(\gmii_txd_reg[7]_0 [2]),
        .I4(\crc_data_reg[19] [28]),
        .I5(\gmii_txd_reg[1]_0 ),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_data[28]_i_3 
       (.I0(\gmii_txd_reg[7]_0 [1]),
        .I1(\crc_data_reg[19] [29]),
        .O(\gmii_txd_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hEBBEBEEBBEEBEBBE)) 
    \crc_data[29]_i_1 
       (.I0(tx_done_reg_0),
        .I1(\crc_data_reg[19] [20]),
        .I2(\crc_data_reg[19] [29]),
        .I3(\gmii_txd_reg[7]_0 [1]),
        .I4(\gmii_txd_reg[0]_0 ),
        .I5(\crc_data_reg[13] ),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_data[29]_i_2 
       (.I0(\gmii_txd_reg[7]_0 [0]),
        .I1(\crc_data_reg[19] [30]),
        .O(\gmii_txd_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hBEEBEBBEEBBEBEEB)) 
    \crc_data[2]_i_1 
       (.I0(tx_done_reg_0),
        .I1(\gmii_txd_reg[0]_0 ),
        .I2(\crc_data_reg[19] [25]),
        .I3(\crc_data_reg[2] ),
        .I4(\crc_data[23]_i_3_n_0 ),
        .I5(\crc_data[14]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hEBBEBEEBBEEBEBBE)) 
    \crc_data[30]_i_1 
       (.I0(tx_done_reg_0),
        .I1(\crc_data_reg[19] [30]),
        .I2(\gmii_txd_reg[7]_0 [0]),
        .I3(\crc_data_reg[19] [27]),
        .I4(\gmii_txd_reg[7]_0 [3]),
        .I5(\crc_data_reg[19] [21]),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \crc_data[31]_i_1 
       (.I0(crc_en),
        .I1(tx_done_reg_0),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hEBBE)) 
    \crc_data[31]_i_2 
       (.I0(tx_done_reg_0),
        .I1(\crc_data_reg[19] [28]),
        .I2(\gmii_txd_reg[7]_0 [2]),
        .I3(\crc_data_reg[19] [22]),
        .O(D[29]));
  LUT6 #(
    .INIT(64'hEBBEBEEBBEEBEBBE)) 
    \crc_data[3]_i_1 
       (.I0(tx_done_reg_0),
        .I1(\crc_data_reg[19] [25]),
        .I2(\crc_data_reg[19] [24]),
        .I3(\gmii_txd_reg[7]_0 [5]),
        .I4(\gmii_txd_reg[7]_0 [6]),
        .I5(\crc_data_reg[3] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hBEEBEBBEEBBEBEEB)) 
    \crc_data[4]_i_1 
       (.I0(tx_done_reg_0),
        .I1(\crc_data[12]_i_3_n_0 ),
        .I2(\crc_data_reg[19] [29]),
        .I3(\gmii_txd_reg[7]_0 [1]),
        .I4(\gmii_txd_reg[7]_0 [4]),
        .I5(\crc_data_reg[4] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hEBBEBEEBBEEBEBBE)) 
    \crc_data[5]_i_1 
       (.I0(tx_done_reg_0),
        .I1(\crc_data_reg[2] ),
        .I2(\crc_data[6]_i_2_n_0 ),
        .I3(\crc_data_reg[19] [29]),
        .I4(\gmii_txd_reg[7]_0 [2]),
        .I5(\crc_data_reg[3] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hBEEBEBBEEBBEBEEB)) 
    \crc_data[6]_i_1 
       (.I0(tx_done_reg_0),
        .I1(\crc_data[6]_i_2_n_0 ),
        .I2(\crc_data[14]_i_2_n_0 ),
        .I3(\crc_data[6]_i_3_n_0 ),
        .I4(\crc_data_reg[19] [24]),
        .I5(\crc_data_reg[19] [25]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \crc_data[6]_i_2 
       (.I0(\gmii_txd_reg[7]_0 [1]),
        .I1(\gmii_txd_reg[7]_0 [6]),
        .I2(\gmii_txd_reg[7]_0 [3]),
        .I3(\crc_data_reg[19] [27]),
        .I4(\crc_data_reg[19] [28]),
        .O(\crc_data[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_data[6]_i_3 
       (.I0(\gmii_txd_reg[7]_0 [2]),
        .I1(\crc_data_reg[19] [30]),
        .I2(\gmii_txd_reg[7]_0 [0]),
        .O(\crc_data[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBEEBEBBEEBBEBEEB)) 
    \crc_data[7]_i_1 
       (.I0(tx_done_reg_0),
        .I1(\gmii_txd_reg[0]_0 ),
        .I2(\gmii_txd_reg[7]_0 [5]),
        .I3(\crc_data_reg[19] [28]),
        .I4(\gmii_txd_reg[7]_0 [4]),
        .I5(\crc_data_reg[7] ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hBEEBEBBEEBBEBEEB)) 
    \crc_data[8]_i_1 
       (.I0(tx_done_reg_0),
        .I1(\crc_data_reg[19] [0]),
        .I2(\gmii_txd_reg[7]_0 [3]),
        .I3(\crc_data_reg[19] [27]),
        .I4(\gmii_txd_reg[7]_0 [7]),
        .I5(\crc_data_reg[11] ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00010100)) 
    crc_en_i_1
       (.I0(cur_state[1]),
        .I1(cur_state[0]),
        .I2(cur_state[4]),
        .I3(cur_state[3]),
        .I4(cur_state[2]),
        .O(crc_en_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    crc_en_reg
       (.C(crc_en_reg_0),
        .CE(1'b1),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(crc_en_i_1_n_0),
        .Q(crc_en));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \cur_state[0]_i_1__0 
       (.I0(cur_state[0]),
        .I1(skip_en_reg_n_0),
        .I2(cur_state[4]),
        .I3(\cur_state[4]_i_2_n_0 ),
        .O(\cur_state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \cur_state[1]_i_1__0 
       (.I0(cur_state[1]),
        .I1(skip_en_reg_n_0),
        .I2(cur_state[0]),
        .I3(\cur_state[4]_i_2_n_0 ),
        .O(\cur_state[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \cur_state[2]_i_1__0 
       (.I0(cur_state[2]),
        .I1(skip_en_reg_n_0),
        .I2(cur_state[1]),
        .I3(\cur_state[4]_i_2_n_0 ),
        .O(\cur_state[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \cur_state[3]_i_1__0 
       (.I0(cur_state[3]),
        .I1(skip_en_reg_n_0),
        .I2(cur_state[2]),
        .I3(\cur_state[4]_i_2_n_0 ),
        .O(\cur_state[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \cur_state[4]_i_1__0 
       (.I0(cur_state[4]),
        .I1(skip_en_reg_n_0),
        .I2(cur_state[3]),
        .I3(\cur_state[4]_i_2_n_0 ),
        .O(\cur_state[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
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
       (.C(crc_en_reg_0),
        .CE(1'b1),
        .D(\cur_state[0]_i_1__0_n_0 ),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(cur_state[0]));
  (* FSM_ENCODED_STATES = "st_preamble:00010,st_eth_head:00100,st_arp_data:01000,st_crc:10000,st_idle:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[1] 
       (.C(crc_en_reg_0),
        .CE(1'b1),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\cur_state[1]_i_1__0_n_0 ),
        .Q(cur_state[1]));
  (* FSM_ENCODED_STATES = "st_preamble:00010,st_eth_head:00100,st_arp_data:01000,st_crc:10000,st_idle:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[2] 
       (.C(crc_en_reg_0),
        .CE(1'b1),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\cur_state[2]_i_1__0_n_0 ),
        .Q(cur_state[2]));
  (* FSM_ENCODED_STATES = "st_preamble:00010,st_eth_head:00100,st_arp_data:01000,st_crc:10000,st_idle:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[3] 
       (.C(crc_en_reg_0),
        .CE(1'b1),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\cur_state[3]_i_1__0_n_0 ),
        .Q(cur_state[3]));
  (* FSM_ENCODED_STATES = "st_preamble:00010,st_eth_head:00100,st_arp_data:01000,st_crc:10000,st_idle:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[4] 
       (.C(crc_en_reg_0),
        .CE(1'b1),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\cur_state[4]_i_1__0_n_0 ),
        .Q(cur_state[4]));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \eth_head[5][7]_i_2 
       (.I0(\tx_en_delay_reg_n_0_[2] ),
        .I1(p_0_in3_in),
        .I2(cur_state[0]),
        .I3(tx_done_t_i_2_n_0),
        .I4(cur_state[4]),
        .I5(cur_state[1]),
        .O(\tx_en_delay_reg[2]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[0][0] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[40]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[0]_5 [0]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[0][1] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[41]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[0]_5 [1]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[0][2] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[42]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[0]_5 [2]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[0][3] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[43]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[0]_5 [3]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[0][4] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[44]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[0]_5 [4]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[0][5] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[45]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[0]_5 [5]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[0][6] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[46]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[0]_5 [6]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[0][7] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[47]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[0]_5 [7]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[1][0] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[32]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[1]_4 [0]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[1][1] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[33]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[1]_4 [1]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[1][2] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[34]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[1]_4 [2]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[1][3] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[35]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[1]_4 [3]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[1][4] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[36]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[1]_4 [4]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[1][5] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[37]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[1]_4 [5]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[1][6] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[38]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[1]_4 [6]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[1][7] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[39]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[1]_4 [7]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[2][0] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[24]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[2]_3 [0]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[2][1] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[25]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[2]_3 [1]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[2][2] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[26]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[2]_3 [2]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[2][3] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[27]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[2]_3 [3]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[2][4] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[28]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[2]_3 [4]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[2][5] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[29]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[2]_3 [5]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[2][6] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[30]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[2]_3 [6]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[2][7] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[31]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[2]_3 [7]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[3][0] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[16]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[3]_2 [0]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[3][1] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[17]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[3]_2 [1]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[3][2] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[18]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[3]_2 [2]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[3][3] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[19]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[3]_2 [3]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[3][4] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[20]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[3]_2 [4]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[3][5] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[21]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[3]_2 [5]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[3][6] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[22]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[3]_2 [6]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[3][7] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[23]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[3]_2 [7]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[4][0] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[8]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[4]_1 [0]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[4][1] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[9]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[4]_1 [1]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[4][2] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[10]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[4]_1 [2]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[4][3] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[11]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[4]_1 [3]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[4][4] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[12]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[4]_1 [4]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[4][5] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[13]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[4]_1 [5]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[4][6] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[14]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[4]_1 [6]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[4][7] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[15]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[4]_1 [7]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[5][0] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[0]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[5]_0 [0]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[5][1] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[1]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[5]_0 [1]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[5][2] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[2]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[5]_0 [2]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[5][3] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[3]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[5]_0 [3]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[5][4] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[4]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[5]_0 [4]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[5][5] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[5]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[5]_0 [5]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[5][6] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[6]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[5]_0 [6]));
  FDPE #(
    .INIT(1'b1)) 
    \eth_head_reg[5][7] 
       (.C(crc_en_reg_0),
        .CE(\eth_head_reg[5][7]_0 ),
        .D(src_mac[7]),
        .PRE(\gmii_txd_reg[7]_1 ),
        .Q(\eth_head_reg[5]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    gmii_tx_en_reg
       (.C(crc_en_reg_0),
        .CE(1'b1),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\cnt[5]_i_1_n_0 ),
        .Q(gmii_tx_en));
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \gmii_txd[0]_i_1 
       (.I0(\gmii_txd[0]_i_2_n_0 ),
        .I1(cur_state[1]),
        .I2(cur_state[2]),
        .I3(\gmii_txd[0]_i_3_n_0 ),
        .I4(\gmii_txd[0]_i_4_n_0 ),
        .O(\gmii_txd[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF096FF00F096)) 
    \gmii_txd[0]_i_10 
       (.I0(\gmii_txd_reg[7]_0 [2]),
        .I1(\crc_data_reg[19] [28]),
        .I2(\crc_data_reg[19] [22]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\crc_data_reg[19] [14]),
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
    .INIT(64'h000000008B888B8B)) 
    \gmii_txd[0]_i_2 
       (.I0(\gmii_txd[0]_i_5_n_0 ),
        .I1(\gmii_txd[1]_i_5_n_0 ),
        .I2(\gmii_txd[0]_i_6_n_0 ),
        .I3(\gmii_txd[0]_i_7_n_0 ),
        .I4(\gmii_txd[7]_i_13_n_0 ),
        .I5(\gmii_txd[5]_i_6_n_0 ),
        .O(\gmii_txd[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4540DDDD45408888)) 
    \gmii_txd[0]_i_3 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\gmii_txd[0]_i_8_n_0 ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\gmii_txd[0]_i_9_n_0 ),
        .O(\gmii_txd[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h02AA028A028A028A)) 
    \gmii_txd[0]_i_4 
       (.I0(cur_state[4]),
        .I1(\cnt_reg[4]_0 ),
        .I2(\gmii_txd[0]_i_10_n_0 ),
        .I3(\crc_data_reg[19] [6]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\gmii_txd[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0CFFFFFA0CF0000)) 
    \gmii_txd[0]_i_5 
       (.I0(\eth_head_reg[1]_4 [0]),
        .I1(\eth_head_reg[0]_5 [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\gmii_txd[7]_i_13_n_0 ),
        .I5(\gmii_txd[0]_i_11_n_0 ),
        .O(\gmii_txd[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h007F0000CF7F0FCF)) 
    \gmii_txd[0]_i_6 
       (.I0(\arp_data_reg[7]_10 [0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\cnt_reg_n_0_[4] ),
        .O(\gmii_txd[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[0]_i_7 
       (.I0(\arp_data_reg[27]_6 [0]),
        .I1(\arp_data_reg[26]_7 [0]),
        .I2(Q[1]),
        .I3(\arp_data_reg[25]_8 [0]),
        .I4(Q[0]),
        .I5(\arp_data_reg[24]_9 [0]),
        .O(\gmii_txd[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gmii_txd[0]_i_8 
       (.I0(\eth_head_reg[5]_0 [0]),
        .I1(Q[0]),
        .I2(\eth_head_reg[4]_1 [0]),
        .O(\gmii_txd[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[0]_i_9 
       (.I0(\eth_head_reg[3]_2 [0]),
        .I1(\eth_head_reg[2]_3 [0]),
        .I2(Q[1]),
        .I3(\eth_head_reg[1]_4 [0]),
        .I4(Q[0]),
        .I5(\eth_head_reg[0]_5 [0]),
        .O(\gmii_txd[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFFFEEEFE)) 
    \gmii_txd[1]_i_1 
       (.I0(\gmii_txd[1]_i_2_n_0 ),
        .I1(\gmii_txd[1]_i_3_n_0 ),
        .I2(\gmii_txd_reg[1]_i_4_n_0 ),
        .I3(\gmii_txd[1]_i_5_n_0 ),
        .I4(\gmii_txd[1]_i_6_n_0 ),
        .I5(\gmii_txd[5]_i_6_n_0 ),
        .O(\gmii_txd[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[1]_i_10 
       (.I0(\arp_data_reg[27]_6 [1]),
        .I1(\arp_data_reg[26]_7 [1]),
        .I2(Q[1]),
        .I3(\arp_data_reg[25]_8 [1]),
        .I4(Q[0]),
        .I5(\arp_data_reg[24]_9 [1]),
        .O(\gmii_txd[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[1]_i_11 
       (.I0(\eth_head_reg[5]_0 [1]),
        .I1(\eth_head_reg[4]_1 [1]),
        .I2(Q[1]),
        .I3(\eth_head_reg[3]_2 [1]),
        .I4(Q[0]),
        .I5(\eth_head_reg[2]_3 [1]),
        .O(\gmii_txd[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[1]_i_12 
       (.I0(\eth_head_reg[3]_2 [1]),
        .I1(\eth_head_reg[2]_3 [1]),
        .I2(Q[1]),
        .I3(\eth_head_reg[1]_4 [1]),
        .I4(Q[0]),
        .I5(\eth_head_reg[0]_5 [1]),
        .O(\gmii_txd[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h02AA028A028A028A)) 
    \gmii_txd[1]_i_2 
       (.I0(cur_state[4]),
        .I1(\cnt_reg[4]_0 ),
        .I2(\gmii_txd[1]_i_7_n_0 ),
        .I3(\crc_data_reg[19] [5]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\gmii_txd[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA2020202A202A2A2)) 
    \gmii_txd[1]_i_3 
       (.I0(cur_state[2]),
        .I1(\gmii_txd[1]_i_8_n_0 ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(Q[0]),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(Q[1]),
        .O(\gmii_txd[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gmii_txd[1]_i_5 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[3] ),
        .O(\gmii_txd[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFC0FFFFAFC00000)) 
    \gmii_txd[1]_i_6 
       (.I0(\eth_head_reg[1]_4 [1]),
        .I1(\eth_head_reg[0]_5 [1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\gmii_txd[7]_i_13_n_0 ),
        .I5(\gmii_txd[1]_i_11_n_0 ),
        .O(\gmii_txd[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF096FF00F096)) 
    \gmii_txd[1]_i_7 
       (.I0(\crc_data[12]_i_3_n_0 ),
        .I1(\gmii_txd_reg[0]_0 ),
        .I2(\crc_data_reg[19] [21]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\crc_data_reg[19] [13]),
        .O(\gmii_txd[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555303F5555)) 
    \gmii_txd[1]_i_8 
       (.I0(\gmii_txd[1]_i_12_n_0 ),
        .I1(\eth_head_reg[5]_0 [1]),
        .I2(Q[0]),
        .I3(\eth_head_reg[4]_1 [1]),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(Q[1]),
        .O(\gmii_txd[1]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h62220404)) 
    \gmii_txd[1]_i_9 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(\arp_data_reg[7]_10 [1]),
        .I4(Q[1]),
        .O(\gmii_txd[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2F2FFF2)) 
    \gmii_txd[2]_i_1 
       (.I0(cur_state[2]),
        .I1(\gmii_txd[2]_i_2_n_0 ),
        .I2(cur_state[1]),
        .I3(\gmii_txd[2]_i_3_n_0 ),
        .I4(\gmii_txd[5]_i_6_n_0 ),
        .I5(\gmii_txd[2]_i_4_n_0 ),
        .O(\gmii_txd[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gmii_txd[2]_i_11 
       (.I0(\eth_head_reg[5]_0 [2]),
        .I1(Q[0]),
        .I2(\eth_head_reg[4]_1 [2]),
        .O(\gmii_txd[2]_i_11_n_0 ));
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
  LUT6 #(
    .INIT(64'h444400CC777733CF)) 
    \gmii_txd[2]_i_2 
       (.I0(Q[0]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\gmii_txd[2]_i_5_n_0 ),
        .I3(Q[1]),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\gmii_txd[2]_i_6_n_0 ),
        .O(\gmii_txd[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC808C808FB3BC808)) 
    \gmii_txd[2]_i_3 
       (.I0(\gmii_txd[2]_i_7_n_0 ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\gmii_txd[2]_i_8_n_0 ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(Q[1]),
        .O(\gmii_txd[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7000707070007000)) 
    \gmii_txd[2]_i_4 
       (.I0(\crc_data_reg[19] [4]),
        .I1(\cnt_reg[4]_0 ),
        .I2(cur_state[4]),
        .I3(\gmii_txd[2]_i_9_n_0 ),
        .I4(\gmii_txd_reg[2]_1 ),
        .I5(\gmii_txd[5]_i_8_n_0 ),
        .O(\gmii_txd[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gmii_txd[2]_i_5 
       (.I0(\eth_head_reg[1]_4 [2]),
        .I1(Q[0]),
        .I2(\eth_head_reg[0]_5 [2]),
        .O(\gmii_txd[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000B8B8FF000000)) 
    \gmii_txd[2]_i_6 
       (.I0(\eth_head_reg[3]_2 [2]),
        .I1(Q[0]),
        .I2(\eth_head_reg[2]_3 [2]),
        .I3(\gmii_txd[2]_i_11_n_0 ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(Q[1]),
        .O(\gmii_txd[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE200FFFFE2000000)) 
    \gmii_txd[2]_i_7 
       (.I0(\eth_head_reg[0]_5 [2]),
        .I1(Q[0]),
        .I2(\eth_head_reg[1]_4 [2]),
        .I3(Q[1]),
        .I4(\gmii_txd[7]_i_13_n_0 ),
        .I5(\gmii_txd[2]_i_12_n_0 ),
        .O(\gmii_txd[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[2]_i_8 
       (.I0(\arp_data_reg[27]_6 [2]),
        .I1(\arp_data_reg[26]_7 [2]),
        .I2(Q[1]),
        .I3(\arp_data_reg[25]_8 [2]),
        .I4(Q[0]),
        .I5(\arp_data_reg[24]_9 [2]),
        .O(\gmii_txd[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h33222F2233FF2F22)) 
    \gmii_txd[2]_i_9 
       (.I0(\cnt_reg[4]_0 ),
        .I1(\crc_data_reg[19] [4]),
        .I2(\crc_data_reg[19] [20]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\crc_data_reg[19] [12]),
        .O(\gmii_txd[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \gmii_txd[3]_i_1 
       (.I0(\gmii_txd_reg[3]_0 ),
        .I1(cur_state[4]),
        .I2(\gmii_txd_reg[3]_i_3_n_0 ),
        .I3(\gmii_txd[5]_i_6_n_0 ),
        .I4(cur_state[2]),
        .I5(\gmii_txd[3]_i_4_n_0 ),
        .O(\gmii_txd[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000B8B8FF000000)) 
    \gmii_txd[3]_i_10 
       (.I0(\eth_head_reg[3]_2 [3]),
        .I1(Q[0]),
        .I2(\eth_head_reg[2]_3 [3]),
        .I3(\gmii_txd[3]_i_13_n_0 ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(Q[1]),
        .O(\gmii_txd[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[3]_i_11 
       (.I0(\arp_data_reg[27]_6 [3]),
        .I1(\arp_data_reg[26]_7 [3]),
        .I2(Q[1]),
        .I3(\arp_data_reg[25]_8 [3]),
        .I4(Q[0]),
        .I5(\arp_data_reg[24]_9 [3]),
        .O(\gmii_txd[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[3]_i_12 
       (.I0(\eth_head_reg[5]_0 [3]),
        .I1(\eth_head_reg[4]_1 [3]),
        .I2(Q[1]),
        .I3(\eth_head_reg[3]_2 [3]),
        .I4(Q[0]),
        .I5(\eth_head_reg[2]_3 [3]),
        .O(\gmii_txd[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gmii_txd[3]_i_13 
       (.I0(\eth_head_reg[5]_0 [3]),
        .I1(Q[0]),
        .I2(\eth_head_reg[4]_1 [3]),
        .O(\gmii_txd[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h8888CCCCBBBBFFCF)) 
    \gmii_txd[3]_i_4 
       (.I0(Q[0]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\gmii_txd[3]_i_9_n_0 ),
        .I3(Q[1]),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\gmii_txd[3]_i_10_n_0 ),
        .O(\gmii_txd[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB088808B80888088)) 
    \gmii_txd[3]_i_7 
       (.I0(\gmii_txd[3]_i_11_n_0 ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\gmii_txd[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFC0FFFFAFC00000)) 
    \gmii_txd[3]_i_8 
       (.I0(\eth_head_reg[1]_4 [3]),
        .I1(\eth_head_reg[0]_5 [3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\gmii_txd[7]_i_13_n_0 ),
        .I5(\gmii_txd[3]_i_12_n_0 ),
        .O(\gmii_txd[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gmii_txd[3]_i_9 
       (.I0(\eth_head_reg[1]_4 [3]),
        .I1(Q[0]),
        .I2(\eth_head_reg[0]_5 [3]),
        .O(\gmii_txd[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8F8FFF8)) 
    \gmii_txd[4]_i_1 
       (.I0(\gmii_txd[4]_i_2_n_0 ),
        .I1(cur_state[2]),
        .I2(cur_state[1]),
        .I3(\gmii_txd_reg[4]_i_3_n_0 ),
        .I4(\gmii_txd[5]_i_6_n_0 ),
        .I5(\gmii_txd[4]_i_4_n_0 ),
        .O(\gmii_txd[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \gmii_txd[4]_i_10 
       (.I0(\gmii_txd_reg[7]_0 [2]),
        .I1(\crc_data_reg[19] [27]),
        .I2(\gmii_txd_reg[7]_0 [3]),
        .I3(\crc_data_reg[17] ),
        .I4(\gmii_txd_reg[0]_0 ),
        .I5(\crc_data_reg[19] [18]),
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
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[4]_i_12 
       (.I0(\eth_head_reg[5]_0 [4]),
        .I1(\eth_head_reg[4]_1 [4]),
        .I2(Q[1]),
        .I3(\eth_head_reg[3]_2 [4]),
        .I4(Q[0]),
        .I5(\eth_head_reg[2]_3 [4]),
        .O(\gmii_txd[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h4540DDDD45408888)) 
    \gmii_txd[4]_i_2 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\gmii_txd[4]_i_5_n_0 ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\gmii_txd[4]_i_6_n_0 ),
        .O(\gmii_txd[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AE00AE00AE00)) 
    \gmii_txd[4]_i_4 
       (.I0(\gmii_txd_reg[4]_0 ),
        .I1(\gmii_txd[5]_i_8_n_0 ),
        .I2(\gmii_txd[4]_i_10_n_0 ),
        .I3(cur_state[4]),
        .I4(\cnt_reg[4]_0 ),
        .I5(\crc_data_reg[19] [3]),
        .O(\gmii_txd[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gmii_txd[4]_i_5 
       (.I0(\eth_head_reg[5]_0 [4]),
        .I1(Q[0]),
        .I2(\eth_head_reg[4]_1 [4]),
        .O(\gmii_txd[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[4]_i_6 
       (.I0(\eth_head_reg[3]_2 [4]),
        .I1(\eth_head_reg[2]_3 [4]),
        .I2(Q[1]),
        .I3(\eth_head_reg[1]_4 [4]),
        .I4(Q[0]),
        .I5(\eth_head_reg[0]_5 [4]),
        .O(\gmii_txd[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h80B8B0B880888088)) 
    \gmii_txd[4]_i_7 
       (.I0(\gmii_txd[4]_i_11_n_0 ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\gmii_txd[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE200FFFFE2000000)) 
    \gmii_txd[4]_i_8 
       (.I0(\eth_head_reg[0]_5 [4]),
        .I1(Q[0]),
        .I2(\eth_head_reg[1]_4 [4]),
        .I3(Q[1]),
        .I4(\gmii_txd[7]_i_13_n_0 ),
        .I5(\gmii_txd[4]_i_12_n_0 ),
        .O(\gmii_txd[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEAEAEAEFFAE)) 
    \gmii_txd[5]_i_1 
       (.I0(\gmii_txd[5]_i_2_n_0 ),
        .I1(cur_state[2]),
        .I2(\gmii_txd[5]_i_3_n_0 ),
        .I3(\gmii_txd[5]_i_4_n_0 ),
        .I4(\gmii_txd[5]_i_5_n_0 ),
        .I5(\gmii_txd[5]_i_6_n_0 ),
        .O(\gmii_txd[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gmii_txd[5]_i_10 
       (.I0(\eth_head_reg[5]_0 [5]),
        .I1(Q[0]),
        .I2(\eth_head_reg[4]_1 [5]),
        .O(\gmii_txd[5]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gmii_txd[5]_i_11 
       (.I0(\eth_head_reg[3]_2 [5]),
        .I1(Q[0]),
        .I2(\eth_head_reg[2]_3 [5]),
        .O(\gmii_txd[5]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gmii_txd[5]_i_12 
       (.I0(\eth_head_reg[1]_4 [5]),
        .I1(Q[0]),
        .I2(\eth_head_reg[0]_5 [5]),
        .O(\gmii_txd[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[5]_i_13 
       (.I0(\arp_data_reg[27]_6 [5]),
        .I1(\arp_data_reg[26]_7 [5]),
        .I2(Q[1]),
        .I3(\arp_data_reg[25]_8 [5]),
        .I4(Q[0]),
        .I5(\arp_data_reg[24]_9 [5]),
        .O(\gmii_txd[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[5]_i_14 
       (.I0(\eth_head_reg[5]_0 [5]),
        .I1(\eth_head_reg[4]_1 [5]),
        .I2(Q[1]),
        .I3(\eth_head_reg[3]_2 [5]),
        .I4(Q[0]),
        .I5(\eth_head_reg[2]_3 [5]),
        .O(\gmii_txd[5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000AE00AE00AE00)) 
    \gmii_txd[5]_i_2 
       (.I0(\gmii_txd_reg[5]_0 ),
        .I1(\gmii_txd[5]_i_8_n_0 ),
        .I2(\gmii_txd[5]_i_9_n_0 ),
        .I3(cur_state[4]),
        .I4(\crc_data_reg[19] [2]),
        .I5(\cnt_reg[4]_0 ),
        .O(\gmii_txd[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF5F5F3F3000F)) 
    \gmii_txd[5]_i_3 
       (.I0(\gmii_txd[5]_i_10_n_0 ),
        .I1(\gmii_txd[5]_i_11_n_0 ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\gmii_txd[5]_i_12_n_0 ),
        .I4(Q[1]),
        .I5(\cnt_reg_n_0_[2] ),
        .O(\gmii_txd[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFC3CF030F434F030)) 
    \gmii_txd[5]_i_4 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\gmii_txd[5]_i_13_n_0 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\gmii_txd[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0400040C040C040C)) 
    \gmii_txd[5]_i_5 
       (.I0(\gmii_txd[5]_i_14_n_0 ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\gmii_txd[5]_i_12_n_0 ),
        .I5(Q[1]),
        .O(\gmii_txd[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hFFFF80FF)) 
    \gmii_txd[5]_i_6 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(cur_state[3]),
        .I4(\cnt_reg_n_0_[5] ),
        .O(\gmii_txd[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \gmii_txd[5]_i_8 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\gmii_txd[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \gmii_txd[5]_i_9 
       (.I0(\gmii_txd_reg[7]_0 [1]),
        .I1(\crc_data_reg[13] ),
        .I2(\crc_data[12]_i_3_n_0 ),
        .I3(\crc_data_reg[19] [29]),
        .I4(\crc_data[23]_i_2_n_0 ),
        .I5(\crc_data_reg[19] [17]),
        .O(\gmii_txd[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF331F0000)) 
    \gmii_txd[6]_i_1 
       (.I0(\cnt[5]_i_5_n_0 ),
        .I1(\crc_data_reg[19] [1]),
        .I2(\gmii_txd_reg[6]_0 ),
        .I3(\cnt_reg[4]_0 ),
        .I4(cur_state[4]),
        .I5(\gmii_txd[6]_i_3_n_0 ),
        .O(\gmii_txd[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[6]_i_10 
       (.I0(\arp_data_reg[27]_6 [6]),
        .I1(\arp_data_reg[26]_7 [6]),
        .I2(Q[1]),
        .I3(\arp_data_reg[25]_8 [6]),
        .I4(Q[0]),
        .I5(\arp_data_reg[24]_9 [6]),
        .O(\gmii_txd[6]_i_10_n_0 ));
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
    .INIT(64'hF2FFF2F2F2FFF2FF)) 
    \gmii_txd[6]_i_3 
       (.I0(cur_state[2]),
        .I1(\gmii_txd[6]_i_4_n_0 ),
        .I2(cur_state[1]),
        .I3(\gmii_txd[6]_i_5_n_0 ),
        .I4(\gmii_txd[6]_i_6_n_0 ),
        .I5(\gmii_txd[1]_i_5_n_0 ),
        .O(\gmii_txd[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FFFFFF550F33)) 
    \gmii_txd[6]_i_4 
       (.I0(\gmii_txd[6]_i_7_n_0 ),
        .I1(\gmii_txd[6]_i_8_n_0 ),
        .I2(\gmii_txd[6]_i_9_n_0 ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(\cnt_reg_n_0_[3] ),
        .O(\gmii_txd[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hABBBBBBBEBFBFBFB)) 
    \gmii_txd[6]_i_5 
       (.I0(\gmii_txd[5]_i_6_n_0 ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt[5]_i_5_n_0 ),
        .I5(\gmii_txd[6]_i_10_n_0 ),
        .O(\gmii_txd[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE200FFFFE2000000)) 
    \gmii_txd[6]_i_6 
       (.I0(\eth_head_reg[0]_5 [6]),
        .I1(Q[0]),
        .I2(\eth_head_reg[1]_4 [6]),
        .I3(Q[1]),
        .I4(\gmii_txd[7]_i_13_n_0 ),
        .I5(\gmii_txd[6]_i_11_n_0 ),
        .O(\gmii_txd[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gmii_txd[6]_i_7 
       (.I0(\eth_head_reg[3]_2 [6]),
        .I1(Q[0]),
        .I2(\eth_head_reg[2]_3 [6]),
        .O(\gmii_txd[6]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gmii_txd[6]_i_8 
       (.I0(\eth_head_reg[1]_4 [6]),
        .I1(Q[0]),
        .I2(\eth_head_reg[0]_5 [6]),
        .O(\gmii_txd[6]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gmii_txd[6]_i_9 
       (.I0(\eth_head_reg[5]_0 [6]),
        .I1(Q[0]),
        .I2(\eth_head_reg[4]_1 [6]),
        .O(\gmii_txd[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000FCCD0)) 
    \gmii_txd[7]_i_1 
       (.I0(\cnt_reg[4]_0 ),
        .I1(\gmii_txd[7]_i_3_n_0 ),
        .I2(cur_state[4]),
        .I3(tx_done_t_i_2_n_0),
        .I4(cur_state[1]),
        .I5(cur_state[0]),
        .O(\gmii_txd[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \gmii_txd[7]_i_10 
       (.I0(\gmii_txd_reg[0]_0 ),
        .I1(\gmii_txd_reg[7]_0 [5]),
        .I2(\gmii_txd_reg[7]_0 [6]),
        .I3(\crc_data_reg[19] [15]),
        .I4(\crc_data_reg[19] [24]),
        .I5(\crc_data_reg[19] [25]),
        .O(\gmii_txd[7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \gmii_txd[7]_i_11 
       (.I0(\gmii_txd[7]_i_12_n_0 ),
        .I1(\gmii_txd[7]_i_16_n_0 ),
        .I2(Q[1]),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\gmii_txd[7]_i_17_n_0 ),
        .O(\gmii_txd[7]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gmii_txd[7]_i_12 
       (.I0(\eth_head_reg[1]_4 [7]),
        .I1(Q[0]),
        .I2(\eth_head_reg[0]_5 [7]),
        .O(\gmii_txd[7]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \gmii_txd[7]_i_13 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .O(\gmii_txd[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[7]_i_14 
       (.I0(\eth_head_reg[5]_0 [7]),
        .I1(\eth_head_reg[4]_1 [7]),
        .I2(Q[1]),
        .I3(\eth_head_reg[3]_2 [7]),
        .I4(Q[0]),
        .I5(\eth_head_reg[2]_3 [7]),
        .O(\gmii_txd[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hABBBBBBBEBFBFBFB)) 
    \gmii_txd[7]_i_15 
       (.I0(\gmii_txd[5]_i_6_n_0 ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(Q[1]),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\gmii_txd[7]_i_18_n_0 ),
        .O(\gmii_txd[7]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gmii_txd[7]_i_16 
       (.I0(\eth_head_reg[3]_2 [7]),
        .I1(Q[0]),
        .I2(\eth_head_reg[2]_3 [7]),
        .O(\gmii_txd[7]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gmii_txd[7]_i_17 
       (.I0(\eth_head_reg[5]_0 [7]),
        .I1(Q[0]),
        .I2(\eth_head_reg[4]_1 [7]),
        .O(\gmii_txd[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gmii_txd[7]_i_18 
       (.I0(\arp_data_reg[27]_6 [7]),
        .I1(\arp_data_reg[26]_7 [7]),
        .I2(Q[1]),
        .I3(\arp_data_reg[25]_8 [7]),
        .I4(Q[0]),
        .I5(\arp_data_reg[24]_9 [7]),
        .O(\gmii_txd[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF100)) 
    \gmii_txd[7]_i_2 
       (.I0(\gmii_txd[7]_i_4_n_0 ),
        .I1(\crc_data_reg[19] [0]),
        .I2(\gmii_txd[7]_i_5_n_0 ),
        .I3(cur_state[4]),
        .I4(\gmii_txd[7]_i_6_n_0 ),
        .I5(\gmii_txd[7]_i_7_n_0 ),
        .O(\gmii_txd[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2AAA2AAA22AA2AAA)) 
    \gmii_txd[7]_i_3 
       (.I0(\gmii_txd[7]_i_8_n_0 ),
        .I1(cur_state[3]),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(\gmii_txd[7]_i_9_n_0 ),
        .O(\gmii_txd[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000007)) 
    \gmii_txd[7]_i_4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[5] ),
        .I5(\cnt_reg_n_0_[4] ),
        .O(\gmii_txd[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0001101104051415)) 
    \gmii_txd[7]_i_5 
       (.I0(\cnt_reg[4]_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\gmii_txd[7]_i_10_n_0 ),
        .I4(\crc_data_reg[19] [15]),
        .I5(\crc_data_reg[19] [7]),
        .O(\gmii_txd[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \gmii_txd[7]_i_6 
       (.I0(\cnt[5]_i_5_n_0 ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(cur_state[1]),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(cur_state[2]),
        .I5(\gmii_txd[7]_i_11_n_0 ),
        .O(\gmii_txd[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D5FFD555)) 
    \gmii_txd[7]_i_7 
       (.I0(\gmii_txd[1]_i_5_n_0 ),
        .I1(\gmii_txd[7]_i_12_n_0 ),
        .I2(Q[1]),
        .I3(\gmii_txd[7]_i_13_n_0 ),
        .I4(\gmii_txd[7]_i_14_n_0 ),
        .I5(\gmii_txd[7]_i_15_n_0 ),
        .O(\gmii_txd[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \gmii_txd[7]_i_8 
       (.I0(cur_state[4]),
        .I1(cur_state[3]),
        .I2(cur_state[2]),
        .O(\gmii_txd[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \gmii_txd[7]_i_9 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[2] ),
        .O(\gmii_txd[7]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \gmii_txd_reg[0] 
       (.C(crc_en_reg_0),
        .CE(\gmii_txd[7]_i_1_n_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\gmii_txd[0]_i_1_n_0 ),
        .Q(\gmii_txd_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gmii_txd_reg[1] 
       (.C(crc_en_reg_0),
        .CE(\gmii_txd[7]_i_1_n_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\gmii_txd[1]_i_1_n_0 ),
        .Q(\gmii_txd_reg[7]_0 [1]));
  MUXF7 \gmii_txd_reg[1]_i_4 
       (.I0(\gmii_txd[1]_i_9_n_0 ),
        .I1(\gmii_txd[1]_i_10_n_0 ),
        .O(\gmii_txd_reg[1]_i_4_n_0 ),
        .S(\gmii_txd[7]_i_13_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \gmii_txd_reg[2] 
       (.C(crc_en_reg_0),
        .CE(\gmii_txd[7]_i_1_n_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\gmii_txd[2]_i_1_n_0 ),
        .Q(\gmii_txd_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gmii_txd_reg[3] 
       (.C(crc_en_reg_0),
        .CE(\gmii_txd[7]_i_1_n_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\gmii_txd[3]_i_1_n_0 ),
        .Q(\gmii_txd_reg[7]_0 [3]));
  MUXF7 \gmii_txd_reg[3]_i_3 
       (.I0(\gmii_txd[3]_i_7_n_0 ),
        .I1(\gmii_txd[3]_i_8_n_0 ),
        .O(\gmii_txd_reg[3]_i_3_n_0 ),
        .S(\gmii_txd[1]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \gmii_txd_reg[4] 
       (.C(crc_en_reg_0),
        .CE(\gmii_txd[7]_i_1_n_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\gmii_txd[4]_i_1_n_0 ),
        .Q(\gmii_txd_reg[7]_0 [4]));
  MUXF7 \gmii_txd_reg[4]_i_3 
       (.I0(\gmii_txd[4]_i_7_n_0 ),
        .I1(\gmii_txd[4]_i_8_n_0 ),
        .O(\gmii_txd_reg[4]_i_3_n_0 ),
        .S(\gmii_txd[1]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \gmii_txd_reg[5] 
       (.C(crc_en_reg_0),
        .CE(\gmii_txd[7]_i_1_n_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\gmii_txd[5]_i_1_n_0 ),
        .Q(\gmii_txd_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \gmii_txd_reg[6] 
       (.C(crc_en_reg_0),
        .CE(\gmii_txd[7]_i_1_n_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\gmii_txd[6]_i_1_n_0 ),
        .Q(\gmii_txd_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \gmii_txd_reg[7] 
       (.C(crc_en_reg_0),
        .CE(\gmii_txd[7]_i_1_n_0 ),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\gmii_txd[7]_i_2_n_0 ),
        .Q(\gmii_txd_reg[7]_0 [7]));
  LUT6 #(
    .INIT(64'h8A888A888A88AAAA)) 
    skip_en_i_1__0
       (.I0(\cur_state[4]_i_2_n_0 ),
        .I1(skip_en_i_2__0_n_0),
        .I2(skip_en_i_3__0_n_0),
        .I3(cur_state[3]),
        .I4(skip_en_i_4__0_n_0),
        .I5(skip_en_i_5__0_n_0),
        .O(skip_en));
  LUT3 #(
    .INIT(8'h08)) 
    skip_en_i_2__0
       (.I0(cur_state[0]),
        .I1(p_0_in3_in),
        .I2(\tx_en_delay_reg_n_0_[2] ),
        .O(skip_en_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    skip_en_i_3__0
       (.I0(Q[0]),
        .I1(\cnt_reg_n_0_[5] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(Q[1]),
        .O(skip_en_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    skip_en_i_4__0
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(\cnt_reg_n_0_[4] ),
        .O(skip_en_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h00000000FFDFFFFF)) 
    skip_en_i_5__0
       (.I0(cur_state[1]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(skip_en_i_6__0_n_0),
        .O(skip_en_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h000A0000000000C0)) 
    skip_en_i_6__0
       (.I0(cur_state[2]),
        .I1(cur_state[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\cnt_reg_n_0_[3] ),
        .O(skip_en_i_6__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    skip_en_reg
       (.C(crc_en_reg_0),
        .CE(1'b1),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(skip_en),
        .Q(skip_en_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tx_done_reg
       (.C(crc_en_reg_0),
        .CE(1'b1),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(tx_done_t_reg_n_0),
        .Q(tx_done_reg_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    tx_done_t_i_1
       (.I0(\cnt_reg[4]_0 ),
        .I1(\cnt[5]_i_5_n_0 ),
        .I2(cur_state[4]),
        .I3(tx_done_t_i_2_n_0),
        .I4(cur_state[0]),
        .I5(cur_state[1]),
        .O(tx_done_t));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'hE)) 
    tx_done_t_i_2
       (.I0(cur_state[2]),
        .I1(cur_state[3]),
        .O(tx_done_t_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tx_done_t_reg
       (.C(crc_en_reg_0),
        .CE(1'b1),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(tx_done_t),
        .Q(tx_done_t_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \tx_en_delay_reg[0] 
       (.C(crc_en_reg_0),
        .CE(1'b1),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\tx_en_delay_reg[0]_0 ),
        .Q(\tx_en_delay_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \tx_en_delay_reg[1] 
       (.C(crc_en_reg_0),
        .CE(1'b1),
        .CLR(\gmii_txd_reg[7]_1 ),
        .D(\tx_en_delay_reg_n_0_[0] ),
        .Q(p_0_in3_in));
  FDCE #(
    .INIT(1'b0)) 
    \tx_en_delay_reg[2] 
       (.C(crc_en_reg_0),
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

  wire clk_in1;
  wire clk_out1;
  wire locked;
  wire reset;

  clk_wiz_0_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
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
  wire clk_in1_clk_wiz_0;
  wire clk_out1;
  wire clk_out1_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
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
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_0),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
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
        .CLKIN1(clk_in1_clk_wiz_0),
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
        .LOCKED(locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

module crc32_d8
   (\crc_data_reg[30]_0 ,
    Q,
    \crc_data_reg[25]_0 ,
    \crc_data_reg[29]_0 ,
    \crc_data_reg[4]_0 ,
    \crc_data_reg[19]_0 ,
    \crc_data_reg[18]_0 ,
    \crc_data_reg[17]_0 ,
    \crc_data_reg[26]_0 ,
    \crc_data_reg[27]_0 ,
    \crc_data_reg[25]_1 ,
    \crc_data_reg[27]_1 ,
    \crc_data_reg[31]_0 ,
    \gmii_txd_reg[5] ,
    \crc_data_reg[25]_2 ,
    \crc_data_reg[27]_2 ,
    \crc_data_reg[29]_1 ,
    \gmii_txd_reg[2] ,
    \crc_data_reg[4]_1 ,
    \crc_data_reg[7]_0 ,
    \gmii_txd_reg[3] ,
    \gmii_txd_reg[3]_0 ,
    D,
    \crc_data_reg[27]_3 ,
    \gmii_txd[2]_i_4 ,
    \crc_data_reg[13]_0 ,
    \crc_data_reg[12]_0 ,
    E,
    \crc_data_reg[31]_1 ,
    \crc_data_reg[31]_2 );
  output \crc_data_reg[30]_0 ;
  output [30:0]Q;
  output \crc_data_reg[25]_0 ;
  output \crc_data_reg[29]_0 ;
  output \crc_data_reg[4]_0 ;
  output \crc_data_reg[19]_0 ;
  output \crc_data_reg[18]_0 ;
  output \crc_data_reg[17]_0 ;
  output \crc_data_reg[26]_0 ;
  output \crc_data_reg[27]_0 ;
  output \crc_data_reg[25]_1 ;
  output \crc_data_reg[27]_1 ;
  output \crc_data_reg[31]_0 ;
  output \gmii_txd_reg[5] ;
  output \crc_data_reg[25]_2 ;
  output \crc_data_reg[27]_2 ;
  output \crc_data_reg[29]_1 ;
  output \gmii_txd_reg[2] ;
  output \crc_data_reg[4]_1 ;
  input [7:0]\crc_data_reg[7]_0 ;
  input [1:0]\gmii_txd_reg[3] ;
  input \gmii_txd_reg[3]_0 ;
  input [29:0]D;
  input \crc_data_reg[27]_3 ;
  input \gmii_txd[2]_i_4 ;
  input \crc_data_reg[13]_0 ;
  input \crc_data_reg[12]_0 ;
  input [0:0]E;
  input \crc_data_reg[31]_1 ;
  input \crc_data_reg[31]_2 ;

  wire [29:0]D;
  wire [0:0]E;
  wire [30:0]Q;
  wire [4:4]crc_data;
  wire \crc_data[27]_i_2_n_0 ;
  wire \crc_data_reg[12]_0 ;
  wire \crc_data_reg[13]_0 ;
  wire \crc_data_reg[17]_0 ;
  wire \crc_data_reg[18]_0 ;
  wire \crc_data_reg[19]_0 ;
  wire \crc_data_reg[25]_0 ;
  wire \crc_data_reg[25]_1 ;
  wire \crc_data_reg[25]_2 ;
  wire \crc_data_reg[26]_0 ;
  wire \crc_data_reg[27]_0 ;
  wire \crc_data_reg[27]_1 ;
  wire \crc_data_reg[27]_2 ;
  wire \crc_data_reg[27]_3 ;
  wire \crc_data_reg[29]_0 ;
  wire \crc_data_reg[29]_1 ;
  wire \crc_data_reg[30]_0 ;
  wire \crc_data_reg[31]_0 ;
  wire \crc_data_reg[31]_1 ;
  wire \crc_data_reg[31]_2 ;
  wire \crc_data_reg[4]_0 ;
  wire \crc_data_reg[4]_1 ;
  wire [7:0]\crc_data_reg[7]_0 ;
  wire \gmii_txd[2]_i_4 ;
  wire \gmii_txd[3]_i_5_n_0 ;
  wire \gmii_txd[3]_i_6_n_0 ;
  wire \gmii_txd_reg[2] ;
  wire [1:0]\gmii_txd_reg[3] ;
  wire \gmii_txd_reg[3]_0 ;
  wire \gmii_txd_reg[5] ;
  wire [27:9]p_1_in;

  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \crc_data[11]_i_2 
       (.I0(Q[26]),
        .I1(Q[23]),
        .I2(Q[24]),
        .I3(\crc_data_reg[7]_0 [6]),
        .I4(\crc_data_reg[7]_0 [4]),
        .O(\crc_data_reg[27]_2 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_data[12]_i_2 
       (.I0(crc_data),
        .I1(Q[23]),
        .I2(Q[24]),
        .I3(Q[28]),
        .I4(\crc_data_reg[12]_0 ),
        .O(\crc_data_reg[4]_1 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_data[13]_i_2 
       (.I0(Q[24]),
        .I1(\crc_data_reg[7]_0 [6]),
        .I2(Q[28]),
        .I3(\crc_data_reg[13]_0 ),
        .I4(Q[25]),
        .I5(\crc_data_reg[7]_0 [5]),
        .O(\crc_data_reg[25]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \crc_data[16]_i_2 
       (.I0(Q[28]),
        .I1(Q[27]),
        .I2(\crc_data_reg[7]_0 [3]),
        .O(\crc_data_reg[29]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_data[17]_i_2 
       (.I0(Q[28]),
        .I1(\crc_data_reg[7]_0 [6]),
        .I2(Q[24]),
        .O(\crc_data_reg[29]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \crc_data[18]_i_2 
       (.I0(Q[29]),
        .I1(Q[30]),
        .I2(\crc_data_reg[7]_0 [0]),
        .O(\crc_data_reg[30]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_data[24]_i_2 
       (.I0(Q[24]),
        .I1(Q[25]),
        .O(\crc_data_reg[25]_1 ));
  LUT5 #(
    .INIT(32'hEBBEBEEB)) 
    \crc_data[27]_i_1 
       (.I0(\crc_data_reg[27]_3 ),
        .I1(Q[18]),
        .I2(Q[30]),
        .I3(\crc_data_reg[7]_0 [0]),
        .I4(\crc_data[27]_i_2_n_0 ),
        .O(p_1_in[27]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \crc_data[27]_i_2 
       (.I0(Q[24]),
        .I1(\crc_data_reg[7]_0 [6]),
        .I2(Q[28]),
        .I3(\crc_data_reg[7]_0 [3]),
        .I4(Q[27]),
        .I5(\crc_data_reg[7]_0 [2]),
        .O(\crc_data[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_data[28]_i_2 
       (.I0(Q[25]),
        .I1(\crc_data_reg[7]_0 [5]),
        .O(\crc_data_reg[26]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_data[29]_i_3 
       (.I0(Q[26]),
        .I1(\crc_data_reg[7]_0 [4]),
        .O(\crc_data_reg[27]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \crc_data[4]_i_2 
       (.I0(\crc_data_reg[7]_0 [5]),
        .I1(Q[25]),
        .I2(\crc_data_reg[7]_0 [7]),
        .I3(Q[23]),
        .I4(Q[26]),
        .O(\gmii_txd_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \crc_data[5]_i_2 
       (.I0(Q[24]),
        .I1(Q[23]),
        .I2(\crc_data_reg[7]_0 [7]),
        .O(\crc_data_reg[25]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_data[5]_i_3 
       (.I0(Q[30]),
        .I1(\crc_data_reg[7]_0 [0]),
        .I2(\crc_data_reg[7]_0 [4]),
        .I3(Q[26]),
        .O(\crc_data_reg[31]_0 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \crc_data[7]_i_2 
       (.I0(\crc_data_reg[7]_0 [2]),
        .I1(\crc_data_reg[7]_0 [7]),
        .I2(Q[23]),
        .I3(Q[26]),
        .I4(Q[25]),
        .O(\gmii_txd_reg[2] ));
  LUT5 #(
    .INIT(32'hEBBEBEEB)) 
    \crc_data[9]_i_1 
       (.I0(\crc_data_reg[27]_3 ),
        .I1(Q[1]),
        .I2(\crc_data_reg[7]_0 [5]),
        .I3(Q[25]),
        .I4(\crc_data[27]_i_2_n_0 ),
        .O(p_1_in[9]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[0] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[0]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[10] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[9]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[9]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[11] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[10]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[10]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[12] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[11]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[11]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[13] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[12]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[12]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[14] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[13]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[13]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[15] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[14]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[14]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[16] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[15]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[15]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[17] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[16]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[16]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[18] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[17]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[17]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[19] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[18]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[18]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[1] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[1]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[1]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[20] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[19]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[19]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[21] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[20]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[20]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[22] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[21]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[21]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[23] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[22]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[22]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[24] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[23]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[23]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[25] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[24]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[24]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[26] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[25]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[25]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[27] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(p_1_in[27]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[26]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[28] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[26]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[27]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[29] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[27]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[28]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[2] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[2]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[2]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[30] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[28]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[29]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[31] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[29]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[30]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[3] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[3]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[3]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[4] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[4]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(crc_data));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[5] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[5]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[4]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[6] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[6]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[5]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[7] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[7]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[6]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[8] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(D[8]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[7]));
  FDPE #(
    .INIT(1'b1)) 
    \crc_data_reg[9] 
       (.C(\crc_data_reg[31]_1 ),
        .CE(E),
        .D(p_1_in[9]),
        .PRE(\crc_data_reg[31]_2 ),
        .Q(Q[8]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \gmii_txd[2]_i_10 
       (.I0(Q[26]),
        .I1(\crc_data_reg[7]_0 [4]),
        .I2(\gmii_txd[2]_i_4 ),
        .I3(\crc_data_reg[7]_0 [1]),
        .I4(Q[29]),
        .I5(Q[20]),
        .O(\crc_data_reg[27]_1 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0000BFBC)) 
    \gmii_txd[3]_i_2 
       (.I0(crc_data),
        .I1(\gmii_txd_reg[3] [0]),
        .I2(\gmii_txd_reg[3] [1]),
        .I3(\gmii_txd[3]_i_5_n_0 ),
        .I4(\gmii_txd[3]_i_6_n_0 ),
        .I5(\gmii_txd_reg[3]_0 ),
        .O(\crc_data_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \gmii_txd[3]_i_5 
       (.I0(\crc_data_reg[7]_0 [1]),
        .I1(Q[29]),
        .I2(Q[28]),
        .I3(\crc_data_reg[7]_0 [2]),
        .I4(Q[19]),
        .I5(\crc_data_reg[26]_0 ),
        .O(\gmii_txd[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0434)) 
    \gmii_txd[3]_i_6 
       (.I0(Q[11]),
        .I1(\gmii_txd_reg[3] [1]),
        .I2(\gmii_txd_reg[3] [0]),
        .I3(Q[19]),
        .O(\gmii_txd[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF33550F00)) 
    \gmii_txd[4]_i_9 
       (.I0(Q[18]),
        .I1(Q[3]),
        .I2(Q[10]),
        .I3(\gmii_txd_reg[3] [1]),
        .I4(\gmii_txd_reg[3] [0]),
        .I5(\gmii_txd_reg[3]_0 ),
        .O(\crc_data_reg[19]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF33550F00)) 
    \gmii_txd[5]_i_7 
       (.I0(Q[17]),
        .I1(Q[2]),
        .I2(Q[9]),
        .I3(\gmii_txd_reg[3] [1]),
        .I4(\gmii_txd_reg[3] [0]),
        .I5(\gmii_txd_reg[3]_0 ),
        .O(\crc_data_reg[18]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF096FF00F096)) 
    \gmii_txd[6]_i_2 
       (.I0(\crc_data_reg[26]_0 ),
        .I1(\crc_data_reg[27]_0 ),
        .I2(Q[16]),
        .I3(\gmii_txd_reg[3] [0]),
        .I4(\gmii_txd_reg[3] [1]),
        .I5(Q[8]),
        .O(\crc_data_reg[17]_0 ));
endmodule

(* BOARD_IP = "-1062731510" *) (* BOARD_MAC = "48'b000000000001000100100010001100110100010001010101" *) (* DES_IP = "-1062731311" *) 
(* DES_MAC = "48'b111111111111111111111111111111111111111111111111" *) (* IDELAY_VALUE = "0" *) (* keep_hierarchy = "soft" *) 
(* NotValidForBitStream *)
module eth_arp_test
   (sys_clk,
    sys_rst_n,
    touch_key,
    eth_rxc,
    eth_rx_ctl,
    eth_rxd,
    eth_txc,
    eth_tx_ctl,
    eth_txd,
    eth_rst_n);
  input sys_clk;
  input sys_rst_n;
  (* mark_debug = "true" *) input touch_key;
  input eth_rxc;
  (* mark_debug = "true" *) input eth_rx_ctl;
  (* mark_debug = "true" *) input [3:0]eth_rxd;
  output eth_txc;
  output eth_tx_ctl;
  output [3:0]eth_txd;
  output eth_rst_n;

  wire arp_rx_done;
  wire arp_rx_type;
  wire arp_tx_en;
  wire arp_tx_type;
  wire clk_200m;
  wire eth_rst_n;
  wire eth_rst_n_OBUF;
  wire eth_rx_ctl;
  (* MARK_DEBUG *) wire eth_rx_ctl_IBUF;
  wire eth_rxc;
  wire eth_rxc_IBUF;
  wire [3:0]eth_rxd;
  (* MARK_DEBUG *) wire [3:0]eth_rxd_IBUF;
  wire eth_tx_ctl;
  wire eth_tx_ctl_OBUF;
  wire eth_txc;
  wire eth_txc_OBUF;
  wire [3:0]eth_txd;
  wire [3:0]eth_txd_OBUF;
  wire gmii_rx_clk;
  wire gmii_rx_dv;
  wire [7:0]gmii_rxd;
  wire gmii_tx_clk;
  wire gmii_tx_en;
  wire [7:0]gmii_txd;
  wire [36:0]sl_iport0_o_0;
  wire [16:0]sl_oport0_i_0;
  (* IBUF_LOW_PWR *) wire sys_clk;
  wire sys_rst_n;
  wire touch_key;
  (* MARK_DEBUG *) wire touch_key_IBUF;
  wire u_arp_n_8;
  wire NLW_u_clk_wiz_0_locked_UNCONNECTED;

  (* DEBUG_CORE_INFO = "dbg_hub,labtools_xsdbm_v3_00_a,{C_BSCAN_MODE=false,C_BSCAN_MODE_WITH_CORE=false,C_CLK_INPUT_FREQ_HZ=300000000,C_ENABLE_CLK_DIVIDER=false,C_EN_BSCANID_VEC=false,C_NUM_BSCAN_MASTER_PORTS=0,C_TWO_PRIM_MODE=false,C_USER_SCAN_CHAIN=1,C_USE_EXT_BSCAN=false,C_XSDB_NUM_SLAVES=1,component_name=dbg_hub_CV}" *) 
  (* DEBUG_PORT_clk = "" *) 
  (* IS_DEBUG_CORE *) 
  dbg_hub_CV dbg_hub
       (.clk(clk_200m),
        .sl_iport0_o(sl_iport0_o_0),
        .sl_oport0_i(sl_oport0_i_0));
  OBUF eth_rst_n_OBUF_inst
       (.I(eth_rst_n_OBUF),
        .O(eth_rst_n));
  (* mark_debug = "true" *) 
  IBUF eth_rx_ctl_IBUF_inst
       (.I(eth_rx_ctl),
        .O(eth_rx_ctl_IBUF));
  IBUF eth_rxc_IBUF_inst
       (.I(eth_rxc),
        .O(eth_rxc_IBUF));
  (* mark_debug = "true" *) 
  IBUF \eth_rxd_IBUF[0]_inst 
       (.I(eth_rxd[0]),
        .O(eth_rxd_IBUF[0]));
  (* mark_debug = "true" *) 
  IBUF \eth_rxd_IBUF[1]_inst 
       (.I(eth_rxd[1]),
        .O(eth_rxd_IBUF[1]));
  (* mark_debug = "true" *) 
  IBUF \eth_rxd_IBUF[2]_inst 
       (.I(eth_rxd[2]),
        .O(eth_rxd_IBUF[2]));
  (* mark_debug = "true" *) 
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
  IBUF sys_rst_n_IBUF_inst
       (.I(sys_rst_n),
        .O(eth_rst_n_OBUF));
  (* mark_debug = "true" *) 
  IBUF touch_key_IBUF_inst
       (.I(touch_key),
        .O(touch_key_IBUF));
  arp u_arp
       (.CLK(gmii_rx_clk),
        .D(arp_tx_en),
        .Q(gmii_txd),
        .arp_rx_done(arp_rx_done),
        .arp_rx_type(arp_rx_type),
        .arp_tx_type(arp_tx_type),
        .\crc_data_reg[31] (gmii_tx_clk),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .reset(u_arp_n_8),
        .rst_n(eth_rst_n_OBUF));
  (* KEEP_HIERARCHY = "soft" *) 
  arp_ctrl u_arp_ctrl
       (.arp_rx_done(arp_rx_done),
        .arp_rx_type(arp_rx_type),
        .arp_tx_en(arp_tx_en),
        .arp_tx_type(arp_tx_type),
        .clk(gmii_rx_clk),
        .rst_n(eth_rst_n_OBUF),
        .touch_key(touch_key_IBUF));
  (* IMPORTED_FROM = "c:/Users/LYG/Desktop/testV/ARP/ARP.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  clk_wiz_0 u_clk_wiz_0
       (.clk_in1(sys_clk),
        .clk_out1(clk_200m),
        .locked(NLW_u_clk_wiz_0_locked_UNCONNECTED),
        .reset(u_arp_n_8));
  (* IDELAY_VALUE = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  gmii2rgmii u_gmii2rgmii
       (.gmii_rx_clk(gmii_rx_clk),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_clk(gmii_tx_clk),
        .gmii_tx_en(gmii_tx_en),
        .gmii_txd(gmii_txd),
        .idelay_clk(clk_200m),
        .rgmii_rx_ctl(eth_rx_ctl_IBUF),
        .rgmii_rxc(eth_rxc_IBUF),
        .rgmii_rxd(eth_rxd_IBUF),
        .rgmii_tx_ctl(eth_tx_ctl_OBUF),
        .rgmii_txc(eth_txc_OBUF),
        .rgmii_txd(eth_txd_OBUF));
  (* DEBUG_CORE_INFO = "u_ila_0,labtools_ila_v6_00_a,{ALL_PROBE_SAME_MU=true,ALL_PROBE_SAME_MU_CNT=1,C_ADV_TRIGGER=false,C_DATA_DEPTH=4096,C_EN_STRG_QUAL=false,C_INPUT_PIPE_STAGES=0,C_NUM_OF_PROBES=5,C_PROBE0_TYPE=0,C_PROBE0_WIDTH=4,C_PROBE1_TYPE=0,C_PROBE1_WIDTH=8,C_PROBE2_TYPE=0,C_PROBE2_WIDTH=1,C_PROBE3_TYPE=0,C_PROBE3_WIDTH=1,C_PROBE4_TYPE=0,C_PROBE4_WIDTH=1,C_TRIGIN_EN=0,C_TRIGOUT_EN=0,component_name=u_ila_0_CV}" *) 
  (* DEBUG_PORT_clk = "n:u_clk_wiz_0/inst/clk_out1" *) 
  (* DEBUG_PORT_probe0 = "n:eth_rxd_IBUF[3],n:eth_rxd_IBUF[2],n:eth_rxd_IBUF[1],n:eth_rxd_IBUF[0]" *) 
  (* DEBUG_PORT_probe1 = "n:u_gmii2rgmii/gmii_txd[7],n:u_gmii2rgmii/gmii_txd[6],n:u_gmii2rgmii/gmii_txd[5],n:u_gmii2rgmii/gmii_txd[4],n:u_gmii2rgmii/gmii_txd[3],n:u_gmii2rgmii/gmii_txd[2],n:u_gmii2rgmii/gmii_txd[1],n:u_gmii2rgmii/gmii_txd[0]" *) 
  (* DEBUG_PORT_probe2 = "n:eth_rx_ctl_IBUF" *) 
  (* DEBUG_PORT_probe3 = "n:u_gmii2rgmii/gmii_tx_en" *) 
  (* DEBUG_PORT_probe4 = "n:touch_key_IBUF" *) 
  (* IS_DEBUG_CORE *) 
  u_ila_0_CV u_ila_0
       (.SL_IPORT_I(sl_iport0_o_0),
        .SL_OPORT_O(sl_oport0_i_0),
        .clk(clk_200m),
        .probe0({eth_rxd_IBUF[0],eth_rxd_IBUF[1],eth_rxd_IBUF[2],eth_rxd_IBUF[3]}),
        .probe1({gmii_txd[0],gmii_txd[1],gmii_txd[2],gmii_txd[3],gmii_txd[4],gmii_txd[5],gmii_txd[6],gmii_txd[7]}),
        .probe2(eth_rx_ctl_IBUF),
        .probe3(gmii_tx_en),
        .probe4(touch_key_IBUF));
endmodule

(* IDELAY_VALUE = "0" *) (* keep_hierarchy = "soft" *) 
module gmii2rgmii
   (idelay_clk,
    gmii_tx_en,
    gmii_txd,
    gmii_tx_clk,
    gmii_rx_clk,
    gmii_rx_dv,
    gmii_rxd,
    rgmii_rxc,
    rgmii_rx_ctl,
    rgmii_rxd,
    rgmii_txc,
    rgmii_tx_ctl,
    rgmii_txd);
  input idelay_clk;
  (* mark_debug = "true" *) input gmii_tx_en;
  (* mark_debug = "true" *) input [7:0]gmii_txd;
  output gmii_tx_clk;
  output gmii_rx_clk;
  output gmii_rx_dv;
  output [7:0]gmii_rxd;
  input rgmii_rxc;
  input rgmii_rx_ctl;
  input [3:0]rgmii_rxd;
  output rgmii_txc;
  output rgmii_tx_ctl;
  output [3:0]rgmii_txd;

  wire gmii_rx_dv;
  wire [7:0]gmii_rxd;
  wire gmii_tx_clk;
  (* MARK_DEBUG *) wire gmii_tx_en;
  (* MARK_DEBUG *) wire [7:0]gmii_txd;
  wire idelay_clk;
  wire rgmii_rx_ctl;
  wire rgmii_rxc;
  wire [3:0]rgmii_rxd;
  wire rgmii_tx_ctl;
  wire rgmii_txc;
  wire [3:0]rgmii_txd;

  assign gmii_rx_clk = gmii_tx_clk;
  rgmii_rx u_rgmii_rx
       (.gmii_rx_dv(gmii_rx_dv),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_clk(gmii_tx_clk),
        .idelay_clk(idelay_clk),
        .rgmii_rx_ctl(rgmii_rx_ctl),
        .rgmii_rxc(rgmii_rxc),
        .rgmii_rxd(rgmii_rxd));
  (* KEEP_HIERARCHY = "soft" *) 
  rgmii_tx u_rgmii_tx
       (.gmii_tx_clk(gmii_tx_clk),
        .gmii_tx_en(gmii_tx_en),
        .gmii_txd(gmii_txd),
        .rgmii_tx_ctl(rgmii_tx_ctl),
        .rgmii_txc(rgmii_txc),
        .rgmii_txd(rgmii_txd));
endmodule

module rgmii_rx
   (gmii_rxd,
    gmii_tx_clk,
    gmii_rx_dv,
    rgmii_rxd,
    rgmii_rxc,
    idelay_clk,
    rgmii_rx_ctl);
  output [7:0]gmii_rxd;
  output gmii_tx_clk;
  output gmii_rx_dv;
  input [3:0]rgmii_rxd;
  input rgmii_rxc;
  input idelay_clk;
  input rgmii_rx_ctl;

  wire gmii_rx_dv;
  wire [7:0]gmii_rxd;
  wire gmii_rxdv_t_0;
  wire gmii_rxdv_t_1;
  wire gmii_tx_clk;
  wire idelay_clk;
  wire rgmii_rx_ctl;
  wire rgmii_rx_ctl_delay;
  wire rgmii_rxc;
  wire rgmii_rxc_bufio;
  wire [3:0]rgmii_rxd;
  wire rgmii_rxd_delay_0;
  wire rgmii_rxd_delay_1;
  wire rgmii_rxd_delay_2;
  wire rgmii_rxd_delay_3;
  wire NLW_IDELAYCTRL_inst_RDY_UNCONNECTED;
  wire [4:0]\NLW_rxdata_bus[0].u_delay_rx_ctl_CNTVALUEOUT_UNCONNECTED ;
  wire [4:0]\NLW_rxdata_bus[1].u_delay_rx_ctl_CNTVALUEOUT_UNCONNECTED ;
  wire [4:0]\NLW_rxdata_bus[2].u_delay_rx_ctl_CNTVALUEOUT_UNCONNECTED ;
  wire [4:0]\NLW_rxdata_bus[3].u_delay_rx_ctl_CNTVALUEOUT_UNCONNECTED ;
  wire [4:0]NLW_u_delay_rx_ctl_CNTVALUEOUT_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG BUFG_inst
       (.I(rgmii_rxc),
        .O(gmii_tx_clk));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFIO BUFIO_inst
       (.I(rgmii_rxc),
        .O(rgmii_rxc_bufio));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "rgmii_rx_delay" *) 
  IDELAYCTRL #(
    .SIM_DEVICE("7SERIES")) 
    IDELAYCTRL_inst
       (.RDY(NLW_IDELAYCTRL_inst_RDY_UNCONNECTED),
        .REFCLK(idelay_clk),
        .RST(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    gmii_rx_dv_INST_0
       (.I0(gmii_rxdv_t_0),
        .I1(gmii_rxdv_t_1),
        .O(gmii_rx_dv));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "rgmii_rx_delay" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("FIXED"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \rxdata_bus[0].u_delay_rx_ctl 
       (.C(1'b0),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(\NLW_rxdata_bus[0].u_delay_rx_ctl_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b0),
        .DATAOUT(rgmii_rxd_delay_0),
        .IDATAIN(rgmii_rxd[0]),
        .INC(1'b0),
        .LD(1'b0),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
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
        .D(rgmii_rxd_delay_0),
        .Q1(gmii_rxd[0]),
        .Q2(gmii_rxd[4]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "rgmii_rx_delay" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("FIXED"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \rxdata_bus[1].u_delay_rx_ctl 
       (.C(1'b0),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(\NLW_rxdata_bus[1].u_delay_rx_ctl_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b0),
        .DATAOUT(rgmii_rxd_delay_1),
        .IDATAIN(rgmii_rxd[1]),
        .INC(1'b0),
        .LD(1'b0),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
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
        .D(rgmii_rxd_delay_1),
        .Q1(gmii_rxd[1]),
        .Q2(gmii_rxd[5]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "rgmii_rx_delay" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("FIXED"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \rxdata_bus[2].u_delay_rx_ctl 
       (.C(1'b0),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(\NLW_rxdata_bus[2].u_delay_rx_ctl_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b0),
        .DATAOUT(rgmii_rxd_delay_2),
        .IDATAIN(rgmii_rxd[2]),
        .INC(1'b0),
        .LD(1'b0),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
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
        .D(rgmii_rxd_delay_2),
        .Q1(gmii_rxd[2]),
        .Q2(gmii_rxd[6]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "rgmii_rx_delay" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("FIXED"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \rxdata_bus[3].u_delay_rx_ctl 
       (.C(1'b0),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(\NLW_rxdata_bus[3].u_delay_rx_ctl_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b0),
        .DATAOUT(rgmii_rxd_delay_3),
        .IDATAIN(rgmii_rxd[3]),
        .INC(1'b0),
        .LD(1'b0),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
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
        .D(rgmii_rxd_delay_3),
        .Q1(gmii_rxd[3]),
        .Q2(gmii_rxd[7]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "rgmii_rx_delay" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("FIXED"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    u_delay_rx_ctl
       (.C(1'b0),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(NLW_u_delay_rx_ctl_CNTVALUEOUT_UNCONNECTED[4:0]),
        .DATAIN(1'b0),
        .DATAOUT(rgmii_rx_ctl_delay),
        .IDATAIN(rgmii_rx_ctl),
        .INC(1'b0),
        .LD(1'b0),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
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
        .D(rgmii_rx_ctl_delay),
        .Q1(gmii_rxdv_t_0),
        .Q2(gmii_rxdv_t_1),
        .R(1'b0),
        .S(1'b0));
endmodule

module rgmii_tx
   (gmii_tx_clk,
    gmii_tx_en,
    gmii_txd,
    rgmii_txc,
    rgmii_tx_ctl,
    rgmii_txd);
  input gmii_tx_clk;
  input gmii_tx_en;
  input [7:0]gmii_txd;
  output rgmii_txc;
  output rgmii_tx_ctl;
  output [3:0]rgmii_txd;

  wire gmii_tx_clk;
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

  assign rgmii_txc = gmii_tx_clk;
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
       (.C(gmii_tx_clk),
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
       (.C(gmii_tx_clk),
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
       (.C(gmii_tx_clk),
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
       (.C(gmii_tx_clk),
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
       (.C(gmii_tx_clk),
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
