// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Mar  1 20:42:17 2024
// Host        : Shonk running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Real_Time_Video_Filter_RGB_to_RGBX_0_1_stub.v
// Design      : Real_Time_Video_Filter_RGB_to_RGBX_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "RGB_to_RGBX,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(R_in, G_in, B_in, clk, R_out, G_out, B_out, X_out)
/* synthesis syn_black_box black_box_pad_pin="R_in[3:0],G_in[3:0],B_in[3:0],clk,R_out[3:0],G_out[3:0],B_out[3:0],X_out[3:0]" */;
  input [3:0]R_in;
  input [3:0]G_in;
  input [3:0]B_in;
  input clk;
  output [3:0]R_out;
  output [3:0]G_out;
  output [3:0]B_out;
  output [3:0]X_out;
endmodule
