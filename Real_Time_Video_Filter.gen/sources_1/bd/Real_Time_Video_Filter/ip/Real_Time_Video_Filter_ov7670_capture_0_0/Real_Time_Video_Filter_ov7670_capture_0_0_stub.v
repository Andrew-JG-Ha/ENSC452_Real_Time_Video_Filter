// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Apr  1 12:35:31 2024
// Host        : DESKTOP-QVBDF8G running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               a:/Documents/School/ENSC452/Real_Time_Video_Filter/Real_Time_Video_Filter.gen/sources_1/bd/Real_Time_Video_Filter/ip/Real_Time_Video_Filter_ov7670_capture_0_0/Real_Time_Video_Filter_ov7670_capture_0_0_stub.v
// Design      : Real_Time_Video_Filter_ov7670_capture_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ov7670_capture,Vivado 2020.2" *)
module Real_Time_Video_Filter_ov7670_capture_0_0(pclk, vsync, href, d, addr, dout, we, aclk)
/* synthesis syn_black_box black_box_pad_pin="pclk,vsync,href,d[7:0],addr[18:0],dout[11:0],we,aclk" */;
  input pclk;
  input vsync;
  input href;
  input [7:0]d;
  output [18:0]addr;
  output [11:0]dout;
  output we;
  output aclk;
endmodule
