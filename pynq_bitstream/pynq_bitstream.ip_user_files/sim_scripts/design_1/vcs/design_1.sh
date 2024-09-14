#!/usr/bin/env bash
#**********************************************************************************************************
# Vivado (TM) v2024.1 (64-bit)
#
# Script generated by Vivado on Fri Sep 13 13:55:29 +08 2024
# SW Build 5076996 on Wed May 22 18:36:09 MDT 2024
#
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved. 
#
# Filename     : design_1.sh
# Simulator    : Synopsys Verilog Compiler Simulator
# Description  : Simulation script generated by export_simulation Tcl command
# Purpose      : Run 'compile', 'elaborate', 'simulate' steps for compiling, elaborating and simulating the
#                design. The script will copy the library mapping file from the compiled library directory,
#                create design library directories and library mappings in the mapping file.
#
# Usage        : design_1.sh
#                design_1.sh [-lib_map_path] [-step] [-keep_index] [-noclean_files]*
#                design_1.sh [-reset_run]
#                design_1.sh [-reset_log]
#                design_1.sh [-help]
#
#               * The -noclean_files switch is deprecated and will not peform any function (by default, the
#                 simulator generated files will not be removed unless -reset_run switch is used)
#
# Prerequisite : Before running export_simulation, you must first compile the AMD simulation library
#                using the 'compile_simlib' Tcl command (for more information, run 'compile_simlib -help'
#                command in the Vivado Tcl shell). After compiling the library, specify the -lib_map_path
#                switch with the directory path where the library is created while generating the script
#                with export_simulation.
#
#                Alternatively, you can set the library path by setting the following project property:-
#
#                 set_property compxlib.<simulator>_compiled_library_dir <path> [current_project]
#
#                You can also point to the simulation library by either setting the 'lib_map_path' global
#                variable in this script or specify it with the '-lib_map_path' switch while executing this
#                script (type 'design_1.sh -help' for more information).
#
#                Note: For pure RTL based designs, the -lib_map_path switch can be specified later with the
#                generated script, but if design is targetted for system simulation containing SystemC/C++/C
#                sources, then the library path MUST be specified upfront when calling export_simulation.
#
#                For more information, refer 'Vivado Design Suite User Guide:Logic simulation (UG900)'
#
#**********************************************************************************************************

# catch pipeline exit status
set -Eeuo pipefail

# set vhdlan compile options
vhdlan_opts="-full64 -l .tmp_log"

# set vlogan compile options
vlogan_opts="-full64 -l .tmp_log"

# set vcs elaboration options
vcs_elab_opts="-full64 -debug_acc+pp+dmptf -t ps -licqueue -l elaborate.log"

# set vcs simulation options
vcs_sim_opts="-ucli -licqueue -l simulate.log "

# set design libraries
design_libs=(xilinx_vip xpm lib_pkg_v1_0_4 fifo_generator_v13_2_10 lib_fifo_v1_0_19 lib_srl_fifo_v1_0_4 lib_cdc_v1_0_3 axi_datamover_v5_1_33 axi_sg_v4_1_18 axi_dma_v7_1_32 xil_defaultlib proc_sys_reset_v5_0_15 xbip_utils_v3_0_13 axi_utils_v2_0_9 xbip_pipe_v3_0_9 xbip_dsp48_wrapper_v3_0_6 xbip_dsp48_addsub_v3_0_9 xbip_dsp48_multadd_v3_0_9 xbip_bram18k_v3_0_9 mult_gen_v12_0_21 floating_point_v7_1_18 axi_infrastructure_v1_1_0 axi_vip_v1_1_17 zynq_ultra_ps_e_vip_v1_0_17 generic_baseblocks_v2_1_2 axi_register_slice_v2_1_31 axi_data_fifo_v2_1_30 axi_crossbar_v2_1_32 axi_protocol_converter_v2_1_31 axi_clock_converter_v2_1_30 blk_mem_gen_v8_4_8 axi_dwidth_converter_v2_1_31 axi_mmu_v2_1_29)

# simulation root library directory
sim_lib_dir="vcs_lib"

# script info
echo -e "design_1.sh - Script generated by export_simulation (Vivado v2024.1 (64-bit)-id)\n"

# main steps
run()
{
  check_args $*
  setup
  if [[ ($b_step == 1) ]]; then
    case $step in
      "compile" )
       init_lib
       compile
      ;;
      "elaborate" )
       elaborate
      ;;
      "simulate" )
       simulate
      ;;
      * )
        echo -e "ERROR: Invalid or missing step '$step' (type \"./design_1.sh -help\" for more information)\n"
        exit 1
      esac
  else
    init_lib
    compile
    elaborate
    simulate
  fi
}

