`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/07/30 15:56:51
// Design Name: 
// Module Name: ethernet_controller
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


module ethernet_controller(
    input         rst_n      ,

    // GMII interface
    input         gmii_rx_clk,
    input         gmii_rx_dv ,
    input [7:0]   gmii_rxd   ,
    output        gmii_tx_en ,
    output [7:0]  gmii_txd   ,

    // FIFO interface
    output        rec_tlast  ,
    output        rec_en     ,
    output [7:0]  rec_data   ,
    (* x_interface_ignore = "true" *)
    input         tx_tvalid  ,
    input [7 : 0] tx_data    ,
    (* x_interface_ignore = "true" *)
    input         tx_tlast   ,
    (* x_interface_ignore = "true" *)
    output        tx_tready   
);

wire          crc_en;
wire          crc_clr;
wire [31 : 0] crc_data;
wire [31 : 0]  crc_next;

reg clk_en;

always@(posedge gmii_rx_clk or negedge rst_n) begin
    if (!rst_n) begin
        clk_en <= 1'b0;
    end else begin
        clk_en <= ~clk_en;
    end
end

ethernet_controller_rx u_ethernet_controller_rx (
    .clk       (gmii_rx_clk),
    .clk_en    (clk_en),
    .rst_n     (rst_n),
    .gmii_rx_dv(gmii_rx_dv),
    .gmii_rxd  (gmii_rxd),

    .rec_tlast (rec_tlast),
    .rec_en    (rec_en),
    .rec_data  (rec_data)
);

ethernet_controller_tx u_ethernet_controller_tx (
    .clk       (gmii_rx_clk),
    .clk_en    (clk_en),
    .rst_n     (rst_n),

    .gmii_tx_en(gmii_tx_en),
    .gmii_txd  (gmii_txd),

    .tx_data   (tx_data),
    .tx_tvalid (tx_tvalid),
    .tx_tlast  (tx_tlast),
    .tx_tready (tx_tready),

    .crc_data  (crc_data),
    .crc_next  (crc_next[31 : 24]),
    .crc_en    (crc_en),
    .crc_clr   (crc_clr) 
);

crc32_d8   u_crc32_d8_tx(
    .clk             (gmii_rx_clk),                      
    .clk_en          (clk_en     ),
    .rst_n           (rst_n      ),                          
    .data            (gmii_txd   ),            
    .crc_en          (crc_en     ),                          
    .crc_clr         (crc_clr    ),                         
    .crc_data        (crc_data   ),                        
    .crc_next        (crc_next   )                         
);

endmodule
