#include "../headers/defines.h"
#include "../headers/weights.h"
#include <hls_stream.h>
#include <math.h>

// Utility functions
float32_t relu(float32_t x) {
    return x > 0 ? x : 0;
}

float32_t sigmoid(float32_t x) {
    return 1 / (1 + exp(-x));
}

// Convolution Layer 1
void conv1d_layer1(hls::stream<float32_t> &out, hls::stream<float32_t> &in,
                   float32_t weight[CONV1D_KERNEL_SIZE][CONV1D_INPUT_CHANNELS][CONV1D_FILTERS],
                   float32_t bias[CONV1D_BIAS_SIZE]) {
    float32_t input_buffer[CONV1D_KERNEL_SIZE][CONV1D_INPUT_CHANNELS];
    float32_t sum;

    for (int i = 0; i < CONV1D_OUTPUT_SIZE; i++) {
        for (int filter = 0; filter < CONV1D_FILTERS; filter++) {
            sum = 0.0;
            for (int k = 0; k < CONV1D_KERNEL_SIZE; k++) {
                for (int ch = 0; ch < CONV1D_INPUT_CHANNELS; ch++) {
                    if (i + k < SEQUENCE_LENGTH) {
                        input_buffer[k][ch] = in.read();
                    } else {
                        input_buffer[k][ch] = 0.0;
                    }
                }
            }
            for (int k = 0; k < CONV1D_KERNEL_SIZE; k++) {
                for (int ch = 0; ch < CONV1D_INPUT_CHANNELS; ch++) {
                    sum += input_buffer[k][ch] * weight[k][ch][filter];
                }
            }
            out.write(relu(sum + bias[filter]));
        }
    }
}

// Batch Normalization Layer 1 for Conv1D
void batch_norm_layer1(hls::stream<float32_t> &out, hls::stream<float32_t> &in,
                       float32_t gamma[BATCH_NORMALIZATION_CHANNELS],
                       float32_t beta[BATCH_NORMALIZATION_CHANNELS],
                       float32_t mean[BATCH_NORMALIZATION_CHANNELS],
                       float32_t variance[BATCH_NORMALIZATION_CHANNELS],
                       float32_t epsilon = 1e-5) {
    
    for (int i = 0; i < CONV1D_OUTPUT_SIZE; i++) {
        for (int ch = 0; ch < BATCH_NORMALIZATION_CHANNELS; ch++) {
            float32_t input = in.read();
            float32_t normalized = (input - mean[ch]) / sqrt(variance[ch] + epsilon);
            out.write(gamma[ch] * normalized + beta[ch]);
        }
    }
}

// MaxPooling1D Layer 1
void max_pooling1d_layer1(hls::stream<float32_t> &out, hls::stream<float32_t> &in) {
    
    for (int i = 0; i < MAX_POOLING1D_OUTPUT_SIZE; i++) {
        for (int ch = 0; ch < CONV1D_FILTERS; ch++) {
            float32_t max_value = -INFINITY;
            for (int j = 0; j < MAX_POOLING1D_POOL_SIZE; j++) {
                float32_t input = in.read();
                if (input > max_value) {
                    max_value = input;
                }
            }
            out.write(max_value);
        }
    }
}

// Convolution Layer 2
void conv1d_layer2(hls::stream<float32_t> &out, hls::stream<float32_t> &in,
                   float32_t weight[CONV1D_1_KERNEL_SIZE][CONV1D_1_INPUT_CHANNELS][CONV1D_1_FILTERS],
                   float32_t bias[CONV1D_1_BIAS_SIZE]) {
    
    
    float32_t input_buffer[CONV1D_1_KERNEL_SIZE][CONV1D_1_INPUT_CHANNELS];
    float32_t sum;

    for (int i = 0; i < CONV1D_1_OUTPUT_SIZE; i++) {
        
        for (int filter = 0; filter < CONV1D_1_FILTERS; filter++) {
            sum = 0.0;
            for (int k = 0; k < CONV1D_1_KERNEL_SIZE; k++) {
                for (int ch = 0; ch < CONV1D_1_INPUT_CHANNELS; ch++) {
                    if (i + k < MAX_POOLING1D_OUTPUT_SIZE) {
                        input_buffer[k][ch] = in.read();
                    } else {
                        input_buffer[k][ch] = 0.0;
                    }
                }
            }
            for (int k = 0; k < CONV1D_1_KERNEL_SIZE; k++) {
                for (int ch = 0; ch < CONV1D_1_INPUT_CHANNELS; ch++) {
                    sum += input_buffer[k][ch] * weight[k][ch][filter];
                }
            }
            out.write(relu(sum + bias[filter]));
        }
    }
}

