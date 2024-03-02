// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Mar  1 20:42:17 2024
// Host        : Shonk running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Real_Time_Video_Filter_RGB_to_RGBX_0_1_sim_netlist.v
// Design      : Real_Time_Video_Filter_RGB_to_RGBX_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RGB_to_RGBX
   (X_out,
    G_in,
    B_in,
    R_in);
  output [3:0]X_out;
  input [3:0]G_in;
  input [3:0]B_in;
  input [3:0]R_in;

  wire [3:0]B_in;
  wire [3:0]G_in;
  wire [3:0]R_in;
  wire [3:0]X_out;
  wire X_out0_carry__0_i_10_n_0;
  wire X_out0_carry__0_i_4_n_0;
  wire X_out0_carry__0_i_5_n_0;
  wire X_out0_carry__0_i_6_n_0;
  wire X_out0_carry__0_i_7_n_0;
  wire X_out0_carry__0_i_8_n_0;
  wire X_out0_carry__0_i_9_n_0;
  wire X_out0_carry__0_n_1;
  wire X_out0_carry__0_n_2;
  wire X_out0_carry__0_n_3;
  wire X_out0_carry_i_2_n_0;
  wire X_out0_carry_i_3_n_0;
  wire X_out0_carry_i_4_n_0;
  wire X_out0_carry_i_5_n_0;
  wire X_out0_carry_i_6_n_0;
  wire X_out0_carry_n_0;
  wire X_out0_carry_n_1;
  wire X_out0_carry_n_2;
  wire X_out0_carry_n_3;
  wire [6:3]greenScaled;
  wire [3:0]NLW_X_out0_carry_O_UNCONNECTED;
  wire [3:3]NLW_X_out0_carry__0_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 X_out0_carry
       (.CI(1'b0),
        .CO({X_out0_carry_n_0,X_out0_carry_n_1,X_out0_carry_n_2,X_out0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({greenScaled[3],G_in[1:0],1'b0}),
        .O(NLW_X_out0_carry_O_UNCONNECTED[3:0]),
        .S({X_out0_carry_i_2_n_0,X_out0_carry_i_3_n_0,X_out0_carry_i_4_n_0,R_in[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 X_out0_carry__0
       (.CI(X_out0_carry_n_0),
        .CO({NLW_X_out0_carry__0_CO_UNCONNECTED[3],X_out0_carry__0_n_1,X_out0_carry__0_n_2,X_out0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,greenScaled[6:4]}),
        .O(X_out),
        .S({X_out0_carry__0_i_4_n_0,X_out0_carry__0_i_5_n_0,X_out0_carry__0_i_6_n_0,X_out0_carry__0_i_7_n_0}));
  LUT4 #(
    .INIT(16'h5780)) 
    X_out0_carry__0_i_1
       (.I0(G_in[2]),
        .I1(G_in[0]),
        .I2(G_in[1]),
        .I3(G_in[3]),
        .O(greenScaled[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1878)) 
    X_out0_carry__0_i_10
       (.I0(R_in[3]),
        .I1(R_in[1]),
        .I2(R_in[2]),
        .I3(R_in[0]),
        .O(X_out0_carry__0_i_10_n_0));
  LUT4 #(
    .INIT(16'h1788)) 
    X_out0_carry__0_i_2
       (.I0(G_in[3]),
        .I1(G_in[1]),
        .I2(G_in[0]),
        .I3(G_in[2]),
        .O(greenScaled[5]));
  LUT4 #(
    .INIT(16'h8778)) 
    X_out0_carry__0_i_3
       (.I0(G_in[0]),
        .I1(G_in[2]),
        .I2(G_in[3]),
        .I3(G_in[1]),
        .O(greenScaled[4]));
  LUT4 #(
    .INIT(16'hA800)) 
    X_out0_carry__0_i_4
       (.I0(G_in[2]),
        .I1(G_in[0]),
        .I2(G_in[1]),
        .I3(G_in[3]),
        .O(X_out0_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h66566A666A66AA6A)) 
    X_out0_carry__0_i_5
       (.I0(greenScaled[6]),
        .I1(R_in[3]),
        .I2(B_in[3]),
        .I3(X_out0_carry__0_i_8_n_0),
        .I4(X_out0_carry__0_i_9_n_0),
        .I5(R_in[2]),
        .O(X_out0_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hA96A95A956956A56)) 
    X_out0_carry__0_i_6
       (.I0(greenScaled[5]),
        .I1(R_in[2]),
        .I2(X_out0_carry__0_i_9_n_0),
        .I3(X_out0_carry__0_i_8_n_0),
        .I4(B_in[3]),
        .I5(R_in[3]),
        .O(X_out0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    X_out0_carry__0_i_7
       (.I0(greenScaled[4]),
        .I1(B_in[3]),
        .I2(X_out0_carry__0_i_10_n_0),
        .I3(X_out0_carry__0_i_8_n_0),
        .O(X_out0_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h2BBBB222B2222BBB)) 
    X_out0_carry__0_i_8
       (.I0(X_out0_carry_i_6_n_0),
        .I1(B_in[2]),
        .I2(R_in[2]),
        .I3(R_in[0]),
        .I4(R_in[3]),
        .I5(R_in[1]),
        .O(X_out0_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'hF880)) 
    X_out0_carry__0_i_9
       (.I0(R_in[0]),
        .I1(R_in[2]),
        .I2(R_in[1]),
        .I3(R_in[3]),
        .O(X_out0_carry__0_i_9_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    X_out0_carry_i_1
       (.I0(G_in[2]),
        .I1(G_in[0]),
        .O(greenScaled[3]));
  LUT4 #(
    .INIT(16'h9669)) 
    X_out0_carry_i_2
       (.I0(greenScaled[3]),
        .I1(B_in[2]),
        .I2(X_out0_carry_i_5_n_0),
        .I3(X_out0_carry_i_6_n_0),
        .O(X_out0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9666699969999666)) 
    X_out0_carry_i_3
       (.I0(G_in[1]),
        .I1(B_in[1]),
        .I2(B_in[0]),
        .I3(R_in[1]),
        .I4(R_in[0]),
        .I5(R_in[2]),
        .O(X_out0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    X_out0_carry_i_4
       (.I0(G_in[0]),
        .I1(B_in[0]),
        .I2(R_in[1]),
        .O(X_out0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    X_out0_carry_i_5
       (.I0(R_in[2]),
        .I1(R_in[0]),
        .I2(R_in[3]),
        .I3(R_in[1]),
        .O(X_out0_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h09999FFF)) 
    X_out0_carry_i_6
       (.I0(R_in[0]),
        .I1(R_in[2]),
        .I2(R_in[1]),
        .I3(B_in[0]),
        .I4(B_in[1]),
        .O(X_out0_carry_i_6_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "Real_Time_Video_Filter_RGB_to_RGBX_0_1,RGB_to_RGBX,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "RGB_to_RGBX,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (R_in,
    G_in,
    B_in,
    clk,
    R_out,
    G_out,
    B_out,
    X_out);
  input [3:0]R_in;
  input [3:0]G_in;
  input [3:0]B_in;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Real_Time_Video_Filter_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  output [3:0]R_out;
  output [3:0]G_out;
  output [3:0]B_out;
  output [3:0]X_out;

  wire [3:0]B_in;
  wire [3:0]G_in;
  wire [3:0]R_in;
  wire [3:0]X_out;

  assign B_out[3:0] = B_in;
  assign G_out[3:0] = G_in;
  assign R_out[3:0] = R_in;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RGB_to_RGBX U0
       (.B_in(B_in),
        .G_in(G_in),
        .R_in(R_in),
        .X_out(X_out));
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
