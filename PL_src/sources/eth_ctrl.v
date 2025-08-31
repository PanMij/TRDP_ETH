`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/05 19:17:24
// Design Name: 
// Module Name: eth_ctrl
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


module eth_ctrl (
    input          clk             ,
    input          rst_n           ,
    // ARP                          
    input          arp_rx_done     ,
    input          arp_rx_type     , // 0: request, 1: reply
    input          arp_tx_done     ,
    input          arp_gmii_tx_en  ,
    input [7 : 0]  arp_gmii_txd    ,
    output reg     arp_tx_en       ,
    output         arp_tx_type     , // 0: request, 1: reply
    // ICMP                            
    input          icmp_tx_start_en,
    input          icmp_tx_done    ,
    input          icmp_gmii_tx_en ,
    input [7 : 0]  icmp_gmii_txd   ,
    // ICMP FIFO
    // input	           icmp_rec_en      ,
    // input     [7:0]    icmp_rec_data    ,
    // input	   		   icmp_tx_req      ,
    // output    [7:0]    icmp_tx_data     ,
    // UDP
    output reg         udp_tx_start_en  ,
    input              udp_tx_done      ,
    output reg [15:0]  udp_tx_byte_num  ,
    input              udp_gmii_tx_en   ,
    input     [7:0]    udp_gmii_txd     ,
    // UDP FIFO
    input	  [7:0]    udp_rec_data		,
    input			   udp_rec_en		,
    input              udp_rec_pkt_done ,
    input			   udp_tx_req		,
    output	   [7:0]   udp_tx_data		,
    // FIFO
    input	   [7:0]   tx_data	    	,
    output			   tx_req	    	,
    input              tx_tvalid        ,
    output reg		   rec_en	    	,
    output reg [7:0]   rec_data			,
    output reg         rec_tlast        ,
    // GMII                           
    output reg         gmii_tx_en      ,  
    output reg [7 : 0] gmii_txd         
);

    localparam UDP_IDLE    = 3'b001;
    localparam UDP_GET_LEN = 3'b010;
    localparam UDP_SENDING = 3'b100;

    reg [2 : 0] rst_n_delay;

    reg [2 : 0] udp_tx_state;
    reg [1 : 0] udp_tx_cnt;
    reg         udp_get_len_req;
    reg [1 : 0] protocol_sw;
    reg         icmp_tx_busy;
    reg         udp_tx_busy;
    reg         arp_rx_flag;
    // reg		   icmp_tx_req_d0;
    // reg		    udp_tx_req_d0; 
     
    assign arp_tx_type = 1'b1; // The ARP send type is always "reply".

    // assign tx_req = udp_tx_req ? 1'b1 : icmp_tx_req;	
    assign tx_req = udp_tx_req | udp_get_len_req;
    // assign icmp_tx_data = icmp_tx_req_d0 ? tx_data : 8'd0;
    // assign udp_tx_data  = udp_tx_req_d0  ? tx_data : 8'd0;
    assign icmp_tx_data = tx_data;
    assign udp_tx_data  = tx_data;

    // automatically send ARP reply
    // assign arp_tx_type = 1'b0;
    // localparam SEND_CNT = 32'd62_500_000;
    // reg [31 : 0] send_cnt;
    // reg          auto_arp_tx_en;

    // always @(posedge clk or negedge rst_n) begin
    //     if (!rst_n) begin
    //         send_cnt <= 32'b0;
    //         auto_arp_tx_en <= 1'b0;
    //     end else if (send_cnt == SEND_CNT - 1'b1) begin
    //         send_cnt <= 32'b0;
    //         auto_arp_tx_en <= 1'b1;
    //     end else begin
    //         send_cnt <= send_cnt + 1'b1;
    //         auto_arp_tx_en <= 1'b0;
    //     end
    // end
    

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            rst_n_delay <= 3'b0;
        end else begin
            rst_n_delay <= {rst_n_delay[1 : 0], 1'b1};
        end
    end

    // always @(posedge clk or negedge rst_n_delay[2]) begin
    //     if(!rst_n_delay[2]) begin
    //         // icmp_tx_req_d0 <= 1'd0;
    //         udp_tx_req_d0 <= 1'd0;
    //     end
    //     else begin
    //         // icmp_tx_req_d0 <= icmp_tx_req;
    //         udp_tx_req_d0  <= udp_tx_req;
    //     end
    // end

    always @(posedge clk or negedge rst_n_delay[2]) begin
        if(!rst_n_delay[2]) begin
            rec_en	  <= 1'd0;
            rec_data  <= 1'd0;
            rec_tlast <= 1'd0;
        end
        // else if (icmp_rec_en) begin
        //     rec_en	  <= icmp_rec_en;
        //     rec_data  <= icmp_rec_data;
        //     rec_tlast <= icmp_tx_start_en;
        // end
        else if(udp_rec_en) begin
            // rec_en	  <= udp_rec_en;
            rec_en	  <= 1'b1;
            rec_data  <= udp_rec_data;
            rec_tlast <= udp_rec_pkt_done;
        end
        else begin
            rec_en	  <= 1'd0;
            rec_data  <= rec_data;
            rec_tlast <= 1'b0;
        end
    end

    always @(posedge clk or negedge rst_n_delay[2]) begin
        if (!rst_n_delay[2]) begin
            udp_tx_state <= UDP_IDLE;
            udp_tx_cnt <= 2'b0;
            udp_get_len_req <= 1'b0;
            udp_tx_busy <= 1'b0;
            udp_tx_start_en <= 1'b0;
            udp_tx_byte_num <= 16'b0;
        end else begin
            case (udp_tx_state)
                UDP_IDLE: begin
                    udp_tx_state <= UDP_IDLE;
                    udp_tx_cnt <= 2'b0;
                    udp_get_len_req <= 1'b0;
                    udp_tx_busy <= 1'b0;
                    udp_tx_start_en <= 1'b0;
                    udp_tx_byte_num <= 16'b0;
                    if (tx_tvalid == 1'b1) begin
                        udp_tx_state <= UDP_GET_LEN;
                        udp_get_len_req <= 1'b1;
                        udp_tx_busy <= 1'b1;
                    end
                end
                UDP_GET_LEN: begin
                    udp_tx_state <= UDP_GET_LEN;
                    udp_tx_cnt <= udp_tx_cnt + 1'b1;
                    udp_tx_byte_num <= {tx_data, udp_tx_byte_num[15 : 8]};
                    udp_get_len_req <= 1'b1;
                    if (udp_tx_cnt == 2'd1) begin
                        udp_tx_state <= UDP_SENDING;
                        udp_tx_cnt <= 2'b0;
                        udp_get_len_req <= 1'b0;
                        udp_tx_start_en <= 1'b1;
                    end
                end
                UDP_SENDING: begin
                    udp_tx_state <= UDP_SENDING;
                    udp_tx_start_en <= 1'b0;
                    if (udp_tx_done) begin
                        udp_tx_state <= UDP_IDLE;
                        udp_tx_busy <= 1'b0;
                    end
                end
                default: udp_tx_state <= UDP_IDLE;
            endcase
        end
    end

    always @(posedge clk or negedge rst_n_delay[2]) begin
        if(!rst_n_delay[2]) begin
            gmii_tx_en <= 1'd0;
            gmii_txd   <= 8'd0;
        end
        else begin
            case(protocol_sw)
                2'b00:	begin
                    gmii_tx_en <= arp_gmii_tx_en;
                    gmii_txd   <= arp_gmii_txd;
                end
                2'b01: begin
                    gmii_tx_en <= udp_gmii_tx_en;
                    gmii_txd   <= udp_gmii_txd  ;		
                end
                2'b10: begin
                    gmii_tx_en <= icmp_gmii_tx_en;
                    gmii_txd   <= icmp_gmii_txd;
                end
            endcase
        end
    end	

    always @(posedge clk or negedge rst_n_delay[2]) begin
        if (!rst_n_delay[2]) begin
            icmp_tx_busy <= 1'b0;
        end else if (icmp_tx_start_en) begin
            icmp_tx_busy <= 1'b1;
        end else if (icmp_tx_done) begin
            icmp_tx_busy <= 1'b0;
        end
    end

    always @(posedge clk or negedge rst_n_delay[2]) begin
        if (!rst_n_delay[2]) begin
            arp_rx_flag <= 1'b0;
        end else if (arp_rx_done && (arp_rx_type == 1'b0)) begin
            arp_rx_flag <= 1'b1;
        end else begin
            arp_rx_flag <= 1'b0;
        end
    end

    always @(posedge clk or negedge rst_n_delay[2]) begin
        if (!rst_n_delay[2]) begin
            protocol_sw <= 2'b0;
            arp_tx_en <= 1'b0;
        end else begin
            arp_tx_en <= 1'b0;
            if (udp_tx_start_en) begin
                protocol_sw <= 2'b01;
            end else if (icmp_tx_start_en) begin
                protocol_sw <= 2'b10;
            end else if ((arp_rx_flag && (udp_tx_busy == 1'b0)) || (arp_rx_flag && (icmp_tx_busy == 1'b0))) begin
                protocol_sw <= 2'b0;
                arp_tx_en <= 1'b1;
            end 
            // else if (auto_arp_tx_en) begin
            //     protocol_sw <= 2'b00;
            //     arp_tx_en <= 1'b1;
            // end
        end
    end

endmodule