# RUN_STEP: <compile>
compile()
{
  vlogan -work xilinx_vip $vlogan_opts -sverilog +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
  2>&1 | tee compile.log; cat .tmp_log > vlogan.log 2>/dev/null

  vlogan -work xpm $vlogan_opts -sverilog +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vhdlan -work xpm $vhdlan_opts \
  "/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log > vhdlan.log 2>/dev/null

  vhdlan -work lib_pkg_v1_0_4 $vhdlan_opts \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vlogan -work fifo_generator_v13_2_10 $vlogan_opts +v2k +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vhdlan -work fifo_generator_v13_2_10 $vhdlan_opts \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vlogan -work fifo_generator_v13_2_10 $vlogan_opts +v2k +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vhdlan -work lib_fifo_v1_0_19 $vhdlan_opts \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0a12/hdl/lib_fifo_v1_0_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work lib_srl_fifo_v1_0_4 $vhdlan_opts \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work lib_cdc_v1_0_3 $vhdlan_opts \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work axi_datamover_v5_1_33 $vhdlan_opts \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bf20/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work axi_sg_v4_1_18 $vhdlan_opts \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/6f54/hdl/axi_sg_v4_1_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work axi_dma_v7_1_32 $vhdlan_opts \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/8830/hdl/axi_dma_v7_1_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work xil_defaultlib $vhdlan_opts \
  "../../../bd/design_1/ip/design_1_axi_dma_0_2/sim/design_1_axi_dma_0_2.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work proc_sys_reset_v5_0_15 $vhdlan_opts \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work xil_defaultlib $vhdlan_opts \
  "../../../bd/design_1/ip/design_1_proc_sys_reset_0_2/sim/design_1_proc_sys_reset_0_2.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work xbip_utils_v3_0_13 $vhdlan_opts \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/24e7/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work axi_utils_v2_0_9 $vhdlan_opts \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/1a81/hdl/axi_utils_v2_0_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work xbip_pipe_v3_0_9 $vhdlan_opts \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/713b/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work xbip_dsp48_wrapper_v3_0_6 $vhdlan_opts \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f596/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work xbip_dsp48_addsub_v3_0_9 $vhdlan_opts \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/378b/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work xbip_dsp48_multadd_v3_0_9 $vhdlan_opts \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/fe6e/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work xbip_bram18k_v3_0_9 $vhdlan_opts \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/cd0f/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work mult_gen_v12_0_21 $vhdlan_opts \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f2b8/hdl/mult_gen_v12_0_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work floating_point_v7_1_18 $vhdlan_opts \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0861/hdl/floating_point_v7_1_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vlogan -work floating_point_v7_1_18 $vlogan_opts +v2k +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0861/hdl/floating_point_v7_1_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/ip/gesture_model_fadd_32ns_32ns_32_4_full_dsp_1_ip.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/ip/gesture_model_faddfsub_32ns_32ns_32_4_full_dsp_1_ip.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/ip/gesture_model_fcmp_32ns_32ns_1_2_no_dsp_1_ip.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/ip/gesture_model_fdiv_32ns_32ns_32_9_no_dsp_1_ip.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/ip/gesture_model_fexp_32ns_32ns_32_8_full_dsp_1_ip.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/ip/gesture_model_fmul_32ns_32ns_32_3_max_dsp_1_ip.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/ip/gesture_model_fsqrt_32ns_32ns_32_8_no_dsp_1_ip.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_batch_norm_out_1_RAM_AUTO_1R1W.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_control_s_axi.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_conv1d_out_0_RAM_AUTO_1R1W.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_dense_out_0_RAM_AUTO_1R1W.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_fadd_32ns_32ns_32_4_full_dsp_1.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_faddfsub_32ns_32ns_32_4_full_dsp_1.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_fcmp_32ns_32ns_1_2_no_dsp_1.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_fdiv_32ns_32ns_32_9_no_dsp_1.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_fexp_32ns_32ns_32_8_full_dsp_1.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_flatten_out_0_RAM_AUTO_1R1W.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_flow_control_loop_pipe_sequential_init.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_fmul_32ns_32ns_32_3_max_dsp_1.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_fsqrt_32ns_32ns_32_8_no_dsp_1.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_20_1_VITIS_LOOP_22_2.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_20_1_VITIS_LOOP_22_2_conv1d_0_biases_ROM_AUeOg.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_20_1_VITIS_LOOP_22_2_p_ZL16conv1d_0_weightsbkb.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_20_1_VITIS_LOOP_22_2_p_ZL16conv1d_0_weightscud.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_20_1_VITIS_LOOP_22_2_p_ZL16conv1d_0_weightsdEe.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_43_2.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_43_2_batch_norm_0_beta_ROM_ibs.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_43_2_batch_norm_0_gamma_ROMg8j.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_43_2_batch_norm_0_mean_ROM_hbi.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_43_2_batch_norm_0_variance_fYi.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_56_1_VITIS_LOOP_58_2.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_79_1_VITIS_LOOP_81_2.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_90_1_VITIS_LOOP_93_2.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_90_1_VITIS_LOOP_93_2_dense_0_biases_ROM_AUTkbM.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_90_1_VITIS_LOOP_93_2_dense_0_weights_ROM_AUjbC.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_104_1.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_104_1_batch_norm_1_beta_ROM_AUTO_1R.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_104_1_batch_norm_1_gamma_ROM_AUTO_1R.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_104_1_batch_norm_1_mean_ROM_AUTO_1R.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_104_1_batch_norm_1_variance_ROM_AUTO_1R.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_114_1_VITIS_LOOP_117_2.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_114_1_VITIS_LOOP_117_2_dense_1_biases_ROM_Amb6.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_114_1_VITIS_LOOP_117_2_dense_1_weights_ROM_lbW.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_126_3.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_132_4.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_157_1.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_180_3.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_hls_deadlock_idx0_monitor.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_input_0_RAM_AUTO_1R1W.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_max_pool_out_0_RAM_AUTO_1R1W.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_mul_7ns_9ns_15_1_1.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_output_RAM_AUTO_1R1W.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_regslice_both.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_sparsemux_7_2_32_1_1.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model_urem_7ns_3ns_2_11_1.v" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog/gesture_model.v" \
  "../../../bd/design_1/ip/design_1_gesture_model_0_2/sim/design_1_gesture_model_0_2.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work axi_infrastructure_v1_1_0 $vlogan_opts +v2k +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work axi_vip_v1_1_17 $vlogan_opts -sverilog +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work zynq_ultra_ps_e_vip_v1_0_17 $vlogan_opts -sverilog +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim/design_1_zynq_ultra_ps_e_0_1_vip_wrapper.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work generic_baseblocks_v2_1_2 $vlogan_opts +v2k +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work axi_register_slice_v2_1_31 $vlogan_opts +v2k +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work axi_data_fifo_v2_1_30 $vlogan_opts +v2k +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work axi_crossbar_v2_1_32 $vlogan_opts +v2k +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work axi_protocol_converter_v2_1_31 $vlogan_opts +v2k +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/3c06/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work axi_clock_converter_v2_1_30 $vlogan_opts +v2k +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/80bf/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work blk_mem_gen_v8_4_8 $vlogan_opts +v2k +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work axi_dwidth_converter_v2_1_31 $vlogan_opts +v2k +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/14b9/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../bd/design_1/ip/design_1_auto_us_0/sim/design_1_auto_us_0.v" \
  "../../../bd/design_1/ip/design_1_auto_us_1/sim/design_1_auto_us_1.v" \
  "../../../bd/design_1/ip/design_1_auto_us_2/sim/design_1_auto_us_2.v" \
  "../../../bd/design_1/ip/design_1_auto_ds_0/sim/design_1_auto_ds_0.v" \
  "../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
  "../../../bd/design_1/ip/design_1_auto_ds_1/sim/design_1_auto_ds_1.v" \
  "../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work axi_mmu_v2_1_29 $vlogan_opts +v2k +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/b562/hdl/axi_mmu_v2_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" +incdir+"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../bd/design_1/ip/design_1_s00_mmu_0/sim/design_1_s00_mmu_0.v" \
  "../../../bd/design_1/ip/design_1_s01_mmu_0/sim/design_1_s01_mmu_0.v" \
  "../../../bd/design_1/sim/design_1.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts +v2k \
  glbl.v \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null
}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.design_1 xil_defaultlib.glbl -o design_1_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./design_1_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  # delete previous files for a clean rerun
  if [[ ($b_reset_run == 1) ]]; then
    reset_run
    echo -e "INFO: Simulation run files deleted.\n"
    exit 0
  fi

 # delete previous log files
  if [[ ($b_reset_log == 1) ]]; then
    reset_log
    echo -e "INFO: Simulation run log files deleted.\n"
    exit 0
  fi

  # add any setup/initialization commands here:-

  # <user specific commands>

}

