// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Apr  1 12:35:31 2024
// Host        : DESKTOP-QVBDF8G running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Real_Time_Video_Filter_RGBX_AXI_Stream_0_0_sim_netlist.v
// Design      : Real_Time_Video_Filter_RGBX_AXI_Stream_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RGBX_AXI_Stream
   (m_axis_tvalid,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tuser,
    address,
    clk,
    writeEnable,
    RGBX);
  output m_axis_tvalid;
  output [31:0]m_axis_tdata;
  output m_axis_tlast;
  output m_axis_tuser;
  input [18:0]address;
  input clk;
  input writeEnable;
  input [15:0]RGBX;

  wire [15:0]RGBX;
  wire [18:0]address;
  wire clk;
  wire dataReady;
  wire endOfLine1__102_carry_i_1_n_0;
  wire endOfLine1__102_carry_i_2_n_0;
  wire endOfLine1__102_carry_n_2;
  wire endOfLine1__102_carry_n_3;
  wire endOfLine1__102_carry_n_5;
  wire endOfLine1__102_carry_n_6;
  wire endOfLine1__102_carry_n_7;
  wire endOfLine1__108_carry__0_i_1_n_0;
  wire endOfLine1__108_carry__0_i_2_n_0;
  wire endOfLine1__108_carry__0_i_3_n_0;
  wire endOfLine1__108_carry__0_i_4_n_0;
  wire endOfLine1__108_carry__0_n_0;
  wire endOfLine1__108_carry__0_n_1;
  wire endOfLine1__108_carry__0_n_2;
  wire endOfLine1__108_carry__0_n_3;
  wire endOfLine1__108_carry__0_n_4;
  wire endOfLine1__108_carry__1_i_1_n_0;
  wire endOfLine1__108_carry__1_i_2_n_0;
  wire endOfLine1__108_carry__1_i_3_n_0;
  wire endOfLine1__108_carry__1_n_2;
  wire endOfLine1__108_carry__1_n_3;
  wire endOfLine1__108_carry__1_n_5;
  wire endOfLine1__108_carry__1_n_6;
  wire endOfLine1__108_carry__1_n_7;
  wire endOfLine1__108_carry_i_1_n_0;
  wire endOfLine1__108_carry_i_2_n_0;
  wire endOfLine1__108_carry_i_3_n_0;
  wire endOfLine1__108_carry_i_4_n_0;
  wire endOfLine1__108_carry_n_0;
  wire endOfLine1__108_carry_n_1;
  wire endOfLine1__108_carry_n_2;
  wire endOfLine1__108_carry_n_3;
  wire endOfLine1__63_carry__0_i_1_n_0;
  wire endOfLine1__63_carry__0_i_2_n_0;
  wire endOfLine1__63_carry__0_i_3_n_0;
  wire endOfLine1__63_carry__0_i_4_n_0;
  wire endOfLine1__63_carry__0_i_5_n_0;
  wire endOfLine1__63_carry__0_i_6_n_0;
  wire endOfLine1__63_carry__0_i_7_n_0;
  wire endOfLine1__63_carry__0_i_8_n_0;
  wire endOfLine1__63_carry__0_n_0;
  wire endOfLine1__63_carry__0_n_1;
  wire endOfLine1__63_carry__0_n_2;
  wire endOfLine1__63_carry__0_n_3;
  wire endOfLine1__63_carry__1_i_10_n_0;
  wire endOfLine1__63_carry__1_i_11_n_0;
  wire endOfLine1__63_carry__1_i_12_n_0;
  wire endOfLine1__63_carry__1_i_1_n_0;
  wire endOfLine1__63_carry__1_i_2_n_0;
  wire endOfLine1__63_carry__1_i_3_n_0;
  wire endOfLine1__63_carry__1_i_4_n_0;
  wire endOfLine1__63_carry__1_i_5_n_0;
  wire endOfLine1__63_carry__1_i_6_n_0;
  wire endOfLine1__63_carry__1_i_7_n_0;
  wire endOfLine1__63_carry__1_i_8_n_0;
  wire endOfLine1__63_carry__1_i_9_n_0;
  wire endOfLine1__63_carry__1_n_0;
  wire endOfLine1__63_carry__1_n_1;
  wire endOfLine1__63_carry__1_n_2;
  wire endOfLine1__63_carry__1_n_3;
  wire endOfLine1__63_carry__2_i_10_n_0;
  wire endOfLine1__63_carry__2_i_11_n_0;
  wire endOfLine1__63_carry__2_i_12_n_0;
  wire endOfLine1__63_carry__2_i_1_n_0;
  wire endOfLine1__63_carry__2_i_2_n_0;
  wire endOfLine1__63_carry__2_i_3_n_0;
  wire endOfLine1__63_carry__2_i_4_n_0;
  wire endOfLine1__63_carry__2_i_5_n_0;
  wire endOfLine1__63_carry__2_i_6_n_0;
  wire endOfLine1__63_carry__2_i_7_n_0;
  wire endOfLine1__63_carry__2_i_8_n_0;
  wire endOfLine1__63_carry__2_i_9_n_0;
  wire endOfLine1__63_carry__2_n_0;
  wire endOfLine1__63_carry__2_n_1;
  wire endOfLine1__63_carry__2_n_2;
  wire endOfLine1__63_carry__2_n_3;
  wire endOfLine1__63_carry__2_n_4;
  wire endOfLine1__63_carry__3_i_1_n_0;
  wire endOfLine1__63_carry__3_i_2_n_0;
  wire endOfLine1__63_carry__3_i_3_n_0;
  wire endOfLine1__63_carry__3_i_4_n_0;
  wire endOfLine1__63_carry__3_i_5_n_0;
  wire endOfLine1__63_carry__3_i_6_n_0;
  wire endOfLine1__63_carry__3_i_7_n_0;
  wire endOfLine1__63_carry__3_i_8_n_0;
  wire endOfLine1__63_carry__3_n_2;
  wire endOfLine1__63_carry__3_n_3;
  wire endOfLine1__63_carry__3_n_5;
  wire endOfLine1__63_carry__3_n_6;
  wire endOfLine1__63_carry__3_n_7;
  wire endOfLine1__63_carry_i_1_n_0;
  wire endOfLine1__63_carry_i_2_n_0;
  wire endOfLine1__63_carry_i_3_n_0;
  wire endOfLine1__63_carry_n_0;
  wire endOfLine1__63_carry_n_1;
  wire endOfLine1__63_carry_n_2;
  wire endOfLine1__63_carry_n_3;
  wire endOfLine1_carry__0_i_1_n_0;
  wire endOfLine1_carry__0_i_2_n_0;
  wire endOfLine1_carry__0_i_3_n_0;
  wire endOfLine1_carry__0_i_4_n_0;
  wire endOfLine1_carry__0_i_5_n_0;
  wire endOfLine1_carry__0_i_6_n_0;
  wire endOfLine1_carry__0_i_7_n_0;
  wire endOfLine1_carry__0_n_0;
  wire endOfLine1_carry__0_n_1;
  wire endOfLine1_carry__0_n_2;
  wire endOfLine1_carry__0_n_3;
  wire endOfLine1_carry__0_n_4;
  wire endOfLine1_carry__0_n_5;
  wire endOfLine1_carry__0_n_6;
  wire endOfLine1_carry__0_n_7;
  wire endOfLine1_carry__1_i_1_n_0;
  wire endOfLine1_carry__1_i_2_n_0;
  wire endOfLine1_carry__1_i_3_n_0;
  wire endOfLine1_carry__1_i_4_n_0;
  wire endOfLine1_carry__1_i_5_n_0;
  wire endOfLine1_carry__1_i_6_n_0;
  wire endOfLine1_carry__1_i_7_n_0;
  wire endOfLine1_carry__1_i_8_n_0;
  wire endOfLine1_carry__1_n_0;
  wire endOfLine1_carry__1_n_1;
  wire endOfLine1_carry__1_n_2;
  wire endOfLine1_carry__1_n_3;
  wire endOfLine1_carry__1_n_4;
  wire endOfLine1_carry__1_n_5;
  wire endOfLine1_carry__1_n_6;
  wire endOfLine1_carry__1_n_7;
  wire endOfLine1_carry__2_i_1_n_0;
  wire endOfLine1_carry__2_i_2_n_0;
  wire endOfLine1_carry__2_i_3_n_0;
  wire endOfLine1_carry__2_i_4_n_0;
  wire endOfLine1_carry__2_i_5_n_0;
  wire endOfLine1_carry__2_i_6_n_0;
  wire endOfLine1_carry__2_i_7_n_0;
  wire endOfLine1_carry__2_i_8_n_0;
  wire endOfLine1_carry__2_n_0;
  wire endOfLine1_carry__2_n_1;
  wire endOfLine1_carry__2_n_2;
  wire endOfLine1_carry__2_n_3;
  wire endOfLine1_carry__2_n_4;
  wire endOfLine1_carry__2_n_5;
  wire endOfLine1_carry__2_n_6;
  wire endOfLine1_carry__2_n_7;
  wire endOfLine1_carry__3_i_1_n_0;
  wire endOfLine1_carry__3_i_2_n_0;
  wire endOfLine1_carry__3_i_3_n_0;
  wire endOfLine1_carry__3_i_4_n_0;
  wire endOfLine1_carry__3_i_5_n_0;
  wire endOfLine1_carry__3_i_6_n_0;
  wire endOfLine1_carry__3_i_7_n_0;
  wire endOfLine1_carry__3_i_8_n_0;
  wire endOfLine1_carry__3_n_0;
  wire endOfLine1_carry__3_n_1;
  wire endOfLine1_carry__3_n_2;
  wire endOfLine1_carry__3_n_3;
  wire endOfLine1_carry__3_n_4;
  wire endOfLine1_carry__3_n_5;
  wire endOfLine1_carry__3_n_6;
  wire endOfLine1_carry__3_n_7;
  wire endOfLine1_carry__4_i_1_n_0;
  wire endOfLine1_carry__4_i_2_n_0;
  wire endOfLine1_carry__4_i_3_n_0;
  wire endOfLine1_carry__4_i_4_n_0;
  wire endOfLine1_carry__4_i_5_n_0;
  wire endOfLine1_carry__4_n_2;
  wire endOfLine1_carry__4_n_3;
  wire endOfLine1_carry__4_n_5;
  wire endOfLine1_carry__4_n_6;
  wire endOfLine1_carry__4_n_7;
  wire endOfLine1_carry_i_1_n_0;
  wire endOfLine1_carry_i_2_n_0;
  wire endOfLine1_carry_i_3_n_0;
  wire endOfLine1_carry_n_0;
  wire endOfLine1_carry_n_1;
  wire endOfLine1_carry_n_2;
  wire endOfLine1_carry_n_3;
  wire endOfLine_i_1_n_0;
  wire endOfLine_i_2_n_0;
  wire endOfLine_i_3_n_0;
  wire isFirstPixel_i_1_n_0;
  wire isFirstPixel_i_2_n_0;
  wire isFirstPixel_i_3_n_0;
  wire isFirstPixel_i_4_n_0;
  wire isFirstPixel_i_5_n_0;
  wire [31:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tuser;
  wire m_axis_tvalid;
  wire [6:0]sel0;
  wire writeEnable;
  wire [3:2]NLW_endOfLine1__102_carry_CO_UNCONNECTED;
  wire [3:3]NLW_endOfLine1__102_carry_O_UNCONNECTED;
  wire [3:2]NLW_endOfLine1__108_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_endOfLine1__108_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_endOfLine1__63_carry_O_UNCONNECTED;
  wire [3:0]NLW_endOfLine1__63_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_endOfLine1__63_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_endOfLine1__63_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_endOfLine1__63_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_endOfLine1__63_carry__3_O_UNCONNECTED;
  wire [3:0]NLW_endOfLine1_carry_O_UNCONNECTED;
  wire [3:2]NLW_endOfLine1_carry__4_CO_UNCONNECTED;
  wire [3:3]NLW_endOfLine1_carry__4_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    dataReady_i_1
       (.I0(writeEnable),
        .I1(address[0]),
        .O(dataReady));
  FDRE #(
    .INIT(1'b0)) 
    dataReady_reg
       (.C(clk),
        .CE(1'b1),
        .D(dataReady),
        .Q(m_axis_tvalid),
        .R(1'b0));
  CARRY4 endOfLine1__102_carry
       (.CI(1'b0),
        .CO({NLW_endOfLine1__102_carry_CO_UNCONNECTED[3:2],endOfLine1__102_carry_n_2,endOfLine1__102_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,endOfLine1__63_carry__3_n_6,1'b0}),
        .O({NLW_endOfLine1__102_carry_O_UNCONNECTED[3],endOfLine1__102_carry_n_5,endOfLine1__102_carry_n_6,endOfLine1__102_carry_n_7}),
        .S({1'b0,endOfLine1__102_carry_i_1_n_0,endOfLine1__102_carry_i_2_n_0,endOfLine1__63_carry__3_n_7}));
  LUT2 #(
    .INIT(4'h6)) 
    endOfLine1__102_carry_i_1
       (.I0(endOfLine1__63_carry__3_n_7),
        .I1(endOfLine1__63_carry__3_n_5),
        .O(endOfLine1__102_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    endOfLine1__102_carry_i_2
       (.I0(endOfLine1__63_carry__3_n_6),
        .I1(endOfLine1__63_carry__2_n_4),
        .O(endOfLine1__102_carry_i_2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 endOfLine1__108_carry
       (.CI(1'b0),
        .CO({endOfLine1__108_carry_n_0,endOfLine1__108_carry_n_1,endOfLine1__108_carry_n_2,endOfLine1__108_carry_n_3}),
        .CYINIT(1'b1),
        .DI(address[3:0]),
        .O(sel0[3:0]),
        .S({endOfLine1__108_carry_i_1_n_0,endOfLine1__108_carry_i_2_n_0,endOfLine1__108_carry_i_3_n_0,endOfLine1__108_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 endOfLine1__108_carry__0
       (.CI(endOfLine1__108_carry_n_0),
        .CO({endOfLine1__108_carry__0_n_0,endOfLine1__108_carry__0_n_1,endOfLine1__108_carry__0_n_2,endOfLine1__108_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(address[7:4]),
        .O({endOfLine1__108_carry__0_n_4,sel0[6:4]}),
        .S({endOfLine1__108_carry__0_i_1_n_0,endOfLine1__108_carry__0_i_2_n_0,endOfLine1__108_carry__0_i_3_n_0,endOfLine1__108_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    endOfLine1__108_carry__0_i_1
       (.I0(address[7]),
        .I1(endOfLine1__63_carry__2_n_4),
        .O(endOfLine1__108_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    endOfLine1__108_carry__0_i_2
       (.I0(address[6]),
        .O(endOfLine1__108_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    endOfLine1__108_carry__0_i_3
       (.I0(address[5]),
        .O(endOfLine1__108_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    endOfLine1__108_carry__0_i_4
       (.I0(address[4]),
        .O(endOfLine1__108_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 endOfLine1__108_carry__1
       (.CI(endOfLine1__108_carry__0_n_0),
        .CO({NLW_endOfLine1__108_carry__1_CO_UNCONNECTED[3:2],endOfLine1__108_carry__1_n_2,endOfLine1__108_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,address[9:8]}),
        .O({NLW_endOfLine1__108_carry__1_O_UNCONNECTED[3],endOfLine1__108_carry__1_n_5,endOfLine1__108_carry__1_n_6,endOfLine1__108_carry__1_n_7}),
        .S({1'b0,endOfLine1__108_carry__1_i_1_n_0,endOfLine1__108_carry__1_i_2_n_0,endOfLine1__108_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    endOfLine1__108_carry__1_i_1
       (.I0(address[10]),
        .I1(endOfLine1__102_carry_n_5),
        .O(endOfLine1__108_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    endOfLine1__108_carry__1_i_2
       (.I0(address[9]),
        .I1(endOfLine1__102_carry_n_6),
        .O(endOfLine1__108_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    endOfLine1__108_carry__1_i_3
       (.I0(address[8]),
        .I1(endOfLine1__102_carry_n_7),
        .O(endOfLine1__108_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    endOfLine1__108_carry_i_1
       (.I0(address[3]),
        .O(endOfLine1__108_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    endOfLine1__108_carry_i_2
       (.I0(address[2]),
        .O(endOfLine1__108_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    endOfLine1__108_carry_i_3
       (.I0(address[1]),
        .O(endOfLine1__108_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    endOfLine1__108_carry_i_4
       (.I0(address[0]),
        .O(endOfLine1__108_carry_i_4_n_0));
  CARRY4 endOfLine1__63_carry
       (.CI(1'b0),
        .CO({endOfLine1__63_carry_n_0,endOfLine1__63_carry_n_1,endOfLine1__63_carry_n_2,endOfLine1__63_carry_n_3}),
        .CYINIT(1'b0),
        .DI({address[2:0],1'b0}),
        .O(NLW_endOfLine1__63_carry_O_UNCONNECTED[3:0]),
        .S({endOfLine1__63_carry_i_1_n_0,endOfLine1__63_carry_i_2_n_0,endOfLine1__63_carry_i_3_n_0,endOfLine1_carry__0_n_7}));
  CARRY4 endOfLine1__63_carry__0
       (.CI(endOfLine1__63_carry_n_0),
        .CO({endOfLine1__63_carry__0_n_0,endOfLine1__63_carry__0_n_1,endOfLine1__63_carry__0_n_2,endOfLine1__63_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({endOfLine1__63_carry__0_i_1_n_0,endOfLine1__63_carry__0_i_2_n_0,endOfLine1__63_carry__0_i_3_n_0,address[3]}),
        .O(NLW_endOfLine1__63_carry__0_O_UNCONNECTED[3:0]),
        .S({endOfLine1__63_carry__0_i_4_n_0,endOfLine1__63_carry__0_i_5_n_0,endOfLine1__63_carry__0_i_6_n_0,endOfLine1__63_carry__0_i_7_n_0}));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    endOfLine1__63_carry__0_i_1
       (.I0(address[0]),
        .I1(endOfLine1_carry__1_n_5),
        .I2(address[2]),
        .I3(endOfLine1__63_carry__0_i_8_n_0),
        .I4(address[6]),
        .O(endOfLine1__63_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    endOfLine1__63_carry__0_i_2
       (.I0(address[2]),
        .I1(endOfLine1_carry__1_n_5),
        .I2(address[0]),
        .I3(address[5]),
        .O(endOfLine1__63_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    endOfLine1__63_carry__0_i_3
       (.I0(endOfLine1_carry__1_n_7),
        .I1(address[0]),
        .O(endOfLine1__63_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h6669966669996669)) 
    endOfLine1__63_carry__0_i_4
       (.I0(address[6]),
        .I1(endOfLine1__63_carry__0_i_8_n_0),
        .I2(address[0]),
        .I3(endOfLine1_carry__1_n_5),
        .I4(address[2]),
        .I5(address[5]),
        .O(endOfLine1__63_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h6A56)) 
    endOfLine1__63_carry__0_i_5
       (.I0(endOfLine1__63_carry__0_i_2_n_0),
        .I1(address[4]),
        .I2(endOfLine1_carry__1_n_6),
        .I3(address[1]),
        .O(endOfLine1__63_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    endOfLine1__63_carry__0_i_6
       (.I0(endOfLine1__63_carry__0_i_3_n_0),
        .I1(address[1]),
        .I2(endOfLine1_carry__1_n_6),
        .I3(address[4]),
        .O(endOfLine1__63_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'h96)) 
    endOfLine1__63_carry__0_i_7
       (.I0(endOfLine1_carry__1_n_7),
        .I1(address[0]),
        .I2(address[3]),
        .O(endOfLine1__63_carry__0_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    endOfLine1__63_carry__0_i_8
       (.I0(address[1]),
        .I1(endOfLine1_carry__1_n_4),
        .I2(address[3]),
        .O(endOfLine1__63_carry__0_i_8_n_0));
  CARRY4 endOfLine1__63_carry__1
       (.CI(endOfLine1__63_carry__0_n_0),
        .CO({endOfLine1__63_carry__1_n_0,endOfLine1__63_carry__1_n_1,endOfLine1__63_carry__1_n_2,endOfLine1__63_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({endOfLine1__63_carry__1_i_1_n_0,endOfLine1__63_carry__1_i_2_n_0,endOfLine1__63_carry__1_i_3_n_0,endOfLine1__63_carry__1_i_4_n_0}),
        .O(NLW_endOfLine1__63_carry__1_O_UNCONNECTED[3:0]),
        .S({endOfLine1__63_carry__1_i_5_n_0,endOfLine1__63_carry__1_i_6_n_0,endOfLine1__63_carry__1_i_7_n_0,endOfLine1__63_carry__1_i_8_n_0}));
  LUT5 #(
    .INIT(32'h4DD4D44D)) 
    endOfLine1__63_carry__1_i_1
       (.I0(endOfLine1__63_carry__1_i_9_n_0),
        .I1(address[9]),
        .I2(address[4]),
        .I3(endOfLine1_carry__2_n_5),
        .I4(address[6]),
        .O(endOfLine1__63_carry__1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    endOfLine1__63_carry__1_i_10
       (.I0(address[4]),
        .I1(endOfLine1_carry__2_n_7),
        .I2(address[2]),
        .O(endOfLine1__63_carry__1_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    endOfLine1__63_carry__1_i_11
       (.I0(address[3]),
        .I1(endOfLine1_carry__1_n_4),
        .I2(address[1]),
        .O(endOfLine1__63_carry__1_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    endOfLine1__63_carry__1_i_12
       (.I0(address[6]),
        .I1(endOfLine1_carry__2_n_5),
        .I2(address[4]),
        .O(endOfLine1__63_carry__1_i_12_n_0));
  LUT5 #(
    .INIT(32'h6900FF69)) 
    endOfLine1__63_carry__1_i_2
       (.I0(address[3]),
        .I1(endOfLine1_carry__2_n_6),
        .I2(address[5]),
        .I3(address[8]),
        .I4(endOfLine1__63_carry__1_i_10_n_0),
        .O(endOfLine1__63_carry__1_i_2_n_0));
  LUT5 #(
    .INIT(32'h4DD4D44D)) 
    endOfLine1__63_carry__1_i_3
       (.I0(endOfLine1__63_carry__1_i_11_n_0),
        .I1(address[7]),
        .I2(address[2]),
        .I3(endOfLine1_carry__2_n_7),
        .I4(address[4]),
        .O(endOfLine1__63_carry__1_i_3_n_0));
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    endOfLine1__63_carry__1_i_4
       (.I0(endOfLine1__63_carry__0_i_8_n_0),
        .I1(address[6]),
        .I2(address[2]),
        .I3(endOfLine1_carry__1_n_5),
        .I4(address[0]),
        .O(endOfLine1__63_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    endOfLine1__63_carry__1_i_5
       (.I0(endOfLine1__63_carry__1_i_1_n_0),
        .I1(address[10]),
        .I2(address[7]),
        .I3(endOfLine1_carry__2_n_4),
        .I4(address[5]),
        .I5(endOfLine1__63_carry__1_i_12_n_0),
        .O(endOfLine1__63_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    endOfLine1__63_carry__1_i_6
       (.I0(endOfLine1__63_carry__1_i_2_n_0),
        .I1(address[9]),
        .I2(address[6]),
        .I3(endOfLine1_carry__2_n_5),
        .I4(address[4]),
        .I5(endOfLine1__63_carry__1_i_9_n_0),
        .O(endOfLine1__63_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    endOfLine1__63_carry__1_i_7
       (.I0(endOfLine1__63_carry__1_i_3_n_0),
        .I1(address[8]),
        .I2(address[5]),
        .I3(endOfLine1_carry__2_n_6),
        .I4(address[3]),
        .I5(endOfLine1__63_carry__1_i_10_n_0),
        .O(endOfLine1__63_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    endOfLine1__63_carry__1_i_8
       (.I0(endOfLine1__63_carry__1_i_4_n_0),
        .I1(address[7]),
        .I2(address[4]),
        .I3(endOfLine1_carry__2_n_7),
        .I4(address[2]),
        .I5(endOfLine1__63_carry__1_i_11_n_0),
        .O(endOfLine1__63_carry__1_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    endOfLine1__63_carry__1_i_9
       (.I0(address[5]),
        .I1(endOfLine1_carry__2_n_6),
        .I2(address[3]),
        .O(endOfLine1__63_carry__1_i_9_n_0));
  CARRY4 endOfLine1__63_carry__2
       (.CI(endOfLine1__63_carry__1_n_0),
        .CO({endOfLine1__63_carry__2_n_0,endOfLine1__63_carry__2_n_1,endOfLine1__63_carry__2_n_2,endOfLine1__63_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({endOfLine1__63_carry__2_i_1_n_0,endOfLine1__63_carry__2_i_2_n_0,endOfLine1__63_carry__2_i_3_n_0,endOfLine1__63_carry__2_i_4_n_0}),
        .O({endOfLine1__63_carry__2_n_4,NLW_endOfLine1__63_carry__2_O_UNCONNECTED[2:0]}),
        .S({endOfLine1__63_carry__2_i_5_n_0,endOfLine1__63_carry__2_i_6_n_0,endOfLine1__63_carry__2_i_7_n_0,endOfLine1__63_carry__2_i_8_n_0}));
  LUT5 #(
    .INIT(32'h4DD4D44D)) 
    endOfLine1__63_carry__2_i_1
       (.I0(endOfLine1__63_carry__2_i_9_n_0),
        .I1(address[13]),
        .I2(address[8]),
        .I3(endOfLine1_carry__3_n_5),
        .I4(address[10]),
        .O(endOfLine1__63_carry__2_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    endOfLine1__63_carry__2_i_10
       (.I0(address[8]),
        .I1(endOfLine1_carry__3_n_7),
        .I2(address[6]),
        .O(endOfLine1__63_carry__2_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    endOfLine1__63_carry__2_i_11
       (.I0(address[7]),
        .I1(endOfLine1_carry__2_n_4),
        .I2(address[5]),
        .O(endOfLine1__63_carry__2_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    endOfLine1__63_carry__2_i_12
       (.I0(address[10]),
        .I1(endOfLine1_carry__3_n_5),
        .I2(address[8]),
        .O(endOfLine1__63_carry__2_i_12_n_0));
  LUT5 #(
    .INIT(32'h4DD4D44D)) 
    endOfLine1__63_carry__2_i_2
       (.I0(endOfLine1__63_carry__2_i_10_n_0),
        .I1(address[12]),
        .I2(address[7]),
        .I3(endOfLine1_carry__3_n_6),
        .I4(address[9]),
        .O(endOfLine1__63_carry__2_i_2_n_0));
  LUT5 #(
    .INIT(32'h4DD4D44D)) 
    endOfLine1__63_carry__2_i_3
       (.I0(endOfLine1__63_carry__2_i_11_n_0),
        .I1(address[11]),
        .I2(address[6]),
        .I3(endOfLine1_carry__3_n_7),
        .I4(address[8]),
        .O(endOfLine1__63_carry__2_i_3_n_0));
  LUT5 #(
    .INIT(32'h69FF0069)) 
    endOfLine1__63_carry__2_i_4
       (.I0(address[5]),
        .I1(endOfLine1_carry__2_n_4),
        .I2(address[7]),
        .I3(endOfLine1__63_carry__1_i_12_n_0),
        .I4(address[10]),
        .O(endOfLine1__63_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    endOfLine1__63_carry__2_i_5
       (.I0(endOfLine1__63_carry__2_i_1_n_0),
        .I1(address[14]),
        .I2(address[11]),
        .I3(endOfLine1_carry__3_n_4),
        .I4(address[9]),
        .I5(endOfLine1__63_carry__2_i_12_n_0),
        .O(endOfLine1__63_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    endOfLine1__63_carry__2_i_6
       (.I0(endOfLine1__63_carry__2_i_2_n_0),
        .I1(address[13]),
        .I2(address[10]),
        .I3(endOfLine1_carry__3_n_5),
        .I4(address[8]),
        .I5(endOfLine1__63_carry__2_i_9_n_0),
        .O(endOfLine1__63_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    endOfLine1__63_carry__2_i_7
       (.I0(endOfLine1__63_carry__2_i_3_n_0),
        .I1(address[12]),
        .I2(address[9]),
        .I3(endOfLine1_carry__3_n_6),
        .I4(address[7]),
        .I5(endOfLine1__63_carry__2_i_10_n_0),
        .O(endOfLine1__63_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    endOfLine1__63_carry__2_i_8
       (.I0(endOfLine1__63_carry__2_i_4_n_0),
        .I1(address[11]),
        .I2(address[8]),
        .I3(endOfLine1_carry__3_n_7),
        .I4(address[6]),
        .I5(endOfLine1__63_carry__2_i_11_n_0),
        .O(endOfLine1__63_carry__2_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    endOfLine1__63_carry__2_i_9
       (.I0(address[9]),
        .I1(endOfLine1_carry__3_n_6),
        .I2(address[7]),
        .O(endOfLine1__63_carry__2_i_9_n_0));
  CARRY4 endOfLine1__63_carry__3
       (.CI(endOfLine1__63_carry__2_n_0),
        .CO({NLW_endOfLine1__63_carry__3_CO_UNCONNECTED[3:2],endOfLine1__63_carry__3_n_2,endOfLine1__63_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,endOfLine1__63_carry__3_i_1_n_0,endOfLine1__63_carry__3_i_2_n_0}),
        .O({NLW_endOfLine1__63_carry__3_O_UNCONNECTED[3],endOfLine1__63_carry__3_n_5,endOfLine1__63_carry__3_n_6,endOfLine1__63_carry__3_n_7}),
        .S({1'b0,endOfLine1__63_carry__3_i_3_n_0,endOfLine1__63_carry__3_i_4_n_0,endOfLine1__63_carry__3_i_5_n_0}));
  LUT5 #(
    .INIT(32'h4DD4D44D)) 
    endOfLine1__63_carry__3_i_1
       (.I0(endOfLine1__63_carry__3_i_6_n_0),
        .I1(address[15]),
        .I2(address[10]),
        .I3(endOfLine1_carry__4_n_7),
        .I4(address[12]),
        .O(endOfLine1__63_carry__3_i_1_n_0));
  LUT5 #(
    .INIT(32'h4DD4D44D)) 
    endOfLine1__63_carry__3_i_2
       (.I0(endOfLine1__63_carry__2_i_12_n_0),
        .I1(address[14]),
        .I2(address[9]),
        .I3(endOfLine1_carry__3_n_4),
        .I4(address[11]),
        .O(endOfLine1__63_carry__3_i_2_n_0));
  LUT6 #(
    .INIT(64'h6559A665599A6559)) 
    endOfLine1__63_carry__3_i_3
       (.I0(endOfLine1__63_carry__3_i_7_n_0),
        .I1(address[13]),
        .I2(endOfLine1_carry__4_n_6),
        .I3(address[11]),
        .I4(endOfLine1__63_carry__3_i_8_n_0),
        .I5(address[16]),
        .O(endOfLine1__63_carry__3_i_3_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    endOfLine1__63_carry__3_i_4
       (.I0(endOfLine1__63_carry__3_i_1_n_0),
        .I1(address[16]),
        .I2(address[13]),
        .I3(endOfLine1_carry__4_n_6),
        .I4(address[11]),
        .I5(endOfLine1__63_carry__3_i_8_n_0),
        .O(endOfLine1__63_carry__3_i_4_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    endOfLine1__63_carry__3_i_5
       (.I0(endOfLine1__63_carry__3_i_2_n_0),
        .I1(address[15]),
        .I2(endOfLine1__63_carry__3_i_6_n_0),
        .I3(address[10]),
        .I4(endOfLine1_carry__4_n_7),
        .I5(address[12]),
        .O(endOfLine1__63_carry__3_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    endOfLine1__63_carry__3_i_6
       (.I0(address[11]),
        .I1(endOfLine1_carry__3_n_4),
        .I2(address[9]),
        .O(endOfLine1__63_carry__3_i_6_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    endOfLine1__63_carry__3_i_7
       (.I0(address[17]),
        .I1(address[14]),
        .I2(endOfLine1_carry__4_n_5),
        .I3(address[12]),
        .O(endOfLine1__63_carry__3_i_7_n_0));
  LUT3 #(
    .INIT(8'h2B)) 
    endOfLine1__63_carry__3_i_8
       (.I0(address[12]),
        .I1(endOfLine1_carry__4_n_7),
        .I2(address[10]),
        .O(endOfLine1__63_carry__3_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    endOfLine1__63_carry_i_1
       (.I0(address[2]),
        .I1(endOfLine1_carry__0_n_4),
        .O(endOfLine1__63_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    endOfLine1__63_carry_i_2
       (.I0(address[1]),
        .I1(endOfLine1_carry__0_n_5),
        .O(endOfLine1__63_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    endOfLine1__63_carry_i_3
       (.I0(address[0]),
        .I1(endOfLine1_carry__0_n_6),
        .O(endOfLine1__63_carry_i_3_n_0));
  CARRY4 endOfLine1_carry
       (.CI(1'b0),
        .CO({endOfLine1_carry_n_0,endOfLine1_carry_n_1,endOfLine1_carry_n_2,endOfLine1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({address[1:0],1'b0,1'b1}),
        .O(NLW_endOfLine1_carry_O_UNCONNECTED[3:0]),
        .S({endOfLine1_carry_i_1_n_0,endOfLine1_carry_i_2_n_0,endOfLine1_carry_i_3_n_0,address[0]}));
  CARRY4 endOfLine1_carry__0
       (.CI(endOfLine1_carry_n_0),
        .CO({endOfLine1_carry__0_n_0,endOfLine1_carry__0_n_1,endOfLine1_carry__0_n_2,endOfLine1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({endOfLine1_carry__0_i_1_n_0,endOfLine1_carry__0_i_2_n_0,endOfLine1_carry__0_i_3_n_0,address[2]}),
        .O({endOfLine1_carry__0_n_4,endOfLine1_carry__0_n_5,endOfLine1_carry__0_n_6,endOfLine1_carry__0_n_7}),
        .S({endOfLine1_carry__0_i_4_n_0,endOfLine1_carry__0_i_5_n_0,endOfLine1_carry__0_i_6_n_0,endOfLine1_carry__0_i_7_n_0}));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    endOfLine1_carry__0_i_1
       (.I0(address[6]),
        .I1(address[2]),
        .I2(address[4]),
        .O(endOfLine1_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    endOfLine1_carry__0_i_2
       (.I0(address[1]),
        .I1(address[5]),
        .I2(address[3]),
        .O(endOfLine1_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    endOfLine1_carry__0_i_3
       (.I0(address[3]),
        .I1(address[5]),
        .I2(address[1]),
        .O(endOfLine1_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    endOfLine1_carry__0_i_4
       (.I0(address[7]),
        .I1(address[3]),
        .I2(address[5]),
        .I3(endOfLine1_carry__0_i_1_n_0),
        .O(endOfLine1_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    endOfLine1_carry__0_i_5
       (.I0(address[6]),
        .I1(address[2]),
        .I2(address[4]),
        .I3(endOfLine1_carry__0_i_2_n_0),
        .O(endOfLine1_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69966969)) 
    endOfLine1_carry__0_i_6
       (.I0(address[1]),
        .I1(address[5]),
        .I2(address[3]),
        .I3(address[4]),
        .I4(address[0]),
        .O(endOfLine1_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    endOfLine1_carry__0_i_7
       (.I0(address[4]),
        .I1(address[0]),
        .I2(address[2]),
        .O(endOfLine1_carry__0_i_7_n_0));
  CARRY4 endOfLine1_carry__1
       (.CI(endOfLine1_carry__0_n_0),
        .CO({endOfLine1_carry__1_n_0,endOfLine1_carry__1_n_1,endOfLine1_carry__1_n_2,endOfLine1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({endOfLine1_carry__1_i_1_n_0,endOfLine1_carry__1_i_2_n_0,endOfLine1_carry__1_i_3_n_0,endOfLine1_carry__1_i_4_n_0}),
        .O({endOfLine1_carry__1_n_4,endOfLine1_carry__1_n_5,endOfLine1_carry__1_n_6,endOfLine1_carry__1_n_7}),
        .S({endOfLine1_carry__1_i_5_n_0,endOfLine1_carry__1_i_6_n_0,endOfLine1_carry__1_i_7_n_0,endOfLine1_carry__1_i_8_n_0}));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    endOfLine1_carry__1_i_1
       (.I0(address[6]),
        .I1(address[10]),
        .I2(address[8]),
        .O(endOfLine1_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    endOfLine1_carry__1_i_2
       (.I0(address[5]),
        .I1(address[9]),
        .I2(address[7]),
        .O(endOfLine1_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    endOfLine1_carry__1_i_3
       (.I0(address[4]),
        .I1(address[8]),
        .I2(address[6]),
        .O(endOfLine1_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    endOfLine1_carry__1_i_4
       (.I0(address[7]),
        .I1(address[3]),
        .I2(address[5]),
        .O(endOfLine1_carry__1_i_4_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    endOfLine1_carry__1_i_5
       (.I0(address[7]),
        .I1(address[11]),
        .I2(address[9]),
        .I3(endOfLine1_carry__1_i_1_n_0),
        .O(endOfLine1_carry__1_i_5_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    endOfLine1_carry__1_i_6
       (.I0(address[6]),
        .I1(address[10]),
        .I2(address[8]),
        .I3(endOfLine1_carry__1_i_2_n_0),
        .O(endOfLine1_carry__1_i_6_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    endOfLine1_carry__1_i_7
       (.I0(address[5]),
        .I1(address[9]),
        .I2(address[7]),
        .I3(endOfLine1_carry__1_i_3_n_0),
        .O(endOfLine1_carry__1_i_7_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    endOfLine1_carry__1_i_8
       (.I0(address[4]),
        .I1(address[8]),
        .I2(address[6]),
        .I3(endOfLine1_carry__1_i_4_n_0),
        .O(endOfLine1_carry__1_i_8_n_0));
  CARRY4 endOfLine1_carry__2
       (.CI(endOfLine1_carry__1_n_0),
        .CO({endOfLine1_carry__2_n_0,endOfLine1_carry__2_n_1,endOfLine1_carry__2_n_2,endOfLine1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({endOfLine1_carry__2_i_1_n_0,endOfLine1_carry__2_i_2_n_0,endOfLine1_carry__2_i_3_n_0,endOfLine1_carry__2_i_4_n_0}),
        .O({endOfLine1_carry__2_n_4,endOfLine1_carry__2_n_5,endOfLine1_carry__2_n_6,endOfLine1_carry__2_n_7}),
        .S({endOfLine1_carry__2_i_5_n_0,endOfLine1_carry__2_i_6_n_0,endOfLine1_carry__2_i_7_n_0,endOfLine1_carry__2_i_8_n_0}));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    endOfLine1_carry__2_i_1
       (.I0(address[10]),
        .I1(address[14]),
        .I2(address[12]),
        .O(endOfLine1_carry__2_i_1_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    endOfLine1_carry__2_i_2
       (.I0(address[9]),
        .I1(address[13]),
        .I2(address[11]),
        .O(endOfLine1_carry__2_i_2_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    endOfLine1_carry__2_i_3
       (.I0(address[8]),
        .I1(address[12]),
        .I2(address[10]),
        .O(endOfLine1_carry__2_i_3_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    endOfLine1_carry__2_i_4
       (.I0(address[7]),
        .I1(address[11]),
        .I2(address[9]),
        .O(endOfLine1_carry__2_i_4_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    endOfLine1_carry__2_i_5
       (.I0(address[11]),
        .I1(address[15]),
        .I2(address[13]),
        .I3(endOfLine1_carry__2_i_1_n_0),
        .O(endOfLine1_carry__2_i_5_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    endOfLine1_carry__2_i_6
       (.I0(address[10]),
        .I1(address[14]),
        .I2(address[12]),
        .I3(endOfLine1_carry__2_i_2_n_0),
        .O(endOfLine1_carry__2_i_6_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    endOfLine1_carry__2_i_7
       (.I0(address[9]),
        .I1(address[13]),
        .I2(address[11]),
        .I3(endOfLine1_carry__2_i_3_n_0),
        .O(endOfLine1_carry__2_i_7_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    endOfLine1_carry__2_i_8
       (.I0(address[8]),
        .I1(address[12]),
        .I2(address[10]),
        .I3(endOfLine1_carry__2_i_4_n_0),
        .O(endOfLine1_carry__2_i_8_n_0));
  CARRY4 endOfLine1_carry__3
       (.CI(endOfLine1_carry__2_n_0),
        .CO({endOfLine1_carry__3_n_0,endOfLine1_carry__3_n_1,endOfLine1_carry__3_n_2,endOfLine1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({endOfLine1_carry__3_i_1_n_0,endOfLine1_carry__3_i_2_n_0,endOfLine1_carry__3_i_3_n_0,endOfLine1_carry__3_i_4_n_0}),
        .O({endOfLine1_carry__3_n_4,endOfLine1_carry__3_n_5,endOfLine1_carry__3_n_6,endOfLine1_carry__3_n_7}),
        .S({endOfLine1_carry__3_i_5_n_0,endOfLine1_carry__3_i_6_n_0,endOfLine1_carry__3_i_7_n_0,endOfLine1_carry__3_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB2)) 
    endOfLine1_carry__3_i_1
       (.I0(address[16]),
        .I1(address[18]),
        .I2(address[14]),
        .O(endOfLine1_carry__3_i_1_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    endOfLine1_carry__3_i_2
       (.I0(address[15]),
        .I1(address[17]),
        .I2(address[13]),
        .O(endOfLine1_carry__3_i_2_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    endOfLine1_carry__3_i_3
       (.I0(address[14]),
        .I1(address[16]),
        .I2(address[12]),
        .O(endOfLine1_carry__3_i_3_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    endOfLine1_carry__3_i_4
       (.I0(address[11]),
        .I1(address[15]),
        .I2(address[13]),
        .O(endOfLine1_carry__3_i_4_n_0));
  LUT5 #(
    .INIT(32'h4DB2B24D)) 
    endOfLine1_carry__3_i_5
       (.I0(address[14]),
        .I1(address[18]),
        .I2(address[16]),
        .I3(address[17]),
        .I4(address[15]),
        .O(endOfLine1_carry__3_i_5_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    endOfLine1_carry__3_i_6
       (.I0(endOfLine1_carry__3_i_2_n_0),
        .I1(address[16]),
        .I2(address[18]),
        .I3(address[14]),
        .O(endOfLine1_carry__3_i_6_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    endOfLine1_carry__3_i_7
       (.I0(address[15]),
        .I1(address[17]),
        .I2(address[13]),
        .I3(endOfLine1_carry__3_i_3_n_0),
        .O(endOfLine1_carry__3_i_7_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    endOfLine1_carry__3_i_8
       (.I0(address[14]),
        .I1(address[16]),
        .I2(address[12]),
        .I3(endOfLine1_carry__3_i_4_n_0),
        .O(endOfLine1_carry__3_i_8_n_0));
  CARRY4 endOfLine1_carry__4
       (.CI(endOfLine1_carry__3_n_0),
        .CO({NLW_endOfLine1_carry__4_CO_UNCONNECTED[3:2],endOfLine1_carry__4_n_2,endOfLine1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,endOfLine1_carry__4_i_1_n_0,endOfLine1_carry__4_i_2_n_0}),
        .O({NLW_endOfLine1_carry__4_O_UNCONNECTED[3],endOfLine1_carry__4_n_5,endOfLine1_carry__4_n_6,endOfLine1_carry__4_n_7}),
        .S({1'b0,endOfLine1_carry__4_i_3_n_0,endOfLine1_carry__4_i_4_n_0,endOfLine1_carry__4_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    endOfLine1_carry__4_i_1
       (.I0(address[17]),
        .O(endOfLine1_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    endOfLine1_carry__4_i_2
       (.I0(address[15]),
        .I1(address[17]),
        .O(endOfLine1_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    endOfLine1_carry__4_i_3
       (.I0(address[17]),
        .I1(address[18]),
        .O(endOfLine1_carry__4_i_3_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    endOfLine1_carry__4_i_4
       (.I0(address[18]),
        .I1(address[16]),
        .I2(address[17]),
        .O(endOfLine1_carry__4_i_4_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    endOfLine1_carry__4_i_5
       (.I0(address[17]),
        .I1(address[15]),
        .I2(address[18]),
        .I3(address[16]),
        .O(endOfLine1_carry__4_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    endOfLine1_carry_i_1
       (.I0(address[1]),
        .I1(address[3]),
        .O(endOfLine1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    endOfLine1_carry_i_2
       (.I0(address[0]),
        .I1(address[2]),
        .O(endOfLine1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    endOfLine1_carry_i_3
       (.I0(address[1]),
        .O(endOfLine1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    endOfLine_i_1
       (.I0(endOfLine_i_2_n_0),
        .I1(endOfLine_i_3_n_0),
        .O(endOfLine_i_1_n_0));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    endOfLine_i_2
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(endOfLine1__108_carry__1_n_7),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[6]),
        .O(endOfLine_i_2_n_0));
  LUT6 #(
    .INIT(64'hFF7FFFFFFFFF7FFF)) 
    endOfLine_i_3
       (.I0(writeEnable),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(endOfLine1__108_carry__1_n_6),
        .I4(endOfLine1__108_carry__1_n_5),
        .I5(endOfLine1__108_carry__0_n_4),
        .O(endOfLine_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    endOfLine_reg
       (.C(clk),
        .CE(1'b1),
        .D(endOfLine_i_1_n_0),
        .Q(m_axis_tlast),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    isFirstPixel_i_1
       (.I0(isFirstPixel_i_2_n_0),
        .I1(address[14]),
        .I2(address[12]),
        .I3(address[16]),
        .I4(address[7]),
        .I5(isFirstPixel_i_3_n_0),
        .O(isFirstPixel_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    isFirstPixel_i_2
       (.I0(writeEnable),
        .I1(address[0]),
        .I2(address[18]),
        .I3(address[17]),
        .O(isFirstPixel_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    isFirstPixel_i_3
       (.I0(address[5]),
        .I1(address[6]),
        .I2(address[4]),
        .I3(address[1]),
        .I4(isFirstPixel_i_4_n_0),
        .I5(isFirstPixel_i_5_n_0),
        .O(isFirstPixel_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    isFirstPixel_i_4
       (.I0(address[15]),
        .I1(address[13]),
        .I2(address[10]),
        .I3(address[9]),
        .O(isFirstPixel_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    isFirstPixel_i_5
       (.I0(address[11]),
        .I1(address[2]),
        .I2(address[8]),
        .I3(address[3]),
        .O(isFirstPixel_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    isFirstPixel_reg
       (.C(clk),
        .CE(1'b1),
        .D(isFirstPixel_i_1_n_0),
        .Q(m_axis_tuser),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[0] 
       (.C(clk),
        .CE(writeEnable),
        .D(m_axis_tdata[16]),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[10] 
       (.C(clk),
        .CE(writeEnable),
        .D(m_axis_tdata[26]),
        .Q(m_axis_tdata[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[11] 
       (.C(clk),
        .CE(writeEnable),
        .D(m_axis_tdata[27]),
        .Q(m_axis_tdata[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[12] 
       (.C(clk),
        .CE(writeEnable),
        .D(m_axis_tdata[28]),
        .Q(m_axis_tdata[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[13] 
       (.C(clk),
        .CE(writeEnable),
        .D(m_axis_tdata[29]),
        .Q(m_axis_tdata[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[14] 
       (.C(clk),
        .CE(writeEnable),
        .D(m_axis_tdata[30]),
        .Q(m_axis_tdata[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[15] 
       (.C(clk),
        .CE(writeEnable),
        .D(m_axis_tdata[31]),
        .Q(m_axis_tdata[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[16] 
       (.C(clk),
        .CE(writeEnable),
        .D(RGBX[0]),
        .Q(m_axis_tdata[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[17] 
       (.C(clk),
        .CE(writeEnable),
        .D(RGBX[1]),
        .Q(m_axis_tdata[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[18] 
       (.C(clk),
        .CE(writeEnable),
        .D(RGBX[2]),
        .Q(m_axis_tdata[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[19] 
       (.C(clk),
        .CE(writeEnable),
        .D(RGBX[3]),
        .Q(m_axis_tdata[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[1] 
       (.C(clk),
        .CE(writeEnable),
        .D(m_axis_tdata[17]),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[20] 
       (.C(clk),
        .CE(writeEnable),
        .D(RGBX[4]),
        .Q(m_axis_tdata[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[21] 
       (.C(clk),
        .CE(writeEnable),
        .D(RGBX[5]),
        .Q(m_axis_tdata[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[22] 
       (.C(clk),
        .CE(writeEnable),
        .D(RGBX[6]),
        .Q(m_axis_tdata[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[23] 
       (.C(clk),
        .CE(writeEnable),
        .D(RGBX[7]),
        .Q(m_axis_tdata[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[24] 
       (.C(clk),
        .CE(writeEnable),
        .D(RGBX[8]),
        .Q(m_axis_tdata[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[25] 
       (.C(clk),
        .CE(writeEnable),
        .D(RGBX[9]),
        .Q(m_axis_tdata[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[26] 
       (.C(clk),
        .CE(writeEnable),
        .D(RGBX[10]),
        .Q(m_axis_tdata[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[27] 
       (.C(clk),
        .CE(writeEnable),
        .D(RGBX[11]),
        .Q(m_axis_tdata[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[28] 
       (.C(clk),
        .CE(writeEnable),
        .D(RGBX[12]),
        .Q(m_axis_tdata[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[29] 
       (.C(clk),
        .CE(writeEnable),
        .D(RGBX[13]),
        .Q(m_axis_tdata[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[2] 
       (.C(clk),
        .CE(writeEnable),
        .D(m_axis_tdata[18]),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[30] 
       (.C(clk),
        .CE(writeEnable),
        .D(RGBX[14]),
        .Q(m_axis_tdata[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[31] 
       (.C(clk),
        .CE(writeEnable),
        .D(RGBX[15]),
        .Q(m_axis_tdata[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[3] 
       (.C(clk),
        .CE(writeEnable),
        .D(m_axis_tdata[19]),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[4] 
       (.C(clk),
        .CE(writeEnable),
        .D(m_axis_tdata[20]),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[5] 
       (.C(clk),
        .CE(writeEnable),
        .D(m_axis_tdata[21]),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[6] 
       (.C(clk),
        .CE(writeEnable),
        .D(m_axis_tdata[22]),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[7] 
       (.C(clk),
        .CE(writeEnable),
        .D(m_axis_tdata[23]),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[8] 
       (.C(clk),
        .CE(writeEnable),
        .D(m_axis_tdata[24]),
        .Q(m_axis_tdata[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeData_reg[9] 
       (.C(clk),
        .CE(writeEnable),
        .D(m_axis_tdata[25]),
        .Q(m_axis_tdata[9]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "Real_Time_Video_Filter_RGBX_AXI_Stream_0_0,RGBX_AXI_Stream,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "RGBX_AXI_Stream,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    address,
    RGBX,
    writeEnable,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tready,
    m_axis_tuser);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Real_Time_Video_Filter_ov7670_capture_0_0_aclk, INSERT_VIP 0" *) input clk;
  input [18:0]address;
  input [15:0]RGBX;
  input writeEnable;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 25000000, PHASE 0.000, CLK_DOMAIN Real_Time_Video_Filter_ov7670_capture_0_0_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [31:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TUSER" *) output m_axis_tuser;

  wire [15:0]RGBX;
  wire [18:0]address;
  wire clk;
  wire [31:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tuser;
  wire m_axis_tvalid;
  wire writeEnable;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RGBX_AXI_Stream U0
       (.RGBX(RGBX),
        .address(address),
        .clk(clk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .writeEnable(writeEnable));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
