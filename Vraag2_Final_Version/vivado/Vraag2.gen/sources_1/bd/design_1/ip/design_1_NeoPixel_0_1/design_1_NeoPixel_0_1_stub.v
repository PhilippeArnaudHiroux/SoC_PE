// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri May 26 12:23:13 2023
// Host        : PF2ADN53 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_NeoPixel_0_1 -prefix
//               design_1_NeoPixel_0_1_ design_1_NeoPixel_0_0_stub.v
// Design      : design_1_NeoPixel_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "NeoPixel,Vivado 2022.1" *)
module design_1_NeoPixel_0_1(clk, addr, value, d_out)
/* synthesis syn_black_box black_box_pad_pin="clk,addr[11:0],value[23:0],d_out" */;
  input clk;
  output [11:0]addr;
  input [23:0]value;
  output d_out;
endmodule