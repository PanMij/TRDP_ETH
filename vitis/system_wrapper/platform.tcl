# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\A\Desktop\TRDP_DIR\TRDP_PL_mac\vitis\system_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\A\Desktop\TRDP_DIR\TRDP_PL_mac\vitis\system_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {system_wrapper}\
-hw {C:\Users\A\Desktop\TRDP_DIR\TRDP_PL_mac\vitis\system_wrapper.xsa}\
-out {C:/Users/A/Desktop/TRDP_DIR/TRDP_PL_mac/vitis}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {system_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
bsp reload
platform generate
bsp setlib -name lwip211 -ver 1.8
bsp config use_axieth_on_zynq "0"
bsp config use_emaclite_on_zynq "0"
bsp config use_gmii2rgmii_core_on_eth1 "false"
bsp config gmii2rgmii_core_address_on_eth1 "8"
bsp config use_gmii2rgmii_core_on_eth1 "true"
bsp config igmp_options "true"
bsp config mem_size "524288"
bsp config memp_n_pbuf "2048"
bsp config memp_n_tcp_pcb "1024"
bsp config memp_n_tcp_seg "1024"
bsp config pbuf_pool_size "4096"
bsp config tcp_snd_buf "65535"
bsp config tcp_wnd "65535"
bsp config n_rx_descriptors "256"
bsp config n_tx_descriptors "256"
bsp write
bsp reload
catch {bsp regenerate}
platform clean
platform generate
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns "
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns -g3 -O0"
bsp config stdin "ps7_coresight_comp_0"
bsp config stdout "ps7_coresight_comp_0"
bsp write
bsp reload
catch {bsp regenerate}
platform clean
platform generate
bsp config memp_n_udp_pcb "8"
bsp write
bsp reload
catch {bsp regenerate}
platform clean
platform generate
bsp reload
bsp write
platform clean
platform generate
catch {bsp regenerate}
bsp reload
catch {bsp regenerate}
platform generate
platform active {system_wrapper}
platform generate -domains 
bsp reload
bsp config pbuf_pool_size "8192"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
bsp reload
platform generate -domains 
platform active {system_wrapper}
bsp reload
platform generate -domains 
domain active {zynq_fsbl}
bsp reload
bsp reload
domain active {standalone_ps7_cortexa9_0}
bsp reload
bsp config pbuf_pool_size "256"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
bsp config pbuf_pool_size "512"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
bsp config pbuf_pool_size "600"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
bsp config pbuf_pool_size "520"
bsp write
bsp reload
catch {bsp regenerate}
bsp reload
platform generate -domains standalone_ps7_cortexa9_0 
bsp reload
bsp config pbuf_pool_size "530"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
bsp config pbuf_pool_size "550"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
bsp config pbuf_pool_size "550"
bsp reload
bsp config pbuf_pool_size "570"
bsp config pbuf_pool_size "570"
bsp config pbuf_pool_size "550"
bsp write
platform generate -domains 
bsp config pbuf_pool_size "570"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
bsp reload
bsp config pbuf_pool_size "590"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
bsp config pbuf_pool_size "612"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
bsp config pbuf_pool_size "700"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
bsp config pbuf_pool_size "4096"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
platform clean
platform active {system_wrapper}
bsp reload
bsp config pbuf_pool_size "8192"
bsp write
bsp reload
catch {bsp regenerate}
bsp reload
platform generate
platform clean
platform generate
platform clean
platform generate
platform active {system_wrapper}
bsp reload
bsp reload
platform generate -domains 
platform clean
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns"
bsp write
bsp reload
catch {bsp regenerate}
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns"
bsp reload
platform generate
platform clean
platform generate
platform clean
platform generate
platform active {system_wrapper}
bsp reload
bsp reload
bsp reload
platform generate -domains 
platform active {system_wrapper}
bsp reload
bsp reload
domain active {zynq_fsbl}
bsp reload
bsp reload
domain active {standalone_ps7_cortexa9_0}
bsp reload
bsp config pbuf_pool_size "8192"
bsp config pbuf_pool_size "16384"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
platform clean
platform generate
platform active {system_wrapper}
bsp reload
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns"
bsp reload
platform generate -domains 
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform generate
platform active {system_wrapper}
bsp reload
bsp config pbuf_pool_size "8192"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
platform active {system_wrapper}
bsp reload
bsp config stdin "ps7_coresight_comp_0"
bsp reload
platform active {system_wrapper}
platform generate
bsp reload
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns"
bsp reload
bsp config stdin "none"
bsp config stdout "none"
bsp reload
platform clean
platform generate
platform active {system_wrapper}
bsp reload
bsp config phy_link_speed "CONFIG_LINKSPEED100"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
bsp reload
platform active {system_wrapper}
bsp reload
bsp write
platform generate -domains 
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
bsp reload
bsp reload
platform generate
platform active {system_wrapper}
platform config -updatehw {C:/Users/A/Desktop/TRDP_DIR/TRDP_PL_mac/vitis/system_wrapper.xsa}
platform generate -domains 
platform active {system_wrapper}
bsp reload
bsp config lwip_stats "true"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
platform generate
platform generate -domains standalone_ps7_cortexa9_0 
platform active {system_wrapper}
bsp reload
bsp reload
bsp config memp_n_tcp_pcb "32"
bsp config ip_reassembly "1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
platform clean
platform generate
bsp reload
platform active {system_wrapper}
platform generate -domains 
platform active {system_wrapper}
platform generate -domains 
bsp reload
platform active {system_wrapper}
bsp reload
bsp reload
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns -g3- O0"
bsp write
bsp reload
catch {bsp regenerate}
bsp reload
platform clean
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns -g3- O0"
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns -g3- O0"
bsp write
catch {bsp regenerate}
platform active {system_wrapper}
platform config -updatehw {C:/Users/A/Desktop/TRDP_DIR/TRDP_PL_mac/vitis/system_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
domain active {standalone_ps7_cortexa9_0}
bsp reload
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns -g3 -O0"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
bsp reload
platform generate -domains standalone_ps7_cortexa9_0 
platform generate -domains standalone_ps7_cortexa9_0 
bsp config mem_size "131072"
bsp config pbuf_pool_size "1024"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
platform generate -domains standalone_ps7_cortexa9_0 
platform generate -domains standalone_ps7_cortexa9_0 
platform generate -domains standalone_ps7_cortexa9_0 
platform generate -domains standalone_ps7_cortexa9_0 
platform clean
platform generate
platform active {system_wrapper}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns"
bsp reload
bsp reload
domain active {standalone_ps7_cortexa9_0}
bsp reload
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns -g3 -O0"
bsp reload
catch {bsp regenerate}
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns -g3 -O0"
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns -g3 -O0"
bsp reload
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform generate -domains standalone_ps7_cortexa9_0 
platform config -updatehw {C:/Users/A/Desktop/TRDP_DIR/TRDP_PL_mac/vitis/system_wrapper.xsa}
platform generate -domains 
platform generate -domains standalone_ps7_cortexa9_0 
platform generate
platform active {system_wrapper}
platform config -updatehw {C:/Users/A/Desktop/TRDP_DIR/TRDP_PL_mac/vitis/system_wrapper.xsa}
platform generate -domains 
platform generate -domains standalone_ps7_cortexa9_0 
platform active {system_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
bsp reload
bsp reload
bsp config pbuf_pool_size "4096"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
platform generate -domains standalone_ps7_cortexa9_0 
platform active {system_wrapper}
platform generate -domains 
platform active {system_wrapper}
platform clean
platform generate
platform active {system_wrapper}
bsp reload
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns"
bsp config pbuf_pool_size "4096"
bsp reload
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns -g3 -O0"
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns"
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns"
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns"
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns"
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns"
bsp write
platform generate -domains 
platform generate -domains standalone_ps7_cortexa9_0 
platform active {system_wrapper}
platform generate -domains 
bsp reload
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns -g3 -O0"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
platform generate -domains standalone_ps7_cortexa9_0 
platform active {system_wrapper}
platform config -updatehw {C:/Users/A/Desktop/TRDP_DIR/TRDP_PL_mac/vitis/system_wrapper.xsa}
platform generate -domains 
platform active {system_wrapper}
platform config -updatehw {C:/Users/A/Desktop/TRDP_DIR/TRDP_PL_mac/vitis/system_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/A/Desktop/TRDP_DIR/TRDP_PL_mac/vitis/system_wrapper.xsa}
platform generate -domains 
platform active {system_wrapper}
bsp reload
bsp config stdin "ps7_coresight_comp_0"
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns"
bsp write
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform generate
platform generate
platform active {system_wrapper}
bsp reload
bsp config stdin "ps7_uart_0"
bsp config stdout "ps7_uart_0"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
platform active {system_wrapper}
bsp reload
bsp config stdin "none"
bsp config stdout "none"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform active {system_wrapper}
platform config -updatehw {C:/Users/A/Desktop/TRDP_DIR/TRDP_PL_mac/vitis/system_wrapper.xsa}
bsp reload
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns"
bsp reload
platform clean
platform generate
platform active {system_wrapper}
platform clean
platform generate
bsp reload
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns"
bsp config sleep_timer "none"
bsp config stdin "ps7_coresight_comp_0"
bsp config stdout "ps7_coresight_comp_0"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
platform write
platform generate
platform generate -domains zynq_fsbl 
platform active {system_wrapper}
platform config -updatehw {C:/Users/A/Desktop/TRDP_DIR/TRDP_PL_mac/vitis/system_wrapper.xsa}
platform generate -domains 
platform generate -domains 
platform active {system_wrapper}
bsp reload
bsp reload
platform active {system_wrapper}
platform active {system_wrapper}
bsp reload
bsp reload
platform generate -domains 
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns"
bsp reload
platform generate -domains zynq_fsbl 
platform active {system_wrapper}
bsp reload
bsp setlib -name xilffs -ver 4.8
bsp removelib -name xilffs
bsp reload
platform generate -domains 
bsp config lwip_tcp_keepalive "true"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
bsp config lwip_tcp_keepalive "false"
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns -g3 -O0"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
platform active {system_wrapper}
bsp reload
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns"
bsp write
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform clean
platform generate
platform clean
platform active {system_wrapper}
domain active {zynq_fsbl}
bsp reload
bsp reload
domain active {standalone_ps7_cortexa9_0}
bsp reload
platform generate
platform generate
