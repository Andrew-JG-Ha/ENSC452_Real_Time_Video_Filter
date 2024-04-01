// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Apr  1 12:35:31 2024
// Host        : DESKTOP-QVBDF8G running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               a:/Documents/School/ENSC452/Real_Time_Video_Filter/Real_Time_Video_Filter.gen/sources_1/bd/Real_Time_Video_Filter/ip/Real_Time_Video_Filter_RGB_to_RGBX_0_0/Real_Time_Video_Filter_RGB_to_RGBX_0_0_sim_netlist.v
// Design      : Real_Time_Video_Filter_RGB_to_RGBX_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Real_Time_Video_Filter_RGB_to_RGBX_0_0,RGB_to_RGBX,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "RGB_to_RGBX,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Real_Time_Video_Filter_RGB_to_RGBX_0_0
   (RGB_in,
    clk,
    address_in,
    address_out,
    writeEnable_in,
    RGBX_out,
    writeEnable_out);
  input [11:0]RGB_in;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Real_Time_Video_Filter_ov7670_capture_0_0_aclk, INSERT_VIP 0" *) input clk;
  input [18:0]address_in;
  output [18:0]address_out;
  input writeEnable_in;
  output [15:0]RGBX_out;
  output writeEnable_out;

  wire [3:0]\^RGBX_out ;
  wire [11:0]RGB_in;
  wire [18:0]address_in;
  wire writeEnable_in;

  assign RGBX_out[15:4] = RGB_in;
  assign RGBX_out[3:0] = \^RGBX_out [3:0];
  assign address_out[18:0] = address_in;
  assign writeEnable_out = writeEnable_in;
  Real_Time_Video_Filter_RGB_to_RGBX_0_0_RGB_to_RGBX U0
       (.RGBX_out(\^RGBX_out ),
        .RGB_in(RGB_in));
endmodule

