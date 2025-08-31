#include "EthIf.h"
#include "xparameters.h"
#include "netif/xadapter.h"
#include "netif/xemacpsif.h"
#include "xil_printf.h"
#include "lwip/tcp.h"
#include "lwip/udp.h"
#include "tcp_transmission.h"
#include <algorithm>

ConfigParams configParams[2];                        //!< Parameters from MainConfigFrame.
MainConfigFrame* configFramePtr = nullptr;           //!< pointer to the main config frame.

/** 
 * @brief The constructor of EthIf.
 * @param[in] ethNum is the index of the ETH.
 *   @arg 0 is ETH_A.
 * 	 @arg 1 is ETH_B.
 * @param[in] ipAddr is the local ip address of the ETH.
 * @param[in] netmask is netmask of the ETH.
 * @param[in] gw is the gateway of the ETH.
 * @param[in] mac is the MAC of the ETH.
 * @param[in] port is the local port of the ETH.
 * @param[in] destIP is the remote ip of the ETH.
 * @param[in] destPort is the remote port of the ETH.
 * @return None.
 */
EthIf::EthIf(int ethNum, ip_addr_t& ipAddr, ip_addr_t& netmask, ip_addr_t& gw, ip_addr_t& mulIpAddr,
	  std::vector<unsigned char>& mac, u16_t port, ip_addr_t& destIP, u16_t destPort, u16_t multicastPort,
	  ip_addr_t& mulDestIp, u16_t mulDestPort, std::vector<u32_t>& comids):
	  ethNum(ethNum), _ipAddr(ipAddr), _netmask(netmask), _gw(gw), _mulGroup(mulIpAddr), _mac(mac),
	  _destIP(destIP), _port(port), _destPort(destPort), _multicastPort(multicastPort), _mulDestIp(mulDestIp),
	  _mulDestPort(mulDestPort), comids(comids)
{
	netif = nullptr;
	tpcb = nullptr;
	upcb = nullptr;
	multicast_pcb = nullptr;
	confirmed = true;
	tcpRxBuffer.reserve(PAKET_LENGTH);
}

/**
 * @brief     The constructor of EthIf.
 * @param[in] ethNum is the index of this EthIf.
 *   @arg 0 is ETH_A.
 * 	 @arg 1 is ETH_B.
 * @param[in] params is the ConfigParams. The parameters of the EthIf are depend on this structure.
 * @return    None.
 */
EthIf::EthIf(int ethNum, const ConfigParams& params)
{
	this->ethNum = ethNum;
	_ipAddr = params.moduleIp;
	_netmask = params.moduleMask;
	_gw = params.moduleGw;
	_mac.resize(6, 0);
	for (int i = 0; i < 6; ++i) {
		if ((params.macSelection << i) & 0x20) {
			_mac[i] = params.customMac[i];
		}
	}
	_destIP = params.sendDestIp;
	_port = 0;
	_destPort = params.sendDestPort;
	_multicastPort = params.recvMulPort;
	_mulGroup = params.recvMulIp;
	_mulDestIp = params.sendDestIp;
	_mulDestPort = params.sendDestPort;

	comids = params.comids;

	netif = nullptr;
	tpcb = nullptr;
	upcb = nullptr;
	multicast_pcb = nullptr;
	confirmed = true;
	tcpRxBuffer.reserve(PAKET_LENGTH);

	xil_printf("EthIf %d added\r\n", this->ethNum);
	xil_printf("ipaddr : %s \t", ipaddr_ntoa(&_ipAddr));
	xil_printf("netmask : %s \t", ipaddr_ntoa(&_netmask));
	xil_printf("gateway : %s \r\n", ipaddr_ntoa(&_gw));
	xil_printf("port : %d\r\n", _port);
}

/** 
 * @brief The copy constructor of EthIf. Copy all member variables except tpcb and upcb. 
 * @param[in] other is another EthIf to be copied.
 * @return None.
 * @note The connections need to be established by calling corresponding functions.
 */
