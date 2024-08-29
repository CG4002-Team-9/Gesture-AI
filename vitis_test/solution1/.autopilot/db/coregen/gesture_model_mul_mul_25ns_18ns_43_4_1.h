// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __gesture_model_mul_mul_25ns_18ns_43_4_1__HH__
#define __gesture_model_mul_mul_25ns_18ns_43_4_1__HH__
#include "gesture_model_mul_mul_25ns_18ns_43_4_1_DSP48_8.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(gesture_model_mul_mul_25ns_18ns_43_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    gesture_model_mul_mul_25ns_18ns_43_4_1_DSP48_8 gesture_model_mul_mul_25ns_18ns_43_4_1_DSP48_8_U;

    SC_CTOR(gesture_model_mul_mul_25ns_18ns_43_4_1):  gesture_model_mul_mul_25ns_18ns_43_4_1_DSP48_8_U ("gesture_model_mul_mul_25ns_18ns_43_4_1_DSP48_8_U") {
        gesture_model_mul_mul_25ns_18ns_43_4_1_DSP48_8_U.clk(clk);
        gesture_model_mul_mul_25ns_18ns_43_4_1_DSP48_8_U.rst(reset);
        gesture_model_mul_mul_25ns_18ns_43_4_1_DSP48_8_U.ce(ce);
        gesture_model_mul_mul_25ns_18ns_43_4_1_DSP48_8_U.a(din0);
        gesture_model_mul_mul_25ns_18ns_43_4_1_DSP48_8_U.b(din1);
        gesture_model_mul_mul_25ns_18ns_43_4_1_DSP48_8_U.p(dout);

    }

};

#endif //
