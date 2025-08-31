`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/19 09:58:18
// Design Name: 
// Module Name: tb_arp_rx
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


module tb_arp_rx;

    parameter TCLK_125M_HALF = 4;

    logic [7:0] ethernet_frame [0:61]; // Declare an array of 62 bytes (8-bit each)

    initial begin
        // Fill Preamble and SFD (8 bytes)
        ethernet_frame[0] = 8'h55;  // Preamble
        ethernet_frame[1] = 8'h55;
        ethernet_frame[2] = 8'h55;
        ethernet_frame[3] = 8'h55;
        ethernet_frame[4] = 8'h55;
        ethernet_frame[5] = 8'h55;
        ethernet_frame[6] = 8'h55;
        ethernet_frame[7] = 8'hD5;  // SFD

        // Fill Ethernet Header (14 bytes)
        ethernet_frame[8]  = 8'hFF; // Destination MAC (Broadcast)
        ethernet_frame[9]  = 8'hFF;
        ethernet_frame[10] = 8'hFF;
        ethernet_frame[11] = 8'hFF;
        ethernet_frame[12] = 8'hFF;
        ethernet_frame[13] = 8'hFF;
        ethernet_frame[14] = 8'hAA; // Source MAC
        ethernet_frame[15] = 8'hBB;
        ethernet_frame[16] = 8'hCC;
        ethernet_frame[17] = 8'hDD;
        ethernet_frame[18] = 8'hEE;
        ethernet_frame[19] = 8'hFF;
        ethernet_frame[20] = 8'h08; // EtherType (ARP: 0x0806)
        ethernet_frame[21] = 8'h06;

        // Fill ARP Payload (28 bytes)
        ethernet_frame[22] = 8'h00; // Hardware Type: Ethernet
        ethernet_frame[23] = 8'h01;
        ethernet_frame[24] = 8'h08; // Protocol Type: IPv4
        ethernet_frame[25] = 8'h00;
        ethernet_frame[26] = 8'h06; // Hardware Address Length
        ethernet_frame[27] = 8'h04; // Protocol Address Length
        ethernet_frame[28] = 8'h00; // Operation: Request
        ethernet_frame[29] = 8'h01;
        ethernet_frame[30] = 8'hAA; // Sender MAC
        ethernet_frame[31] = 8'hBB;
        ethernet_frame[32] = 8'hCC;
        ethernet_frame[33] = 8'hDD;
        ethernet_frame[34] = 8'hEE;
        ethernet_frame[35] = 8'hFF;
        ethernet_frame[36] = 8'hC0; // Sender IP: 192.168.1.1
        ethernet_frame[37] = 8'hA8;
        ethernet_frame[38] = 8'h01;
        ethernet_frame[39] = 8'h01;
        ethernet_frame[40] = 8'h00; // Target MAC: Unknown
        ethernet_frame[41] = 8'h00;
        ethernet_frame[42] = 8'h00;
        ethernet_frame[43] = 8'h00;
        ethernet_frame[44] = 8'h00;
        ethernet_frame[45] = 8'h00;
        ethernet_frame[46] = 8'hC0; // Target IP: 192.168.1.10
        ethernet_frame[47] = 8'hA8;
        ethernet_frame[48] = 8'h01;
        ethernet_frame[49] = 8'h0A;

        // Fill FCS (CRC-32) (4 bytes)
        ethernet_frame[50] = 8'h7B; // FCS (pre-calculated)
        ethernet_frame[51] = 8'h56;
        ethernet_frame[52] = 8'h8B;
        ethernet_frame[53] = 8'h01;

        // Padding to minimum Ethernet frame size (optional, total 64 bytes)
        for (int i = 54; i < 62; i++) begin
            ethernet_frame[i] = 8'h00; // Padding
        end
    end

    reg clk_125m, rstn;
    reg gmii_rx_dv;
    reg [7 : 0] gmii_rxd;

    wire arp_rx_done;
    wire arp_rx_type;
    wire [31 : 0] src_ip;
    wire [47 : 0] src_mac;

    initial begin
        clk_125m = 1'b0;
        rstn = 1'b0;
        fork
            #30 rstn = 1'b1;
            forever #TCLK_125M_HALF clk_125m = ~clk_125m;
        join
    end

    initial begin
        gmii_rx_dv = 1'b0;
        gmii_rxd = 8'b0;
        wait (rstn);
        #30;
        for (int i = 0; i < 62; i = i + 1) begin
            @(negedge clk_125m);
            gmii_rx_dv = 1'b1;
            gmii_rxd = ethernet_frame[i];
            @(posedge clk_125m);
            #2 gmii_rx_dv = 1'b0;
        end
    end

    arp_rx # (
        .BOARD_MAC(48'h00_11_22_33_44_55),
        .BOARD_IP ({8'd192, 8'd168, 8'd1, 8'd10})
    ) u_arp_rx (
        .clk        (clk_125m),
        .rst_n      (rstn),
        .gmii_rx_dv (gmii_rx_dv),
        .gmii_rxd   (gmii_rxd),

        .arp_rx_done(arp_rx_done),
        .arp_rx_type(arp_rx_type),
        .src_ip     (src_ip),
        .src_mac    (src_mac) 
    );

endmodule