EthIf::EthIf(const EthIf& other): 
	ethNum(other.ethNum), _ipAddr(other._ipAddr), _netmask(other._netmask), _gw(other._gw), _mac(other._mac), _mulGroup(other._mulGroup),
	_destIP(other._destIP), _port(other._port), _destPort(other._destPort), _multicastPort(other._multicastPort),
	_mulDestIp(other._mulDestIp), _mulDestPort(other._mulDestPort), comids(other.comids)
{
	netif = (struct netif*)mem_malloc(sizeof(struct netif));
	if (netif == nullptr) {
		xil_printf("netif mem_malloc of eth%d failed. \r\n", ethNum);
		this->~EthIf();
		return;
	}
	memcpy(netif, other.netif, sizeof(struct netif));
	tpcb = nullptr;
	upcb = nullptr;
	multicast_pcb = nullptr;
	confirmed = true;
	tcpRxBuffer = other.tcpRxBuffer;
	headerParam = other.headerParam;
}

/** 
 * @brief The move constructor of EthIf.
 * @param[in] other is another EthIf to be moved.
 * @return None.
 */
EthIf::EthIf(EthIf&& other) noexcept:
	ethNum(other.ethNum), _ipAddr(other._ipAddr), _netmask(other._netmask), _gw(other._gw), _mac(other._mac), _mulGroup(other._mulGroup), 
	_destIP(other._destIP), _port(other._port), _destPort(other._destPort), _multicastPort(other._multicastPort),
	_mulDestIp(other._mulDestIp), _mulDestPort(other._mulDestPort)
{
	netif = other.netif;
	tpcb = other.tpcb;
	upcb = other.upcb;
	multicast_pcb = other.multicast_pcb;
	comids = std::move(comids);
	other.netif = nullptr;
	other.tpcb = nullptr;
	other.upcb = nullptr;
	other.multicast_pcb = nullptr;
	confirmed = true;
	tcpRxBuffer = std::move(other.tcpRxBuffer);
	headerParam = std::move(other.headerParam);
}

/**
 * @brief Operator overloading of "=". (copy assignment)
 * @note The connections need to be established by calling corresponding functions.
 */
EthIf& EthIf::operator =(const EthIf& other)
{
	ethNum = other.ethNum;
	_ipAddr = other._ipAddr;
	_netmask = other._netmask;
	_gw = other._gw;
	_mac = other._mac;
	_destIP = other._destIP;
	_port = other._port;
	_destPort = other._destPort;
	_multicastPort = other._multicastPort;
	_mulGroup = other._mulGroup;
	_mulDestIp = other._mulDestIp;
	_mulDestPort = other._mulDestPort;

	comids = other.comids;

	netif = (struct netif*)mem_malloc(sizeof(struct netif));
	if (netif == nullptr) {
		xil_printf("netif mem_malloc of eth%d failed. \r\n", ethNum);
		this->~EthIf();
		return *this;
	}
	memcpy(netif, other.netif, sizeof(struct netif));
	tpcb = nullptr;
	upcb = nullptr;
	multicast_pcb = nullptr;
	confirmed = true;
	tcpRxBuffer = other.tcpRxBuffer;
	headerParam = other.headerParam;

	return *this;
}

/**
 * @brief Operator overloading of "=". (move assignment)
 */
EthIf& EthIf::operator =(EthIf&& other) noexcept
{
	ethNum = other.ethNum;
	_ipAddr = other._ipAddr;
	_netmask = other._netmask;
	_gw = other._gw;
	_mac = other._mac;
	_destIP = other._destIP;
	_port = other._port;
	_destPort = other._destPort;
	_multicastPort = other._multicastPort;
	_mulGroup = other._mulGroup;
	_mulDestIp = other._mulDestIp;
	_mulDestPort = other._mulDestPort;

	comids = std::move(other.comids);

	netif = other.netif;
	tpcb = other.tpcb;
	upcb = other.upcb;
	multicast_pcb = other.multicast_pcb;
	other.netif = nullptr;
	other.tpcb = nullptr;
	other.upcb = nullptr;
	other.multicast_pcb = nullptr;
	confirmed = true;
	tcpRxBuffer = std::move(other.tcpRxBuffer);
	headerParam = std::move(other.headerParam);

	return *this;
}

