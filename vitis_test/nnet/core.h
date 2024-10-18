
#include <iostream>
#include <hls_stream.h>
#include "hls_math.h"
#include "ap_fixed.h"
#include "ap_axi_sdata.h"
// typedef ap_fixed<32, 16> fixed_p;
typedef float fixed_p;
typedef hls::axis<float, 2, 5, 6> data_t;
typedef hls::stream<data_t> mystream;

void gesture_model(mystream &input_stream, mystream &output_stream);
