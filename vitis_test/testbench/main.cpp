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
    conv1d_0(input, conv1d_out_0);
    batch_normalization_0(conv1d_out_0, batch_norm_out_0);
    max_pooling1d_0(batch_norm_out_0, max_pool_out_0);
    flatten_0(max_pool_out_0, flatten_out_0);
    dense_0(flatten_out_0, dense_out_0);
    dense_1(dense_out_0, output);
}

// Define the main function for the testbench
int main()
{
    // Initialize test input data
    fixed_p test_input[120][1] = {-0.049834944, -0.00020670304, -0.00020670304, 0.07423566, -0.049834944, 0.0990497, 0.28515553, -0.26075482, -0.12427723, -0.14909135, -0.39723238, -0.67018753, -0.24834774, -0.17390546, 0.11145676, -0.12427723, -0.14909135, 0.38441193, 0.68218124, 0.23552728, -0.037427884, -0.049834944, -0.025020825, -0.037427884, -0.074648984, -0.00020670304, -0.025020825, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.14946693, -0.14946693, -0.15758096, -0.165695, -0.17380902, -0.0926688, -0.26306325, 0.15886588, 0.40228653, 0.44285667, -0.15758096, -0.44968578, -0.052098665, -0.0034145555, -0.165695, -0.2792913, -0.43345773, -0.48214182, 0.18320796, 0.102067746, -0.10078283, -0.165695, -0.1251249, -0.18192305, -0.13323888, -0.165695, -0.14946693, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.0015846012, 0.014473888, -0.012290225, 0.04659083, 0.20182282, 0.43199432, -0.21569765, -0.41375226, -0.11934678, 0.0037682285, 0.07335498, -0.08722981, -0.31204855, -0.32275417, 0.44270006, 0.29817367, -0.02834875, 0.030532377, -0.02834875, 0.0091210585, -0.0015846012, -0.0069374307, -0.012290225, 0.019826718, -0.033701546, 0.0037682285, 0.014473888, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536};
    fixed_p expected_output[20] = {1.3854135e-13, 2.3625446e-10, 1.935111e-12, 1.1119832e-19, 5.2494805e-05, 1.6466416e-07, 0.9909689, 0.008915806, 8.410667e-07, 1.6057294e-07, 5.8840696e-11, 1.7069348e-12, 4.839522e-15, 1.5323139e-17, 5.821229e-05, 3.3381782e-06, 4.3186317e-09, 2.8004435e-13, 4.8869425e-10, 2.8688794e-12};
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