/** 
 * @brief The destructor of EthIf. 
 * @return None.
 * @note The pointers may be set to nullptr before this function called. This may cause memmory error.
 */
EthIf::~EthIf()
{
	mem_free(netif);
	if (tpcb) {
		tcp_abort(tpcb);
		tpcb = nullptr;
	}
	if (upcb) {
		udp_remove(upcb);
		upcb = nullptr;
	}
	if (multicast_pcb) {
		udp_remove(multicast_pcb);
		multicast_pcb = nullptr;
	}
	netif = nullptr;
}

/** 
 * @brief Initialize the netif.
 * @return The status of the initialization.
 * @retval ERR_OK if succeed, otherwise ERR_MEM.
 */
err_t EthIf::initEthIf()
{
	unsigned mac_baseaddr = (ethNum == 0) ? XPAR_XEMACPS_0_BASEADDR : XPAR_XEMACPS_1_BASEADDR;

	netif = (struct netif*)mem_malloc(sizeof(struct netif));
	if (netif == nullptr) {
		xil_printf("netif mem_malloc of eth%d failed. \r\n", ethNum);
		return ERR_MEM;
	}

	if (!xemac_add(netif, &_ipAddr, &_netmask, &_gw, &_mac[0], mac_baseaddr)) {
		xil_printf("Error adding N/W interface0\r\n");
		return ERR_MEM;
	}
	if (ethNum == 0) {
		netif_set_default(netif);
	}
	netif_set_up(netif);
	return ERR_OK;
}

void EthIf::setLocalNetParam(ip_addr_t& ipAddr, ip_addr_t& netmask, ip_addr_t& gw, u16_t port)
{
	_ipAddr = ipAddr;
	_netmask = netmask;
	_gw = gw;
	_port = (port == -1) ? _port : port;
}

void EthIf::setDestNetParam(ip_addr_t& destIP, u16_t destPort)
{
	_destIP = destIP;
	_destPort = destPort;
}

void EthIf::setMac(std::vector<unsigned char>& mac)
{
	_mac = mac;
}

/**
 * @brief Update the net parameters of this EthIf including ip address, netmask, gateway, MAC.
 * @param None
 * @return The status of the proccess.
 * @retval 0 if successful, otherwise failed.
 */
