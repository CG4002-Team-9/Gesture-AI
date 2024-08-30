
wire kernel_monitor_reset;
wire kernel_monitor_clock;
wire kernel_monitor_report;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
assign kernel_monitor_report = 1'b0;
wire [1:0] axis_block_sigs;
wire [11:0] inst_idle_sigs;
wire [8:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~Loop_VITIS_LOOP_149_1_proc8_U0.input_stream_TDATA_blk_n;
assign axis_block_sigs[1] = ~Loop_VITIS_LOOP_166_3_proc9_U0.output_stream_TDATA_blk_n;

assign inst_idle_sigs[0] = Loop_VITIS_LOOP_149_1_proc8_U0.ap_idle;
assign inst_block_sigs[0] = (Loop_VITIS_LOOP_149_1_proc8_U0.ap_done & ~Loop_VITIS_LOOP_149_1_proc8_U0.ap_continue);
assign inst_idle_sigs[1] = conv1d_0_U0.ap_idle;
assign inst_block_sigs[1] = (conv1d_0_U0.ap_done & ~conv1d_0_U0.ap_continue);
assign inst_idle_sigs[2] = batch_normalization_0_U0.ap_idle;
assign inst_block_sigs[2] = (batch_normalization_0_U0.ap_done & ~batch_normalization_0_U0.ap_continue);
assign inst_idle_sigs[3] = max_pooling1d_0_U0.ap_idle;
assign inst_block_sigs[3] = (max_pooling1d_0_U0.ap_done & ~max_pooling1d_0_U0.ap_continue);
assign inst_idle_sigs[4] = Loop_VITIS_LOOP_79_1_proc_U0.ap_idle;
assign inst_block_sigs[4] = (Loop_VITIS_LOOP_79_1_proc_U0.ap_done & ~Loop_VITIS_LOOP_79_1_proc_U0.ap_continue);
assign inst_idle_sigs[5] = dense_0_U0.ap_idle;
assign inst_block_sigs[5] = (dense_0_U0.ap_done & ~dense_0_U0.ap_continue);
assign inst_idle_sigs[6] = batch_normalization_1_U0.ap_idle;
assign inst_block_sigs[6] = (batch_normalization_1_U0.ap_done & ~batch_normalization_1_U0.ap_continue);
assign inst_idle_sigs[7] = dense_1_U0.ap_idle;
assign inst_block_sigs[7] = (dense_1_U0.ap_done & ~dense_1_U0.ap_continue);
assign inst_idle_sigs[8] = Loop_VITIS_LOOP_166_3_proc9_U0.ap_idle;
assign inst_block_sigs[8] = (Loop_VITIS_LOOP_166_3_proc9_U0.ap_done & ~Loop_VITIS_LOOP_166_3_proc9_U0.ap_continue);

assign inst_idle_sigs[9] = 1'b0;
assign inst_idle_sigs[10] = Loop_VITIS_LOOP_149_1_proc8_U0.ap_idle;
assign inst_idle_sigs[11] = Loop_VITIS_LOOP_166_3_proc9_U0.ap_idle;

gesture_model_hls_deadlock_idx0_monitor gesture_model_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);


always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
