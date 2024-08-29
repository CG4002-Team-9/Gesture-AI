#include <iostream>
#include <cmath>
#include "core.h"

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

void conv1d_0(fixed_p input[120], fixed_p output[118][16])
{
    for (int i = 0; i < 118; i++) // Loop over output positions
    {
        for (int j = 0; j < 16; j++) // Loop over filters
        {
            fixed_p sum = 0;
            for (int k = 0; k < 3; k++) // Loop over the kernel size
            {
                sum += input[i + k] * conv1d_0_weights[k][0][j];
            }
            output[i][j] = relu(sum + conv1d_0_biases[j]);
        }
    }
}

void conv1d_1(fixed_p input[118], fixed_p output[116][16])
{
    for (int i = 0; i < 116; i++) // Loop over output positions
    {
        for (int j = 0; j < 16; j++) // Loop over filters
        {
            fixed_p sum = 0;
            for (int k = 0; k < 3; k++) // Loop over the kernel size
            {
                sum += input[i + k] * conv1d_1_weights[k][0][j];
            }
            output[i][j] = relu(sum + conv1d_1_biases[j]);
        }
    }
}

void flatten_0(fixed_p input[116][16], fixed_p output[1856])
{
    int idx = 0;
    for (int i = 0; i < 116; i++)
    {
        for (int j = 0; j < 16; j++)
        {
            output[idx++] = input[i][j];
        }
    }
}

void dense_0(fixed_p input[1856], fixed_p output[16])
{
    for (int i = 0; i < 16; i++)
    {
        fixed_p sum = 0;
        for (int j = 0; j < 1856; j++)
        {
            sum += input[j] * dense_0_weights[j][i];
        }
        output[i] = relu(sum + dense_0_biases[i]); // Apply ReLU
    }
}

void dense_1(fixed_p input[16], fixed_p output[16])
{
    for (int i = 0; i < 16; i++)
    {
        fixed_p sum = 0;
        for (int j = 0; j < 16; j++)
        {
            sum += input[j] * dense_1_weights[j][i];
        }
        output[i] = relu(sum + dense_1_biases[i]); // Apply ReLU
    }
}

void dense_2(fixed_p input[16], fixed_p output[20])
{
    for (int i = 0; i < 20; i++)
    {
        fixed_p sum = 0;
        for (int j = 0; j < 16; j++)
        {
            sum += input[j] * dense_2_weights[j][i];
        }
        output[i] = sum + dense_2_biases[i]; // No ReLU before softmax
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

void gesture_model(fixed_p input[120], fixed_p output[20])
{
    fixed_p conv1d_out_0[118][16];
    fixed_p conv1d_out_1[116][16];
    fixed_p flatten_out_0[1856];
    fixed_p dense_out_0[16];
    fixed_p dense_out_1[16];
    conv1d_0(input, conv1d_out_0);
    conv1d_1(input, conv1d_out_1);
    flatten_0(conv1d_out_1, flatten_out_0);
    dense_0(flatten_out_0, dense_out_0);
    dense_1(dense_out_0, dense_out_1);
    dense_2(dense_out_1, output);
}

// Define the main function for the testbench
int main()
{
    // Initialize test input data
    fixed_p test_input[120] = {-0.22578783, -0.22578783, -0.23920679, -0.17211203, 0.096267, 0.44515973, 0.25058496, 0.21032812, 0.25058496, 0.31767976, 0.05601016, -0.23920679, -0.25262573, -0.2660447, -0.2324973, -0.2324973, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, 0.0015950644, 0.014742719, -0.090438515, -0.30080083, -0.4191296, 0.0804809, -0.30080083, -0.629492, -0.23506263, -0.1298814, -0.1561767, 0.106776215, 0.13307153, 0.13307153, 0.04103803, 0.027890373, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, 0.098814026, 0.08629091, -0.045201745, -0.35201797, -0.27061775, 0.36179933, 0.21778357, 0.098814026, 0.14890645, -0.0076324316, -0.22678687, -0.27061775, -0.06398642, 0.061244674, 0.06750623, 0.09255247, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536};
    fixed_p expected_output[20] = {0.0020039114, 0.00059027656, 3.750341e-08, 4.4417946e-05, 1.496658e-09, 2.7696049e-05, 2.0231675e-13, 5.3014516e-12, 5.3463425e-09, 3.5551584e-05, 3.5320993e-09, 2.2497817e-09, 0.12163296, 0.87525934, 1.8181292e-11, 2.91819e-08, 5.80301e-10, 9.132538e-07, 6.508569e-05, 0.00033981368};
    fixed_p model_output[20];

    // Call the top-level function
    gesture_model(test_input, model_output);

    // Compare the model output with the expected output
    bool pass = true;
    for (int i = 0; i < 20; i++)
    {
        if (custom_abs(model_output[i] - expected_output[i]) > fixed_p(1e-3))
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
