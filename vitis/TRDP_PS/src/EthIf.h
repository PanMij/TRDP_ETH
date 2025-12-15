#ifndef __ETHIF_H__
#define __ETHIF_H__

#include <vector>
#include <tuple>
#include "arrayQueue.h"
#include "lwip/ip_addr.h"
#include "lwip/mem.h"
#include "lwip/netif.h"
#include "retransmission.h"

#define HEADER_LENGTH (24) //!< The length of the main part of pdu header.

/** 
 * @brief The struct that contains the ip address, netmask, gateway and port of ETH_A or ETH_B.
 */
struct NetParams {
	/**
	 * @brief The constructor of netParams. 
	 * @param[in] ipAddrPtr is the ip address of ETH_A or ETH_B.
	 * @param[in] netmaskPtr is the netmask of ETH_A or ETH_B.
	 * @param[in] gw is the gateway of ETH_A or ETH_B.
	 * @param[in] port is the port of ETH_A or ETH_B.
	 * @return The ip address, netmask, gateway and port of a specific EthIf.
	 */
	NetParams(ip_addr_t* ipAddrPtr, ip_addr_t* netmaskPtr, ip_addr_t* gwPtr, u16_t port):
		ipAddrPtr(ipAddrPtr), netmaskPtr(netmaskPtr), gwPtr(gwPtr), port(port) {}
	
	/**
	 * @brief The destructor of netParams. Set the pointers to nullptr.
	 */
	~NetParams() {
		ipAddrPtr = nullptr;
		netmaskPtr = nullptr;
		gwPtr = nullptr;
	}

	ip_addr_t *ipAddrPtr, *netmaskPtr, *gwPtr;
	u16_t port;
};

/**
 * @brief This structure contains the configuration parameters of the trdp module. 
 */
struct ConfigParams {
	BYTE macSelection;
	std::vector<unsigned char> customMac;
	ip_addr_t moduleIp, moduleGw, moduleMask, moduleDns;
	u16_t dnsPort;
	ip_addr_t ttdbMulIp, recvMulIp;
	u16_t ttdbMulPort, recvMulPort;
	ip_addr_t sendDestIp, sendDestIp_bak;
	u16_t sendDestPort, sendDestPort_bak;
	ip_addr_t mulDestIp;
	u16_t mulDestPort;
	BYTE comidNum;
	std::vector<u32_t> comids;
	BYTE freeUnicastPortNum;
	std::vector<ip_addr_t> unicastDestIps;
	std::vector<u16_t> unicastDestPorts;
	std::vector<std::tuple<ip_addr_t, ip_addr_t, u32_t>> extendedRecvComids; //!< source ip, destination multicast ip, comid
	std::vector<std::tuple<ip_addr_t, u32_t>> extendedSendComids; //!< destination multicast ip, comid

	ConfigParams() {}

	ConfigParams(const MainConfigFrame* frame) {
		macSelection = frame->macCustomConfigSel;
		for (size_t i = 0; i < 6; ++i) {
			customMac.push_back(*(&(frame->customMac_H) + i));
		}
		IP4_ADDR(&moduleIp, frame->TRDP_IP_Byte0_H, frame->TRDP_IP_Byte1, frame->TRDP_IP_Byte2, frame->TRDP_IP_Byte3_L);
		IP4_ADDR(&moduleGw, frame->GateWay_IP_Byte0_H, frame->GateWay_IP_Byte1, frame->GateWay_IP_Byte2, frame->GateWay_IP_Byte3_L);
		IP4_ADDR(&moduleMask, frame->subnetMask_Byte0_H, frame->subnetMask_Byte1, frame->subnetMask_Byte2, frame->subnetMask_Byte3_L);
		IP4_ADDR(&moduleDns, frame->DNS_Byte0_H, frame->DNS_Byte1, frame->DNS_Byte2, frame->DNS_Byte3_L);
		dnsPort = ntohs(*(u16_t*)(&(frame->dnsMessageDatPort_Byte0_H)));
		IP4_ADDR(&ttdbMulIp, frame->TTDB_Multicast_addr_Byte0_H, frame->TTDB_Multicast_addr_Byte1, frame->TTDB_Multicast_addr_Byte2, frame->TTDB_Multicast_addr_Byte3_L);
		IP4_ADDR(&recvMulIp, frame->MulticastRecAddr_Byte0_H, frame->MulticastRecAddr_Byte1, frame->MulticastRecAddr_Byte2, frame->MulticastRecAddr_Byte3_L);
		ttdbMulPort = ntohs(*(u16_t*)(&(frame->TTDB_MulticastPort_Byte0_H)));
		recvMulPort = ntohs(*(u16_t*)(&(frame->MulticastRecPort_Byte0_H)));
		IP4_ADDR(&sendDestIp, frame->sendDataDstAddr_Byte0_H, frame->sendDataDstAddr_Byte1, frame->sendDataDstAddr_Byte2, frame->sendDataDstAddr_Byte3_L);
		IP4_ADDR(&sendDestIp_bak, frame->sendDataDstAddr_Byte0_H_backup, frame->sendDataDstAddr_Byte1_backup, frame->sendDataDstAddr_Byte2_backup, frame->sendDataDstAddr_Byte3_L_backup);
		sendDestPort = ntohs(*(u16_t*)(&(frame->sendDataDstPort_Byte0_H)));
		sendDestPort_bak = ntohs(*(u16_t*)(&(frame->sendDataDstPort_Byte0_H_backup)));
		comidNum = frame->COMID_num;
		for (size_t i = 0; i < comidNum; ++i) {
			comids.push_back(ntohl(*(u32_t*)(&(frame->COMID1_Byte0_H) + i * 4)));
		}
		
		/** @todo the meaning of this variable. */
		freeUnicastPortNum = frame->freeUnicastPortNum;
		ip_addr_t tempIp;
		IP4_ADDR(&tempIp, frame->unicastDstIP1_Byte0_H, frame->unicastDstIP1_Byte1, frame->unicastDstIP1_Byte2, frame->unicastDstIP1_Byte3_L);
		unicastDestIps.push_back(tempIp);
		IP4_ADDR(&tempIp, frame->unicastDstIP2_Byte0_H, frame->unicastDstIP2_Byte1, frame->unicastDstIP2_Byte2, frame->unicastDstIP2_Byte3_L);
		unicastDestIps.push_back(tempIp);
		unicastDestPorts.push_back(ntohs(*(u16_t*)(&(frame->unicastDstPort1_Byte0_H))));
		unicastDestPorts.push_back(ntohs(*(u16_t*)(&(frame->unicastDstPort2_Byte0_H))));
	}
};

