# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Vivado\SoC_2023\PE\Vraag1\Vitis\Vraag1\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Vivado\SoC_2023\PE\Vraag1\Vitis\Vraag1\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {Vraag1}\
-hw {C:\Vivado\SoC_2023\PE\Vraag1\Vraag1.xsa}\
-out {C:/Vivado/SoC_2023/PE/Vraag1/Vitis}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {Vraag1}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
