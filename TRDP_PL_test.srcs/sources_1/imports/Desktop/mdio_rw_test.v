`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/15 15:35:43
// Design Name: 
// Module Name: mdio_rw_test
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


module mdio_rw_test # (
    parameter PHY_ADDR = 5'b00100 //  // zhengdian: 00100, chaoge: 00001
) (
    input          sys_clk     ,
    input          sys_rst_n   ,
    output         module_rst_n,
                              
    output         eth_mdc     ,
    inout          eth_mdio    ,
    output         eth_rst_n   ,

    output [1 : 0] phy_speed             
);

    reg [1 : 0]   phy_speed_delay[2 : 0];

    wire          op_exec;
    wire          op_rh_wl;
    wire [4 : 0]  op_addr;
    wire [15 : 0] op_wr_data;
    wire          op_done;
    wire [15 : 0] op_rd_data;
    wire          op_rd_ack;
    wire          dri_clk;
    wire [1 : 0]  phy_speed_t;
    wire          phy_speed_changed_n;

    assign eth_rst_n           = sys_rst_n;
    // assign module_rst_n        = sys_rst_n & phy_speed_changed_n;
    assign module_rst_n        = sys_rst_n;
    assign phy_speed           = phy_speed_delay[2];
    assign phy_speed_changed_n = ~(phy_speed_delay[1] != phy_speed_delay[2]);

    always @(posedge sys_clk or negedge sys_rst_n) begin
        if (!sys_rst_n) begin
            phy_speed_delay[0] <= 2'b0;
            phy_speed_delay[1] <= 2'b0;
            phy_speed_delay[2] <= 2'b0;
        end else begin
            phy_speed_delay[0] <= phy_speed_t;
            phy_speed_delay[1] <= phy_speed_delay[0];
            phy_speed_delay[2] <= phy_speed_delay[1];
        end
    end

    mdio_dri #(
        .PHY_ADDR(PHY_ADDR), 
        .CLK_DIV (6'd16)
    ) u_mdio_dri (
        .clk       (sys_clk),
        .rst_n     (sys_rst_n),
        .op_exec   (op_exec),
        .op_rh_wl  (op_rh_wl),
        .op_addr   (op_addr),
        .op_wr_data(op_wr_data),
        .op_done   (op_done),
        .op_rd_data(op_rd_data),
        .op_rd_ack (op_rd_ack),
        .dri_clk   (dri_clk),
        .eth_mdc   (eth_mdc),
        .eth_mdio  (eth_mdio) 
    );

    mdio_ctrl u_mdio_ctrl (
        .clk          (dri_clk),
        .rst_n        (sys_rst_n),
        // .soft_rst_trig(touch_key),
        // .speed_sel_key(speed_sel_key),
        .speed_sel_key(2'b0),
        .soft_rst_trig(1'b0),
        .op_done      (op_done),
        .op_rd_data   (op_rd_data),
        .op_rd_ack    (op_rd_ack),
                  
        .op_exec      (op_exec),
        .op_rh_wl     (op_rh_wl),
        .op_addr      (op_addr),
        .op_wr_data   (op_wr_data),
        .phy_speed    (phy_speed_t),
        .led          () 
    );

endmodule

// 01 10 00001 00001 z0 0111 1001 1010 1101
// 01 10 00001 11010 z0 0011 1000 0010 1110
//                      0011 0000 0001 1110