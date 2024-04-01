// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Apr  1 12:35:31 2024
// Host        : DESKTOP-QVBDF8G running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               a:/Documents/School/ENSC452/Real_Time_Video_Filter/Real_Time_Video_Filter.gen/sources_1/bd/Real_Time_Video_Filter/ip/Real_Time_Video_Filter_RGB_to_RGBX_0_0/Real_Time_Video_Filter_RGB_to_RGBX_0_0_stub.v
// Design      : Real_Time_Video_Filter_RGB_to_RGBX_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "RGB_to_RGBX,Vivado 2020.2" *)
module Real_Time_Video_Filter_RGB_to_RGBX_0_0(RGB_in, clk, address_in, address_out, 
  writeEnable_in, RGBX_out, writeEnable_out)
/* synthesis syn_black_box black_box_pad_pin="RGB_in[11:0],clk,address_in[18:0],address_out[18:0],writeEnable_in,RGBX_out[15:0],writeEnable_out" */;
  input [11:0]RGB_in;
  input clk;
  input [18:0]address_in;
  output [18:0]address_out;
  input writeEnable_in;
  output [15:0]RGBX_out;
  output writeEnable_out;
endmodule
