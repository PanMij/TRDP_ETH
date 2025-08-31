`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2025 02:48:49 PM
// Design Name: 
// Module Name: tb_udp_rx
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

module tb_udp_rx;

    reg clk, rstn;
    reg [7 : 0]   icmp_rx_data[0 : 86 - 1];
    reg [7 : 0]   udp_rx_data[0 : 65 - 1];

    reg           gmii_rx_dv  ;
    reg [7 : 0]   gmii_rxd    ;

    wire          dri_clk;
    wire          gmii_tx_en_r;
    wire [7 : 0]  gmii_txd_r  ;
    wire          rec_en      ;
    wire          rec_tlast   ;
    wire [7 : 0]  rec_data    ;
    wire          rec_tready;
    wire [7 : 0]  tx_data;
    wire          tx_req;
    wire          tx_tvalid;
    wire          tx_tlast;

    initial begin
        clk = 1'b0;
        rstn = 1'b0;
        fork
            forever #4 clk = ~clk;
            #50 rstn = 1'b1;
        join
    end

    initial begin
        $readmemh("/home/lyg/testV/icmp_rx_data.txt", icmp_rx_data);
        $readmemh("/home/lyg/testV/udp_rx_data.txt", udp_rx_data);
        gmii_rx_dv = 1'b0;
        gmii_rxd = 8'b0;
        wait (rstn & rec_tready);
        // wait (rstn);
        #100;
        // for (int i = 0; i < 86; i = i + 1) begin
        //     @(negedge clk);
        //     gmii_rx_dv = 1'b1;
        //     gmii_rxd = icmp_rx_data[i];
        //     $write("%X ", gmii_rxd);
        // end
        for (int i = 0; i < 65; i = i + 1) begin
            @(negedge clk);
            gmii_rx_dv = 1'b1;
            gmii_rxd = udp_rx_data[i];
            $write("%X ", gmii_rxd);
        end
        @(negedge clk);
        gmii_rx_dv = 1'b0;
        gmii_rxd = 8'b0;
        $write("\n");
    end

    always @(posedge clk) begin
        if (gmii_tx_en_r) begin
            $write("%X ", gmii_txd_r);
        end
    end

    adaptive_udp u_adaptive_udp (
        .sys_rst_n       (rstn),   
        .module_rst_n    (rstn),
        .fifo_rst_n      (),
        .dri_clk         (dri_clk),       
                     
        .phy_speed       (2'b10),  
      
        .eth_rxc         (clk),  

        .gmii_rx_dv      (gmii_rx_dv),
        .gmii_rxd        (gmii_rxd  ),
        .gmii_tx_en_r    (gmii_tx_en_r),
        .gmii_txd_r      (gmii_txd_r  ),

        .rec_data        (rec_data  ),
        .rec_en          (rec_en    ),
        .rec_tlast       (rec_tlast ),
        .rec_tready      (rec_tready),
        .tx_data         (tx_data  ),
        .tx_req          (tx_req   ),
        .tx_tvalid       (tx_tvalid),
        .tx_tlast        (tx_tlast )
    );

    fifo_generator_0 u_fifo_generator_0 (
        .wr_rst_busy(),      // output wire wr_rst_busy
        .rd_rst_busy(),      // output wire rd_rst_busy
        .m_aclk(dri_clk),                // input wire m_aclk
        .s_aclk(dri_clk),                // input wire s_aclk
        .s_aresetn(rstn),          // input wire s_aresetn
        .s_axis_tvalid(rec_en),  // input wire s_axis_tvalid
        .s_axis_tready(rec_tready),  // output wire s_axis_tready
        .s_axis_tdata(rec_data),    // input wire [7 : 0] s_axis_tdata
        .s_axis_tlast(rec_tlast),    // input wire s_axis_tlast
        .m_axis_tvalid(tx_tvalid),  // output wire m_axis_tvalid
        .m_axis_tready(tx_req),  // input wire m_axis_tready
        .m_axis_tdata(tx_data),    // output wire [7 : 0] m_axis_tdata
        .m_axis_tlast(tx_tlast)    // output wire m_axis_tlast
    );

endmodule
