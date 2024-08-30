// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module gesture_model_conv1d_0 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        input_0_address0,
        input_0_ce0,
        input_0_q0,
        input_0_address1,
        input_0_ce1,
        input_0_q1,
        output_r_address0,
        output_r_ce0,
        output_r_we0,
        output_r_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [6:0] input_0_address0;
output   input_0_ce0;
input  [15:0] input_0_q0;
output  [6:0] input_0_address1;
output   input_0_ce1;
input  [15:0] input_0_q1;
output  [10:0] output_r_address0;
output   output_r_ce0;
output   output_r_we0;
output  [14:0] output_r_d0;

reg ap_idle;
reg[6:0] input_0_address0;
reg input_0_ce0;
reg input_0_ce1;
reg output_r_ce0;
reg output_r_we0;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_state4_pp0_stage1_iter1;
wire    ap_block_state6_pp0_stage1_iter2;
reg    ap_done_reg;
reg    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln26_reg_500;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [3:0] conv1d_0_weights_V_0_0_address0;
reg    conv1d_0_weights_V_0_0_ce0;
wire  signed [7:0] conv1d_0_weights_V_0_0_q0;
wire   [3:0] conv1d_0_weights_V_1_0_address0;
reg    conv1d_0_weights_V_1_0_ce0;
wire   [7:0] conv1d_0_weights_V_1_0_q0;
wire   [3:0] conv1d_0_weights_V_2_0_address0;
reg    conv1d_0_weights_V_2_0_ce0;
wire  signed [7:0] conv1d_0_weights_V_2_0_q0;
wire   [3:0] conv1d_0_biases_V_address0;
reg    conv1d_0_biases_V_ce0;
wire   [6:0] conv1d_0_biases_V_q0;
reg  signed [15:0] reg_186;
reg    ap_block_pp0_stage1_11001;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
wire    ap_block_state7_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln26_fu_208_p2;
reg   [0:0] icmp_ln26_reg_500_pp0_iter1_reg;
wire   [6:0] select_ln26_3_fu_292_p3;
reg   [6:0] select_ln26_3_reg_514;
wire   [63:0] j_cast_fu_300_p1;
reg   [63:0] j_cast_reg_519;
reg   [63:0] j_cast_reg_519_pp0_iter1_reg;
wire   [10:0] add_ln38_fu_310_p2;
reg   [10:0] add_ln38_reg_525;
reg   [10:0] add_ln38_reg_525_pp0_iter1_reg;
reg   [10:0] add_ln38_reg_525_pp0_iter2_reg;
reg  signed [7:0] conv1d_0_weights_V_1_0_load_reg_555;
reg  signed [6:0] conv1d_0_biases_V_load_reg_600;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln26_fu_262_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln26_1_fu_281_p1;
wire   [63:0] zext_ln26_2_fu_341_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln38_1_fu_398_p1;
reg   [4:0] j_fu_76;
wire   [4:0] add_ln28_fu_316_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_j_load;
reg   [6:0] i_fu_80;
wire   [6:0] select_ln26_1_fu_246_p3;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [10:0] indvar_flatten_fu_84;
wire   [10:0] add_ln26_fu_214_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten_load;
wire   [0:0] icmp_ln28_fu_226_p2;
wire   [6:0] add_ln1271_fu_240_p2;
wire   [6:0] add_ln1271_1_fu_267_p2;
wire   [6:0] select_ln26_2_fu_273_p3;
wire   [6:0] add_ln1271_2_fu_286_p2;
wire   [4:0] select_ln26_fu_232_p3;
wire   [10:0] tmp_fu_254_p3;
wire   [10:0] zext_ln38_fu_306_p1;
wire  signed [23:0] grp_fu_453_p2;
wire   [15:0] tmp_s_fu_364_p4;
wire  signed [23:0] tmp_15_fu_381_p1;
wire   [23:0] grp_fu_460_p3;
wire   [15:0] tmp_15_fu_381_p4;
wire  signed [23:0] trunc_ln_fu_402_p1;
wire   [23:0] grp_fu_469_p3;
wire  signed [23:0] trunc_ln1_fu_414_p1;
wire   [15:0] trunc_ln_fu_402_p4;
wire  signed [15:0] conv1d_0_biases_V_load_cast_fu_411_p1;
wire   [14:0] trunc_ln1_fu_414_p4;
wire  signed [14:0] sext_ln813_fu_423_p1;
wire   [15:0] x_V_fu_426_p2;
wire   [0:0] icmp_ln1649_fu_438_p2;
wire   [14:0] add_ln17_fu_432_p2;
wire   [23:0] grp_fu_460_p2;
wire   [23:0] grp_fu_469_p2;
reg    grp_fu_453_ce;
reg    grp_fu_460_ce;
reg    grp_fu_469_ce;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_214;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
end

gesture_model_conv1d_0_conv1d_0_weights_V_0_0_ROM_AUTO_1R #(
    .DataWidth( 8 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
conv1d_0_weights_V_0_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(conv1d_0_weights_V_0_0_address0),
    .ce0(conv1d_0_weights_V_0_0_ce0),
    .q0(conv1d_0_weights_V_0_0_q0)
);