(* ORIG_REF_NAME = "RGB_to_RGBX" *) 
module Real_Time_Video_Filter_RGB_to_RGBX_0_0_RGB_to_RGBX
   (RGBX_out,
    RGB_in);
  output [3:0]RGBX_out;
  input [11:0]RGB_in;

  wire [3:0]RGBX_out;
  wire RGBX_out0_carry__0_i_10_n_0;
  wire RGBX_out0_carry__0_i_4_n_0;
  wire RGBX_out0_carry__0_i_5_n_0;
  wire RGBX_out0_carry__0_i_6_n_0;
  wire RGBX_out0_carry__0_i_7_n_0;
  wire RGBX_out0_carry__0_i_8_n_0;
  wire RGBX_out0_carry__0_i_9_n_0;
  wire RGBX_out0_carry__0_n_1;
  wire RGBX_out0_carry__0_n_2;
  wire RGBX_out0_carry__0_n_3;
  wire RGBX_out0_carry_i_2_n_0;
  wire RGBX_out0_carry_i_3_n_0;
  wire RGBX_out0_carry_i_4_n_0;
  wire RGBX_out0_carry_i_5_n_0;
  wire RGBX_out0_carry_i_6_n_0;
  wire RGBX_out0_carry_n_0;
  wire RGBX_out0_carry_n_1;
  wire RGBX_out0_carry_n_2;
  wire RGBX_out0_carry_n_3;
  wire [11:0]RGB_in;
  wire [6:3]greenScaled;
  wire [3:0]NLW_RGBX_out0_carry_O_UNCONNECTED;
  wire [3:3]NLW_RGBX_out0_carry__0_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 RGBX_out0_carry
       (.CI(1'b0),
        .CO({RGBX_out0_carry_n_0,RGBX_out0_carry_n_1,RGBX_out0_carry_n_2,RGBX_out0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({greenScaled[3],RGB_in[5:4],1'b0}),
        .O(NLW_RGBX_out0_carry_O_UNCONNECTED[3:0]),
        .S({RGBX_out0_carry_i_2_n_0,RGBX_out0_carry_i_3_n_0,RGBX_out0_carry_i_4_n_0,RGB_in[8]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 RGBX_out0_carry__0
       (.CI(RGBX_out0_carry_n_0),
        .CO({NLW_RGBX_out0_carry__0_CO_UNCONNECTED[3],RGBX_out0_carry__0_n_1,RGBX_out0_carry__0_n_2,RGBX_out0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,greenScaled[6:4]}),
        .O(RGBX_out),
        .S({RGBX_out0_carry__0_i_4_n_0,RGBX_out0_carry__0_i_5_n_0,RGBX_out0_carry__0_i_6_n_0,RGBX_out0_carry__0_i_7_n_0}));
  LUT4 #(
    .INIT(16'h5780)) 
    RGBX_out0_carry__0_i_1
       (.I0(RGB_in[6]),
        .I1(RGB_in[4]),
        .I2(RGB_in[5]),
        .I3(RGB_in[7]),
        .O(greenScaled[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1878)) 
    RGBX_out0_carry__0_i_10
       (.I0(RGB_in[11]),
        .I1(RGB_in[9]),
        .I2(RGB_in[10]),
        .I3(RGB_in[8]),
        .O(RGBX_out0_carry__0_i_10_n_0));
  LUT4 #(
    .INIT(16'h1788)) 
    RGBX_out0_carry__0_i_2
       (.I0(RGB_in[7]),
        .I1(RGB_in[5]),
        .I2(RGB_in[4]),
        .I3(RGB_in[6]),
        .O(greenScaled[5]));
  LUT4 #(
    .INIT(16'h8778)) 
    RGBX_out0_carry__0_i_3
       (.I0(RGB_in[4]),
        .I1(RGB_in[6]),
        .I2(RGB_in[7]),
        .I3(RGB_in[5]),
        .O(greenScaled[4]));
  LUT4 #(
    .INIT(16'hA800)) 
    RGBX_out0_carry__0_i_4
       (.I0(RGB_in[6]),
        .I1(RGB_in[4]),
        .I2(RGB_in[5]),
        .I3(RGB_in[7]),
        .O(RGBX_out0_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h66566A666A66AA6A)) 
    RGBX_out0_carry__0_i_5
       (.I0(greenScaled[6]),
        .I1(RGB_in[11]),
        .I2(RGB_in[3]),
        .I3(RGBX_out0_carry__0_i_8_n_0),
        .I4(RGBX_out0_carry__0_i_9_n_0),
        .I5(RGB_in[10]),
        .O(RGBX_out0_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hA96A95A956956A56)) 
    RGBX_out0_carry__0_i_6
       (.I0(greenScaled[5]),
        .I1(RGB_in[10]),
        .I2(RGBX_out0_carry__0_i_9_n_0),
        .I3(RGBX_out0_carry__0_i_8_n_0),
        .I4(RGB_in[3]),
        .I5(RGB_in[11]),
        .O(RGBX_out0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    RGBX_out0_carry__0_i_7
       (.I0(greenScaled[4]),
        .I1(RGB_in[3]),
        .I2(RGBX_out0_carry__0_i_10_n_0),
        .I3(RGBX_out0_carry__0_i_8_n_0),
        .O(RGBX_out0_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h2BBBB222B2222BBB)) 
    RGBX_out0_carry__0_i_8
       (.I0(RGBX_out0_carry_i_6_n_0),
        .I1(RGB_in[2]),
        .I2(RGB_in[10]),
        .I3(RGB_in[8]),
        .I4(RGB_in[11]),
        .I5(RGB_in[9]),
        .O(RGBX_out0_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'hF880)) 
    RGBX_out0_carry__0_i_9
       (.I0(RGB_in[8]),
        .I1(RGB_in[10]),
        .I2(RGB_in[9]),
        .I3(RGB_in[11]),
        .O(RGBX_out0_carry__0_i_9_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    RGBX_out0_carry_i_1
       (.I0(RGB_in[6]),
        .I1(RGB_in[4]),
        .O(greenScaled[3]));
  LUT4 #(
    .INIT(16'h9669)) 
    RGBX_out0_carry_i_2
       (.I0(greenScaled[3]),
        .I1(RGB_in[2]),
        .I2(RGBX_out0_carry_i_5_n_0),
        .I3(RGBX_out0_carry_i_6_n_0),
        .O(RGBX_out0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9666699969999666)) 
    RGBX_out0_carry_i_3
       (.I0(RGB_in[5]),
        .I1(RGB_in[1]),
        .I2(RGB_in[0]),
        .I3(RGB_in[9]),
        .I4(RGB_in[8]),
        .I5(RGB_in[10]),
        .O(RGBX_out0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    RGBX_out0_carry_i_4
       (.I0(RGB_in[4]),
        .I1(RGB_in[0]),
        .I2(RGB_in[9]),
        .O(RGBX_out0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    RGBX_out0_carry_i_5
       (.I0(RGB_in[10]),
        .I1(RGB_in[8]),
        .I2(RGB_in[11]),
        .I3(RGB_in[9]),
        .O(RGBX_out0_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h09999FFF)) 
    RGBX_out0_carry_i_6
       (.I0(RGB_in[8]),
        .I1(RGB_in[10]),
        .I2(RGB_in[9]),
        .I3(RGB_in[0]),
        .I4(RGB_in[1]),
        .O(RGBX_out0_carry_i_6_n_0));
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
