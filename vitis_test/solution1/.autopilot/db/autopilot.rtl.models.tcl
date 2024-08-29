set SynModuleInfo {
  {SRCNAME conv1d_0 MODELNAME conv1d_0 RTLNAME gesture_model_conv1d_0
    SUBMODULES {
      {MODELNAME gesture_model_mul_mul_16s_5ns_22_4_1 RTLNAME gesture_model_mul_mul_16s_5ns_22_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_mac_muladd_16s_7ns_22s_24_4_1 RTLNAME gesture_model_mac_muladd_16s_7ns_22s_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_mac_muladd_16s_7s_24s_24_4_1 RTLNAME gesture_model_mac_muladd_16s_7s_24s_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_mac_muladd_16s_8s_24ns_24_4_1 RTLNAME gesture_model_mac_muladd_16s_8s_24ns_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_mac_muladd_16s_5ns_24s_24_4_1 RTLNAME gesture_model_mac_muladd_16s_5ns_24s_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_mac_muladd_16s_6ns_24s_24_4_1 RTLNAME gesture_model_mac_muladd_16s_6ns_24s_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_flow_control_loop_pipe RTLNAME gesture_model_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME gesture_model_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME batchnorm_1 MODELNAME batchnorm_1 RTLNAME gesture_model_batchnorm_1
    SUBMODULES {
      {MODELNAME gesture_model_sdiv_24ns_1ns_24_28_1 RTLNAME gesture_model_sdiv_24ns_1ns_24_28_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 27 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_mac_muladd_24s_9ns_15s_24_4_1 RTLNAME gesture_model_mac_muladd_24s_9ns_15s_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batchnorm_1_bn_moving_mean_1_V_ROM_AUTO_1R RTLNAME gesture_model_batchnorm_1_bn_moving_mean_1_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batchnorm_1_bn_gamma_1_V_ROM_AUTO_1R RTLNAME gesture_model_batchnorm_1_bn_gamma_1_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batchnorm_1_bn_beta_1_V_ROM_AUTO_1R RTLNAME gesture_model_batchnorm_1_bn_beta_1_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME maxpool1d_2 MODELNAME maxpool1d_2 RTLNAME gesture_model_maxpool1d_2}
  {SRCNAME Loop_VITIS_LOOP_42_1_proc MODELNAME Loop_VITIS_LOOP_42_1_proc RTLNAME gesture_model_Loop_VITIS_LOOP_42_1_proc}
  {SRCNAME dense_4 MODELNAME dense_4 RTLNAME gesture_model_dense_4
    SUBMODULES {
      {MODELNAME gesture_model_dense_4_dense_biases_4_V_ROM_AUTO_1R RTLNAME gesture_model_dense_4_dense_biases_4_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_4_dense_weights_4_V_ROM_AUTO_1R RTLNAME gesture_model_dense_4_dense_weights_4_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {sqrt_fixed<17, 9>} MODELNAME sqrt_fixed_17_9_s RTLNAME gesture_model_sqrt_fixed_17_9_s}
  {SRCNAME batchnorm_5 MODELNAME batchnorm_5 RTLNAME gesture_model_batchnorm_5
    SUBMODULES {
      {MODELNAME gesture_model_sdiv_24ns_10ns_24_28_1 RTLNAME gesture_model_sdiv_24ns_10ns_24_28_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 27 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_mac_muladd_24s_10ns_16s_24_4_1 RTLNAME gesture_model_mac_muladd_24s_10ns_16s_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batchnorm_5_bn_moving_mean_5_V_ROM_AUTO_1R RTLNAME gesture_model_batchnorm_5_bn_moving_mean_5_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batchnorm_5_bn_moving_variance_5_V_ROM_AUTO_1R RTLNAME gesture_model_batchnorm_5_bn_moving_variance_5_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batchnorm_5_bn_gamma_5_V_ROM_AUTO_1R RTLNAME gesture_model_batchnorm_5_bn_gamma_5_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_batchnorm_5_bn_beta_5_V_ROM_AUTO_1R RTLNAME gesture_model_batchnorm_5_bn_beta_5_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_flow_control_loop_delay_pipe RTLNAME gesture_model_flow_control_loop_delay_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME gesture_model_flow_control_loop_delay_pipe_U}
    }
  }
  {SRCNAME {exp<17, 9>} MODELNAME exp_17_9_s RTLNAME gesture_model_exp_17_9_s
    SUBMODULES {
      {MODELNAME gesture_model_mul_25ns_25ns_50_1_1 RTLNAME gesture_model_mul_25ns_25ns_50_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_mul_mul_25ns_18ns_43_4_1 RTLNAME gesture_model_mul_mul_25ns_18ns_43_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_exp_17_9_s_f_x_lsb_table_V_ROM_AUTO_1R RTLNAME gesture_model_exp_17_9_s_f_x_lsb_table_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_exp_17_9_s_exp_x_msb_2_m_1_table_V_ROM_AUTO_1R RTLNAME gesture_model_exp_17_9_s_exp_x_msb_2_m_1_table_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_exp_17_9_s_exp_x_msb_1_table_V_ROM_AUTO_1R RTLNAME gesture_model_exp_17_9_s_exp_x_msb_1_table_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense_output_7_Pipeline_VITIS_LOOP_67_1 MODELNAME dense_output_7_Pipeline_VITIS_LOOP_67_1 RTLNAME gesture_model_dense_output_7_Pipeline_VITIS_LOOP_67_1
    SUBMODULES {
      {MODELNAME gesture_model_mul_mul_16s_9s_24_4_1 RTLNAME gesture_model_mul_mul_16s_9s_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_mac_muladd_16s_9s_24ns_24_4_1 RTLNAME gesture_model_mac_muladd_16s_9s_24ns_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_output_7_Pipeline_VITIS_LOOP_67_1_dense_weights_7_V_ROM_AUTO_1R RTLNAME gesture_model_dense_output_7_Pipeline_VITIS_LOOP_67_1_dense_weights_7_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_output_7_Pipeline_VITIS_LOOP_67_1_dense_biases_7_V_ROM_AUTO_1R RTLNAME gesture_model_dense_output_7_Pipeline_VITIS_LOOP_67_1_dense_biases_7_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_flow_control_loop_pipe_sequential_init RTLNAME gesture_model_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME gesture_model_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME dense_output_7 MODELNAME dense_output_7 RTLNAME gesture_model_dense_output_7}
  {SRCNAME softmax_7_Pipeline_VITIS_LOOP_79_1 MODELNAME softmax_7_Pipeline_VITIS_LOOP_79_1 RTLNAME gesture_model_softmax_7_Pipeline_VITIS_LOOP_79_1}
  {SRCNAME softmax_7_Pipeline_VITIS_LOOP_82_2 MODELNAME softmax_7_Pipeline_VITIS_LOOP_82_2 RTLNAME gesture_model_softmax_7_Pipeline_VITIS_LOOP_82_2
    SUBMODULES {
      {MODELNAME gesture_model_sdiv_24ns_16s_16_28_1 RTLNAME gesture_model_sdiv_24ns_16s_16_28_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 27 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME softmax_7 MODELNAME softmax_7 RTLNAME gesture_model_softmax_7}
  {SRCNAME gesture_model MODELNAME gesture_model RTLNAME gesture_model IS_TOP 1
    SUBMODULES {
      {MODELNAME gesture_model_conv1d_out_V_RAM_AUTO_1R1W_memcore RTLNAME gesture_model_conv1d_out_V_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_conv1d_out_V_RAM_AUTO_1R1W RTLNAME gesture_model_conv1d_out_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_bn1_out_V_RAM_AUTO_1R1W_memcore RTLNAME gesture_model_bn1_out_V_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_bn1_out_V_RAM_AUTO_1R1W RTLNAME gesture_model_bn1_out_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_maxpool_out_V_RAM_AUTO_1R1W_memcore RTLNAME gesture_model_maxpool_out_V_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_maxpool_out_V_RAM_AUTO_1R1W RTLNAME gesture_model_maxpool_out_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_flatten_out_V_RAM_AUTO_1R1W_memcore RTLNAME gesture_model_flatten_out_V_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_flatten_out_V_RAM_AUTO_1R1W RTLNAME gesture_model_flatten_out_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense1_out_V_RAM_AUTO_1R1W_memcore RTLNAME gesture_model_dense1_out_V_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense1_out_V_RAM_AUTO_1R1W RTLNAME gesture_model_dense1_out_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_bn2_out_V_RAM_AUTO_1R1W_memcore RTLNAME gesture_model_bn2_out_V_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_bn2_out_V_RAM_AUTO_1R1W RTLNAME gesture_model_bn2_out_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_output_out_V_RAM_AUTO_1R1W_memcore RTLNAME gesture_model_dense_output_out_V_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesture_model_dense_output_out_V_RAM_AUTO_1R1W RTLNAME gesture_model_dense_output_out_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