// Batch Normalization Layer 2 for Conv1D_1
void batch_norm_layer2(hls::stream<float32_t> &out, hls::stream<float32_t> &in,
                       float32_t gamma[BATCH_NORMALIZATION_1_CHANNELS],
                       float32_t beta[BATCH_NORMALIZATION_1_CHANNELS],
                       float32_t mean[BATCH_NORMALIZATION_1_CHANNELS],
                       float32_t variance[BATCH_NORMALIZATION_1_CHANNELS],
                       float32_t epsilon = 1e-5) {
    
    for (int i = 0; i < CONV1D_1_OUTPUT_SIZE; i++) {
        for (int ch = 0; ch < BATCH_NORMALIZATION_1_CHANNELS; ch++) {
            float32_t input = in.read();
            float32_t normalized = (input - mean[ch]) / sqrt(variance[ch] + epsilon);
            out.write(gamma[ch] * normalized + beta[ch]);
        }
    }
}

// MaxPooling1D Layer 2
void max_pooling1d_layer2(hls::stream<float32_t> &out, hls::stream<float32_t> &in) {
    
    for (int i = 0; i < MAX_POOLING1D_1_OUTPUT_SIZE; i++) {
        for (int ch = 0; ch < CONV1D_1_FILTERS; ch++) {
            float32_t max_value = -INFINITY;
            for (int j = 0; j < MAX_POOLING1D_1_POOL_SIZE; j++) {
                float32_t input = in.read();
                if (input > max_value) {
                    max_value = input;
                }
            }
            out.write(max_value);
        }
    }
}

// Flatten Layer
void flatten_layer(hls::stream<float32_t> &out, hls::stream<float32_t> &in) {
    
    for (int i = 0; i < DENSE_INPUT_SIZE; i++) {
        out.write(in.read());
    }
}

// Dense Layer 1
void dense_layer1(hls::stream<float32_t> &out, hls::stream<float32_t> &in,
                  float32_t weight[DENSE_INPUT_SIZE][DENSE_OUTPUT_SIZE],
                  float32_t bias[DENSE_OUTPUT_SIZE]) {
  
    
    float32_t input_buffer[DENSE_INPUT_SIZE];
    float32_t sum;

    for (int i = 0; i < DENSE_INPUT_SIZE; i++) {
        input_buffer[i] = in.read();
    }

    for (int j = 0; j < DENSE_OUTPUT_SIZE; j++) {
        sum = 0.0;
        for (int i = 0; i < DENSE_INPUT_SIZE; i++) {
            sum += input_buffer[i] * weight[i][j];
        }
        out.write(relu(sum + bias[j]));
    }
}

// Batch Normalization Layer 3 for Dense_1
void batch_norm_layer3(hls::stream<float32_t> &out, hls::stream<float32_t> &in,
                       float32_t gamma[BATCH_NORMALIZATION_2_CHANNELS],
                       float32_t beta[BATCH_NORMALIZATION_2_CHANNELS],
                       float32_t mean[BATCH_NORMALIZATION_2_CHANNELS],
                       float32_t variance[BATCH_NORMALIZATION_2_CHANNELS],
                       float32_t epsilon = 1e-5) {
    
    for (int i = 0; i < DENSE_OUTPUT_SIZE; i++) {
        float32_t input = in.read();
        float32_t normalized = (input - mean[i]) / sqrt(variance[i] + epsilon);
        out.write(gamma[i] * normalized + beta[i]);
    }
}

// Dense Layer 2
void dense_layer2(hls::stream<float32_t> &out, hls::stream<float32_t> &in,
                  float32_t weight[DENSE_1_INPUT_SIZE][DENSE_1_OUTPUT_SIZE],
                  float32_t bias[DENSE_1_OUTPUT_SIZE]) {
  
    
    float32_t input_buffer[DENSE_1_INPUT_SIZE];
    float32_t sum;

    for (int i = 0; i < DENSE_1_INPUT_SIZE; i++) {
        input_buffer[i] = in.read();
    }

    for (int j = 0; j < DENSE_1_OUTPUT_SIZE; j++) {
        sum = 0.0;
        for (int i = 0; i < DENSE_1_INPUT_SIZE; i++) {
            sum += input_buffer[i] * weight[i][j];
        }
        out.write(relu(sum + bias[j]));
    }
}