gesture_model_conv1d_0_conv1d_0_weights_V_1_0_ROM_AUTO_1R #(
    .DataWidth( 8 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
conv1d_0_weights_V_1_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(conv1d_0_weights_V_1_0_address0),
    .ce0(conv1d_0_weights_V_1_0_ce0),
    .q0(conv1d_0_weights_V_1_0_q0)
);

gesture_model_conv1d_0_conv1d_0_weights_V_2_0_ROM_AUTO_1R #(
    .DataWidth( 8 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
conv1d_0_weights_V_2_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(conv1d_0_weights_V_2_0_address0),
    .ce0(conv1d_0_weights_V_2_0_ce0),
    .q0(conv1d_0_weights_V_2_0_q0)
);

gesture_model_conv1d_0_conv1d_0_biases_V_ROM_AUTO_1R #(
    .DataWidth( 7 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
conv1d_0_biases_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(conv1d_0_biases_V_address0),
    .ce0(conv1d_0_biases_V_ce0),
    .q0(conv1d_0_biases_V_q0)
);

gesture_model_mul_mul_16s_8s_24_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 24 ))
mul_mul_16s_8s_24_4_1_U4(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(input_0_q1),
    .din1(conv1d_0_weights_V_0_0_q0),
    .ce(grp_fu_453_ce),
    .dout(grp_fu_453_p2)
);

gesture_model_mac_muladd_16s_8s_24ns_24_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 24 ),
    .dout_WIDTH( 24 ))
mac_muladd_16s_8s_24ns_24_4_1_U5(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(reg_186),
    .din1(conv1d_0_weights_V_1_0_load_reg_555),
    .din2(grp_fu_460_p2),
    .ce(grp_fu_460_ce),
    .dout(grp_fu_460_p3)
);

gesture_model_mac_muladd_16s_8s_24ns_24_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 24 ),
    .dout_WIDTH( 24 ))
mac_muladd_16s_8s_24ns_24_4_1_U6(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(reg_186),
    .din1(conv1d_0_weights_V_2_0_q0),
    .din2(grp_fu_469_p2),
    .ce(grp_fu_469_ce),
    .dout(grp_fu_469_p3)
);

