#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "nnet_utils/nnet_types.h"
#include <cstddef>
#include <cstdio>

// hls-fpga-machine-learning insert numbers
#define N_INPUT_1_1 120
#define N_INPUT_2_1 1
#define N_OUTPUTS_2 118
#define N_FILT_2 16
#define N_OUTPUTS_2 118
#define N_FILT_2 16
#define N_OUTPUTS_2 118
#define N_FILT_2 16
#define N_OUTPUTS_5 59
#define N_FILT_5 16
#define N_OUTPUTS_6 57
#define N_FILT_6 32
#define N_OUTPUTS_6 57
#define N_FILT_6 32
#define N_OUTPUTS_6 57
#define N_FILT_6 32
#define N_OUTPUTS_9 28
#define N_FILT_9 32
#define N_SIZE_0_10 896
#define N_LAYER_11 64
#define N_LAYER_11 64
#define N_LAYER_11 64
#define N_LAYER_14 32
#define N_LAYER_14 32
#define N_LAYER_14 32
#define N_LAYER_17 20
#define N_LAYER_17 20

// hls-fpga-machine-learning insert namespace-start

// hls-fpga-machine-learning insert layer-precision
typedef ap_fixed<16,6> input_t;
typedef ap_fixed<16,6> model_default_t;
typedef ap_fixed<16,6> layer2_t;
typedef ap_fixed<16,6> conv1d_weight_t;
typedef ap_fixed<16,6> conv1d_bias_t;
typedef ap_fixed<16,6> layer3_t;
typedef ap_fixed<18,8> conv1d_relu_table_t;
typedef ap_fixed<16,6> layer4_t;
typedef ap_fixed<16,6> batch_normalization_scale_t;
typedef ap_fixed<16,6> batch_normalization_bias_t;
typedef ap_fixed<16,6> layer5_t;
typedef ap_fixed<16,6> layer6_t;
typedef ap_fixed<16,6> conv1d_1_weight_t;
typedef ap_fixed<16,6> conv1d_1_bias_t;
typedef ap_fixed<16,6> layer7_t;
typedef ap_fixed<18,8> conv1d_1_relu_table_t;
typedef ap_fixed<16,6> layer8_t;
typedef ap_fixed<16,6> batch_normalization_1_scale_t;
typedef ap_fixed<16,6> batch_normalization_1_bias_t;
typedef ap_fixed<16,6> layer9_t;
typedef ap_fixed<16,6> layer11_t;
typedef ap_fixed<16,6> dense_weight_t;
typedef ap_fixed<16,6> dense_bias_t;
typedef ap_uint<1> layer11_index;
typedef ap_fixed<16,6> layer12_t;
typedef ap_fixed<18,8> dense_relu_table_t;
typedef ap_fixed<16,6> layer13_t;
typedef ap_fixed<16,6> batch_normalization_2_scale_t;
typedef ap_fixed<16,6> batch_normalization_2_bias_t;
typedef ap_fixed<16,6> layer14_t;
typedef ap_fixed<16,6> dense_1_weight_t;
typedef ap_fixed<16,6> dense_1_bias_t;
typedef ap_uint<1> layer14_index;
typedef ap_fixed<16,6> layer15_t;
typedef ap_fixed<18,8> dense_1_relu_table_t;
typedef ap_fixed<16,6> layer16_t;
typedef ap_fixed<16,6> batch_normalization_3_scale_t;
typedef ap_fixed<16,6> batch_normalization_3_bias_t;
typedef ap_fixed<16,6> layer17_t;
typedef ap_fixed<16,6> dense_2_weight_t;
typedef ap_fixed<16,6> dense_2_bias_t;
typedef ap_uint<1> layer17_index;
typedef ap_fixed<16,6> result_t;
typedef ap_fixed<18,8> dense_2_softmax_table_t;
typedef ap_fixed<18,8,AP_RND,AP_SAT> dense_2_softmax_exp_table_t;
typedef ap_fixed<18,8,AP_RND,AP_SAT> dense_2_softmax_inv_table_t;

// hls-fpga-machine-learning insert namespace-end

#endif
