#include "../nnet/core.h"
#include "test_arrays.h"

mystream input_stream, output_stream;

#define NUM_SAMPLES 150
#define INPUT_SIZE 120
#define OUTPUT_SIZE 20

// Define the main function for the testbench
int main()
{
    data_t in, out;

    int correct = 0;

    float output_data[NUM_SAMPLES][OUTPUT_SIZE];

    for (int i = 0; i < NUM_SAMPLES; i++)
    {
        for (int j = 0; j < INPUT_SIZE; j++)
        {
            in.data = test_input[i][j][0];
            in.last = (j == INPUT_SIZE - 1) ? 1 : 0;
            input_stream.write(in);
        }

        // printf("started gesture model here: %d\n", i);

        gesture_model(input_stream, output_stream);

        // printf("ended here: %d\n", i);

        for (int j = 0; j < OUTPUT_SIZE; j++)
        {
            output_stream.read(out);
            output_data[i][j] = out.data;
        }

        int max_idx = 0;
        float max_val = output_data[i][0];

        for (int j = 1; j < OUTPUT_SIZE; j++)
        {
            // printf("Neuron %d: %f", j, output_data[i][j].to_float());
            if (output_data[i][j] > max_val)
            {
                max_val = output_data[i][j];
                max_idx = j;
            }
        }

        if (max_idx == expected_class[i])
        {
            correct++;
        }

        // print predicted vs expected and the confidence
        printf("Sample %d: Predicted %d, Expected %d, Confidence %f\n"
        , i, max_idx, expected_class[i], max_val);
    }

    if (correct == NUM_SAMPLES)
    {
        printf("All tests passed!\n");
        return 0;
    }
    else
    {
        printf("Tests failed: %d/%d\n", NUM_SAMPLES - correct, NUM_SAMPLES);
        return 1;
    }
}
