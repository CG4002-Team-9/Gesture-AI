#include <iostream>
#include <cmath>
#include <hls_stream.h>
#include "core.h"

// declare epsilon for Batch Normalization
#define epsilon 0.001

// Custom abs function for fixed_p type
fixed_p custom_abs(fixed_p x)
{
#pragma HLS INLINE
    return (x < fixed_p(0)) ? fixed_p(-x) : x;
}

// ReLU function
fixed_p relu(fixed_p x)
{
#pragma HLS INLINE
    return x > fixed_p(0) ? x : fixed_p(0);
}

void conv1d_0(fixed_p input[120][1], fixed_p output[118][16])
{
    for (int i = 0; i < 118; i++) // Loop over output positions
    {
        for (int j = 0; j < 16; j++) // Loop over filters
        {
            fixed_p sum = 0;
            for (int k = 0; k < 3; k++) // Loop over the kernel size
            {
                for (int c = 0; c < 1; c++) // Loop over input channels
                {
                    sum += input[i + k][c] * conv1d_0_weights[k][c][j];
                }
            }
            output[i][j] = relu(sum + conv1d_0_biases[j]);
        }
    }
}

void batch_normalization_0(fixed_p input[118][16], fixed_p output[118][16])
{
    for (int i = 0; i < 118; i++) // Loop over time steps
    {
        for (int j = 0; j < 16; j++) // Loop over channels
        {
            output[i][j] = batch_norm_0_gamma[j] * ((input[i][j] - batch_norm_0_mean[j]) / (fixed_p)sqrt(batch_norm_0_variance[j] + (fixed_p)epsilon)) + batch_norm_0_beta[j];
        }
    }
}

void max_pooling1d_0(fixed_p input[118][16], fixed_p output[59][16])
{
    for (int i = 0; i < 59; i++) // Loop over output positions
    {
        for (int j = 0; j < 16; j++) // Loop over channels
        {
            fixed_p max_val = input[i * 2][j]; // Initialize max value
            for (int k = 1; k < 2; k++)        // Loop over pooling window
            {
                int idx = i * 2 + k;
                if (idx < 118) // Ensure within bounds
                {
                    max_val = (input[idx][j] > max_val) ? input[idx][j] : max_val;
                }
            }
            output[i][j] = max_val;
        }
    }
}

void flatten_0(fixed_p input[59][16], fixed_p output[944])
{
#pragma HLS INLINE
    int idx = 0;
    for (int i = 0; i < 59; i++)
    {
        for (int j = 0; j < 16; j++)
        {
            output[idx++] = input[i][j];
        }
    }
}

void dense_0(fixed_p input[944], fixed_p output[16])
{
    for (int i = 0; i < 16; i++)
    {
        fixed_p sum = 0;
        for (int j = 0; j < 944; j++)
        {
            sum += input[j] * dense_0_weights[j][i];
        }
        output[i] = relu(sum + dense_0_biases[i]); // Apply ReLU
    }
}

void batch_normalization_1(fixed_p input[16], fixed_p output[16])
{
    for (int i = 0; i < 16; i++) // Loop over neurons
    {
        output[i] = batch_norm_1_gamma[i] * ((input[i] - batch_norm_1_mean[i]) / (fixed_p)sqrt(batch_norm_1_variance[i] + (fixed_p)epsilon)) + batch_norm_1_beta[i];
    }
}

void dense_1(fixed_p input[16], fixed_p output[20])
{
    for (int i = 0; i < 20; i++)
    {
        fixed_p sum = 0;
        for (int j = 0; j < 16; j++)
        {
            sum += input[j] * dense_1_weights[j][i];
        }
        output[i] = sum + dense_1_biases[i]; // No ReLU before softmax
    }

    fixed_p softmax_sum = 0;
    for (int i = 0; i < 20; i++)
    {
        softmax_sum += (fixed_p)exp(output[i]);
    }
    for (int i = 0; i < 20; i++)
    {
        output[i] = (fixed_p)exp(output[i]) / softmax_sum;
    }
}

void gesture_model(mystream &input_stream, mystream &output_stream)
{
#pragma HLS INTERFACE mode = axis port = input_stream
#pragma HLS INTERFACE mode = axis port = output_stream
#pragma HLS INTERFACE mode = s_axilite port = return
#pragma HLS DATAFLOW

    data_t in, out;
    fixed_p input[120][1];
    fixed_p output[20];

    fixed_p conv1d_out_0[118][16];
    fixed_p batch_norm_out_0[118][16];
    fixed_p max_pool_out_0[59][16];
    fixed_p flatten_out_0[944];
    fixed_p dense_out_0[16];
    fixed_p batch_norm_out_1[16];

    // Read data from the input AXI stream
    for (int i = 0; i < 120; i++)
    {
        for (int j = 0; j < 1; j++)
        {
            input_stream.read(in);
            input[i][j] = in.data;
        }
    }

    // Perform the neural network operations
    conv1d_0(input, conv1d_out_0);
    batch_normalization_0(conv1d_out_0, batch_norm_out_0);
    max_pooling1d_0(batch_norm_out_0, max_pool_out_0);
    flatten_0(max_pool_out_0, flatten_out_0);
    dense_0(flatten_out_0, dense_out_0);
    batch_normalization_1(dense_out_0, batch_norm_out_1);
    dense_1(batch_norm_out_1, output);

    // Write the output to the output AXI stream
    out.keep = -1;
    out.last = 0;

    for (uint i = 0; i < 20; i++)
    {
        out.data = output[i];
        out.last = (i == 19) ? 1 : 0;
        output_stream.write(out);
    }
}
