
# 程序改动

这个程序将先前的PL逻辑（如ARP、UDP等）转移到PS中。PL端只负责以太网帧的接收和发送。

# BUGs

1. DMA rx 通道有时会初始化失败 "rx error"。
2. C口接收队列`Q_C_recv`有时会出现队列中存在1个元素但是队列长度为0的情况。
3. 无法收发超过1400字节的数据帧。
4. pbuf pool有内存泄漏。
5. 将所有pbuf数据段改为用pbuf_take赋值，不要直接用memcpy复制数据到p->payload.
6. 有时候 DMA TX 通道会不工作

# DDR 区域

**1. DMA buffers 占用**

  - MEM_BASE_ADDR: DMA缓冲区下界，0x3F000000。

  - RX_BUFFER_BASE: 接收缓冲区起始地址，0x3F300000。
  - RX_BUFFER_HIGH: 接收缓冲区结束地址，0x3F4FFFFF。
    - RX_BUFFER0_BASE: 第一个接收缓冲区，0x3F300000。
    - RX_BUFFER1_BASE: 第二个接收缓冲区，0x3F400000。
    - 每个接收缓冲区大小为 1MB。
    
  - TX_BUFFER_BASE: 发送缓冲区起始地址，0x3F500000。
  - TX_BUFFER_HIGH: 发送缓冲区结束地址，0x3F6FFFFF。
    - TX_BUFFER0_BASE: 第一个发送缓冲区，0x3F500000。
    - TX_BUFFER1_BASE: 第二个发送缓冲区，0x3F600000。
    - 每个发送缓冲区大小为 1MB。

# SQPI FLASH 区域

**1. 配置帧存储占用**

  - CONFIG_FRAME_BUFFER_ADDRESS: PORT A 和 PORT B 配置帧存储起始地址，0xFCFF0000，大小为65536个字节（一个sector的大小）。