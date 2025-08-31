`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/10 15:28:51
// Design Name: 
// Module Name: udp
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


module udp # (
    parameter BOARD_MAC = 48'h00_11_22_33_44_55,   
    parameter BOARD_IP  = {8'd192,8'd168,8'd1,8'd10},
    parameter BOARD_PORT = 16'd1234,
    parameter  DES_MAC  = 48'hff_ff_ff_ff_ff_ff,   
    parameter  DES_IP   = {8'd192,8'd168,8'd1,8'd209},
    parameter DES_PORT = 16'd1234
) (
    input                rst_n       , //复位信号，低电平有效
    //GMII接口
    input                gmii_rx_clk , //GMII接收数据时钟
    input                gmii_rx_dv  , //GMII输入数据有效信号
    input        [7:0]   gmii_rxd    , //GMII输入数据
    input                gmii_tx_clk , //GMII发送数据时钟    
    output               gmii_tx_en  , //GMII输出数据有效信号
    output       [7:0]   gmii_txd    , //GMII输出数据 
    //用户接口
    output               rec_pkt_done, //以太网单包数据接收完成信号
    output               rec_en      , //以太网接收的数据使能信号
    output       [ 7:0]  rec_data    , //以太网接收的数据
    output       [15:0]  rec_byte_num, //以太网接收的有效字节数 单位:byte     
    input                tx_start_en , //以太网开始发送信号
    input        [ 7:0]  tx_data     , //以太网待发送数据  
    input        [15:0]  tx_byte_num , //以太网发送的有效字节数 单位:byte  
    input        [47:0]  des_mac     , //发送的目标MAC地址
    input        [31:0]  des_ip      , //发送的目标IP地址    
    output               tx_done     , //以太网发送完成信号
    output               tx_req        //读数据请求信号   
    );

//wire define
wire          crc_en  ; //CRC开始校验使能
wire          crc_clr ; //CRC数据复位信号 
wire  [7:0]   crc_d8  ; //输入待校验8位数据

wire  [31:0]  crc_data; //CRC校验数据
wire  [31:0]  crc_next; //CRC下次校验完成数据

//*****************************************************
//**                    main code
//*****************************************************

assign  crc_d8 = gmii_txd;

//以太网接收模块    
udp_rx 
   #(
    .BOARD_MAC       (BOARD_MAC),         //参数例化
    .BOARD_IP        (BOARD_IP )
    )
   u_udp_rx(
    .clk             (gmii_rx_clk ),        
    .rst_n           (rst_n       ),             
    .gmii_rx_dv      (gmii_rx_dv  ),                                 
    .gmii_rxd        (gmii_rxd    ),       
    .rec_pkt_done    (rec_pkt_done),      
    .rec_en          (rec_en      ),           
    .rec_data        (rec_data    ),          
    .rec_byte_num    (rec_byte_num)       
    );                                    

//以太网发送模块
udp_tx
   #(
    .BOARD_MAC       (BOARD_MAC),         //参数例化
    .BOARD_IP        (BOARD_IP ),
    .BOARD_PORT      (BOARD_PORT),
    .DES_MAC         (DES_MAC  ),
    .DES_IP          (DES_IP   ),
    .DES_PORT        (DES_PORT)
    )
   u_udp_tx(
    .clk             (gmii_tx_clk),        
    .rst_n           (rst_n      ),             
    .tx_start_en     (tx_start_en),                   
    .tx_data         (tx_data    ),           
    .tx_byte_num     (tx_byte_num),    
    .des_mac         (des_mac    ),
    .des_ip          (des_ip     ),    
    .crc_data        (crc_data   ),          
    .crc_next        (crc_next[31:24]),
    .tx_done         (tx_done    ),           
    .tx_req          (tx_req     ),            
    .gmii_tx_en      (gmii_tx_en ),         
    .gmii_txd        (gmii_txd   ),       
    .crc_en          (crc_en     ),            
    .crc_clr         (crc_clr    )            
    );                                      

//以太网发送CRC校验模块
crc32_d8   u_crc32_d8(
    .clk             (gmii_tx_clk),                      
    .rst_n           (rst_n      ),                          
    .data            (crc_d8     ),            
    .crc_en          (crc_en     ),                          
    .crc_clr         (crc_clr    ),                         
    .crc_data        (crc_data   ),                        
    .crc_next        (crc_next   )                         
    );

endmodule
