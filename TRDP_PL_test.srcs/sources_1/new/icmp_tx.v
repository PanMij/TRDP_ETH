`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/03 20:08:33
// Design Name: 
// Module Name: icmp_tx
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


module icmp_tx # (
    parameter BOARD_MAC = 48'h00_11_22_33_44_55,
    parameter BOARD_IP  = {8'd192, 8'd168, 8'd1, 8'd10},
    parameter DES_MAC   = 48'hff_ff_ff_ff_ff_ff,
    parameter DES_IP    = {8'd192, 8'd168, 8'd1, 8'd209}
) (
    input              clk           ,
    input              rst_n         ,
    input [31 : 0]     reply_checksum,
    input [15 : 0]     icmp_id       ,
    input [15 : 0]     icmp_seq      ,
    input              tx_start_en   ,
    input [7 : 0]      tx_data       ,
    input [15 : 0]     tx_byte_num   ,
    input [47 : 0]     des_mac       ,
    input [31 : 0]     des_ip        ,
    input [31 : 0]     crc_data      ,
    input [7 : 0]      crc_next      ,
                                          
    output reg         tx_done       ,
    output reg         tx_req        ,
    output reg         gmii_tx_en    ,
    output reg [7 : 0] gmii_txd      ,
    output reg         crc_en        ,
    output reg         crc_clr        
);

    localparam st_idle       = 8'b00000001;
    localparam st_check_sum  = 8'b00000010;
    localparam st_check_icmp = 8'b00000100;
    localparam st_preamble   = 8'b00001000;
    localparam st_eth_head   = 8'b00010000;
    localparam st_ip_head    = 8'b00100000;
    localparam st_tx_data    = 8'b01000000;
    localparam st_crc        = 8'b10000000;

    localparam ETH_TYPE      = 16'h0800;
    /*
     * The minimum length of ethernet data is 46 bytes.
     * Therefore the minimum length of ICMP data is 46 - 20(IP header) - 8(ICMP header) = 18
     */
    localparam MIN_DATA_NUM  = 16'd18;
    localparam ECHO_REPLY    = 8'h00; 
    // localparam ECHO_REPLY    = 8'h08; 

    reg [2 : 0]   rst_n_delay;
    reg [7 : 0]   cur_state;
    reg [7 : 0]   next_state;
    reg           skip_en;
    reg [4 : 0]   cnt;
    reg [7 : 0]   preamble[7 : 0];
    reg [7 : 0]   eth_head[13 : 0];
    reg [31 : 0]  ip_head[6 : 0];
    reg [2 : 0]   start_en_delay;
    reg [15 : 0]  tx_data_num;
    reg [15 : 0]  total_num;
    reg           trig_tx_en;
    reg [31 : 0]  check_buffer;
    reg [31 : 0]  check_buffer_icmp;
    reg [1 : 0]   tx_bit_sel;
    reg [15 : 0]  data_cnt;
    reg           tx_done_t;
    reg [4 : 0]   real_add_cnt;
 
    wire          pos_start_en;
    wire [15 : 0] real_tx_data_num;

    assign pos_start_en     = (~start_en_delay[2]) & start_en_delay[1];
    assign real_tx_data_num = (tx_data_num >= MIN_DATA_NUM) ? tx_data_num : MIN_DATA_NUM;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            rst_n_delay <= 3'b0;
        end else begin
            rst_n_delay <= {rst_n_delay[1 : 0], 1'b1};
        end
    end
    
    always @(posedge clk or negedge rst_n_delay[2]) begin
        if (!rst_n_delay[2]) begin
            start_en_delay <= 3'b0;
        end else begin
            start_en_delay <= {start_en_delay[1 : 0], tx_start_en};
        end
    end

    always @(posedge clk or negedge rst_n_delay[2]) begin
        if (!rst_n_delay[2]) begin
            tx_data_num <= 16'b0;
            total_num <= 16'b0;
        end else begin
            if (pos_start_en && cur_state == st_idle) begin
                tx_data_num <= tx_byte_num;
                total_num <= tx_byte_num + 16'd28; // data length + IP header (20) + ICMP header (8)
            end
        end
    end

    always @(posedge clk or negedge rst_n_delay[2]) begin
        if (!rst_n_delay[2]) begin
            trig_tx_en <= 1'b0;
        end else begin
            trig_tx_en <= pos_start_en;
        end
    end

    always @(posedge clk or negedge rst_n_delay[2]) begin
        if (!rst_n_delay[2]) begin
            cur_state <= st_idle;
        end else begin
            cur_state <= next_state;
        end
    end

    always @(*) begin
        next_state = st_idle;
        case (cur_state)
            st_idle: begin
                if (skip_en) begin
                    next_state = st_check_sum;
                end else begin
                    next_state = st_idle;
                end
            end
            st_check_sum: begin
                if (skip_en) begin
                    next_state = st_check_icmp;
                end else begin
                    next_state = st_check_sum;
                end
            end
            st_check_icmp: begin
                if (skip_en) begin
                    next_state = st_preamble;
                end else begin
                    next_state = st_check_icmp;
                end
            end
            st_preamble: begin
                if (skip_en) begin
                    next_state = st_eth_head;
                end else begin
                    next_state = st_preamble;
                end
            end
            st_eth_head: begin
                if (skip_en) begin
                    next_state = st_ip_head;
                end else begin
                    next_state = st_eth_head;
                end
            end
            st_ip_head: begin
                if (skip_en) begin
                    next_state = st_tx_data;
                end else begin
                    next_state = st_ip_head;
                end
            end
            st_tx_data: begin
                if (skip_en) begin
                    next_state = st_crc;
                end else begin
                    next_state = st_tx_data;
                end
            end
            st_crc: begin
                if (skip_en) begin
                    next_state = st_idle;
                end else begin
                    next_state = st_crc;
                end
            end
            default: next_state = st_idle;
        endcase
    end

    always @(posedge clk or negedge rst_n_delay[2]) begin
        if (!rst_n_delay[2]) begin
            skip_en <= 1'b0;
            cnt <= 5'b0;
            check_buffer <= 32'b0;
            check_buffer_icmp <= 32'b0;
            ip_head[1][31 : 16] <= 16'b0;
            tx_bit_sel <= 2'b0;
            crc_en <= 1'b0;
            gmii_tx_en <= 1'b0;
            gmii_txd <= 8'b0;
            tx_req <= 1'b0;
            tx_done_t <= 1'b0;
            data_cnt <= 16'b0;
            real_add_cnt <= 5'b0;

            // data frame initialization
            preamble[0]  <= 8'h55;
            preamble[1]  <= 8'h55;
            preamble[2]  <= 8'h55;
            preamble[3]  <= 8'h55;
            preamble[4]  <= 8'h55;
            preamble[5]  <= 8'h55;
            preamble[6]  <= 8'h55;
            preamble[7]  <= 8'hd5;
            eth_head[0]  <= DES_MAC[47 : 40];
            eth_head[1]  <= DES_MAC[39 : 32];
            eth_head[2]  <= DES_MAC[31 : 24];
            eth_head[3]  <= DES_MAC[23 : 16];
            eth_head[4]  <= DES_MAC[15 : 8];
            eth_head[5]  <= DES_MAC[7 : 0];
            eth_head[6]  <= BOARD_MAC[47 : 40];
            eth_head[7]  <= BOARD_MAC[39 : 32];
            eth_head[8]  <= BOARD_MAC[31 : 24];
            eth_head[9]  <= BOARD_MAC[23 : 16];
            eth_head[10] <= BOARD_MAC[15 : 8];
            eth_head[11] <= BOARD_MAC[7 : 0];
            eth_head[12] <= ETH_TYPE[15 : 8];
            eth_head[13] <= ETH_TYPE[7 : 0];
        end else begin
            skip_en <= 1'b0;
            crc_en <= 1'b0;
            gmii_tx_en <= 1'b0;
            tx_done_t <= 1'b0;
            case (cur_state)
                st_idle: begin
                    if (trig_tx_en) begin
                        skip_en <= 1'b1;
                        ip_head[0] <= {8'h45, 8'h00, total_num};
                        ip_head[1][31 : 16] <= ip_head[1][31 : 16] + 1'b1;
                        ip_head[1][15 : 0] <= 16'h4000;
                        // 8'h80: TTL; 8'd1: ICMP, 8'd2: IGMP, 8'd6: TCP, 8'd17: UDP
                        ip_head[2] <= {8'h40, 8'd1, 16'h0000};
                        ip_head[3] <= BOARD_IP;
                        if (des_ip != 32'd0) begin
                            ip_head[4] <= des_ip;
                        end else begin
                            ip_head[4] <= DES_IP;
                        end
                        // ICMP header
                        ip_head[5][31 : 16] <= {ECHO_REPLY, 8'h00}; // {ICMP type, ICMP code}
                        ip_head[6] <= {icmp_id, icmp_seq};

                        if (des_mac != 48'b0) begin
                            eth_head[0]  <= des_mac[47 : 40];
                            eth_head[1]  <= des_mac[39 : 32];
                            eth_head[2]  <= des_mac[31 : 24];
                            eth_head[3]  <= des_mac[23 : 16];
                            eth_head[4]  <= des_mac[15 : 8];
                            eth_head[5]  <= des_mac[7 : 0];
                        end
                    end
                end
                st_check_sum: begin
                    cnt <= cnt + 1'b1;
                    if (cnt == 5'd0) begin
                        // Is it stable to do so many plus operations in a single period?
                        check_buffer <= ip_head[0][31 : 16] + ip_head[0][15 : 0] + 
                                        ip_head[1][31 : 16] + ip_head[1][15 : 0] + 
                                        ip_head[2][31 : 16] + ip_head[2][15 : 0] + 
                                        ip_head[3][31 : 16] + ip_head[3][15 : 0] + 
                                        ip_head[4][31 : 16] + ip_head[4][15 : 0];
                    end else if (cnt == 5'd1) begin // Add twice to ensure no carry exists.
                        check_buffer <= check_buffer[31 : 16] + check_buffer[15 : 0];
                    end else if (cnt == 5'd2) begin
                        check_buffer <= check_buffer[31 : 16] + check_buffer[15 : 0];
                        skip_en <= 1'b1;
                    end else if (cnt == 5'd3) begin
                        cnt <= 5'b0;
                        ip_head[2][15 : 0] <= ~check_buffer[15 : 0];
                    end
                end
                st_check_icmp: begin
                    cnt <= cnt + 1'b1;
                    if (cnt == 5'd0) begin
                        // The same question mentioned above
                        check_buffer_icmp <= ip_head[5][31 : 16] + 
                                             ip_head[6][31 : 16] + ip_head[6][15 : 0] + 
                                             reply_checksum;
                    end else if (cnt == 5'd1) begin // Add twice to ensure no carry exists.
                        check_buffer_icmp <= check_buffer_icmp[31 : 16] + check_buffer_icmp[15 : 0];
                    end else if (cnt == 5'd2) begin
                        check_buffer_icmp <= check_buffer_icmp[31 : 16] + check_buffer_icmp[15 : 0];
                        skip_en <= 1'b1;
                    end else if (cnt == 5'd3) begin
                        cnt <= 5'b0;
                        ip_head[5][15 : 0] <= ~check_buffer_icmp[15 : 0];
                    end
                end
                st_preamble: begin
                    cnt <= cnt + 1'b1;
                    gmii_tx_en <= 1'b1;
                    gmii_txd <= preamble[cnt];
                    if (cnt == 5'd6) begin
                        skip_en <= 1'b1;
                    end else if (cnt == 5'd7) begin
                        cnt <= 5'b0;
                    end
                end
                st_eth_head: begin
                    cnt <= cnt + 1'b1;
                    gmii_tx_en <= 1'b1;
                    gmii_txd <= eth_head[cnt];
                    if (cnt == 5'd12) begin
                        skip_en <= 1'b1;
                    end else if (cnt == 5'd13) begin
                        cnt <= 5'b0;
                    end
                end
                st_ip_head: begin
                    crc_en <= 1'b1;
                    gmii_tx_en <= 1'b1;
                    tx_bit_sel <= tx_bit_sel + 1'b1;
                    if (tx_bit_sel == 2'd0) begin
                        gmii_txd <= ip_head[cnt][31 : 24];
                    end else if (tx_bit_sel == 2'd1) begin
                        gmii_txd <= ip_head[cnt][23 : 16];
                    end else if (tx_bit_sel == 2'd2) begin
                        gmii_txd <= ip_head[cnt][15 : 8];
                        if (cnt == 5'd6) begin
                            tx_req <= 1'b1;
                            skip_en <= 1'b1;
                        end
                    end else if (tx_bit_sel == 2'd3) begin
                        cnt <= cnt + 1'b1;
                        gmii_txd <= ip_head[cnt][7 : 0];
                        if (cnt == 5'd6) begin
                            cnt <= 5'b0;
                        end
                    end
                end
                st_tx_data: begin
                    crc_en <= 1'b1;
                    gmii_tx_en <= 1'b1;
                    gmii_txd <= tx_data;
                    tx_bit_sel <= 2'b0;
                    data_cnt <= data_cnt + 1'b1;
                    if (data_cnt == tx_data_num - 2'd2) begin
                        tx_req <= 1'b0;
                    end else if (data_cnt == tx_data_num - 1'b1) begin
                        if (data_cnt + real_add_cnt < real_tx_data_num - 1'b1) begin
                            real_add_cnt <= real_add_cnt + 1'b1;
                        end else begin
                            data_cnt <= 16'b0;
                            real_add_cnt <= 5'b0;
                        end
                    end
                    if (data_cnt + real_add_cnt == real_tx_data_num - 2'd2) begin
                        skip_en <= 1'b1;
                    end
                end
                st_crc: begin
                    gmii_tx_en <= 1'b1;
                    tx_bit_sel <= tx_bit_sel + 1'b1;
                    tx_req <= 1'b0;
                    if (tx_bit_sel == 2'd0) begin
                        gmii_txd <= {~crc_next[0], ~crc_next[1], ~crc_next[2], ~crc_next[3], 
                                     ~crc_next[4], ~crc_next[5], ~crc_next[6], ~crc_next[7]};
                    end else if (tx_bit_sel == 2'd1) begin
                        gmii_txd <= {~crc_data[16], ~crc_data[17], ~crc_data[18], ~crc_data[19], 
                                     ~crc_data[20], ~crc_data[21], ~crc_data[22], ~crc_data[23]};
                    end else if (tx_bit_sel == 2'd2) begin
                        gmii_txd <= {~crc_data[8], ~crc_data[9], ~crc_data[10], ~crc_data[11], 
                                     ~crc_data[12], ~crc_data[13], ~crc_data[14], ~crc_data[15]};
                        skip_en <= 1'b1;
                    end else if (tx_bit_sel == 2'd3) begin
                        gmii_txd <= {~crc_data[0], ~crc_data[1], ~crc_data[2], ~crc_data[3], 
                                     ~crc_data[4], ~crc_data[5], ~crc_data[6], ~crc_data[7]};
                        tx_done_t <= 1'b1;
                    end
                end
            endcase
        end
    end

    always @(posedge clk or negedge rst_n_delay[2]) begin
        if (!rst_n_delay[2]) begin
            tx_done <= 1'b0;
            crc_clr <= 1'b0;
        end else begin
            tx_done <= tx_done_t;
            crc_clr <= tx_done_t;
        end
    end

endmodule
