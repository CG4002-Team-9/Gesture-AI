// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Thu Aug 29 18:16:14 2024
// Host        : prince-ThinkPad-E14-Gen-5 running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/prince/vitis_test/solution1/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_stub.v
// Design      : bd_0_hls_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "gesture_model,Vivado 2022.2" *)
module bd_0_hls_inst_0(input_r_ce0, input_r_we0, input_r_ce1, 
  input_r_we1, output_r_ce0, output_r_we0, output_r_ce1, output_r_we1, ap_clk, ap_rst, ap_start, 
  ap_done, ap_ready, ap_idle, input_r_address0, input_r_d0, input_r_q0, input_r_address1, 
  input_r_d1, input_r_q1, output_r_address0, output_r_d0, output_r_q0, output_r_address1, 
  output_r_d1, output_r_q1)
/* synthesis syn_black_box black_box_pad_pin="input_r_ce0,input_r_we0,input_r_ce1,input_r_we1,output_r_ce0,output_r_we0,output_r_ce1,output_r_we1,ap_clk,ap_rst,ap_start,ap_done,ap_ready,ap_idle,input_r_address0[6:0],input_r_d0[15:0],input_r_q0[15:0],input_r_address1[6:0],input_r_d1[15:0],input_r_q1[15:0],output_r_address0[4:0],output_r_d0[15:0],output_r_q0[15:0],output_r_address1[4:0],output_r_d1[15:0],output_r_q1[15:0]" */;
  output input_r_ce0;
  output input_r_we0;
  output input_r_ce1;
  output input_r_we1;
  output output_r_ce0;
  output output_r_we0;
  output output_r_ce1;
  output output_r_we1;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_ready;
  output ap_idle;
  output [6:0]input_r_address0;
  output [15:0]input_r_d0;
  input [15:0]input_r_q0;
  output [6:0]input_r_address1;
  output [15:0]input_r_d1;
  input [15:0]input_r_q1;
  output [4:0]output_r_address0;
  output [15:0]output_r_d0;
  input [15:0]output_r_q0;
  output [4:0]output_r_address1;
  output [15:0]output_r_d1;
  input [15:0]output_r_q1;
endmodule
