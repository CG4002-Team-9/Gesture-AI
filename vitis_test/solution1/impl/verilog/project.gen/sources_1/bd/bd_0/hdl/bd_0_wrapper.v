//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Thu Aug 29 18:15:04 2024
//Host        : prince-ThinkPad-E14-Gen-5 running 64-bit Ubuntu 24.04 LTS
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (ap_clk,
    ap_ctrl_done,
    ap_ctrl_idle,
    ap_ctrl_ready,
    ap_ctrl_start,
    ap_rst,
    input_r_address0,
    input_r_address1,
    input_r_ce0,
    input_r_ce1,
    input_r_d0,
    input_r_d1,
    input_r_q0,
    input_r_q1,
    input_r_we0,
    input_r_we1,
    output_r_address0,
    output_r_address1,
    output_r_ce0,
    output_r_ce1,
    output_r_d0,
    output_r_d1,
    output_r_q0,
    output_r_q1,
    output_r_we0,
    output_r_we1);
  input ap_clk;
  output ap_ctrl_done;
  output ap_ctrl_idle;
  output ap_ctrl_ready;
  input ap_ctrl_start;
  input ap_rst;
  output [6:0]input_r_address0;
  output [6:0]input_r_address1;
  output input_r_ce0;
  output input_r_ce1;
  output [15:0]input_r_d0;
  output [15:0]input_r_d1;
  input [15:0]input_r_q0;
  input [15:0]input_r_q1;
  output input_r_we0;
  output input_r_we1;
  output [4:0]output_r_address0;
  output [4:0]output_r_address1;
  output output_r_ce0;
  output output_r_ce1;
  output [15:0]output_r_d0;
  output [15:0]output_r_d1;
  input [15:0]output_r_q0;
  input [15:0]output_r_q1;
  output output_r_we0;
  output output_r_we1;

  wire ap_clk;
  wire ap_ctrl_done;
  wire ap_ctrl_idle;
  wire ap_ctrl_ready;
  wire ap_ctrl_start;
  wire ap_rst;
  wire [6:0]input_r_address0;
  wire [6:0]input_r_address1;
  wire input_r_ce0;
  wire input_r_ce1;
  wire [15:0]input_r_d0;
  wire [15:0]input_r_d1;
  wire [15:0]input_r_q0;
  wire [15:0]input_r_q1;
  wire input_r_we0;
  wire input_r_we1;
  wire [4:0]output_r_address0;
  wire [4:0]output_r_address1;
  wire output_r_ce0;
  wire output_r_ce1;
  wire [15:0]output_r_d0;
  wire [15:0]output_r_d1;
  wire [15:0]output_r_q0;
  wire [15:0]output_r_q1;
  wire output_r_we0;
  wire output_r_we1;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_ctrl_done(ap_ctrl_done),
        .ap_ctrl_idle(ap_ctrl_idle),
        .ap_ctrl_ready(ap_ctrl_ready),
        .ap_ctrl_start(ap_ctrl_start),
        .ap_rst(ap_rst),
        .input_r_address0(input_r_address0),
        .input_r_address1(input_r_address1),
        .input_r_ce0(input_r_ce0),
        .input_r_ce1(input_r_ce1),
        .input_r_d0(input_r_d0),
        .input_r_d1(input_r_d1),
        .input_r_q0(input_r_q0),
        .input_r_q1(input_r_q1),
        .input_r_we0(input_r_we0),
        .input_r_we1(input_r_we1),
        .output_r_address0(output_r_address0),
        .output_r_address1(output_r_address1),
        .output_r_ce0(output_r_ce0),
        .output_r_ce1(output_r_ce1),
        .output_r_d0(output_r_d0),
        .output_r_d1(output_r_d1),
        .output_r_q0(output_r_q0),
        .output_r_q1(output_r_q1),
        .output_r_we0(output_r_we0),
        .output_r_we1(output_r_we1));
endmodule