err_t EthIf::updateParams()
{
	ip_addr_t *ipaddrPtr = nullptr, *netmaskPtr = nullptr, *gwPtr = nullptr;
	ipaddrPtr = &(configParams[ethNum].moduleIp);
	netmaskPtr = &(configParams[ethNum].moduleMask);
	gwPtr = &(configParams[ethNum].moduleGw);
	u16_t portPtr = 0;

	tcp_abort(tpcb); //!< close the tcp connection.

	/** modify ipaddr, netmask, gw */
	netif_set_down(netif);
	setLocalNetParam(*ipaddrPtr, *netmaskPtr, *gwPtr, portPtr);
	netif_set_addr(netif, ipaddrPtr, netmaskPtr, gwPtr);
	if (configParams[ethNum].macSelection != 0x00) {
		/** The MAC to be replaced with another one, we should copy the new MAC to netif->hwaddr and then restart the ethernet dirver. */
		for (int i = 0; i < 6; ++i) {
			if ((configParams[ethNum].macSelection << i) & 0x20) {
				_mac[i] = configParams[ethNum].customMac[i];
			}
		}
		memcpy(netif->hwaddr, &_mac[0], netif->hwaddr_len);

		/**
		 * @note Unlike the simple modification of ip address, it is somewhat complicated to modify the MAC address.
		 * 	     One of the most important procedure is to free the TX and RX buffers of the BDs, without which the memory leakage
		 * 	     would occur when initializing the DMA.
		 */
		struct xemac_s* xemac = (struct xemac_s*)(netif->state);
		xemacpsif_s* xemacpsif = (xemacpsif_s*)(xemac->state);
		free_txrx_pbufs(xemacpsif);
		/* obtain config of this emac */
		unsigned mac_baseaddr = (ethNum == 0) ? XPAR_XEMACPS_0_BASEADDR : XPAR_XEMACPS_1_BASEADDR;
		XEmacPs_Config* mac_config = (XEmacPs_Config *)xemacps_lookup_config(mac_baseaddr);
		s32_t status = XEmacPs_CfgInitialize(&xemacpsif->emacps, mac_config, mac_config->BaseAddress);
		if (status != XST_SUCCESS) {
			xil_printf("In %s:EmacPs Configuration Failed....\r\n", __func__);
		}
		/* initialize the mac */
		init_emacps(xemacpsif, netif);
		u32 dmacrreg = XEmacPs_ReadReg(xemacpsif->emacps.Config.BaseAddress, XEMACPS_DMACR_OFFSET);
		dmacrreg = dmacrreg | (0x00000010);
		XEmacPs_WriteReg(xemacpsif->emacps.Config.BaseAddress, XEMACPS_DMACR_OFFSET, dmacrreg);
		setup_isr(xemac);
		init_dma(xemac);
		start_emacps(xemacpsif);
	}
	netif_set_up(netif);

	err_t err = udp_bind(upcb, ipaddrPtr, portPtr);
	if (err != ERR_OK) {
		xil_printf("fail to bind the port. \r\n");
		udp_remove(upcb);
		return -1;
	}
	if (createTcpConnection() != ERR_OK) {
		xil_printf("EthIf::updateParams : Error in createTcpConnection of EthIf%d. \r\n", ethNum);
		return ERR_MEM;
	}
	err = udp_bind(multicast_pcb, ipaddrPtr, _multicastPort);
	if (err != ERR_OK) {
		xil_printf("fail to bind the port. \r\n");
		udp_remove(multicast_pcb);
		return -1;
	}
	multicastJoinGroup();

	xil_printf("NEW CONFIGURATION APPLIED. \r\n");
	xil_printf("EthIf %d modified\r\n", ethNum);
	xil_printf("ipaddr : %s \t", ipaddr_ntoa(&_ipAddr));
	xil_printf("netmask : %s \t", ipaddr_ntoa(&_netmask));
	xil_printf("gateway : %s \r\n", ipaddr_ntoa(&_gw));
	xil_printf("port : %d\r\n", _port);
	xil_printf("MAC : ");
	std::for_each(_mac.begin(), _mac.end(), [](const auto& byte) -> void {xil_printf("%X ", byte);});
	xil_printf("\r\n");

	return ERR_OK;
}

NetParams EthIf::getLocalNetParams()
{
	return NetParams(&_ipAddr, &_netmask, &_gw, _port);
}

std::pair<ip_addr_t, u16_t> EthIf::getDestNetParam()
{
	return std::make_pair(_destIP, _destPort);
}

int EthIf::getEthNum() const
{
	return ethNum;
}

/** 
 * @brief          Receive byte flow consecutively.  
 * @param[in] byte is the received byte that is to be put into tcpRxBuffer.
 * @return         The status of the proccess.
 * @retval         0 if successful, otherwise -1.
 */
int EthIf::bufferRecv(const BYTE& byte)
{
	tcpRxBuffer.emplace_back(byte);
	size_t n = tcpRxBuffer.size();

	if (n >= HEADER_LENGTH) {
		if (!headerParam.active) {
			headerParam.type = checkPduType(&tcpRxBuffer[0]);
			headerParam.datasetLength = ntohl(*(u32_t*)(&tcpRxBuffer[0] + PDU_DATASET_LENGTH_OFFSET));
			switch (headerParam.type) {
				case pdPdu:
					headerParam.pduFrameLen = headerParam.datasetLength + PDPDU_HEADER_LENGTH;
					break;
				case mdPdu:
					headerParam.pduFrameLen = headerParam.datasetLength + MDPDU_HEADER_LENGTH;
					break;
				case pduTestType:
					headerParam.pduFrameLen = headerParam.datasetLength;
					break;
				default:
					headerParam.active = false;
					tcpRxBuffer.clear();
					xil_printf("PDU type error. \r\n");
					return -1;
			}
			headerParam.active = true;
		}

		if (n >= headerParam.pduFrameLen) {
			++(stats_test.recvCnt);
			DFABC* dfabc = dfabc_malloc(headerParam.pduFrameLen, this);
			dfabc_take(dfabc, &tcpRxBuffer[0], headerParam.pduFrameLen);
			enQueue(&Q_C, dfabc);
			tcpRxBuffer.clear();
			headerParam.active = false;
		}
	}
	return 0;
}

