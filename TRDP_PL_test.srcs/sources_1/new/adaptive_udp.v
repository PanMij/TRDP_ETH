`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/22 15:27:40
// Design Name: 
// Module Name: adaptive_arp
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


module adaptive_udp (
    input              sys_rst_n , 
    input              module_rst_n,
    output             fifo_rst_n,    
    (* x_interface_parameter = "FREQ_HZ 125000000" *)               
    output             dri_clk,                      
    // mdio interface        
    input [1 : 0]      phy_speed,                            
    // gmii interface
    input              gmii_rx_clk,  
    input              gmii_rx_dv,
    input [7 : 0]      gmii_rxd  ,
    output reg         gmii_tx_en_r,
    output reg [7 : 0] gmii_txd_r,
    // AXI FIFO interface
    output [7 : 0]     rec_data,
    output             rec_en,
    (* x_interface_ignore = "true" *)
    output             rec_tlast,
    (* x_interface_ignore = "true" *)
    input              rec_tready,
    input [7 : 0]      tx_data,
    output             tx_req,
    (* x_interface_ignore = "true" *)
    input              tx_tvalid,
    (* x_interface_ignore = "true" *)
    input              tx_tlast
);

    parameter BOARD_MAC    = 48'h00_11_22_33_44_55;
    parameter BOARD_IP     = {8'd192, 8'd168, 8'd0, 8'd80};
    parameter BOARD_PORT   = 16'd6666;
    parameter DES_MAC      = 48'hff_ff_ff_ff_ff_ff;
    parameter DES_IP       = {8'd192, 8'd168, 8'd0, 8'd10};
    parameter DES_PORT     = 16'd6666;

    reg [1 : 0]   phy_speed_delay[2 : 0];
    reg           dri_clk_r;
    reg [1 : 0]   module_rst_n_delay;
    reg           gmii_rx_dv_r;
    reg [7 : 0]   gmii_rxd_r;
    reg [47 : 0]  des_mac_t;

    wire [7 : 0]  gmii_txd;
    wire          gmii_tx_en;
    // ARP
    wire          arp_gmii_tx_en;
    wire [7 : 0]  arp_gmii_txd;
    wire          arp_rx_done;
    wire          arp_rx_type;
    wire [47 : 0] src_mac;
    wire [31 : 0] src_ip;
    wire          arp_tx_en;
    wire          arp_tx_type;
    wire          arp_tx_done;
    wire [47 : 0] des_mac;
    wire [31 : 0] des_ip;
    // ICMP
    wire          icmp_gmii_tx_en;
    wire [7 : 0]  icmp_gmii_txd;
    wire          icmp_tx_start_en;
    wire [7 : 0]  icmp_tx_data;
    wire [15 : 0] icmp_tx_byte_num;
    wire          icmp_rec_pkt_done;
    wire          icmp_rec_en;
    wire [7 : 0]  icmp_rec_data;
    wire [15 : 0] icmp_rec_byte_num;
    wire          icmp_tx_done;
    wire          icmp_tx_req;
    // UDP
    wire          udp_gmii_tx_en	  ;
    wire  [7:0]   udp_gmii_txd  	  ;
    wire          rec_pkt_done  	  ;
    wire          udp_rec_en    	  ;
    wire  [ 7:0]  udp_rec_data  	  ;
    wire  [15:0]  rec_byte_num  	  ;
    wire  [15:0]  tx_byte_num   	  ;
    wire          udp_tx_done   	  ;
    wire          udp_tx_req    	  ;
    wire  [ 7:0]  udp_tx_data   	  ;
    wire          tx_start_en   	  ;
    // MDIO
    wire          phy_speed_changed_n ;

    assign des_mac             = src_mac;
    assign des_ip              = src_ip;
    assign icmp_tx_start_en    = icmp_rec_pkt_done;
    assign icmp_tx_byte_num    = icmp_rec_byte_num;
    assign fifo_rst_n          = module_rst_n_delay[1];

    always @(posedge gmii_rx_clk or negedge module_rst_n_delay[1]) begin
        if (!module_rst_n_delay[1]) begin
            des_mac_t <= 48'b0;
        end else if (src_ip == DES_IP) begin
            des_mac_t <= src_mac;
        end
    end

    always @(posedge gmii_rx_clk or negedge sys_rst_n) begin
        if (!sys_rst_n) begin
            dri_clk_r <= 1'b0;
        end
        else begin
            dri_clk_r <= ~dri_clk_r;
        end
    end

    always @(posedge dri_clk or negedge module_rst_n) begin
        if (!module_rst_n) begin
            module_rst_n_delay <= 2'b0;
        end
        else begin
            module_rst_n_delay <= {module_rst_n_delay[0], 1'b1};
        end
    end

    always @(posedge dri_clk or negedge module_rst_n_delay[1]) begin
        if (!module_rst_n_delay[1]) begin
            phy_speed_delay[0] <= 2'b0;
            phy_speed_delay[1] <= 2'b0;
            phy_speed_delay[2] <= 2'b0;
        end else begin
            phy_speed_delay[0] <= phy_speed;
            phy_speed_delay[1] <= phy_speed_delay[0];
            phy_speed_delay[2] <= phy_speed_delay[1];
        end
    end

    // gmii2rgmii output delay
    always @(posedge dri_clk or negedge module_rst_n_delay[1]) begin
        if (!module_rst_n_delay[1]) begin
            gmii_rx_dv_r <= 1'b0;
            gmii_rxd_r <= 8'b0;
        end
        else begin
            gmii_rx_dv_r <= gmii_rx_dv;
            gmii_rxd_r <= gmii_rxd;
        end
    end

    //arp output delay
    always @(posedge dri_clk or negedge module_rst_n_delay[1]) begin
        if (!module_rst_n_delay[1]) begin
            gmii_tx_en_r <= 1'b0;
            gmii_txd_r <= 8'b0;
        end
        else begin
            gmii_tx_en_r <= gmii_tx_en;
            gmii_txd_r <= gmii_txd;
        end
    end

    BUFGMUX BUFGMUX_inst (
        .O(dri_clk),                    // 1-bit output: Clock output
        .I0(gmii_rx_clk),                   // 1-bit input: Clock input (S=0)
        .I1(dri_clk_r),                 // 1-bit input: Clock input (S=1)
        .S(phy_speed_delay[2] == 2'b01) // 1-bit input: Clock select
    );

    fifo_generator_1 icmp_fifo (
        .clk(dri_clk),      // input wire clk
        .srst(~module_rst_n_delay[1]),    // input wire srst
        .din(icmp_rec_data),      // input wire [7 : 0] din
        .wr_en(icmp_rec_en),  // input wire wr_en
        .rd_en(icmp_tx_req),  // input wire rd_en
        .dout(icmp_tx_data),    // output wire [7 : 0] dout
        .full(),    // output wire full
        .empty()  // output wire empty
    );

    arp # (
        .BOARD_MAC(BOARD_MAC),
        .BOARD_IP (BOARD_IP),
        .DES_MAC  (DES_MAC),
        .DES_IP   (DES_IP)
    ) u_arp (
        .rst_n         (module_rst_n_delay[1]),
                       
        .gmii_rx_clk   (dri_clk),
        .gmii_rx_dv    (gmii_rx_dv_r),
        .gmii_rxd      (gmii_rxd_r),
        .gmii_tx_clk   (dri_clk),
        .gmii_tx_en    (arp_gmii_tx_en),
        .gmii_txd      (arp_gmii_txd),
         
        .arp_tx_en     (arp_tx_en),
        .arp_tx_type   (arp_tx_type),
        .des_mac       (des_mac),
        .des_ip        (des_ip),
        .arp_rx_done   (arp_rx_done),
        .arp_rx_type   (arp_rx_type),
        .src_mac       (src_mac),
        .src_ip        (src_ip),
        .tx_done       (arp_tx_done) 
    );

    icmp # (
        .BOARD_MAC(BOARD_MAC),  
        .BOARD_IP (BOARD_IP ),
        .DES_MAC  (DES_MAC  ),
        .DES_IP   (DES_IP   ) 
    ) u_icmp (
        .rst_n(module_rst_n_delay[1]),

        .gmii_rx_clk(dri_clk),
        .gmii_rx_dv (gmii_rx_dv_r),
        .gmii_rxd   (gmii_rxd_r),
        .gmii_tx_clk(dri_clk),
        .gmii_tx_en (icmp_gmii_tx_en),
        .gmii_txd   (icmp_gmii_txd),

        .tx_start_en(icmp_tx_start_en),
        .tx_data    (icmp_tx_data),
        .tx_byte_num(icmp_tx_byte_num),
        .des_mac    (des_mac),
        .des_ip     (des_ip),
        .rec_pkt_done(icmp_rec_pkt_done),
        .rec_en      (icmp_rec_en),
        .rec_data    (icmp_rec_data),
        .rec_byte_num(icmp_rec_byte_num),
        .tx_done     (icmp_tx_done),
        .tx_req      (icmp_tx_req)
    );

    udp # (
        .BOARD_MAC     (BOARD_MAC),      //参数例化
        .BOARD_IP      (BOARD_IP ),
        .BOARD_PORT    (BOARD_PORT),
        .DES_MAC       (DES_MAC  ),
        .DES_IP        (DES_IP   ),
        .DES_PORT      (DES_PORT)
    ) u_udp (
        .rst_n         (module_rst_n_delay[1]),  
        
        .gmii_rx_clk   (dri_clk ),           
        .gmii_rx_dv    (gmii_rx_dv_r),         
        .gmii_rxd      (gmii_rxd_r),                   
        .gmii_tx_clk   (dri_clk), 
        .gmii_tx_en    (udp_gmii_tx_en),         
        .gmii_txd      (udp_gmii_txd),  

        .rec_pkt_done  (rec_pkt_done),    
        .rec_en        (udp_rec_en  ),  
        .rec_data      (udp_rec_data),         
        .rec_byte_num  (rec_byte_num),      
        .tx_start_en   (tx_start_en ),        
        .tx_data       (udp_tx_data ),         
        .tx_byte_num   (tx_byte_num ),  
        .des_mac       (des_mac_t   ),
        .des_ip        (des_ip      ),    
        .tx_done       (udp_tx_done ),        
        .tx_req        (udp_tx_req  )           
    ); 

    eth_ctrl u_eth_ctrl (
        .clk             (dri_clk),
        .rst_n           (module_rst_n_delay[1]),

        .arp_rx_done     (arp_rx_done),
        .arp_rx_type     (arp_rx_type),
        .arp_tx_done     (arp_tx_done),
        .arp_gmii_tx_en  (arp_gmii_tx_en),
        .arp_gmii_txd    (arp_gmii_txd),
        .arp_tx_en       (arp_tx_en),
        .arp_tx_type     (arp_tx_type),

        .icmp_tx_start_en(icmp_tx_start_en),
        .icmp_tx_done    (icmp_tx_done),
        .icmp_gmii_tx_en (icmp_gmii_tx_en),
        .icmp_gmii_txd   (icmp_gmii_txd),

        .udp_tx_start_en	(tx_start_en   	 ),
        .udp_tx_done    	(udp_tx_done   	 ),
        .udp_tx_byte_num    (tx_byte_num     ),
        .udp_gmii_tx_en 	(udp_gmii_tx_en	 ),
        .udp_gmii_txd   	(udp_gmii_txd  	 ),

        .udp_rec_data		(udp_rec_data	 ),		
        .udp_rec_en			(udp_rec_en		 ),   
        .udp_rec_pkt_done   (rec_pkt_done    ), 
        .udp_tx_req			(udp_tx_req		 ),    
        .udp_tx_data		(udp_tx_data	 ),	

        .rec_data			(rec_data	     ),	
        .rec_en	        	(rec_en	         ),
        .rec_tlast          (rec_tlast       ),
        .tx_req	        	(tx_req	         ),
        .tx_data	    	(tx_data	     ),
        .tx_tvalid          (tx_tvalid       ),

        .gmii_tx_en      (gmii_tx_en),
        .gmii_txd        (gmii_txd)
    );

endmodule
