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

void glove_conv1d_0(fixed_p input[354][1], fixed_p output[350][4])
{
    for (int i = 0; i < 350; i++) // Loop over output positions
    {
        for (int j = 0; j < 4; j++) // Loop over filters
        {
            fixed_p sum = 0;
            for (int k = 0; k < 5; k++) // Loop over the kernel size
            {
#pragma HLS unroll factor = 2
                for (int c = 0; c < 1; c++) // Loop over input channels
                {
#pragma HLS unroll factor = 2
                    sum += input[i + k][c] * glove_conv1d_0_weights[k][c][j];
                }
            }
            output[i][j] = relu(sum + glove_conv1d_0_biases[j]);
        }
    }
}

void glove_batch_normalization_0(fixed_p input[350][4], fixed_p output[350][4])
{
    for (int i = 0; i < 350; i++) // Loop over time steps
    {
        for (int j = 0; j < 4; j++) // Loop over channels
        {
#pragma HLS unroll factor = 2
            fixed_p glove_batch_norm_eps = glove_batch_norm_0_variance[j] + epsilon;
            output[i][j] = glove_batch_norm_0_gamma[j] * ((input[i][j] - glove_batch_norm_0_mean[j]) / hls::sqrt(glove_batch_norm_eps)) + glove_batch_norm_0_beta[j];
        }
    }
}

void glove_max_pooling1d_0(fixed_p input[350][4], fixed_p output[116][4])
{
    for (int i = 0; i < 116; i++) // Loop over output positions
    {
        for (int j = 0; j < 4; j++) // Loop over channels
        {
            fixed_p max_val = input[i * 3][j]; // Initialize max value
            for (int k = 1; k < 3; k++)        // Loop over pooling window
            {
#pragma HLS unroll factor = 2
                int idx = i * 3 + k;
                if (idx < 350) // Ensure within bounds
                {
                    max_val = (input[idx][j] > max_val) ? input[idx][j] : max_val;
                }
            }
            output[i][j] = max_val;
        }
    }
}

void glove_conv1d_1(fixed_p input[116][4], fixed_p output[114][16])
{
    for (int i = 0; i < 114; i++) // Loop over output positions
    {
        for (int j = 0; j < 16; j++) // Loop over filters
        {
            fixed_p sum = 0;
            for (int k = 0; k < 3; k++) // Loop over the kernel size
            {
#pragma HLS unroll factor = 2
                for (int c = 0; c < 4; c++) // Loop over input channels
                {
#pragma HLS unroll factor = 2
                    sum += input[i + k][c] * glove_conv1d_1_weights[k][c][j];
                }
            }
            output[i][j] = relu(sum + glove_conv1d_1_biases[j]);
        }
    }
}

void glove_batch_normalization_1(fixed_p input[114][16], fixed_p output[114][16])
{
    for (int i = 0; i < 114; i++) // Loop over time steps
    {
        for (int j = 0; j < 16; j++) // Loop over channels
        {
#pragma HLS unroll factor = 2
            fixed_p glove_batch_norm_eps = glove_batch_norm_1_variance[j] + epsilon;
            output[i][j] = glove_batch_norm_1_gamma[j] * ((input[i][j] - glove_batch_norm_1_mean[j]) / hls::sqrt(glove_batch_norm_eps)) + glove_batch_norm_1_beta[j];
        }
    }
}

void glove_max_pooling1d_1(fixed_p input[114][16], fixed_p output[28][16])
{
    for (int i = 0; i < 28; i++) // Loop over output positions
    {
        for (int j = 0; j < 16; j++) // Loop over channels
        {
            fixed_p max_val = input[i * 4][j]; // Initialize max value
            for (int k = 1; k < 4; k++)        // Loop over pooling window
            {
#pragma HLS unroll factor = 2
                int idx = i * 4 + k;
                if (idx < 114) // Ensure within bounds
                {
                    max_val = (input[idx][j] > max_val) ? input[idx][j] : max_val;
                }
            }
            output[i][j] = max_val;
        }
    }
}

void glove_conv1d_2(fixed_p input[28][16], fixed_p output[24][16])
{
    for (int i = 0; i < 24; i++) // Loop over output positions
    {
        for (int j = 0; j < 16; j++) // Loop over filters
        {
            fixed_p sum = 0;
            for (int k = 0; k < 5; k++) // Loop over the kernel size
            {
#pragma HLS unroll factor = 2
                for (int c = 0; c < 16; c++) // Loop over input channels
                {
#pragma HLS unroll factor = 2
                    sum += input[i + k][c] * glove_conv1d_2_weights[k][c][j];
                }
            }
            output[i][j] = relu(sum + glove_conv1d_2_biases[j]);
        }
    }
}

void glove_batch_normalization_2(fixed_p input[24][16], fixed_p output[24][16])
{
    for (int i = 0; i < 24; i++) // Loop over time steps
    {
        for (int j = 0; j < 16; j++) // Loop over channels
        {
#pragma HLS unroll factor = 2
            fixed_p glove_batch_norm_eps = glove_batch_norm_2_variance[j] + epsilon;
            output[i][j] = glove_batch_norm_2_gamma[j] * ((input[i][j] - glove_batch_norm_2_mean[j]) / hls::sqrt(glove_batch_norm_eps)) + glove_batch_norm_2_beta[j];
        }
    }
}