/**
 * @brief Create the tcp connection between the ETH and the remote device.
 * @return The status of the creation.
 * @retval 0 if succeed, otherwise -1.
 */
int EthIf::createTcpConnection()
{
	tpcb = tcp_new();
	if (!tpcb) {
		xil_printf("txperf: Error creating PCB in TCP. Out of Memory\r\n");
		return -1;
	}
	tcp_arg(tpcb, this);
	tcp_connect(tpcb, &_destIP, _destPort, tcp_init_connected_callback);
//	tpcb->flags |= TF_NODELAY; //!< Disable Nagle algorithm to prevent packet splicing.
	confirmed = true; //!< allow the first message to be sent.
	tcpRxBuffer.clear();
	headerParam.active = false;
	return 0;
}

/** 
 * @brief Create the udp connection between the ETH and the remote device.
 * @return The status of the creation.
 * @retval 0 if succeed, otherwise -1.
 */
int EthIf::createUdpConnection()
{
	upcb = udp_new();
	if (!upcb) {
		xil_printf("txperf: Error creating PCB in UDP. Out of Memory\r\n");
		return -1;
	}
	udp_bind(upcb, &_ipAddr, _port);
	udp_connect(upcb, &_destIP, _destPort);
	udp_recv(upcb, udp_trdp_recv_callback, this);
	return ERR_OK;
}

/** 
 * @brief Create a multicast connection.
 * @return The status of the creation.
 * @retval 0 if succeed, otherwise -1.
 * @note In order to enable multicast transmission, (u32)XEMACPS_PROMISC_OPTION should be ORed in xemacps.h -> XEMACPS_DEFAULT_OPTIONS.
 */
int EthIf::createMulticastConnection()
{
	err_t err;
	multicast_pcb = udp_new();
	if (!multicast_pcb) {
		xil_printf("txperf: Error creating PCB in app_init(). Out of Memory\r\n");
		return -1;
	}

	err = udp_bind(multicast_pcb, &_ipAddr, _multicastPort);
	if (err != ERR_OK) {
		xil_printf("fail to bind the port. \r\n");
		udp_remove(multicast_pcb);
		return -1;
	}

	udp_recv(multicast_pcb, udp_trdp_recv_callback, this);
	err = multicastJoinGroup();
	if (err != ERR_OK) {
		xil_printf("fail to join the multicast group. \r\n");
		return -1;
	}

	return 0;
}

/**
 * @brief Add a specific multicast ip address to this EthIf.
 * @param[in] multicast_ip is the ip address of the group which to join.
 * @return The status of the process.
 * @retval 0 if succeed, otherwise -1.
 */
int EthIf::multicastJoinGroup()
{
	err_t err;
	if (multicast_pcb == nullptr) {
		xil_printf("No multicast pcb. ip: %x \r\n", netif->ip_addr);
		return -1;
	}
	err = igmp_joingroup(&_ipAddr, &_mulGroup);
	if (err != ERR_OK) {
		xil_printf("fail to join the group. \r\n");
		return -1;
	}

	return ERR_OK;
}

/**
 * @brief Check the tcp connection of this ETH. This function should be called periodically.
 */
err_t EthIf::checkConnection()
{
	err_t err;

	/**
	 * @note This detection will block the process if any of the ETHs is disconnected.
	 */
//	eth_link_detect(this->netif);

	if (tpcb->state == CLOSED || (tpcb->state == SYN_SENT && tpcb->nrtx == TCP_SYNMAXRTX)) {
		tcp_abort(tpcb);
		err = createTcpConnection();
		if (err != ERR_OK) {
			xil_printf("check connection failed. \r\n");
			return err;
		}
	}
	return ERR_OK;
}

