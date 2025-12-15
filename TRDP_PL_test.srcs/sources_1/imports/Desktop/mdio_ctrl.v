`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/15 14:15:21
// Design Name: 
// Module Name: mdio_ctrl
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


module mdio_ctrl(
    input               clk          ,
    input               rst_n        ,
    input               soft_rst_trig,
    input [1 : 0]       speed_sel_key,
    input               op_done      ,
    input [15 : 0]      op_rd_data   ,
    input               op_rd_ack    ,
                                      
    output reg          op_exec      ,
    output reg          op_rh_wl     ,
    output reg [4 : 0]  op_addr      ,
    output reg [15 : 0] op_wr_data   ,
    output reg [1 : 0]  phy_speed    ,
    output [1 : 0]      led           
);

    parameter TIME_CNT = 24'd1000000;
    parameter LOOPBACK_CNT = 32'd62_500_000;
    parameter [15 : 0] rstCommand = 16'h9140;
    parameter [15 : 0] set_1000m_command = 16'b0000_0001_0100_0000; // 强制千兆会link down, 原因不明
    parameter [15 : 0] set_100m_command  = 16'b0010_0001_0000_0000;
    parameter [15 : 0] set_10m_command   = 16'b0000_0001_0000_0000;

    reg [2 : 0] rst_trig_delay;
    reg [23 : 0] timer_cnt;
    reg timer_done;
    reg [31 : 0] loopback_cnt;
    reg set_loopback;
    reg loopback_done;
    reg [2 : 0] flow_cnt;
    reg rst_trig_flag;
    reg [1 : 0] speed_status;
    reg start_next;
    reg read_next;
    reg link_error;
    reg [2 : 0] speed_sel_delay[1 : 0];
    reg [1 : 0] speed_sel_flag;

    wire pos_rst_trig = rst_trig_delay[1] & ~rst_trig_delay[2];
    wire [1 : 0] pos_speed_trig;

    assign pos_speed_trig[0] = speed_sel_delay[0][1] & ~speed_sel_delay[0][2];
    assign pos_speed_trig[1] = speed_sel_delay[1][1] & ~speed_sel_delay[1][2];
    assign led = link_error ? 2'b0 : speed_status;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            rst_trig_delay <= 3'b0;
        end
        else begin
            rst_trig_delay <= {rst_trig_delay[1 : 0], soft_rst_trig};
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            speed_sel_delay[0] <= 3'b0;
            speed_sel_delay[1] <= 3'b0;
        end
        else begin
            speed_sel_delay[0] <= {speed_sel_delay[0][1 : 0], speed_sel_key[0]};
            speed_sel_delay[1] <= {speed_sel_delay[1][1 : 0], speed_sel_key[1]};
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            timer_cnt <= 24'b0;
            timer_done <= 1'b0;
        end
        else if (timer_cnt == TIME_CNT - 1'b1) begin
            timer_cnt <= 24'b0;
            timer_done <= 1'b1;
        end
        else begin
            timer_cnt <= timer_cnt + 1'b1;
            timer_done <= 1'b0;
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            set_loopback <= 1'b0;
            loopback_cnt <= 32'b0;
        end else if (loopback_cnt == LOOPBACK_CNT - 1'b1) begin
            // set_loopback <= 1'b1; // set loopback
            set_loopback <= 1'b0; // no loopback
            loopback_cnt <= 32'b0;
        end else begin
            set_loopback <= 1'b0;
            loopback_cnt <= loopback_cnt + 1'b1;
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            flow_cnt <= 3'b0;
            rst_trig_flag <= 1'b0;
            speed_sel_flag <= 2'b0;
            speed_status <= 2'b0;
            phy_speed <= 2'b0;
            op_exec <= 1'b0;
            op_rh_wl <= 1'b0;
            op_addr <= 5'b0;
            op_wr_data <= 16'b0;
            start_next <= 1'b0;
            read_next <= 1'b0;
            link_error <= 1'b0;
            loopback_done <= 1'b0;
        end
        else begin
            op_exec <= 1'b0;
            if (pos_rst_trig) begin
                rst_trig_flag <= 1'b1;
            end
            else if (|pos_speed_trig) begin
                speed_sel_flag <= pos_speed_trig;
            end
            case (flow_cnt)
                3'd0: begin
                    if (rst_trig_flag) begin
                        op_exec <= 1'b1;
                        op_rh_wl <= 1'b0;
                        op_addr <= 5'b0;
                        op_wr_data <= rstCommand;
                        flow_cnt <= 3'd1;
                    end
                    else if (|speed_sel_flag) begin
                        op_exec <= 1'b1;
                        op_rh_wl <= 1'b0;
                        op_addr <= 5'b0;
                        op_wr_data <= (speed_sel_flag[0]) ? set_1000m_command : set_100m_command;
                        flow_cnt <= 3'd1;
                    end
                    else if (!loopback_done && set_loopback) begin
                        op_exec <= 1'b1;
                        op_rh_wl <= 1'b0;
                        op_addr <= 5'b0;
                        op_wr_data <= 16'b0110_0001_0000_0000; // 100M loopback
                        flow_cnt <= 3'd1;
                    end
                    else if (timer_done) begin
                        op_exec <= 1'b1;
                        op_rh_wl <= 1'b1;
                        op_addr <= 5'h01;
                        flow_cnt <= 3'd2;
                    end
                    else if (start_next) begin
                        op_exec <= 1'b1;
                        op_rh_wl <= 1'b1;
                        op_addr <= 5'h1A; // 正点： 0x11, 超哥: 0x1A
                        flow_cnt <= 3'd2;
                        start_next <= 1'b0;
                        read_next <= 1'b1;
                    end
                end
                3'd1: begin
                    if (op_done) begin
                        if (rst_trig_flag) begin
                            rst_trig_flag <= 1'b0;
                        end
                        else if ((|speed_sel_flag)) begin
                            speed_sel_flag <= 2'b0;
                        end
                        else if (!loopback_done) begin
                            loopback_done <= 1'b1;
                        end
                        flow_cnt <= 3'd0;
                    end
                end
                3'd2: begin
                    if (op_done) begin
                        if (op_rd_ack == 1'b0 && read_next == 1'b0) begin
                            flow_cnt <= 3'd3;
                        end
                        else if (op_rd_ack == 1'b0 && read_next == 1'b1) begin
                            read_next <= 1'b0;
                            flow_cnt <= 3'd4;
                        end
                        else begin
                            flow_cnt <= 3'd0;
                        end
                    end
                end
                3'd3: begin
                    flow_cnt <= 3'd0;
                    if (op_rd_data[5] == 1'b1 && op_rd_data[2] == 1'b1) begin // auto-negotiation enable
                    // if (op_rd_data[2] == 1'b1) begin // auto-negotiation disable
                        start_next <= 1'b1;
                        link_error <= 1'b0;
                    end
                    else begin
                        link_error <= 1'b1;
                    end
                end
                3'd4: begin
                    flow_cnt <= 3'd0;
                    phy_speed <= op_rd_data[5 : 4];
                    case (op_rd_data[5 : 4]) // 正点: [15 : 14], 超哥: [5 : 4]
                        2'b10: speed_status <= 2'b11;
                        2'b01: speed_status <= 2'b10;
                        2'b00: speed_status <= 2'b01;
                        default: speed_status <= 2'b00;
                    endcase
                end
            endcase
        end
    end

endmodule
