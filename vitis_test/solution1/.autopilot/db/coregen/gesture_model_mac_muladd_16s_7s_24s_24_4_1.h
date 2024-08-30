// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __gesture_model_mac_muladd_16s_7s_24s_24_4_1__HH__
#define __gesture_model_mac_muladd_16s_7s_24s_24_4_1__HH__
#include "gesture_model_mac_muladd_16s_7s_24s_24_4_1_DSP48_3.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(gesture_model_mac_muladd_16s_7s_24s_24_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    gesture_model_mac_muladd_16s_7s_24s_24_4_1_DSP48_3 gesture_model_mac_muladd_16s_7s_24s_24_4_1_DSP48_3_U;

    SC_CTOR(gesture_model_mac_muladd_16s_7s_24s_24_4_1):  gesture_model_mac_muladd_16s_7s_24s_24_4_1_DSP48_3_U ("gesture_model_mac_muladd_16s_7s_24s_24_4_1_DSP48_3_U") {
        gesture_model_mac_muladd_16s_7s_24s_24_4_1_DSP48_3_U.clk(clk);
        gesture_model_mac_muladd_16s_7s_24s_24_4_1_DSP48_3_U.rst(reset);
        gesture_model_mac_muladd_16s_7s_24s_24_4_1_DSP48_3_U.ce(ce);
        gesture_model_mac_muladd_16s_7s_24s_24_4_1_DSP48_3_U.in0(din0);
        gesture_model_mac_muladd_16s_7s_24s_24_4_1_DSP48_3_U.in1(din1);
        gesture_model_mac_muladd_16s_7s_24s_24_4_1_DSP48_3_U.in2(din2);
        gesture_model_mac_muladd_16s_7s_24s_24_4_1_DSP48_3_U.dout(dout);

    }

};

#endif //