/**
 * @brief (Using tcp)If the queue is not empty, send the data frame from corresponding ETH_A/ETH_B.
 */
void EthIf::tcp_trdp_sendData(BYTE* data, const int& len) const
{
	if (tpcb->state == ESTABLISHED) {
		if (data != nullptr && len >= 0) {
			tcp_write(tpcb, data, len, TCP_WRITE_FLAG_COPY);
			tcp_output(tpcb);
			++stats_test.sentCnt;
//			confirmed = false; //!< Set 'confirmed' to false to prevent sending data untill the latest sent message is confirmed.
		} else {
			xil_printf("tcp_trdp_sendData of EthIf%d : p is nullptr or len = %d < 0. \r\n", ethNum, len);
		}
	}
}

/**
 * @brief (Using udp)If the queue is not empty, send the data frame from corresponding ETH_A/ETH_B.
 * @return None
 */
void EthIf::udp_trdp_sendData(BYTE* data, const int& len) const
{

	if (data != nullptr && len >= 0) {
		struct pbuf* p = pbuf_alloc(PBUF_TRANSPORT, len, PBUF_REF);
		if (!p) {
			xil_printf("udp_trdp_sendData of EthIf%d : pbuf alloc failed. \r\n", ethNum);
			return;
		}
		p->payload = data;
		udp_send(upcb, p);
		pbuf_free(p);
		p = nullptr;
		++stats_test.sentCnt;
	} else {
		xil_printf("udp_trdp_sendData of EthIf%d : p is nullptr or len = %d < 0. \r\n", ethNum, len);
	}
}

/**
 * @brief (Using udp)If the queue is not empty, send the data frame to a specific ip address from corresponding ETH_A/ETH_B.
 * @param[in] destIP is the ip address to which the data frame is sent.
 * @param[in] mul determines
 * @return None
 */
void EthIf::udp_trdp_sendData(BYTE* data, const int& len, const ip_addr_t& destIP, const u16_t& port, bool mul) const
{
	if (data != nullptr && len >= 0) {
		struct pbuf* p = pbuf_alloc(PBUF_TRANSPORT, len, PBUF_REF);
		if (!p) {
			xil_printf("udp_trdp_sendData of EthIf%d : pbuf alloc failed. \r\n", ethNum);
			return;
		}
		p->payload = data;
		if (mul) {
			udp_sendto_if(multicast_pcb, p, &destIP, port, netif);
		} else {
			udp_sendto(upcb, p, &destIP, port);
		}
		pbuf_free(p);
		p = nullptr;
		++stats_test.sentCnt;
	} else {
		xil_printf("udp_trdp_sendData of EthIf%d : p is nullptr or len = %d < 0. \r\n", ethNum, len);
	}
}

/**
 * @brief Dataframe process done, this function is invoked. TCP transmission is applied, if TCP connection is established, otherwise UDP.
 * @param[in] data is the pointer to the PDU to be sent.
 * @param[in] len  is the length of the PDU.
 * @return None.
 */
void EthIf::ethifSend(BYTE* data, const int& len, bool mul) const
{
	if (tpcb->state == ESTABLISHED) {
		tcp_trdp_sendData(data, len);
	} else {
		if (!mul) {
			udp_trdp_sendData(data, len);
		} else {
			udp_trdp_sendData(data, len, _mulDestIp, _mulDestPort, mul);
		}
	}
}

void EthIf::ethifSend(DFABC* dfabcPtr, bool mul) const
{
	if (tpcb->state == ESTABLISHED) {
		tcp_trdp_sendData(dfabcPtr->buf + TRANSPORT_OFFSET, dfabcPtr->length);
	} else {
		if (!mul) {
			udp_trdp_sendData(dfabcPtr->buf + TRANSPORT_OFFSET, dfabcPtr->length);
		} else {
			udp_trdp_sendData(dfabcPtr->buf + TRANSPORT_OFFSET, dfabcPtr->length, _mulDestIp, _mulDestPort, mul);
		}
	}
}

