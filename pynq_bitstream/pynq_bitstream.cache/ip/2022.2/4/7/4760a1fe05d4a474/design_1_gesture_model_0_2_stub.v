// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Sun Sep  1 23:01:39 2024
// Host        : prince-ThinkPad-E14-Gen-5 running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_gesture_model_0_2_stub.v
// Design      : design_1_gesture_model_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "gesture_model,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst_n, input_stream_TVALID, 
  input_stream_TREADY, input_stream_TDATA, input_stream_TKEEP, input_stream_TSTRB, 
  input_stream_TUSER, input_stream_TLAST, input_stream_TID, input_stream_TDEST, 
  output_stream_TVALID, output_stream_TREADY, output_stream_TDATA, output_stream_TKEEP, 
  output_stream_TSTRB, output_stream_TUSER, output_stream_TLAST, output_stream_TID, 
  output_stream_TDEST)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,input_stream_TVALID,input_stream_TREADY,input_stream_TDATA[31:0],input_stream_TKEEP[3:0],input_stream_TSTRB[3:0],input_stream_TUSER[0:0],input_stream_TLAST[0:0],input_stream_TID[0:0],input_stream_TDEST[0:0],output_stream_TVALID,output_stream_TREADY,output_stream_TDATA[31:0],output_stream_TKEEP[3:0],output_stream_TSTRB[3:0],output_stream_TUSER[0:0],output_stream_TLAST[0:0],output_stream_TID[0:0],output_stream_TDEST[0:0]" */;
  input ap_clk;
  input ap_rst_n;
  input input_stream_TVALID;
  output input_stream_TREADY;
  input [31:0]input_stream_TDATA;
  input [3:0]input_stream_TKEEP;
  input [3:0]input_stream_TSTRB;
  input [0:0]input_stream_TUSER;
  input [0:0]input_stream_TLAST;
  input [0:0]input_stream_TID;
  input [0:0]input_stream_TDEST;
  output output_stream_TVALID;
  input output_stream_TREADY;
  output [31:0]output_stream_TDATA;
  output [3:0]output_stream_TKEEP;
  output [3:0]output_stream_TSTRB;
  output [0:0]output_stream_TUSER;
  output [0:0]output_stream_TLAST;
  output [0:0]output_stream_TID;
  output [0:0]output_stream_TDEST;
endmodule