// Batch Normalization Layer 4 for Dense_2
void batch_norm_layer4(hls::stream<float32_t> &out, hls::stream<float32_t> &in,
                       float32_t gamma[BATCH_NORMALIZATION_3_CHANNELS],
                       float32_t beta[BATCH_NORMALIZATION_3_CHANNELS],
                       float32_t mean[BATCH_NORMALIZATION_3_CHANNELS],
                       float32_t variance[BATCH_NORMALIZATION_3_CHANNELS],
                       float32_t epsilon = 1e-5) {
    
    for (int i = 0; i < DENSE_1_OUTPUT_SIZE; i++) {
        float32_t input = in.read();
        float32_t normalized = (input - mean[i]) / sqrt(variance[i] + epsilon);
        out.write(gamma[i] * normalized + beta[i]);
    }
}

// Dropout Layer before Dense 2 (Placeholder)
void dropout_layer(hls::stream<float32_t> &out, hls::stream<float32_t> &in, float dropout_rate = 0.2) {
    // In hardware implementations, dropout is typically not used during inference.
    // This placeholder simulates the dropout layer but does not alter the stream.
    for (int i = 0; i < DENSE_1_OUTPUT_SIZE; i++) {
        out.write(in.read());
    }
}

// Final Dense Layer (Dense_2)
void dense_layer3(hls::stream<float32_t> &out, hls::stream<float32_t> &in,
                  float32_t weight[DENSE_2_INPUT_SIZE][DENSE_2_OUTPUT_SIZE],
                  float32_t bias[DENSE_2_OUTPUT_SIZE]) {
  
    
    float32_t input_buffer[DENSE_2_INPUT_SIZE];
    float32_t sum;

    for (int i = 0; i < DENSE_2_INPUT_SIZE; i++) {
        input_buffer[i] = in.read();
    }

    for (int j = 0; j < DENSE_2_OUTPUT_SIZE; j++) {
        sum = 0.0;
        for (int i = 0; i < DENSE_2_INPUT_SIZE; i++) {
            sum += input_buffer[i] * weight[i][j];
        }
        out.write(sigmoid(sum + bias[j])); // Assuming softmax is applied outside or use sigmoid for binary classification
    }
}

void nnet(hls::stream<float32_t> &data_in, hls::stream<float32_t> &data_out) {
    hls::stream<float32_t> conv_out("conv_out");
    hls::stream<float32_t> batchnorm_out("batchnorm_out");
    hls::stream<float32_t> pool_out("pool_out");
    hls::stream<float32_t> flatten_out("flatten_out");
    hls::stream<float32_t> dense_out1("dense_out1");
    hls::stream<float32_t> batchnorm_out2("batchnorm_out2");
    hls::stream<float32_t> dropout_out("dropout_out");
    hls::stream<float32_t> dense_out2("dense_out2");

    // First Conv Block
    conv1d_layer1(conv_out, data_in, conv1d_kernel, conv1d_bias);
    batch_norm_layer1(batchnorm_out, conv_out, batch_normalization_gamma, batch_normalization_beta, batch_normalization_mean, batch_normalization_variance);
    max_pooling1d_layer1(pool_out, batchnorm_out);

    // Second Conv Block
    conv1d_layer2(conv_out, pool_out, conv1d_1_kernel, conv1d_1_bias);
    batch_norm_layer2(batchnorm_out, conv_out, batch_normalization_1_gamma, batch_normalization_1_beta, batch_normalization_1_mean, batch_normalization_1_variance);
    max_pooling1d_layer2(pool_out, batchnorm_out);

    // Flatten
    flatten_layer(flatten_out, pool_out);

    // First Dense Block
    dense_layer1(dense_out1, flatten_out, dense_kernel, dense_bias);
    batch_norm_layer3(batchnorm_out2, dense_out1, batch_normalization_2_gamma, batch_normalization_2_beta, batch_normalization_2_mean, batch_normalization_2_variance);

    // Dropout
    dropout_layer(dropout_out, batchnorm_out2);

    // Second Dense Block
    dense_layer2(dense_out2, dropout_out, dense_1_kernel, dense_1_bias);
    batch_norm_layer4(dense_out2, dense_out2, batch_normalization_3_gamma, batch_normalization_3_beta, batch_normalization_3_mean, batch_normalization_3_variance);

    // Output Layer
    dense_layer3(data_out, dense_out2, dense_2_kernel, dense_2_bias);
}
