`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/07/31 08:37:13
// Design Name: 
// Module Name: ethernet_controller_tx
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


module ethernet_controller_tx(
    input            clk       ,
    input            clk_en    ,
    input            rst_n     ,
    
    // GMII interface
    output reg       gmii_tx_en,
    output reg [7:0] gmii_txd  ,

    // FIFO interface
    input [7:0]      tx_data   ,
    input            tx_tvalid ,
    input            tx_tlast  ,
    output reg       tx_tready ,

    // CRC interface
    input [31 : 0]   crc_data  ,
    input [7 : 0]    crc_next  ,
    output reg       crc_en    ,
    output reg       crc_clr    
);

localparam IDLE       = 6'b000001;
localparam READ_LEN   = 6'b000010;
localparam PREAMBLE   = 6'b000100;
localparam TX_DATA    = 6'b001000;
localparam TX_PADDING = 6'b010000;
localparam TX_CRC     = 6'b100000;

reg [2 : 0]  rst_n_delay;
// reg [2 : 0]  tx_start_d;

reg [5 : 0]  cur_state;
reg [5 : 0]  next_state;
reg          skip_en;
reg [4 : 0]  cnt;
reg [15 : 0] payload_length;
reg [15 : 0] byte_counter;
reg [1 : 0]  len_byte_cnt;

reg          tx_start;

// assign tx_start = ~tx_start_d[2] & tx_start_d[1];

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        rst_n_delay <= 3'b000;
    end else begin
        rst_n_delay <= {rst_n_delay[1:0], 1'b1};
    end
end

// always @(posedge clk or negedge rst_n_delay[2]) begin
//     if (!rst_n_delay[2]) begin
//         tx_start_d <= 3'b000;
//     end else if (clk_en) begin
//         tx_start_d <= {tx_start_d[1:0], tx_tvalid};
//     end
// end

always @(posedge clk or negedge rst_n_delay[2]) begin
    if (!rst_n_delay[2]) begin
        tx_start <= 1'b0;
    end else if (clk_en) begin
        tx_start <= ~gmii_tx_en & tx_tvalid;
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
                next_state = READ_LEN;
            end else begin
                next_state = IDLE;
            end
        end
        READ_LEN: begin
            if (skip_en) begin
                next_state = PREAMBLE;
            end else begin
                next_state = READ_LEN;
            end
        end
        PREAMBLE: begin
            if (skip_en) begin
                next_state = TX_DATA;
            end else begin
                next_state = PREAMBLE;
            end
        end
        TX_DATA: begin
            if (skip_en) begin
                if (byte_counter < 16'd60) begin
                    next_state = TX_PADDING;
                end else begin
                    next_state = TX_CRC;
                end
            end else begin
                next_state = TX_DATA;
            end
        end
        TX_PADDING: begin
            if (skip_en) begin
                next_state = TX_CRC;
            end else begin
                next_state = TX_PADDING;
            end
        end
        TX_CRC: begin
            if (skip_en) begin
                next_state = IDLE;
            end else begin
                next_state = TX_CRC;
            end
        end
        default: next_state = IDLE;
    endcase
end

always @(posedge clk or negedge rst_n_delay[2]) begin
    if (!rst_n_delay[2]) begin
        gmii_tx_en <= 1'b0;
        gmii_txd   <= 8'h00;
        tx_tready  <= 1'b0;
        crc_en     <= 1'b0;
        crc_clr    <= 1'b0;
        skip_en <= 1'b0;
        cnt        <= 5'd0;
        payload_length <= 16'd0;
        byte_counter <= 16'd0;
        len_byte_cnt <= 2'd0;
    end else if (clk_en) begin
        skip_en <= 1'b0;
        crc_en <= 1'b0;
        tx_tready <= 1'b0;
        case (next_state)
            IDLE: begin
                gmii_tx_en <= 1'b0;
                gmii_txd   <= 8'h00;
                payload_length <= 16'd0;
                byte_counter <= 16'd0;
                len_byte_cnt <= 2'd0;
                if (tx_start) begin
                    skip_en <= 1'b1;
                    cnt <= 5'd0;
                end
            end
            READ_LEN: begin
                gmii_tx_en <= 1'b0;  // Don't transmit length bytes
                if (tx_tvalid) begin
                    tx_tready <= 1'b1;
                    len_byte_cnt <= len_byte_cnt + 1'b1;
                    
                    // Extract payload length from first two bytes
                    if (len_byte_cnt == 2'd0) begin
                        payload_length[7:0] <= tx_data;  // Low byte
                    end else if (len_byte_cnt == 2'd1) begin
                        payload_length[15:8] <= tx_data; // High byte
                        skip_en <= 1'b1; // Move to preamble after reading length
                    end
                end
            end
            PREAMBLE: begin
                cnt <= cnt + 1'b1;
                gmii_tx_en <= 1'b1;
                gmii_txd   <= 8'h55; // Preamble data
                if (cnt == 5'd7) begin
                    gmii_txd <= 8'hD5; // SFD (Start Frame Delimiter)
                    cnt <= 5'd0;
                    skip_en <= 1'b1;
                end
            end
            TX_DATA: begin
                crc_en <= 1'b1;  // Include data in CRC
                gmii_tx_en <= 1'b1;
                gmii_txd   <= tx_data;
                if (tx_tvalid) begin
                    tx_tready <= 1'b1;
                    byte_counter <= byte_counter + 1'b1;
                end 
                if (tx_tvalid && tx_tlast) begin
                    skip_en <= 1'b1; // End of frame data
                end
            end
            TX_PADDING: begin
                // Enable CRC for padding bytes
                crc_en <= 1'b1;  
                gmii_tx_en <= 1'b1;
                gmii_txd <= 8'h00; // Padding bytes
                byte_counter <= byte_counter + 1'b1;
                
                // Continue padding until we reach 60 bytes total
                if (byte_counter >= 16'd59) begin
                    skip_en <= 1'b1;
                end
            end
            TX_CRC: begin
                cnt <= cnt + 1'b1;
                gmii_tx_en <= 1'b1;
                if(cnt == 3'd0)
                    gmii_txd <= {~crc_next[0], ~crc_next[1], ~crc_next[2],~crc_next[3],
                                 ~crc_next[4], ~crc_next[5], ~crc_next[6],~crc_next[7]};
                else if(cnt == 3'd1)
                    gmii_txd <= {~crc_data[16], ~crc_data[17], ~crc_data[18],~crc_data[19],
                                 ~crc_data[20], ~crc_data[21], ~crc_data[22],~crc_data[23]};
                else if(cnt == 3'd2) begin
                    gmii_txd <= {~crc_data[8], ~crc_data[9], ~crc_data[10],~crc_data[11],
                                 ~crc_data[12], ~crc_data[13], ~crc_data[14],~crc_data[15]};                              
                end
                else if(cnt == 3'd3) begin
                    gmii_txd <= {~crc_data[0], ~crc_data[1], ~crc_data[2],~crc_data[3],
                                 ~crc_data[4], ~crc_data[5], ~crc_data[6],~crc_data[7]};  
                    skip_en <= 1'b1;
                    crc_clr <= 1'b1;
                end
            end
        endcase
    end else begin
        tx_tready <= 1'b0;
        crc_clr <= 1'b0;
    end
end

endmodule