# simulator index file/library directory processing
init_lib()
{
  if [[ ($b_keep_index == 1) ]]; then
    # keep previous design library mappings
    true
  else
    # define design library mappings
    create_lib_mappings
  fi

  if [[ ($b_keep_index == 1) ]]; then
    # do not recreate design library directories
    true
  else
    # create design library directories
    create_lib_dir
  fi
}

# define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($lib_map_path == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file

  if [[ ($lib_map_path == "") ]]; then
    lib_map_path="/home/prince/Documents/capstone/Gesture-AI/pynq_bitstream/pynq_bitstream.cache/compile_simlib/vcs"
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# create design library directory
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi
  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key design_1_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .tmp_log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log lib_sc.so 64 AN.DB csrc design_1_simv.daidir vcs_lib c.obj)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done
}

# delete generated log files from the previous run
reset_log()
{
  files_to_remove=(vlogan.log vhdlan.log compile.log elaborate.log simulate.log .tmp_log)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done
}

# check switch argument value
check_arg_value()
{
  if [[ ($1 == "-step") && (($2 != "compile") && ($2 != "elaborate") && ($2 != "simulate")) ]];then
    echo -e "ERROR: Invalid or missing step '$2' (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($1 == "-lib_map_path") && ($2 == "") ]];then
    echo -e "ERROR: Simulation library directory path not specified (type \"./design_1.sh -help\" for more information)\n"
    exit 1
  fi
}

