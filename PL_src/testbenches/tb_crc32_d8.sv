`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/19 21:41:53
// Design Name: 
// Module Name: tb_crc32_d8
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


module tb_crc32_d8;

    parameter TCLK_HALF = 4;

    reg clk, rstn;
    reg [7 : 0] data_t[0 : 59];
    reg [7 : 0] data;
    reg crc_en;
    reg crc_clr;
    wire [31 : 0] crc_data;
    wire [31 : 0] crc_next;

    wire [31 : 0] crc_out;

    // assign crc_out[31 : 24] = {~crc_next[24], ~crc_next[25], ~crc_next[26], ~crc_next[27], ~crc_next[28], ~crc_next[29], ~crc_next[30], ~crc_next[31]};
    assign crc_out[31 : 24] = {~crc_data[24], ~crc_data[25], ~crc_data[26], ~crc_data[27], ~crc_data[28], ~crc_data[29], ~crc_data[30], ~crc_data[31]};
    assign crc_out[23 : 16] = {~crc_data[16], ~crc_data[17], ~crc_data[18], ~crc_data[19], ~crc_data[20], ~crc_data[21], ~crc_data[22], ~crc_data[23]};
    assign crc_out[15 : 8] = {~crc_data[8], ~crc_data[9], ~crc_data[10], ~crc_data[11], ~crc_data[12], ~crc_data[13], ~crc_data[14], ~crc_data[15]};
    assign crc_out[7 : 0] = {~crc_data[0], ~crc_data[1], ~crc_data[2], ~crc_data[3], ~crc_data[4], ~crc_data[5], ~crc_data[6], ~crc_data[7]};

    initial begin
        clk = 1'b0;
        rstn = 1'b0;
        fork
            #30 rstn = 1'b1;
            forever #TCLK_HALF clk = ~clk;
        join
    end

    initial begin
        data = 8'b0;
        crc_en = 1'b0;
        crc_clr = 1'b0;
        $readmemh("C:/Users/LYG/Desktop/testV/ARP/ARP.srcs/sim_1/new/crc32_data.txt", data_t);

        wait (rstn);
        for (int i = 0; i < 60; i = i + 1) begin
            @(negedge clk);
            data = data_t[i];
            crc_en = 1'b1;
            @(posedge clk);
            #2 crc_en = 1'b0;
        end
    end

    crc32_d8 u_crc32_d8 (
        .clk     (clk),
        .rst_n   (rstn),
        .data    (data),
        .crc_en  (crc_en  ),
        .crc_clr (crc_clr ),
        .crc_data(crc_data),
        .crc_next(crc_next) 
    );

endmodule
