# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: S:\Documents\GitHub\Real_Time_Video_Filter\workspace\Real_Time_Video_Filter_system\_ide\scripts\systemdebugger_real_time_video_filter_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source S:\Documents\GitHub\Real_Time_Video_Filter\workspace\Real_Time_Video_Filter_system\_ide\scripts\systemdebugger_real_time_video_filter_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248469541" && level==0 && jtag_device_ctx=="jsn-Zed-210248469541-03727093-0"}
fpga -file S:/Documents/GitHub/Real_Time_Video_Filter/workspace/Real_Time_Video_Filter/_ide/bitstream/Real_Time_Video_Filter_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw S:/Documents/GitHub/Real_Time_Video_Filter/workspace/Real_Time_Video_Filter_Wrapper/export/Real_Time_Video_Filter_Wrapper/hw/Real_Time_Video_Filter_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source S:/Documents/GitHub/Real_Time_Video_Filter/workspace/Real_Time_Video_Filter/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow S:/Documents/GitHub/Real_Time_Video_Filter/workspace/Real_Time_Video_Filter/Debug/Real_Time_Video_Filter.elf
targets -set -nocase -filter {name =~ "*A9*#1"}
dow S:/Documents/GitHub/Real_Time_Video_Filter/workspace/Data_Processor/Debug/Data_Processor.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
targets -set -nocase -filter {name =~ "*A9*#1"}
con