# check command line arguments
check_args()
{
  arg_count=$#
  if [[ ("$#" == 1) && (("$1" == "-help") || ("$1" == "-h")) ]]; then
    usage
  fi
  while [[ "$#" -gt 0 ]]; do
    case $1 in
      -step)          check_arg_value $1 $2;step=$2;         b_step=1;         shift;;
      -lib_map_path)  check_arg_value $1 $2;lib_map_path=$2; b_lib_map_path=1; shift;;
      -gen_bypass)    b_gen_bypass=1    ;;
      -reset_run)     b_reset_run=1     ;;
      -reset_log)     b_reset_log=1     ;;
      -keep_index)    b_keep_index=1    ;;
      -noclean_files) b_noclean_files=1 ;;
      -help|-h)       ;;
      *) echo -e "ERROR: Invalid option specified '$1' (type "./top.sh -help" for more information)\n"; exit 1 ;;
    esac
     shift
  done

  # -reset_run is not applicable with other switches
  if [[ ("$arg_count" -gt 1) && ($b_reset_run == 1) ]]; then
    echo -e "ERROR: -reset_run switch is not applicable with other switches (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi

  # -reset_log is not applicable with other switches
  if [[ ("$arg_count" -gt 1) && ($b_reset_log == 1) ]]; then
    echo -e "ERROR: -reset_log switch is not applicable with other switches (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi

  # -keep_index is not applicable with other switches
  if [[ ("$arg_count" -gt 1) && ($b_keep_index == 1) ]]; then
    echo -e "ERROR: -keep_index switch is not applicable with other switches (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi

  # -noclean_files is not applicable with other switches
  if [[ ("$arg_count" -gt 1) && ($b_noclean_files == 1) ]]; then
    echo -e "ERROR: -noclean_files switch is not applicable with other switches (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi
}

# script usage
usage()
{
  msg="Usage: design_1.sh [-help]\n\
Usage: design_1.sh [-step]\n\
Usage: design_1.sh [-lib_map_path]\n\
Usage: design_1.sh [-reset_run]\n\
Usage: design_1.sh [-reset_log]\n\
Usage: design_1.sh [-keep_index]\n\
Usage: design_1.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-step <name>] -- Execute specified step (compile, elaborate, simulate)\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Delete simulator generated data files from the previous run and recreate simulator setup\n\
file/library mappings for a clean run. This switch will not execute steps defined in the script.\n\n\
NOTE: To keep simulator index file settings from the previous run, use the -keep_index switch\n\
NOTE: To regenerate simulator index file but keep the simulator generated files, use the -noclean_files switch\n\n\
[-reset_log] -- Delete simulator generated log files from the previous run\n\n\
[-keep_index] -- Keep simulator index file settings from the previous run\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run\n"
  echo -e $msg
  exit 0
}

# initialize globals
step=""
lib_map_path=""
b_step=0
b_lib_map_path=0
b_gen_bypass=0
b_reset_run=0
b_reset_log=0
b_keep_index=0
b_noclean_files=0

# launch script
run $*
