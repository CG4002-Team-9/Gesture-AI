#include <iostream>
#include <cmath>
#include "core.h"

// Define your fixed-point type using standard float for simplicity
typedef float fixed_p;

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

// Conv1D Layer function
void conv1d_0(fixed_p input[INPUT_SIZE_CONV1D], fixed_p output[INPUT_SIZE_CONV1D - KERNEL_SIZE_CONV1D + 1][NUM_FILTERS_CONV1D])
{
    for (int i = 0; i < INPUT_SIZE_CONV1D - KERNEL_SIZE_CONV1D + 1; i++) // Loop over output positions
    {
        for (int j = 0; j < NUM_FILTERS_CONV1D; j++) // Loop over filters
        {
            fixed_p sum = 0;
            for (int k = 0; k < KERNEL_SIZE_CONV1D; k++) // Loop over the kernel size
            {
                sum += input[i + k] * conv1d_weights[k][0][j]; // Corrected the indexing
            }
            output[i][j] = relu(sum + conv1d_biases[j]);
        }
    }
}

// Flatten Layer function
void flatten_1(fixed_p input[INPUT_SIZE_CONV1D - KERNEL_SIZE_CONV1D + 1][NUM_FILTERS_CONV1D], fixed_p output[FLATTEN_SIZE_FLATTEN])
{
    int idx = 0;
    for (int i = 0; i < INPUT_SIZE_CONV1D - KERNEL_SIZE_CONV1D + 1; i++)
    {
        for (int j = 0; j < NUM_FILTERS_CONV1D; j++)
        {
            output[idx++] = input[i][j];
        }
    }
}

void dense_2(fixed_p input[FLATTEN_SIZE_FLATTEN], fixed_p output[DENSE_SIZE_DENSE])
{
    for (int i = 0; i < DENSE_SIZE_DENSE; i++)
    {
        fixed_p sum = 0;
        for (int j = 0; j < FLATTEN_SIZE_FLATTEN; j++)
        {
            sum += input[j] * dense_weights[j][i];
        }
        output[i] = relu(sum + dense_biases[i]);
    }
}

void dense_3(fixed_p input[DENSE_SIZE_DENSE], fixed_p output[DENSE_SIZE_DENSE_1])
{
    for (int i = 0; i < DENSE_SIZE_DENSE_1; i++)
    {
        fixed_p sum = 0;
        for (int j = 0; j < DENSE_SIZE_DENSE; j++)
        {
            sum += input[j] * dense_1_weights[j][i]; // Make sure the names match
        }
        output[i] = sum + dense_1_biases[i]; // No ReLU before softmax
    }
}

// Softmax function for Output Layer
void softmax_4(fixed_p input[DENSE_SIZE_DENSE_1], fixed_p output[DENSE_SIZE_DENSE_1])
{
    fixed_p sum = 0;
    for (int i = 0; i < DENSE_SIZE_DENSE_1; i++)
    {
        sum += exp(input[i]);
    }
    for (int i = 0; i < DENSE_SIZE_DENSE_1; i++)
    {
        output[i] = exp(input[i]) / sum;
    }
}
// Top-level function
void gesture_model(fixed_p input[INPUT_SIZE_CONV1D], fixed_p output[DENSE_SIZE_DENSE_1])
{
    fixed_p conv1d_out[INPUT_SIZE_CONV1D - KERNEL_SIZE_CONV1D + 1][NUM_FILTERS_CONV1D];
    fixed_p flatten_out[FLATTEN_SIZE_FLATTEN];
    fixed_p dense_out[DENSE_SIZE_DENSE];
    fixed_p dense_1_out[DENSE_SIZE_DENSE_1];

    // Apply Conv1D layer
    conv1d_0(input, conv1d_out);

    // Apply Flatten layer
    flatten_1(conv1d_out, flatten_out);

    // Apply Dense layer
    dense_2(flatten_out, dense_out);

    // Apply Second Dense layer before Softmax
    dense_3(dense_out, dense_1_out);

    // Apply Softmax layer
    softmax_4(dense_1_out, output);
}

// Define the main function for the testbench
int main()
{
    // Initialize test input data
    fixed_p test_input[INPUT_SIZE_CONV1D] = {0.211592, 0.20615773, 0.2278948, 0.47787094, 0.62459606, 0.010524248, -0.060121194, -0.07098973, -0.08185826, -0.043818425, -0.01664709, -0.14706944, -0.1525037, -0.13076663, -0.119898096, -0.12533237, -0.1525037, -0.15793797, -0.119898096, -0.12533237, -0.64158744, -0.1362009, -0.1362009, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.028696978, -0.17388277, -0.17581464, -0.17774653, -0.27820447, -0.28013635, -0.18933783, -0.110130616, -0.081152365, -0.046378467, -0.096607424, -0.21445231, -0.22604361, -0.1468364, -0.12944944, -0.12751757, -0.12172191, -0.115926266, -0.12558568, -0.12172191, -0.12558568, 0.85774297, -0.1352451, -0.1352451, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.10769476, -0.06283578, -0.07031992, -0.06283578, 0.3749861, 0.09058898, -0.40710598, -0.044125434, -0.010446832, 0.0007793529, 0.02323177, 0.083104834, 0.075620726, 0.07187865, 0.08684691, 0.060652442, 0.04568419, 0.04568419, 0.07187865, 0.056910373, 0.053168304, -0.6578245, 0.109299324, 0.060652442, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536, -0.00019682536};
    fixed_p expected_output[DENSE_SIZE_DENSE_1] = {0.00091833324, 0.002782783, 0.0024716181, 2.164753e-13, 2.9521166e-07, 0.001049942, 4.7674245e-08, 7.48808e-07, 0.093439855, 0.7831256, 1.4107883e-13, 1.0641564e-15, 4.1172717e-07, 2.5048628e-05, 1.3061081e-05, 3.121172e-05, 4.3810092e-14, 4.5178414e-08, 0.0016557239, 0.11448527};
    fixed_p model_output[DENSE_SIZE_DENSE_1];

    // Call the top-level function
    gesture_model(test_input, model_output);

    // Compare the model output with the expected output
    bool pass = true;
    for (int i = 0; i < DENSE_SIZE_DENSE_1; i++)
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
    for (int i = 1; i < DENSE_SIZE_DENSE_1; i++)
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
