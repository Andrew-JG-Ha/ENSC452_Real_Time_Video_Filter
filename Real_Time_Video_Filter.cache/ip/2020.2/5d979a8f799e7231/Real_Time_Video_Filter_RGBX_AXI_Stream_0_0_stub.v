// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Apr  1 12:35:31 2024
// Host        : DESKTOP-QVBDF8G running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Real_Time_Video_Filter_RGBX_AXI_Stream_0_0_stub.v
// Design      : Real_Time_Video_Filter_RGBX_AXI_Stream_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "RGBX_AXI_Stream,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, address, RGBX, writeEnable, m_axis_tvalid, 
  m_axis_tdata, m_axis_tlast, m_axis_tready, m_axis_tuser)
/* synthesis syn_black_box black_box_pad_pin="clk,address[18:0],RGBX[15:0],writeEnable,m_axis_tvalid,m_axis_tdata[31:0],m_axis_tlast,m_axis_tready,m_axis_tuser" */;
  input clk;
  input [18:0]address;
  input [15:0]RGBX;
  input writeEnable;
  output m_axis_tvalid;
  output [31:0]m_axis_tdata;
  output m_axis_tlast;
  input m_axis_tready;
  output m_axis_tuser;
endmodule
