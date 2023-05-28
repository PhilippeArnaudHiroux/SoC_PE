# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: D:\SoC\SoC_PE\Vraag_1\vitis\vraag_1_app_system\_ide\scripts\debugger_vraag_1_app-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source D:\SoC\SoC_PE\Vraag_1\vitis\vraag_1_app_system\_ide\scripts\debugger_vraag_1_app-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Xilinx TUL 1234-tulA" && level==0 && jtag_device_ctx=="jsn-TUL-1234-tulA-23727093-0"}
fpga -file D:/SoC/SoC_PE/Vraag_1/vitis/vraag_1_app/_ide/bitstream/design_1_xsa.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw D:/SoC/SoC_PE/Vraag_1/vitis/design_1_xsa/export/design_1_xsa/hw/design_1_xsa.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source D:/SoC/SoC_PE/Vraag_1/vitis/vraag_1_app/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow D:/SoC/SoC_PE/Vraag_1/vitis/vraag_1_app/Debug/vraag_1_app.elf
configparams force-mem-access 0
bpadd -addr &main
