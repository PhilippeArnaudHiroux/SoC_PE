# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\12000174\Documents\DEF_Works\Eindopdrachtsoc\Vitis\Vraag_2_system\_ide\scripts\debugger_vraag_2-default_57.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\12000174\Documents\DEF_Works\Eindopdrachtsoc\Vitis\Vraag_2_system\_ide\scripts\debugger_vraag_2-default_57.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Xilinx TUL 1234-tulA" && level==0 && jtag_device_ctx=="jsn-TUL-1234-tulA-23727093-0"}
fpga -file C:/Users/12000174/Documents/DEF_Works/Eindopdrachtsoc/Vitis/Vraag_2/_ide/bitstream/Vraag2.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/12000174/Documents/DEF_Works/Eindopdrachtsoc/Vitis/Vraag2/export/Vraag2/hw/Vraag2.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/12000174/Documents/DEF_Works/Eindopdrachtsoc/Vitis/Vraag_2/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/12000174/Documents/DEF_Works/Eindopdrachtsoc/Vitis/Vraag_2/Debug/Vraag_2.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
