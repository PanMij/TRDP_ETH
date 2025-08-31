`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/19 15:32:46
// Design Name: 
// Module Name: tb_arp_tx
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


module tb_arp_tx;

    parameter TCLK_125M_HALF = 4;

    reg clk_125m, rstn;

    reg arp_tx_en, arp_tx_type;
    reg [47 : 0] des_mac;
    reg [31 : 0] des_ip;
    reg [31 : 0] crc_data;
    reg [7 : 0] crc_next;

    wire tx_done;
    wire gmii_tx_en;
    wire [7 : 0] gmii_txd;
    wire crc_en;
    wire crc_clr;

    initial begin
        clk_125m = 1'b0;
        rstn = 1'b0;
        fork
            #30 rstn = 1'b1;
            forever #TCLK_125M_HALF clk_125m = ~clk_125m;
        join
    end

    initial begin
        arp_tx_en = 1'b0;
        arp_tx_type = 1'b1;
        des_mac = 48'hff_ff_ff_ff_ff_ff;
        des_ip = {8'd192, 8'd168, 8'd1, 8'd209};
        crc_data = $random();
        crc_next = $random();
        wait (rstn);
        arp_tx_en = 1'b1;
        #30 arp_tx_en = 1'b0;
    end

    arp_tx u_arp_tx (
        .clk        (clk_125m),
        .rst_n      (rstn),
      
        .arp_tx_en  (arp_tx_en  ),
        .arp_tx_type(arp_tx_type),
        .des_mac    (des_mac    ),
        .des_ip     (des_ip     ),
        .crc_data   (crc_data   ),
        .crc_next   (crc_next   ),
      
        .tx_done    (tx_done    ),
        .gmii_tx_en (gmii_tx_en ),
        .gmii_txd   (gmii_txd   ),
        .crc_en     (crc_en     ),
        .crc_clr    (crc_clr    ) 
    );

endmodule
