`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/07/30 18:53:39
// Design Name: 
// Module Name: ethernet_controller_rx
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


module ethernet_controller_rx(
    input            clk          ,
    input            clk_en       ,
    input            rst_n        ,
    input            gmii_rx_dv   ,
    input [7:0]      gmii_rxd     ,

    output reg       rec_tlast    ,
    output reg       rec_en       ,
    output reg [7:0] rec_data      
);

localparam IDLE        = 5'b00001;
localparam PREAMBLE    = 5'b00010;
localparam RX_DATA     = 5'b00100;
localparam RX_CHECKSUM = 5'b01000;
localparam RX_END      = 5'b10000;

reg [2 : 0] rst_n_delay;

reg [4:0]    cur_state;
reg [4:0]    next_state;
reg          skip_en;
reg          error_en;
reg [4 : 0]  cnt;

reg         gmii_rx_dv_t[1 : 0];
reg [7 : 0] gmii_rxd_t[1 : 0];

reg [7 : 0] gmii_rxd_d[4 : 0];
reg         gmii_rx_dv_d[4 : 0];

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        rst_n_delay <= 3'b000;
    end else begin
        rst_n_delay <= {rst_n_delay[1:0], 1'b1};
    end
end

always @(posedge clk or negedge rst_n_delay[2]) begin
    if (!rst_n_delay[2]) begin
        gmii_rx_dv_t[0] <= 1'b0;
        gmii_rx_dv_t[1] <= 1'b0;
        gmii_rxd_t[0] <= 8'b0;
        gmii_rxd_t[1] <= 8'b0;
    end else if (clk_en) begin
        gmii_rx_dv_t[0] <= gmii_rx_dv;
        gmii_rx_dv_t[1] <= gmii_rx_dv_t[0];
        gmii_rxd_t[0] <= gmii_rxd;
        gmii_rxd_t[1] <= gmii_rxd_t[0];
    end
end

always @(posedge clk or negedge rst_n_delay[2]) begin
    if (!rst_n_delay[2]) begin
        cur_state <= IDLE;
    end else if (clk_en) begin
        cur_state <= next_state;
    end
end

always @(*) begin
    next_state = IDLE;
    case (cur_state)
        IDLE: begin
            if (skip_en) begin
                next_state = PREAMBLE;
            end else begin
                next_state = IDLE;
            end
        end
        PREAMBLE: begin
            if (skip_en) begin
                next_state = RX_DATA;
            end else if (error_en) begin
                next_state = RX_END;
            end else begin
                next_state = PREAMBLE;
            end
        end
        RX_DATA: begin
            if (skip_en) begin
                next_state = RX_END;
            end else if (error_en) begin
                next_state = RX_END;
            end else begin
                next_state = RX_DATA;
            end
        end
        RX_CHECKSUM: begin
            if (skip_en) begin
                next_state = RX_END;
            end else if (error_en) begin
                next_state = RX_END;
            end else begin
                next_state = RX_CHECKSUM;
            end
        end
        RX_END: begin
            if (skip_en) begin
                next_state = IDLE;
            end else begin
                next_state = RX_END;
            end
        end
    endcase
end

always @(posedge clk or negedge rst_n_delay[2]) begin
    if (!rst_n_delay[2]) begin
        rec_tlast <= 1'b0;
        gmii_rxd_d[0] <= 8'b0;
        gmii_rxd_d[1] <= 8'b0;
        gmii_rxd_d[2] <= 8'b0;
        gmii_rxd_d[3] <= 8'b0;
        gmii_rxd_d[4] <= 8'b0;
        gmii_rx_dv_d[0] <= 1'b0;
        gmii_rx_dv_d[1] <= 1'b0;
        gmii_rx_dv_d[2] <= 1'b0;
        gmii_rx_dv_d[3] <= 1'b0;
        gmii_rx_dv_d[4] <= 1'b0;

        skip_en <= 1'b0;
        error_en <= 1'b0;
        cnt <= 5'b0;
    end else if (clk_en) begin
        skip_en <= 1'b0;
        error_en <= 1'b0;
        rec_tlast <= 1'b0;
        case (cur_state)
            IDLE: begin
                if (gmii_rx_dv_t[1] && gmii_rxd_t[1] == 8'h55 && !skip_en) begin
                    skip_en <= 1'b1;
                    cnt <= 5'd1;
                end
            end
            PREAMBLE: begin
                if (gmii_rx_dv_t[1]) begin
                    cnt <= cnt + 5'd1;
                    if (cnt < 5'd6 && gmii_rxd_t[1] != 8'h55) begin
                        error_en <= 1'b1;
                    end else if (cnt == 5'd5) begin
                        skip_en <= 1'b1;
                    end else if (cnt == 5'd6) begin
                        cnt <= 5'd0;
                        if (gmii_rxd_t[1] != 8'hd5) begin
                            error_en <= 1'b1;
                        end
                    end
                end
            end
            RX_DATA: begin
                if (gmii_rx_dv_t[1]) begin
                    gmii_rxd_d[0] <= gmii_rxd_t[1];
                    gmii_rxd_d[1] <= gmii_rxd_d[0];
                    gmii_rxd_d[2] <= gmii_rxd_d[1];
                    gmii_rxd_d[3] <= gmii_rxd_d[2];
                    gmii_rxd_d[4] <= gmii_rxd_d[3];
                    gmii_rx_dv_d[0] <= gmii_rx_dv_t[1];
                    gmii_rx_dv_d[1] <= gmii_rx_dv_d[0];
                    gmii_rx_dv_d[2] <= gmii_rx_dv_d[1];
                    gmii_rx_dv_d[3] <= gmii_rx_dv_d[2];
                    gmii_rx_dv_d[4] <= gmii_rx_dv_d[3];
                end else begin
                    gmii_rxd_d[0] <= 8'b0;
                    gmii_rxd_d[1] <= 8'b0;
                    gmii_rxd_d[2] <= 8'b0;
                    gmii_rxd_d[3] <= 8'b0;
                    gmii_rxd_d[4] <= 8'b0;
                    gmii_rx_dv_d[0] <= 1'b0;
                    gmii_rx_dv_d[1] <= 1'b0;
                    gmii_rx_dv_d[2] <= 1'b0;
                    gmii_rx_dv_d[3] <= 1'b0;
                    gmii_rx_dv_d[4] <= 1'b0;
                    skip_en <= 1'b1;
                    rec_tlast <= 1'b1 && (next_state == RX_DATA);
                end
            end
            RX_END: begin
                if (!skip_en) begin
                    skip_en <= 1'b1;
                end
            end
        endcase
    end else begin
        rec_tlast <= 1'b0;
    end
end

always @(posedge clk or negedge rst_n_delay[2]) begin
    if (!rst_n_delay[2]) begin
        rec_data <= 8'b0;
        rec_en <= 1'b0;
    end else if (clk_en) begin
        rec_data <= gmii_rxd_d[4];
        rec_en <= gmii_rx_dv_d[4];
    end else begin
        rec_en <= 1'b0;
    end
end

endmodule
