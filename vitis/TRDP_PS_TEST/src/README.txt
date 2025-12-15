
# 程序版本25_08_27

## 程序改动

1. 这个程序将先前的PL逻辑（如ARP、UDP等）转移到PS中。PL端只负责以太网帧的接收和发送。  

2. 将DMA数据地址由固定地址改为全局变量，消除DDR内存区域冲突的风险。

3. DMA RX通道使用队列。由于DMA可以独立的将数据移动到给定区域，因此ISR中只需要移动队尾指针和开始下一次传输即可，将耗时的缓存刷新和数据复制转移到主线程中处理，减少中断对主线程的阻塞。

## BUGs

- （未解决）无法收发超过1400字节的数据帧。

- （未解决）DMA rx 通道有时会初始化失败 "rx error"。  
   **目前解决办法：** 未知原因。当出现这种情况时，直接重启。

- ~~（已解决）C口接收队列`Q_C_recv`有时会出现队列中存在1个元素但是队列长度为0的情况。~~  
    **解决方法：** 不使用`Q_C_recv`，使用DMA接收队列`dma_rx_queue`。

- ~~（已解决）pbuf pool有内存泄漏。~~  
    **解决方法：** 极有可能是CORESIGHT打印运行数据导致的。由于CORESIGHT在控制台上打印数据的速度很慢，当例如队列溢出时，打印的警告消息会极大减缓程序的运行速度，进而导致程序整体运行出现阻塞。当关闭消息打印后，该问题得到解决。

- ~~（已解决）将所有pbuf数据段改为用pbuf_take赋值，不要直接用memcpy复制数据到p->payload.~~  
    **解决方法：** 全部改成pbuf_take。

- ~~（已解决）有时候 DMA TX 通道会不工作。~~  
    **解决方法：** 这个bug出现在PL模块`ethernet_controller_tx`中。在如下的程序中

    ```verilog
    assign tx_start = ~tx_start_d[2] & tx_start_d[1];
    always @(posedge clk or negedge rst_n_delay[2]) begin
        if (!rst_n_delay[2]) begin
            tx_start_d <= 3'b000;
        end else if (clk_en) begin
            tx_start_d <= {tx_start_d[1:0], tx_tvalid};
        end
    end
    ```

    由于FIFO有效信号`tx_tvalid`在FIFO不为空时一直为高电平。在PS发送过快导致FIFO中不只有1包数据时，第一包数据发送完后，由于`tx_tvalid`仍然为高电平，`tx_start`无法检测到`tx_tvalid`的上升沿，从而导致该模块的不再发送数据。当FIFO满后，FIFO的`tready`信号变为低电平，DMA暂停MM2S的传输。在PS端就体现为DMA TX通道不工作。  
    
    修改后的程序如下  

    ```verilog
    always @(posedge clk or negedge rst_n_delay[2]) begin
        if (!rst_n_delay[2]) begin
            tx_start <= 1'b0;
        end else if (clk_en) begin
            tx_start <= ~gmii_tx_en & tx_tvalid;
        end
    end
    ```

    `tx_start`信号取决于FIFO是否存在数据以及当前GMII是否在发送数据。这样就解决了这个问题。

## TODO

1. 删除程序中不必要的变量。  

2. 增加C可配置IP，端口等的功能。

3. 增加看门狗。  

4. 增加日志功能。

## SQPI FLASH 内存区域占用

- **配置帧存储占用**

  - CONFIG_FRAME_BUFFER_ADDRESS: PORT A 和 PORT B 配置帧存储起始地址，0xFCFF0000，大小为65536个字节（一 个sector的大小）。