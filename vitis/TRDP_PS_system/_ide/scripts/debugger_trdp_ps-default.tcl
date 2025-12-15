# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\A\Desktop\TRDP_DIR\TRDP_PL_mac\vitis\TRDP_PS_system\_ide\scripts\debugger_trdp_ps-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\A\Desktop\TRDP_DIR\TRDP_PL_mac\vitis\TRDP_PS_system\_ide\scripts\debugger_trdp_ps-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT2 A30626FBD152" && level==0 && jtag_device_ctx=="jsn-JTAG-SMT2-A30626FBD152-23727093-0"}
fpga -file C:/Users/A/Desktop/TRDP_DIR/TRDP_PL_mac/vitis/TRDP_PS/_ide/bitstream/system_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/A/Desktop/TRDP_DIR/TRDP_PL_mac/vitis/system_wrapper/export/system_wrapper/hw/system_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/A/Desktop/TRDP_DIR/TRDP_PL_mac/vitis/TRDP_PS/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/A/Desktop/TRDP_DIR/TRDP_PL_mac/vitis/TRDP_PS/Debug/TRDP_PS.elf
configparams force-mem-access 0
bpadd -addr &main
