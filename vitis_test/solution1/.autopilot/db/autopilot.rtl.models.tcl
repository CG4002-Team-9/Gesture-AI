set SynModuleInfo {
  {SRCNAME Loop_VITIS_LOOP_149_1_proc8 MODELNAME Loop_VITIS_LOOP_149_1_proc8 RTLNAME gesture_model_Loop_VITIS_LOOP_149_1_proc8
    SUBMODULES {
      {MODELNAME gesture_model_regslice_both RTLNAME gesture_model_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME gesture_model_regslice_both_U}
      {MODELNAME gesture_model_flow_control_loop_pipe RTLNAME gesture_model_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME gesture_model_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME conv1d_0 MODELNAME conv1d_0 RTLNAME gesture_model_conv1d_0
    SUBMODULES {
      {MODELNAME gesture_model_mul_mul_16s_8s_24_4_1 RTLNAME gesture_model_mul_mul_16s_8s_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_mac_muladd_16s_8s_24ns_24_4_1 RTLNAME gesture_model_mac_muladd_16s_8s_24ns_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_conv1d_0_conv1d_0_weights_V_0_0_ROM_AUTO_1R RTLNAME gesture_model_conv1d_0_conv1d_0_weights_V_0_0_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_conv1d_0_conv1d_0_weights_V_1_0_ROM_AUTO_1R RTLNAME gesture_model_conv1d_0_conv1d_0_weights_V_1_0_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_conv1d_0_conv1d_0_weights_V_2_0_ROM_AUTO_1R RTLNAME gesture_model_conv1d_0_conv1d_0_weights_V_2_0_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_conv1d_0_conv1d_0_biases_V_ROM_AUTO_1R RTLNAME gesture_model_conv1d_0_conv1d_0_biases_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME batch_normalization_0 MODELNAME batch_normalization_0 RTLNAME gesture_model_batch_normalization_0
    SUBMODULES {
      {MODELNAME gesture_model_dsqrt_64ns_64ns_64_21_no_dsp_1 RTLNAME gesture_model_dsqrt_64ns_64ns_64_21_no_dsp_1 BINDTYPE op TYPE dsqrt IMPL fabric LATENCY 20 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_sdiv_24ns_16s_24_28_1 RTLNAME gesture_model_sdiv_24ns_16s_24_28_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 27 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_mac_muladd_24s_9ns_15s_24_4_1 RTLNAME gesture_model_mac_muladd_24s_9ns_15s_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batch_normalization_0_batch_norm_0_mean_V_ROM_AUTO_1R RTLNAME gesture_model_batch_normalization_0_batch_norm_0_mean_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batch_normalization_0_batch_norm_0_variance_V_ROM_AUTO_1R RTLNAME gesture_model_batch_normalization_0_batch_norm_0_variance_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batch_normalization_0_batch_norm_0_gamma_V_ROM_AUTO_1R RTLNAME gesture_model_batch_normalization_0_batch_norm_0_gamma_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batch_normalization_0_batch_norm_0_beta_V_ROM_AUTO_1R RTLNAME gesture_model_batch_normalization_0_batch_norm_0_beta_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_frp_fifoout RTLNAME gesture_model_frp_fifoout BINDTYPE interface TYPE internal_frp_fifoout}
      {MODELNAME gesture_model_frp_pipeline_valid RTLNAME gesture_model_frp_pipeline_valid BINDTYPE interface TYPE internal_frp_validbits INSTNAME gesture_model_frp_pipeline_valid_U}
      {MODELNAME gesture_model_flow_control_loop_delay_pipe RTLNAME gesture_model_flow_control_loop_delay_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME gesture_model_flow_control_loop_delay_pipe_U}
    }
  }
  {SRCNAME max_pooling1d_0 MODELNAME max_pooling1d_0 RTLNAME gesture_model_max_pooling1d_0}
  {SRCNAME Loop_VITIS_LOOP_79_1_proc MODELNAME Loop_VITIS_LOOP_79_1_proc RTLNAME gesture_model_Loop_VITIS_LOOP_79_1_proc}
  {SRCNAME dense_0 MODELNAME dense_0 RTLNAME gesture_model_dense_0
    SUBMODULES {
      {MODELNAME gesture_model_mac_muladd_16s_7s_24s_24_4_1 RTLNAME gesture_model_mac_muladd_16s_7s_24s_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_0_dense_0_biases_V_ROM_AUTO_1R RTLNAME gesture_model_dense_0_dense_0_biases_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_0_dense_0_weights_V_ROM_AUTO_1R RTLNAME gesture_model_dense_0_dense_0_weights_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME batch_normalization_1 MODELNAME batch_normalization_1 RTLNAME gesture_model_batch_normalization_1
    SUBMODULES {
      {MODELNAME gesture_model_mac_muladd_24s_10ns_16s_24_4_1 RTLNAME gesture_model_mac_muladd_24s_10ns_16s_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batch_normalization_1_batch_norm_1_mean_V_ROM_AUTO_1R RTLNAME gesture_model_batch_normalization_1_batch_norm_1_mean_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batch_normalization_1_batch_norm_1_variance_V_ROM_AUTO_1R RTLNAME gesture_model_batch_normalization_1_batch_norm_1_variance_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batch_normalization_1_batch_norm_1_gamma_V_ROM_AUTO_1R RTLNAME gesture_model_batch_normalization_1_batch_norm_1_gamma_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batch_normalization_1_batch_norm_1_beta_V_ROM_AUTO_1R RTLNAME gesture_model_batch_normalization_1_batch_norm_1_beta_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense_1_Pipeline_VITIS_LOOP_111_1 MODELNAME dense_1_Pipeline_VITIS_LOOP_111_1 RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1
    SUBMODULES {
      {MODELNAME gesture_model_mul_mul_16s_9s_24_4_1 RTLNAME gesture_model_mul_mul_16s_9s_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_mac_muladd_16s_9s_24ns_24_4_1 RTLNAME gesture_model_mac_muladd_16s_9s_24ns_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_0_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_0_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_1_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_2_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_2_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_3_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_3_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_4_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_4_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_5_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_5_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_6_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_6_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_7_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_7_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_8_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_8_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_9_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_9_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_10_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_10_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_11_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_11_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_12_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_12_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_13_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_13_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_14_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_14_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_15_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_15_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_biases_V_ROM_AUTO_1R RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_biases_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_flow_control_loop_pipe_sequential_init RTLNAME gesture_model_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME gesture_model_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME dense_1_Pipeline_VITIS_LOOP_122_3 MODELNAME dense_1_Pipeline_VITIS_LOOP_122_3 RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_122_3}
  {SRCNAME dense_1_Pipeline_VITIS_LOOP_126_4 MODELNAME dense_1_Pipeline_VITIS_LOOP_126_4 RTLNAME gesture_model_dense_1_Pipeline_VITIS_LOOP_126_4
    SUBMODULES {
      {MODELNAME gesture_model_sdiv_24ns_16s_16_28_1 RTLNAME gesture_model_sdiv_24ns_16s_16_28_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 27 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense_1 MODELNAME dense_1 RTLNAME gesture_model_dense_1
    SUBMODULES {
      {MODELNAME gesture_model_dexp_64ns_64ns_64_13_full_dsp_1 RTLNAME gesture_model_dexp_64ns_64ns_64_13_full_dsp_1 BINDTYPE op TYPE dexp IMPL fulldsp LATENCY 12 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Loop_VITIS_LOOP_166_3_proc9 MODELNAME Loop_VITIS_LOOP_166_3_proc9 RTLNAME gesture_model_Loop_VITIS_LOOP_166_3_proc9}
  {SRCNAME gesture_model MODELNAME gesture_model RTLNAME gesture_model IS_TOP 1
    SUBMODULES {
      {MODELNAME gesture_model_input_V_0_RAM_AUTO_1R1W_memcore RTLNAME gesture_model_input_V_0_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_input_V_0_RAM_AUTO_1R1W RTLNAME gesture_model_input_V_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_output_V_RAM_AUTO_1R1W_memcore RTLNAME gesture_model_output_V_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_output_V_RAM_AUTO_1R1W RTLNAME gesture_model_output_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_conv1d_out_0_V_RAM_AUTO_1R1W_memcore RTLNAME gesture_model_conv1d_out_0_V_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_conv1d_out_0_V_RAM_AUTO_1R1W RTLNAME gesture_model_conv1d_out_0_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batch_norm_out_0_V_RAM_AUTO_1R1W_memcore RTLNAME gesture_model_batch_norm_out_0_V_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batch_norm_out_0_V_RAM_AUTO_1R1W RTLNAME gesture_model_batch_norm_out_0_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_max_pool_out_0_V_RAM_AUTO_1R1W_memcore RTLNAME gesture_model_max_pool_out_0_V_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_max_pool_out_0_V_RAM_AUTO_1R1W RTLNAME gesture_model_max_pool_out_0_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_out_0_V_RAM_AUTO_1R1W_memcore RTLNAME gesture_model_dense_out_0_V_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_out_0_V_RAM_AUTO_1R1W RTLNAME gesture_model_dense_out_0_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batch_norm_out_1_V_RAM_AUTO_1R1W_memcore RTLNAME gesture_model_batch_norm_out_1_V_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batch_norm_out_1_V_RAM_AUTO_1R1W RTLNAME gesture_model_batch_norm_out_1_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_control_s_axi RTLNAME gesture_model_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
