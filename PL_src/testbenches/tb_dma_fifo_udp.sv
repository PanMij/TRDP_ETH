`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2025 02:05:07 PM
// Design Name: 
// Module Name: tb_dma_fifo_udp
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


module tb_dma_fifo_udp;

    reg clk_125m, clk_100m, rstn;
    reg [7 : 0]   icmp_rx_data[0 : 86 - 1];
    reg [15 : 0]  icmp_rx_data_len;
    reg [7 : 0]   udp_rx_data[0 : 65 - 1];
    reg [15 : 0]  udp_rx_data_len;
    reg           s_tvalid;
    reg [7 : 0]   s_data;
    reg           s_tlast;

    wire          s_tready;
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
        clk_125m = 1'b0;
        clk_100m = 1'b0;
        rstn = 1'b0;
        fork
            forever #4 clk_125m = ~clk_125m;
            forever #5 clk_100m = ~clk_100m;
            #50 rstn = 1'b1;
        join
    end

    initial begin
        $readmemh("/home/lyg/testV/icmp_rx_data.txt", icmp_rx_data);
        icmp_rx_data_len = 16'd86;
        udp_rx_data_len = 16'd65;
        $readmemh("/home/lyg/testV/udp_rx_data.txt", udp_rx_data);
        s_tvalid = 1'b0;
        s_data = 1'b0;
        s_tlast = 1'b0;
        wait (dri_clk);
        $display($time);
        wait (s_tready);
        $display($time);
        #200;
        @(negedge dri_clk);
        s_tvalid = 1'b1;
        s_data = udp_rx_data_len[7 : 0];
        @(negedge dri_clk);
        s_tvalid = 1'b1;
        s_data = udp_rx_data_len[15 : 8];
        for (int i = 0; i < udp_rx_data_len; i = i + 1) begin
            @(negedge dri_clk);
            s_tvalid = 1'b1;
            s_data = udp_rx_data[i];
            if (i == udp_rx_data_len - 1) begin
                s_tlast = 1'b1;
            end
            $write("%X ", s_data);
        end
        @(negedge dri_clk);
        s_tvalid = 1'b0;
        s_data = 8'b0;
        s_tlast = 1'b0;
        $write("\n");
    end

    always @(posedge dri_clk) begin
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
      
        .eth_rxc         (clk_125m),  

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
        .s_axis_tvalid(s_tvalid),  // input wire s_axis_tvalid
        .s_axis_tready(s_tready),  // output wire s_axis_tready
        .s_axis_tdata(s_data),    // input wire [7 : 0] s_axis_tdata
        .s_axis_tlast(s_tlast),    // input wire s_axis_tlast
        .m_axis_tvalid(tx_tvalid),  // output wire m_axis_tvalid
        .m_axis_tready(tx_req),  // input wire m_axis_tready
        .m_axis_tdata(tx_data),    // output wire [7 : 0] m_axis_tdata
        .m_axis_tlast(tx_tlast)    // output wire m_axis_tlast
    );

endmodule