gesture_model_flow_control_loop_pipe flow_control_loop_pipe_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int),
    .ap_continue(ap_continue)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_214)) begin
        if ((icmp_ln26_fu_208_p2 == 1'd0)) begin
            i_fu_80 <= select_ln26_1_fu_246_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_80 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_214)) begin
        if ((icmp_ln26_fu_208_p2 == 1'd0)) begin
            indvar_flatten_fu_84 <= add_ln26_fu_214_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_84 <= 11'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_214)) begin
        if ((icmp_ln26_fu_208_p2 == 1'd0)) begin
            j_fu_76 <= add_ln28_fu_316_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_76 <= 5'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln26_fu_208_p2 == 1'd0))) begin
        add_ln38_reg_525 <= add_ln38_fu_310_p2;
        j_cast_reg_519[4 : 0] <= j_cast_fu_300_p1[4 : 0];
        select_ln26_3_reg_514 <= select_ln26_3_fu_292_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln38_reg_525_pp0_iter1_reg <= add_ln38_reg_525;
        add_ln38_reg_525_pp0_iter2_reg <= add_ln38_reg_525_pp0_iter1_reg;
        icmp_ln26_reg_500 <= icmp_ln26_fu_208_p2;
        icmp_ln26_reg_500_pp0_iter1_reg <= icmp_ln26_reg_500;
        j_cast_reg_519_pp0_iter1_reg[4 : 0] <= j_cast_reg_519[4 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        conv1d_0_biases_V_load_reg_600 <= conv1d_0_biases_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln26_reg_500 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        conv1d_0_weights_V_1_0_load_reg_555 <= conv1d_0_weights_V_1_0_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln26_reg_500 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_186 <= input_0_q0;
    end
end

always @ (*) begin
    if (((icmp_ln26_reg_500 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln26_reg_500_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_80;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_84;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 5'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_76;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv1d_0_biases_V_ce0 = 1'b1;
    end else begin
        conv1d_0_biases_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv1d_0_weights_V_0_0_ce0 = 1'b1;
    end else begin
        conv1d_0_weights_V_0_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv1d_0_weights_V_1_0_ce0 = 1'b1;
    end else begin
        conv1d_0_weights_V_1_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv1d_0_weights_V_2_0_ce0 = 1'b1;
    end else begin
        conv1d_0_weights_V_2_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_453_ce = 1'b1;
    end else begin
        grp_fu_453_ce = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_460_ce = 1'b1;
    end else begin
        grp_fu_460_ce = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_469_ce = 1'b1;
    end else begin
        grp_fu_469_ce = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            input_0_address0 = zext_ln26_2_fu_341_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            input_0_address0 = zext_ln26_1_fu_281_p1;
        end else begin
            input_0_address0 = 'bx;
        end
    end else begin
        input_0_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        input_0_ce0 = 1'b1;
    end else begin
        input_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_0_ce1 = 1'b1;
    end else begin
        input_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_r_ce0 = 1'b1;
    end else begin
        output_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_r_we0 = 1'b1;
    end else begin
        output_r_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln1271_1_fu_267_p2 = (ap_sig_allocacmp_i_load + 7'd2);

assign add_ln1271_2_fu_286_p2 = (ap_sig_allocacmp_i_load + 7'd3);

assign add_ln1271_fu_240_p2 = (ap_sig_allocacmp_i_load + 7'd1);

assign add_ln17_fu_432_p2 = ($signed(trunc_ln1_fu_414_p4) + $signed(sext_ln813_fu_423_p1));

assign add_ln26_fu_214_p2 = (ap_sig_allocacmp_indvar_flatten_load + 11'd1);

assign add_ln28_fu_316_p2 = (select_ln26_fu_232_p3 + 5'd1);

assign add_ln38_fu_310_p2 = (tmp_fu_254_p3 + zext_ln38_fu_306_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_11001 = (ap_done_reg == 1'b1);
end

always @ (*) begin
    ap_block_pp0_stage1_subdone = (ap_done_reg == 1'b1);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_214 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;

assign conv1d_0_biases_V_address0 = j_cast_reg_519_pp0_iter1_reg;

assign conv1d_0_biases_V_load_cast_fu_411_p1 = conv1d_0_biases_V_load_reg_600;

assign conv1d_0_weights_V_0_0_address0 = j_cast_fu_300_p1;

assign conv1d_0_weights_V_1_0_address0 = j_cast_fu_300_p1;

assign conv1d_0_weights_V_2_0_address0 = j_cast_reg_519;

assign grp_fu_460_p2 = {{tmp_s_fu_364_p4}, {8'd0}};

assign grp_fu_469_p2 = {{tmp_15_fu_381_p4}, {8'd0}};

assign icmp_ln1649_fu_438_p2 = (($signed(x_V_fu_426_p2) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln26_fu_208_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 11'd1888) ? 1'b1 : 1'b0);

assign icmp_ln28_fu_226_p2 = ((ap_sig_allocacmp_j_load == 5'd16) ? 1'b1 : 1'b0);

assign input_0_address1 = zext_ln26_fu_262_p1;

assign j_cast_fu_300_p1 = select_ln26_fu_232_p3;

assign output_r_address0 = zext_ln38_1_fu_398_p1;

assign output_r_d0 = ((icmp_ln1649_fu_438_p2[0:0] == 1'b1) ? add_ln17_fu_432_p2 : 15'd0);

assign select_ln26_1_fu_246_p3 = ((icmp_ln28_fu_226_p2[0:0] == 1'b1) ? add_ln1271_fu_240_p2 : ap_sig_allocacmp_i_load);

assign select_ln26_2_fu_273_p3 = ((icmp_ln28_fu_226_p2[0:0] == 1'b1) ? add_ln1271_1_fu_267_p2 : add_ln1271_fu_240_p2);

assign select_ln26_3_fu_292_p3 = ((icmp_ln28_fu_226_p2[0:0] == 1'b1) ? add_ln1271_2_fu_286_p2 : add_ln1271_1_fu_267_p2);

assign select_ln26_fu_232_p3 = ((icmp_ln28_fu_226_p2[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_j_load);

assign sext_ln813_fu_423_p1 = conv1d_0_biases_V_load_reg_600;

assign tmp_15_fu_381_p1 = grp_fu_460_p3;

assign tmp_15_fu_381_p4 = {{tmp_15_fu_381_p1[23:8]}};

assign tmp_fu_254_p3 = {{select_ln26_1_fu_246_p3}, {4'd0}};

assign tmp_s_fu_364_p4 = {{grp_fu_453_p2[23:8]}};

assign trunc_ln1_fu_414_p1 = grp_fu_469_p3;

assign trunc_ln1_fu_414_p4 = {{trunc_ln1_fu_414_p1[22:8]}};

assign trunc_ln_fu_402_p1 = grp_fu_469_p3;

assign trunc_ln_fu_402_p4 = {{trunc_ln_fu_402_p1[23:8]}};

assign x_V_fu_426_p2 = ($signed(trunc_ln_fu_402_p4) + $signed(conv1d_0_biases_V_load_cast_fu_411_p1));

assign zext_ln26_1_fu_281_p1 = select_ln26_2_fu_273_p3;

assign zext_ln26_2_fu_341_p1 = select_ln26_3_reg_514;

assign zext_ln26_fu_262_p1 = select_ln26_1_fu_246_p3;

assign zext_ln38_1_fu_398_p1 = add_ln38_reg_525_pp0_iter2_reg;

assign zext_ln38_fu_306_p1 = select_ln26_fu_232_p3;

always @ (posedge ap_clk) begin
    j_cast_reg_519[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    j_cast_reg_519_pp0_iter1_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end

endmodule //gesture_model_conv1d_0
