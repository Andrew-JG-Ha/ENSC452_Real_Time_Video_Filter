# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct A:\Documents\School\ENSC452\Real_Time_Video_Filter\workspace\Real_Time_Video_Filter_Wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source A:\Documents\School\ENSC452\Real_Time_Video_Filter\workspace\Real_Time_Video_Filter_Wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {Real_Time_Video_Filter_Wrapper}\
-hw {A:\Documents\School\ENSC452\Real_Time_Video_Filter\Real_Time_Video_Filter_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {A:/Documents/School/ENSC452/Real_Time_Video_Filter/workspace}

platform write
platform generate -domains 
platform active {Real_Time_Video_Filter_Wrapper}
platform generate
platform config -updatehw {A:/Documents/School/ENSC452/Real_Time_Video_Filter/Real_Time_Video_Filter_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
domain active {standalone_domain}
bsp reload
platform generate -domains 
