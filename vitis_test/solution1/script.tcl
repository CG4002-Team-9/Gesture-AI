############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project vitis_test
set_top gesture_model
add_files vitis_test/nnet/core.h
add_files vitis_test/nnet/core.cpp
add_files -tb vitis_test/testbench/main.cpp -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu3eg-sbva484-2-i}
create_clock -period 10 -name default
config_export -flow syn -format ip_catalog -output /home/prince/Documents/capstone/Gesture-AI/vitis_test -rtl verilog -vivado_clock 10
source "./vitis_test/solution1/directives.tcl"
csim_design -profile
csynth_design
cosim_design
export_design -flow syn -rtl verilog -format ip_catalog -output /home/prince/Documents/capstone/Gesture-AI/vitis_test
