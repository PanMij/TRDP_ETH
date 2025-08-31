`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/18 22:51:14
// Design Name: 
// Module Name: rgmii_rx_100m
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


module rgmii_rx_100m (
    input              idelay_clk     ,
    input              rst_n          ,
                                        
    input              rgmii_rx_ctl   ,
    input [3 : 0]      rgmii_rxd      , 
                                      
    input              eth_rxc_sample ,
    output reg         gmii_rx_dv     ,
    output reg [7 : 0] gmii_rxd           
);

    reg [2 : 0]  rst_n_delay;
    reg [3 : 0]  rgmii_rxl_delay; // Buffer of lower bits
    reg [3 : 0]  rgmii_rxu_delay; // Buffer of upper bits
    reg          rgmii_rx_ctl_r;
    reg          cur_pos;
    reg          concat_en;

    always @(posedge eth_rxc_sample or negedge rst_n) begin
        if (!rst_n) begin
            rst_n_delay <= 3'b0;
        end
        else begin
            rst_n_delay <= {rst_n_delay[1 : 0], 1'b1};
        end
    end

    always @(posedge eth_rxc_sample or negedge rst_n_delay[2]) begin
        if (!rst_n_delay[2]) begin
            cur_pos <= 1'b0;
            rgmii_rxl_delay <= 4'b0;
            rgmii_rxu_delay <= 4'b0;
            rgmii_rx_ctl_r <= 1'b0;
            concat_en <= 1'b0;
        end
        else if (rgmii_rx_ctl) begin
            case (cur_pos)
                1'b0: begin
                    cur_pos <= 1'b1;
                    rgmii_rxl_delay <= rgmii_rxd;
                    rgmii_rx_ctl_r <= rgmii_rx_ctl;
                    concat_en <= 1'b0;
                end
                1'b1: begin
                    cur_pos <= 1'b0;
                    rgmii_rxu_delay <= rgmii_rxd;
                    rgmii_rx_ctl_r <= rgmii_rx_ctl;
                    concat_en <= 1'b1;
                end
            endcase 
        end
        else begin
            cur_pos <= 1'b0;
            rgmii_rxl_delay <= 4'b0;
            rgmii_rxu_delay <= 4'b0;
            rgmii_rx_ctl_r <= 1'b0;
            concat_en <= 1'b0;
        end
    end

    always @(posedge eth_rxc_sample or negedge rst_n_delay[2]) begin
        if (!rst_n_delay[2]) begin
            gmii_rxd <= 8'b0;
            gmii_rx_dv <= 1'b0;
        end
        // else if (gmii_rx_dv_t) begin    
        else if (rgmii_rx_ctl_r) begin    
            if (concat_en) begin
                gmii_rxd <= {rgmii_rxu_delay, rgmii_rxl_delay};
                gmii_rx_dv <= 1'b1;
            end
        end
        else begin
            gmii_rxd <= 8'b0;
            gmii_rx_dv <= 1'b0;
        end
    end

endmodule
