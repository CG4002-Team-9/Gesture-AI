#include <iostream>

#include "myproject.h"
#include "parameters.h"

// hls-fpga-machine-learning insert namespace-start

void myproject(
    input_t input_1[N_INPUT_1_1*N_INPUT_2_1],
    result_t layer18_out[N_LAYER_17]
) {

    // hls-fpga-machine-learning insert IO
    #pragma HLS ARRAY_RESHAPE variable=input_1 complete dim=0
    #pragma HLS ARRAY_PARTITION variable=layer18_out complete dim=0
    #pragma HLS INTERFACE ap_vld port=input_1,layer18_out 
    #pragma HLS DATAFLOW 

    // hls-fpga-machine-learning insert load weights
        nnet::load_weights_from_txt<conv1d_weight_t, 48>(w2, "w2.txt");
        nnet::load_weights_from_txt<conv1d_bias_t, 16>(b2, "b2.txt");
        nnet::load_weights_from_txt<batch_normalization_scale_t, 16>(s4, "s4.txt");
        nnet::load_weights_from_txt<batch_normalization_bias_t, 16>(b4, "b4.txt");
        nnet::load_weights_from_txt<conv1d_1_weight_t, 1536>(w6, "w6.txt");
        nnet::load_weights_from_txt<conv1d_1_bias_t, 32>(b6, "b6.txt");
        nnet::load_weights_from_txt<batch_normalization_1_scale_t, 32>(s8, "s8.txt");
        nnet::load_weights_from_txt<batch_normalization_1_bias_t, 32>(b8, "b8.txt");
        nnet::load_weights_from_txt<dense_weight_t, 57344>(w11, "w11.txt");
        nnet::load_weights_from_txt<dense_bias_t, 64>(b11, "b11.txt");
        nnet::load_weights_from_txt<batch_normalization_2_scale_t, 64>(s13, "s13.txt");
        nnet::load_weights_from_txt<batch_normalization_2_bias_t, 64>(b13, "b13.txt");
        nnet::load_weights_from_txt<dense_1_weight_t, 2048>(w14, "w14.txt");
        nnet::load_weights_from_txt<dense_1_bias_t, 32>(b14, "b14.txt");
        nnet::load_weights_from_txt<batch_normalization_3_scale_t, 32>(s16, "s16.txt");
        nnet::load_weights_from_txt<batch_normalization_3_bias_t, 32>(b16, "b16.txt");
        nnet::load_weights_from_txt<dense_2_weight_t, 640>(w17, "w17.txt");
        nnet::load_weights_from_txt<dense_2_bias_t, 20>(b17, "b17.txt");

    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    // hls-fpga-machine-learning insert layers

    layer2_t layer2_out[N_OUTPUTS_2*N_FILT_2];
    #pragma HLS ARRAY_PARTITION variable=layer2_out complete dim=0
    nnet::conv_1d_cl<input_t, layer2_t, config2>(input_1, layer2_out, w2, b2); // conv1d

    layer3_t layer3_out[N_OUTPUTS_2*N_FILT_2];
    #pragma HLS ARRAY_PARTITION variable=layer3_out complete dim=0
    nnet::relu<layer2_t, layer3_t, relu_config3>(layer2_out, layer3_out); // conv1d_relu

    layer4_t layer4_out[N_OUTPUTS_2*N_FILT_2];
    #pragma HLS ARRAY_PARTITION variable=layer4_out complete dim=0
    nnet::normalize<layer3_t, layer4_t, config4>(layer3_out, layer4_out, s4, b4); // batch_normalization

    layer5_t layer5_out[N_OUTPUTS_5*N_FILT_5];
    #pragma HLS ARRAY_PARTITION variable=layer5_out complete dim=0
    nnet::pooling1d_cl<layer4_t, layer5_t, config5>(layer4_out, layer5_out); // max_pooling1d

    layer6_t layer6_out[N_OUTPUTS_6*N_FILT_6];
    #pragma HLS ARRAY_PARTITION variable=layer6_out complete dim=0
    nnet::conv_1d_cl<layer5_t, layer6_t, config6>(layer5_out, layer6_out, w6, b6); // conv1d_1

    layer7_t layer7_out[N_OUTPUTS_6*N_FILT_6];
    #pragma HLS ARRAY_PARTITION variable=layer7_out complete dim=0
    nnet::relu<layer6_t, layer7_t, relu_config7>(layer6_out, layer7_out); // conv1d_1_relu

    layer8_t layer8_out[N_OUTPUTS_6*N_FILT_6];
    #pragma HLS ARRAY_PARTITION variable=layer8_out complete dim=0
    nnet::normalize<layer7_t, layer8_t, config8>(layer7_out, layer8_out, s8, b8); // batch_normalization_1

    layer9_t layer9_out[N_OUTPUTS_9*N_FILT_9];
    #pragma HLS ARRAY_PARTITION variable=layer9_out complete dim=0
    nnet::pooling1d_cl<layer8_t, layer9_t, config9>(layer8_out, layer9_out); // max_pooling1d_1

    auto& layer10_out = layer9_out;
    layer11_t layer11_out[N_LAYER_11];
    #pragma HLS ARRAY_PARTITION variable=layer11_out complete dim=0
    nnet::dense<layer9_t, layer11_t, config11>(layer10_out, layer11_out, w11, b11); // dense

    layer12_t layer12_out[N_LAYER_11];
    #pragma HLS ARRAY_PARTITION variable=layer12_out complete dim=0
    nnet::relu<layer11_t, layer12_t, relu_config12>(layer11_out, layer12_out); // dense_relu

    layer13_t layer13_out[N_LAYER_11];
    #pragma HLS ARRAY_PARTITION variable=layer13_out complete dim=0
    nnet::normalize<layer12_t, layer13_t, config13>(layer12_out, layer13_out, s13, b13); // batch_normalization_2

    layer14_t layer14_out[N_LAYER_14];
    #pragma HLS ARRAY_PARTITION variable=layer14_out complete dim=0
    nnet::dense<layer13_t, layer14_t, config14>(layer13_out, layer14_out, w14, b14); // dense_1

    layer15_t layer15_out[N_LAYER_14];
    #pragma HLS ARRAY_PARTITION variable=layer15_out complete dim=0
    nnet::relu<layer14_t, layer15_t, relu_config15>(layer14_out, layer15_out); // dense_1_relu

    layer16_t layer16_out[N_LAYER_14];
    #pragma HLS ARRAY_PARTITION variable=layer16_out complete dim=0
    nnet::normalize<layer15_t, layer16_t, config16>(layer15_out, layer16_out, s16, b16); // batch_normalization_3

    layer17_t layer17_out[N_LAYER_17];
    #pragma HLS ARRAY_PARTITION variable=layer17_out complete dim=0
    nnet::dense<layer16_t, layer17_t, config17>(layer16_out, layer17_out, w17, b17); // dense_2

    nnet::softmax<layer17_t, result_t, softmax_config18>(layer17_out, layer18_out); // dense_2_softmax

}

// hls-fpga-machine-learning insert namespace-end
