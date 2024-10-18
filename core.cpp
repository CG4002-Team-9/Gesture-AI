#include "core.h"
#include "weights.h"

// declare epsilon for Batch Normalization
fixed_p epsilon = 0.001;

// ReLU function
fixed_p relu(fixed_p x)
{
#pragma HLS INLINE
    if (x > 0)
    {
        return x;
    }
    return 0;
}

void leg_conv1d_0(fixed_p input[240][1], fixed_p output[238][16])
{
    for (int i = 0; i < 238; i++) // Loop over output positions
    {
        for (int j = 0; j < 16; j++) // Loop over filters
        {
            fixed_p sum = 0;
            for (int k = 0; k < 3; k++) // Loop over the kernel size
            {
#pragma HLS unroll factor = 2
                for (int c = 0; c < 1; c++) // Loop over input channels
                {
#pragma HLS unroll factor = 2
                    sum += input[i + k][c] * leg_conv1d_0_weights[k][c][j];
                }
            }
            output[i][j] = relu(sum + leg_conv1d_0_biases[j]);
        }
    }
}

void leg_flatten_0(fixed_p input[238][16], fixed_p output[3808])
{
#pragma HLS INLINE
    int idx = 0;
    for (int i = 0; i < 238; i++)
    {
        for (int j = 0; j < 16; j++)
        {
            output[idx++] = input[i][j];
        }
    }
}

void leg_dense_0(fixed_p input[3808], fixed_p output[8])
{
    for (int i = 0; i < 8; i++)
    {
        fixed_p sum = 0;
        for (int j = 0; j < 3808; j++)
        {
#pragma HLS unroll factor = 2
            sum += input[j] * leg_dense_0_weights[j][i];
        }
        output[i] = relu(sum + leg_dense_0_biases[i]); // Apply ReLU
    }
}

void leg_dense_1(fixed_p input[8], fixed_p output[4])
{
    for (int i = 0; i < 4; i++)
    {
        fixed_p sum = 0;
        for (int j = 0; j < 8; j++)
        {
#pragma HLS unroll factor = 2
            sum += input[j] * leg_dense_1_weights[j][i];
        }
        output[i] = sum + leg_dense_1_biases[i]; // No ReLU before softmax
    }

    fixed_p softmax_sum = 0;
    for (int i = 0; i < 4; i++)
    {
#pragma HLS unroll factor = 2
        fixed_p softmax_out = output[i];
        softmax_sum += hls::exp(softmax_out);
    }
    for (int i = 0; i < 4; i++)
    {
#pragma HLS unroll factor = 2
        output[i] = hls::exp(output[i]) / softmax_sum;
    }
}

void gesture_model(mystream &input_stream, mystream &output_stream)
{
#pragma HLS INTERFACE mode = axis port = input_stream
#pragma HLS INTERFACE mode = axis port = output_stream
#pragma HLS INTERFACE mode = s_axilite port = return

    data_t in, out;
    fixed_p input[240][1];
    fixed_p output[4];

    fixed_p leg_conv1d_out_0[238][16];
    fixed_p leg_flatten_out_0[3808];
    fixed_p leg_dense_out_0[8];

    // Read data from the input AXI stream
    for (int i = 0; i < 240; i++)
    {
        for (int j = 0; j < 1; j++)
        {
            input_stream.read(in);
            input[i][j] = in.data;
        }
    }

    // Perform the neural network operations
    leg_conv1d_0(input, leg_conv1d_out_0);
    leg_flatten_0(leg_conv1d_out_0, leg_flatten_out_0);
    leg_dense_0(leg_flatten_out_0, leg_dense_out_0);
    leg_dense_1(leg_dense_out_0, output);

    // Write the output to the output AXI stream
    out.keep = -1;
    out.last = 0;

    for (uint i = 0; i < 4; i++)
    {
        out.data = output[i];
        out.last = (i == 3) ? 1 : 0;
        output_stream.write(out);
    }
}
