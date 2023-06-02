# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Vivado\SoC_2023\PE\Vraag3_2\Vitis\Vraag3_2\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Vivado\SoC_2023\PE\Vraag3_2\Vitis\Vraag3_2\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {Vraag3_2}\
-hw {C:\Vivado\SoC_2023\PE\Vraag3_2\Vraag3_2.xsa}\
-out {C:/Vivado/SoC_2023/PE/Vraag3_2/Vitis}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {Vraag3_2}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform generate
platform active {Vraag3_2}
bsp reload
platform generate -domains 
platform generate
