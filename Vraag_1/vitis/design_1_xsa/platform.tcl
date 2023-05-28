# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\SoC\SoC_PE\Vraag_1\vitis\design_1_xsa\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\SoC\SoC_PE\Vraag_1\vitis\design_1_xsa\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_xsa}\
-hw {D:\SoC\SoC_PE\Vraag_1\design_1_xsa.xsa}\
-out {D:/SoC/SoC_PE/Vraag_1/vitis}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {design_1_xsa}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform generate
