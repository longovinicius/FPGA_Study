// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Mar 28 14:12:29 2025
// Host        : BRJGSN325259 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/longo/FPGA_projects/Blinky-1_1/Blinky-1_1.gen/sources_1/bd/design_1/ip/design_1_Blinky_0_0/design_1_Blinky_0_0_stub.v
// Design      : design_1_Blinky_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Blinky,Vivado 2021.2" *)
module design_1_Blinky_0_0(sysclk, blinky_o)
/* synthesis syn_black_box black_box_pad_pin="sysclk,blinky_o" */;
  input sysclk;
  output blinky_o;
endmodule