extern MainConfigFrame mainConfigFrameBuffer[2];
extern ConfigParams configParams[2];
extern const MainConfigFrame* configFramePtr;

struct HeaderParam {
	bool active;
	PduType type;
	u32_t datasetLength;
	u32_t pduFrameLen;
	HeaderParam() : active(false), type(pduErrorType), datasetLength(0), pduFrameLen(0) {}
};

/**
 * @brief The class of a ethernet interface (ETH_A, ETH_B).
 */
class EthIf {
public:
	EthIf();
	EthIf(int ethNum, ip_addr_t& ipAddr, ip_addr_t& netmask, ip_addr_t& gw, ip_addr_t& mulIpAddr,
		  std::vector<unsigned char>& mac, u16_t port, ip_addr_t& destIP, u16_t destPort, u16_t multicastPort,
		  ip_addr_t& mulDestIp, u16_t mulDestPort, std::vector<u32_t>& comids);
	EthIf(int ethNum, const ConfigParams& params);
	EthIf(const EthIf& other);
	EthIf(EthIf&& other) noexcept;
	EthIf& operator =(const EthIf& other);
	EthIf& operator =(EthIf&& other) noexcept;
	~EthIf();

	err_t initEthIf();

	void setLocalNetParam(ip_addr_t& ipAddr, ip_addr_t& netmask, ip_addr_t& gw, u16_t port = -1);
	void setDestNetParam(ip_addr_t& destIP, u16_t destPort);
	void setMac(std::vector<unsigned char>& mac);
	err_t updateParams();
	NetParams getLocalNetParams();
	std::pair<ip_addr_t, u16_t> getDestNetParam();
	int getEthNum() const;
	int bufferRecv(const BYTE& byte);

	int createTcpConnection();
	int createUdpConnection();
	int createMulticastConnection();
	int multicastJoinGroup();
	err_t checkConnection();
	void tcp_trdp_sendData(BYTE* data, const int& len) const;
	void udp_trdp_sendData(BYTE* data, const int& len) const;
	void udp_trdp_sendData(BYTE* data, const int& len, const ip_addr_t& destIP, const u16_t& port, bool mul = false) const;
	void ethifSend(DFABC* dfabcPtr, bool mul = false) const;
	void ethifSend(BYTE* data, const int& len, bool mul = false) const;

	struct netif* netif;                      		//!< net interface of the EthIf.
	struct tcp_pcb* tpcb;                     		//!< tcp pcb of the EthIf.
	struct udp_pcb* upcb;                     		//!< udp pcb of the EthIf.
	struct udp_pcb* multicast_pcb;            		//!< multicast pcb of the EthIf.
	std::vector<u32_t> comids;
	bool confirmed;                           		//!< message can be sent only if 'confirmed' is true. (To prevent packet splicing)

protected:
	int ethNum;                               		//!< the index of ETH. 0: ETH_A, 1: ETH_B.
	ip_addr_t _ipAddr, _netmask, _gw;    		//!< local net parameters of the EthIf.
	std::vector<unsigned char> _mac;          		//!< mac address of the EthIf.
	ip_addr_t _destIP;                   		//!< remote ip.
	ip_addr_t _mulGroup;    		            //!< multicast group.
	ip_addr_t _mulDestIp;
	u16_t _mulDestPort;
	u16_t _port, _destPort;                   		//!< local port and remote port.
	u16_t _multicastPort;                     		//!< multicast receiving port.
	std::vector<BYTE> tcpRxBuffer;                  //!< RX buffer of TCP transmission.
	HeaderParam headerParam;                        //!< The parameters of PDU header.
};

class EthIf_MCU: public EthIf {
public:
	EthIf_MCU();
	EthIf_MCU(ip_addr_t& ipAddr, ip_addr_t& netmask, ip_addr_t& gw, std::vector<unsigned char>& mac,
			u16_t port, ip_addr_t& destIP, u16_t destPort);
	err_t initEthIf();
	int createUdpConnection();
	int EthIf_MCU_input();

private:
	static err_t _EthIf_MCU_init(struct netif* netif);
	static err_t _EthIf_MCU_low_level_output(struct netif *netif, struct pbuf *p);
	static void _EthIf_MCU_udp_recv_callback(void *arg, struct udp_pcb *pcb, struct pbuf *p, const ip_addr_t *addr, u16_t port);
};

#endif