void glove_max_pooling1d_2(fixed_p input[24][16], fixed_p output[12][16])
{
    for (int i = 0; i < 12; i++) // Loop over output positions
    {
        for (int j = 0; j < 16; j++) // Loop over channels
        {
            fixed_p max_val = input[i * 2][j]; // Initialize max value
            for (int k = 1; k < 2; k++)        // Loop over pooling window
            {
#pragma HLS unroll factor = 2
                int idx = i * 2 + k;
                if (idx < 24) // Ensure within bounds
                {
                    max_val = (input[idx][j] > max_val) ? input[idx][j] : max_val;
                }
            }
            output[i][j] = max_val;
        }
    }
}

void glove_flatten_0(fixed_p input[12][16], fixed_p output[192])
{
#pragma HLS INLINE
    int idx = 0;
    for (int i = 0; i < 12; i++)
    {
        for (int j = 0; j < 16; j++)
        {
            output[idx++] = input[i][j];
        }
    }
}

void glove_dense_0(fixed_p input[192], fixed_p output[12])
{
    for (int i = 0; i < 12; i++)
    {
        fixed_p sum = 0;
        for (int j = 0; j < 192; j++)
        {
#pragma HLS unroll factor = 2
            sum += input[j] * glove_dense_0_weights[j][i];
        }
        output[i] = relu(sum + glove_dense_0_biases[i]); // Apply ReLU
    }
}

void glove_dense_1(fixed_p input[12], fixed_p output[10])
{
    for (int i = 0; i < 10; i++)
    {
        fixed_p sum = 0;
        for (int j = 0; j < 12; j++)
        {
#pragma HLS unroll factor = 2
            sum += input[j] * glove_dense_1_weights[j][i];
        }
        output[i] = sum + glove_dense_1_biases[i]; // No ReLU before softmax
    }

    fixed_p softmax_sum = 0;
    for (int i = 0; i < 10; i++)
    {
#pragma HLS unroll factor = 2
        fixed_p softmax_out = output[i];
        softmax_sum += hls::exp(softmax_out);
    }
    for (int i = 0; i < 10; i++)
    {
#pragma HLS unroll factor = 2
        output[i] = hls::exp(output[i]) / softmax_sum;
    }
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
    fixed_p input_hand[354][1];
    fixed_p output_hand[10];

    fixed_p input_leg[240][1];
    fixed_p output_leg[4];

    fixed_p glove_conv1d_out_0[350][4];
    fixed_p glove_batch_norm_out_0[350][4];
    fixed_p glove_max_pool_out_0[116][4];
    fixed_p glove_conv1d_out_1[114][16];
    fixed_p glove_batch_norm_out_1[114][16];
    fixed_p glove_max_pool_out_1[28][16];
    fixed_p glove_conv1d_out_2[24][16];
    fixed_p glove_batch_norm_out_2[24][16];
    fixed_p glove_max_pool_out_2[12][16];
    fixed_p glove_flatten_out_0[192];
    fixed_p glove_dense_out_0[12];

    fixed_p leg_conv1d_out_0[238][16];
    fixed_p leg_flatten_out_0[3808];
    fixed_p leg_dense_out_0[8];

    input_stream.read(in);
    if (in.data == 1.0) {
        // Read data from the input AXI stream
        for (int i = 0; i < 354; i++)
        {
            for (int j = 0; j < 1; j++)
            {
                input_stream.read(in);
                input_hand[i][j] = in.data;
            }
        }
        // Perform the neural network operations
        glove_conv1d_0(input_hand, glove_conv1d_out_0);
        glove_batch_normalization_0(glove_conv1d_out_0, glove_batch_norm_out_0);
        glove_max_pooling1d_0(glove_batch_norm_out_0, glove_max_pool_out_0);
        glove_conv1d_1(glove_max_pool_out_0, glove_conv1d_out_1);
        glove_batch_normalization_1(glove_conv1d_out_1, glove_batch_norm_out_1);
        glove_max_pooling1d_1(glove_batch_norm_out_1, glove_max_pool_out_1);
        glove_conv1d_2(glove_max_pool_out_1, glove_conv1d_out_2);
        glove_batch_normalization_2(glove_conv1d_out_2, glove_batch_norm_out_2);
        glove_max_pooling1d_2(glove_batch_norm_out_2, glove_max_pool_out_2);
        glove_flatten_0(glove_max_pool_out_2, glove_flatten_out_0);
        glove_dense_0(glove_flatten_out_0, glove_dense_out_0);
        glove_dense_1(glove_dense_out_0, output_hand);
            // Write the output to the output AXI stream
        out.keep = -1;
        out.last = 0;

        for (uint i = 0; i < 10; i++)
        {
            out.data = output_hand[i];
            out.last = (i == 9) ? 1 : 0;
            output_stream.write(out);
        }
    } else {
        // Read data from the input AXI stream
        for (int i = 0; i < 240; i++)
        {
            for (int j = 0; j < 1; j++)
            {
                input_stream.read(in);
                input_leg[i][j] = in.data;
            }
        }

        // Perform the neural network operations
        leg_conv1d_0(input_leg, leg_conv1d_out_0);
        leg_flatten_0(leg_conv1d_out_0, leg_flatten_out_0);
        leg_dense_0(leg_flatten_out_0, leg_dense_out_0);
        leg_dense_1(leg_dense_out_0, output_leg);

        // Write the output to the output AXI stream
        out.keep = -1;
        out.last = 0;

        for (uint i = 0; i < 4; i++)
        {
            out.data = output_leg[i];
            out.last = (i == 3) ? 1 : 0;
            output_stream.write(out);
        }
    }
}
