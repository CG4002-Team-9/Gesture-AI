#include <iostream>
#include <cmath>
#include "core.h"

// declare epsilon for Batch Normalization
#define epsilon 0.00001

// Custom abs function for fixed_p type
fixed_p custom_abs(fixed_p x)
{
    return (x < fixed_p(0)) ? fixed_p(-x) : x;
}

// ReLU function
fixed_p relu(fixed_p x)
{
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
            output[i][j] = batch_norm_0_gamma[j] * ((input[i][j] - batch_norm_0_mean[j]) / sqrt(batch_norm_0_variance[j] + epsilon)) + batch_norm_0_beta[j];
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
        output[i] = batch_norm_1_gamma[i] * ((input[i] - batch_norm_1_mean[i]) / sqrt(batch_norm_1_variance[i] + epsilon)) + batch_norm_1_beta[i];
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
        softmax_sum += exp(output[i]);
    }
    for (int i = 0; i < 20; i++)
    {
        output[i] = exp(output[i]) / softmax_sum;
    }
}

void gesture_model(fixed_p input[120][1], fixed_p output[20])
{
    fixed_p conv1d_out_0[118][16];
    fixed_p batch_norm_out_0[118][16];
    fixed_p max_pool_out_0[59][16];
    fixed_p flatten_out_0[944];
    fixed_p dense_out_0[16];
    fixed_p batch_norm_out_1[16];
    conv1d_0(input, conv1d_out_0);
    batch_normalization_0(conv1d_out_0, batch_norm_out_0);
    max_pooling1d_0(batch_norm_out_0, max_pool_out_0);
    flatten_0(max_pool_out_0, flatten_out_0);
    dense_0(flatten_out_0, dense_out_0);
    batch_normalization_1(dense_out_0, batch_norm_out_1);
    dense_1(batch_norm_out_1, output);
}

// Define the main function for the testbench
int main()
{
    // Initialize test input data
    fixed_p test_input[120][1] = {-0.2956391, -0.30225477, -0.28902343, -0.22948243, -0.13024744, 0.1674575, 0.31300214, 0.37254313, 0.23361416, 0.17407317, 0.25346118, 0.31961778, 0.22038282, -0.0111654755, -0.19640408, -0.22948243, -0.25594506, -0.25594506, -0.22286676, -0.20963542, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.099931, -0.099931, -0.08798679, -0.052154236, -0.18354048, -0.21937305, -0.33881515, -0.17159627, -0.3865919, -0.43436876, -0.5179782, -0.33881515, -0.11187521, 0.007566822, 0.09117623, 0.11506465, 0.1747857, 0.2703393, 0.11506465, 0.11506465, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, 0.24327675, 0.20938249, 0.051209383, -0.19734825, -0.18605016, -0.10696365, -0.08436748, 0.10769988, 0.06250754, -0.36681944, -0.10696365, 0.051209383, -0.16345407, -0.29903102, -0.16345407, 0.039911374, 0.17548823, 0.25457484, 0.25457484, 0.22068058, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536};
    fixed_p expected_output[20] = {3.0313356e-07, 9.0047004e-05, 1.9447634e-07, 1.1036491e-06, 4.7699444e-08, 8.882679e-09, 6.492682e-10, 2.7675742e-07, 4.6352783e-11, 4.3214847e-08, 1.2921311e-08, 8.836113e-08, 0.0016296564, 0.9982724, 3.2907217e-09, 1.4798805e-11, 1.9421445e-07, 2.8317223e-07, 5.998917e-08, 5.270516e-06};
    fixed_p model_output[20];

    // Call the top-level function
    gesture_model(test_input, model_output);

    // Compare the model output with the expected output
    bool pass = true;
    for (int i = 0; i < 20; i++)
    {
        if (custom_abs(model_output[i] - expected_output[i]) > fixed_p(1e-2))
        {
            pass = false;
            std::cout << "Mismatch at index " << i << ": Expected " << expected_output[i]
                      << " but got " << model_output[i] << std::endl;
        }
    }

    // Find the predicted class (the index of the max value in the model_output array)
    int predicted_class = 0;
    fixed_p max_value = model_output[0];
    for (int i = 1; i < 20; i++)
    {
        if (model_output[i] > max_value)
        {
            max_value = model_output[i];
            predicted_class = i;
        }
    }

    // Print the predicted class
    std::cout << "Predicted Class: " << predicted_class << std::endl;

    if (pass)
    {
        std::cout << "Test Passed!" << std::endl;
    }
    else
    {
        std::cout << "Test Failed!" << std::endl;
    }

    return 0;
}
