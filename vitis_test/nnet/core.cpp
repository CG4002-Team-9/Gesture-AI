#include "core.h"
#include "hls_stream.h"
#include "hls_math.h"
#include "ap_fixed.h"

// ReLU function
fixed_p relu(fixed_p x) {
    #pragma HLS INLINE
	return x > (fixed_p)0 ? x : (fixed_p)0;
}

// Conv1D Layer function
void conv1d_0(fixed_p input[SEQUENCE_LENGTH], fixed_p output[SEQUENCE_LENGTH - KERNEL_SIZE_0 + 1]) {
    for (int i = 0; i < SEQUENCE_LENGTH - KERNEL_SIZE_0 + 1; i++) {
        for (int j = 0; j < NUM_FILTERS_0; j++) {
            fixed_p sum = 0;
            for (int k = 0; k < KERNEL_SIZE_0; k++) {
                sum += input[i + k] * conv1d_weights_0[j * KERNEL_SIZE_0 + k];
            }
            output[i] = relu(sum + conv1d_biases_0[j]);
        }
    }
}

// BatchNormalization function for Layer 1
void batchnorm_1(fixed_p input[SEQUENCE_LENGTH - KERNEL_SIZE_0 + 1], fixed_p output[SEQUENCE_LENGTH - KERNEL_SIZE_0 + 1]) {
    for (int i = 0; i < SEQUENCE_LENGTH - KERNEL_SIZE_0 + 1; i++) {
        output[i] = bn_gamma_1[i] * ((input[i] - bn_moving_mean_1[i]) / hls::sqrt(bn_moving_variance_1[i] + fixed_p(1e-5))) + bn_beta_1[i];
    }
}

// MaxPooling1D Layer function
void maxpool1d_2(fixed_p input[SEQUENCE_LENGTH - KERNEL_SIZE_0 + 1], fixed_p output[(SEQUENCE_LENGTH - KERNEL_SIZE_0 + 1) / POOL_SIZE_2]) {
    for (int i = 0; i < (SEQUENCE_LENGTH - KERNEL_SIZE_0 + 1) / POOL_SIZE_2; i++) {
        output[i] = hls::max(input[2 * i], input[2 * i + 1]);
    }
}

// Flatten Layer function
void flatten_3(fixed_p input[(SEQUENCE_LENGTH - KERNEL_SIZE_0 + 1) / POOL_SIZE_2], fixed_p output[INPUT_UNITS_4]) {
    #pragma HLS INLINE
    for (int i = 0; i < INPUT_UNITS_4; i++) {
        output[i] = input[i];
    }
}

// Dense Layer function for Layer 4
void dense_4(fixed_p input[INPUT_UNITS_4], fixed_p output[OUTPUT_UNITS_4]) {
    for (int i = 0; i < OUTPUT_UNITS_4; i++) {
        fixed_p sum = 0;
        for (int j = 0; j < INPUT_UNITS_4; j++) {
            sum += input[j] * dense_weights_4[j * OUTPUT_UNITS_4 + i];
        }
        output[i] = relu(sum + dense_biases_4[i]);
    }
}

// BatchNormalization function for Layer 5
void batchnorm_5(fixed_p input[OUTPUT_UNITS_4], fixed_p output[OUTPUT_UNITS_4]) {
    for (int i = 0; i < OUTPUT_UNITS_4; i++) {
        output[i] = bn_gamma_5[i] * ((input[i] - bn_moving_mean_5[i]) / hls::sqrt(bn_moving_variance_5[i] + fixed_p(1e-5))) + bn_beta_5[i];
    }
}

// Dense Layer function for Output Layer 7
void dense_output_7(fixed_p input[OUTPUT_UNITS_4], fixed_p output[OUTPUT_UNITS_7]) {
    for (int i = 0; i < OUTPUT_UNITS_7; i++) {
        fixed_p sum = 0;
        for (int j = 0; j < OUTPUT_UNITS_4; j++) {
            sum += input[j] * dense_weights_7[j * OUTPUT_UNITS_7 + i];
        }
        output[i] = hls::exp(sum + dense_biases_7[i]);  // Softmax calculation to be done later
    }
}

// Softmax function for Output Layer 7
void softmax_7(fixed_p input[OUTPUT_UNITS_7], fixed_p output[OUTPUT_UNITS_7]) {
    fixed_p sum = 0;
    for (int i = 0; i < OUTPUT_UNITS_7; i++) {
        sum += input[i];
    }
    for (int i = 0; i < OUTPUT_UNITS_7; i++) {
        output[i] = input[i] / sum;
    }
}

// Top-level function
void gesture_model(fixed_p input[SEQUENCE_LENGTH], fixed_p output[OUTPUT_UNITS_7]) {

    fixed_p conv1d_out[SEQUENCE_LENGTH - KERNEL_SIZE_0 + 1];
    fixed_p bn1_out[SEQUENCE_LENGTH - KERNEL_SIZE_0 + 1];
    fixed_p maxpool_out[(SEQUENCE_LENGTH - KERNEL_SIZE_0 + 1) / POOL_SIZE_2];
    fixed_p flatten_out[INPUT_UNITS_4];
    fixed_p dense1_out[OUTPUT_UNITS_4];
    fixed_p bn2_out[OUTPUT_UNITS_4];
    fixed_p dense_output_out[OUTPUT_UNITS_7];

    #pragma HLS DATAFLOW

    // Apply Conv1D layer
    conv1d_0(input, conv1d_out);

    // Apply BatchNormalization after Conv1D
    batchnorm_1(conv1d_out, bn1_out);

    // Apply MaxPooling layer
    maxpool1d_2(bn1_out, maxpool_out);

    // Apply Flatten layer
    flatten_3(maxpool_out, flatten_out);

    // Apply Dense layer
    dense_4(flatten_out, dense1_out);

    // Apply BatchNormalization after Dense
    batchnorm_5(dense1_out, bn2_out);

    // Apply Output Dense layer
    dense_output_7(bn2_out, dense_output_out);

    // Apply Softmax
    softmax_7(dense_output_out, output);
}
