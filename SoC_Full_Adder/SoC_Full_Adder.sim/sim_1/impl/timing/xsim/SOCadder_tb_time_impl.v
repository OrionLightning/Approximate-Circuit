// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Feb 21 14:06:41 2022
// Host        : DESKTOP-70RNJ0N running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/kagan/Documents/Vivado
//               Projects/SoC_Full_Adder/SoC_Full_Adder.sim/sim_1/impl/timing/xsim/SOCadder_tb_time_impl.v}
// Design      : SOCadder
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "e040d836" *) (* N = "4" *) 
(* NotValidForBitStream *)
module SOCadder
   (A,
    B,
    Cin,
    S,
    Cout);
  input [3:0]A;
  input [3:0]B;
  input Cin;
  output [3:0]S;
  output Cout;

  wire [3:0]A;
  wire [3:0]A_IBUF;
  wire [3:0]B;
  wire [3:0]B_IBUF;
  wire Cin;
  wire Cin_IBUF;
  wire Cout;
  wire Cout_OBUF;
  wire [3:0]S;
  wire [3:0]S_OBUF;
  wire s_carry_2;

initial begin
 $sdf_annotate("SOCadder_tb_time_impl.sdf",,,,"tool_control");
end
  IBUF \A_IBUF[0]_inst 
       (.I(A[0]),
        .O(A_IBUF[0]));
  IBUF \A_IBUF[1]_inst 
       (.I(A[1]),
        .O(A_IBUF[1]));
  IBUF \A_IBUF[2]_inst 
       (.I(A[2]),
        .O(A_IBUF[2]));
  IBUF \A_IBUF[3]_inst 
       (.I(A[3]),
        .O(A_IBUF[3]));
  IBUF \B_IBUF[0]_inst 
       (.I(B[0]),
        .O(B_IBUF[0]));
  IBUF \B_IBUF[1]_inst 
       (.I(B[1]),
        .O(B_IBUF[1]));
  IBUF \B_IBUF[2]_inst 
       (.I(B[2]),
        .O(B_IBUF[2]));
  IBUF \B_IBUF[3]_inst 
       (.I(B[3]),
        .O(B_IBUF[3]));
  IBUF Cin_IBUF_inst
       (.I(Cin),
        .O(Cin_IBUF));
  OBUF Cout_OBUF_inst
       (.I(Cout_OBUF),
        .O(Cout));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    Cout_OBUF_inst_i_1
       (.I0(s_carry_2),
        .I1(B_IBUF[2]),
        .I2(A_IBUF[2]),
        .I3(B_IBUF[3]),
        .I4(A_IBUF[3]),
        .O(Cout_OBUF));
  OBUF \S_OBUF[0]_inst 
       (.I(S_OBUF[0]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \S_OBUF[0]_inst_i_1 
       (.I0(Cin_IBUF),
        .I1(A_IBUF[0]),
        .I2(B_IBUF[0]),
        .O(S_OBUF[0]));
  OBUF \S_OBUF[1]_inst 
       (.I(S_OBUF[1]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \S_OBUF[1]_inst_i_1 
       (.I0(A_IBUF[0]),
        .I1(B_IBUF[0]),
        .I2(Cin_IBUF),
        .I3(A_IBUF[1]),
        .I4(B_IBUF[1]),
        .O(S_OBUF[1]));
  OBUF \S_OBUF[2]_inst 
       (.I(S_OBUF[2]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \S_OBUF[2]_inst_i_1 
       (.I0(s_carry_2),
        .I1(A_IBUF[2]),
        .I2(B_IBUF[2]),
        .O(S_OBUF[2]));
  OBUF \S_OBUF[3]_inst 
       (.I(S_OBUF[3]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \S_OBUF[3]_inst_i_1 
       (.I0(A_IBUF[2]),
        .I1(B_IBUF[2]),
        .I2(s_carry_2),
        .I3(A_IBUF[3]),
        .I4(B_IBUF[3]),
        .O(S_OBUF[3]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \S_OBUF[3]_inst_i_2 
       (.I0(Cin_IBUF),
        .I1(B_IBUF[0]),
        .I2(A_IBUF[0]),
        .I3(B_IBUF[1]),
        .I4(A_IBUF[1]),
        .O(s_carry_2));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
