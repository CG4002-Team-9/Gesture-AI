set SynModuleInfo {
  {SRCNAME Loop_VITIS_LOOP_149_1_proc8 MODELNAME Loop_VITIS_LOOP_149_1_proc8 RTLNAME gesture_model_Loop_VITIS_LOOP_149_1_proc8
    SUBMODULES {
      {MODELNAME gesture_model_regslice_both RTLNAME gesture_model_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME gesture_model_regslice_both_U}
      {MODELNAME gesture_model_flow_control_loop_pipe RTLNAME gesture_model_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME gesture_model_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME conv1d_0 MODELNAME conv1d_0 RTLNAME gesture_model_conv1d_0
    SUBMODULES {
      {MODELNAME gesture_model_fadd_32ns_32ns_32_4_full_dsp_1 RTLNAME gesture_model_fadd_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_fmul_32ns_32ns_32_3_max_dsp_1 RTLNAME gesture_model_fmul_32ns_32ns_32_3_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME gesture_model_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_conv1d_0_conv1d_0_weights_0_0_ROM_AUTO_1R RTLNAME gesture_model_conv1d_0_conv1d_0_weights_0_0_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_conv1d_0_conv1d_0_weights_1_0_ROM_AUTO_1R RTLNAME gesture_model_conv1d_0_conv1d_0_weights_1_0_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_conv1d_0_conv1d_0_weights_2_0_ROM_AUTO_1R RTLNAME gesture_model_conv1d_0_conv1d_0_weights_2_0_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_conv1d_0_conv1d_0_biases_ROM_AUTO_1R RTLNAME gesture_model_conv1d_0_conv1d_0_biases_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME batch_normalization_0 MODELNAME batch_normalization_0 RTLNAME gesture_model_batch_normalization_0
    SUBMODULES {
      {MODELNAME gesture_model_fsub_32ns_32ns_32_4_full_dsp_1 RTLNAME gesture_model_fsub_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_fdiv_32ns_32ns_32_9_no_dsp_1 RTLNAME gesture_model_fdiv_32ns_32ns_32_9_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 8 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_fsqrt_32ns_32ns_32_8_no_dsp_1 RTLNAME gesture_model_fsqrt_32ns_32ns_32_8_no_dsp_1 BINDTYPE op TYPE fsqrt IMPL fabric LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batch_normalization_0_batch_norm_0_gamma_ROM_AUTO_1R RTLNAME gesture_model_batch_normalization_0_batch_norm_0_gamma_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batch_normalization_0_batch_norm_0_mean_ROM_AUTO_1R RTLNAME gesture_model_batch_normalization_0_batch_norm_0_mean_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batch_normalization_0_batch_norm_0_variance_ROM_AUTO_1R RTLNAME gesture_model_batch_normalization_0_batch_norm_0_variance_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batch_normalization_0_batch_norm_0_beta_ROM_AUTO_1R RTLNAME gesture_model_batch_normalization_0_batch_norm_0_beta_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_flow_control_loop_delay_pipe RTLNAME gesture_model_flow_control_loop_delay_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME gesture_model_flow_control_loop_delay_pipe_U}
    }
  }
  {SRCNAME max_pooling1d_0 MODELNAME max_pooling1d_0 RTLNAME gesture_model_max_pooling1d_0}
  {SRCNAME Loop_VITIS_LOOP_77_1_proc MODELNAME Loop_VITIS_LOOP_77_1_proc RTLNAME gesture_model_Loop_VITIS_LOOP_77_1_proc}
  {SRCNAME dense_0 MODELNAME dense_0 RTLNAME gesture_model_dense_0
    SUBMODULES {
      {MODELNAME gesture_model_dense_0_dense_0_biases_ROM_AUTO_1R RTLNAME gesture_model_dense_0_dense_0_biases_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_0_dense_0_weights_ROM_AUTO_1R RTLNAME gesture_model_dense_0_dense_0_weights_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME batch_normalization_1 MODELNAME batch_normalization_1 RTLNAME gesture_model_batch_normalization_1
    SUBMODULES {
      {MODELNAME gesture_model_batch_normalization_1_batch_norm_1_gamma_ROM_AUTO_1R RTLNAME gesture_model_batch_normalization_1_batch_norm_1_gamma_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batch_normalization_1_batch_norm_1_mean_ROM_AUTO_1R RTLNAME gesture_model_batch_normalization_1_batch_norm_1_mean_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batch_normalization_1_batch_norm_1_variance_ROM_AUTO_1R RTLNAME gesture_model_batch_normalization_1_batch_norm_1_variance_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batch_normalization_1_batch_norm_1_beta_ROM_AUTO_1R RTLNAME gesture_model_batch_normalization_1_batch_norm_1_beta_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense_1_Pipeline_VITIS_LOOP_109_1 MODELNAME dense_1_Pipeline_VITIS_LOOP_109_1 RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1
    SUBMODULES {
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_0_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_0_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_1_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_2_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_2_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_3_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_3_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_4_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_4_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_5_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_5_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_6_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_6_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_7_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_7_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_8_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_8_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_9_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_9_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_10_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_10_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_11_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_11_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_12_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_12_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_13_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_13_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_14_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_14_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_15_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_15_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_biases_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_biases_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_flow_control_loop_pipe_sequential_init RTLNAME gesture_model_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME gesture_model_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME dense_1_Pipeline_VITIS_LOOP_120_3 MODELNAME dense_1_Pipeline_VITIS_LOOP_120_3 RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_120_3}
  {SRCNAME dense_1_Pipeline_VITIS_LOOP_124_4 MODELNAME dense_1_Pipeline_VITIS_LOOP_124_4 RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_124_4}
  {SRCNAME dense_1 MODELNAME dense_1 RTLNAME gesture_model_dense_1
    SUBMODULES {
      {MODELNAME gesture_model_fptrunc_64ns_32_2_no_dsp_1 RTLNAME gesture_model_fptrunc_64ns_32_2_no_dsp_1 BINDTYPE op TYPE fptrunc IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_fpext_32ns_64_2_no_dsp_1 RTLNAME gesture_model_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dexp_64ns_64ns_64_13_full_dsp_1 RTLNAME gesture_model_dexp_64ns_64ns_64_13_full_dsp_1 BINDTYPE op TYPE dexp IMPL fulldsp LATENCY 12 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Loop_VITIS_LOOP_171_3_proc9 MODELNAME Loop_VITIS_LOOP_171_3_proc9 RTLNAME gesture_model_Loop_VITIS_LOOP_171_3_proc9}
  {SRCNAME gesture_model MODELNAME gesture_model RTLNAME gesture_model IS_TOP 1
    SUBMODULES {
      {MODELNAME gesture_model_input_0_RAM_AUTO_1R1W_memcore RTLNAME gesture_model_input_0_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_input_0_RAM_AUTO_1R1W RTLNAME gesture_model_input_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_output_RAM_AUTO_1R1W_memcore RTLNAME gesture_model_output_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_output_RAM_AUTO_1R1W RTLNAME gesture_model_output_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_conv1d_out_0_RAM_AUTO_1R1W_memcore RTLNAME gesture_model_conv1d_out_0_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_conv1d_out_0_RAM_AUTO_1R1W RTLNAME gesture_model_conv1d_out_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batch_norm_out_0_RAM_AUTO_1R1W_memcore RTLNAME gesture_model_batch_norm_out_0_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batch_norm_out_0_RAM_AUTO_1R1W RTLNAME gesture_model_batch_norm_out_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_max_pool_out_0_RAM_AUTO_1R1W_memcore RTLNAME gesture_model_max_pool_out_0_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_max_pool_out_0_RAM_AUTO_1R1W RTLNAME gesture_model_max_pool_out_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_out_0_RAM_AUTO_1R1W_memcore RTLNAME gesture_model_dense_out_0_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_out_0_RAM_AUTO_1R1W RTLNAME gesture_model_dense_out_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batch_norm_out_1_RAM_AUTO_1R1W_memcore RTLNAME gesture_model_batch_norm_out_1_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batch_norm_out_1_RAM_AUTO_1R1W RTLNAME gesture_model_batch_norm_out_1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_control_s_axi RTLNAME gesture_model_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
