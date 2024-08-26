############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project Gesture_AI
open_solution "1DCNN" -flow_target vivado
set_part {xczu3eg-sbva484-2-i}
create_clock -period 1000 -name default
#source "./Gesture_AI/1DCNN/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
