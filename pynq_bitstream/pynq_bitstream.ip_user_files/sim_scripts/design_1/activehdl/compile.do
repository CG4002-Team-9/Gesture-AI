transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/lib_pkg_v1_0_4
vlib activehdl/fifo_generator_v13_2_10
vlib activehdl/lib_fifo_v1_0_19
vlib activehdl/lib_srl_fifo_v1_0_4
vlib activehdl/lib_cdc_v1_0_3
vlib activehdl/axi_datamover_v5_1_33
vlib activehdl/axi_sg_v4_1_18
vlib activehdl/axi_dma_v7_1_32
vlib activehdl/xil_defaultlib
vlib activehdl/proc_sys_reset_v5_0_15
vlib activehdl/xbip_utils_v3_0_13
vlib activehdl/axi_utils_v2_0_9
vlib activehdl/xbip_pipe_v3_0_9
vlib activehdl/xbip_dsp48_wrapper_v3_0_6
vlib activehdl/xbip_dsp48_addsub_v3_0_9
vlib activehdl/xbip_dsp48_multadd_v3_0_9
vlib activehdl/xbip_bram18k_v3_0_9
vlib activehdl/mult_gen_v12_0_21
vlib activehdl/floating_point_v7_1_18
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_17
vlib activehdl/zynq_ultra_ps_e_vip_v1_0_17
vlib activehdl/generic_baseblocks_v2_1_2
vlib activehdl/axi_register_slice_v2_1_31
vlib activehdl/axi_data_fifo_v2_1_30
vlib activehdl/axi_crossbar_v2_1_32
vlib activehdl/axi_protocol_converter_v2_1_31
vlib activehdl/axi_clock_converter_v2_1_30
vlib activehdl/blk_mem_gen_v8_4_8
vlib activehdl/axi_dwidth_converter_v2_1_31
vlib activehdl/axi_mmu_v2_1_29

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap lib_pkg_v1_0_4 activehdl/lib_pkg_v1_0_4
vmap fifo_generator_v13_2_10 activehdl/fifo_generator_v13_2_10
vmap lib_fifo_v1_0_19 activehdl/lib_fifo_v1_0_19
vmap lib_srl_fifo_v1_0_4 activehdl/lib_srl_fifo_v1_0_4
vmap lib_cdc_v1_0_3 activehdl/lib_cdc_v1_0_3
vmap axi_datamover_v5_1_33 activehdl/axi_datamover_v5_1_33
vmap axi_sg_v4_1_18 activehdl/axi_sg_v4_1_18
vmap axi_dma_v7_1_32 activehdl/axi_dma_v7_1_32
vmap xil_defaultlib activehdl/xil_defaultlib
vmap proc_sys_reset_v5_0_15 activehdl/proc_sys_reset_v5_0_15
vmap xbip_utils_v3_0_13 activehdl/xbip_utils_v3_0_13
vmap axi_utils_v2_0_9 activehdl/axi_utils_v2_0_9
vmap xbip_pipe_v3_0_9 activehdl/xbip_pipe_v3_0_9
vmap xbip_dsp48_wrapper_v3_0_6 activehdl/xbip_dsp48_wrapper_v3_0_6
vmap xbip_dsp48_addsub_v3_0_9 activehdl/xbip_dsp48_addsub_v3_0_9
vmap xbip_dsp48_multadd_v3_0_9 activehdl/xbip_dsp48_multadd_v3_0_9
vmap xbip_bram18k_v3_0_9 activehdl/xbip_bram18k_v3_0_9
vmap mult_gen_v12_0_21 activehdl/mult_gen_v12_0_21
vmap floating_point_v7_1_18 activehdl/floating_point_v7_1_18
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_17 activehdl/axi_vip_v1_1_17
vmap zynq_ultra_ps_e_vip_v1_0_17 activehdl/zynq_ultra_ps_e_vip_v1_0_17
vmap generic_baseblocks_v2_1_2 activehdl/generic_baseblocks_v2_1_2
vmap axi_register_slice_v2_1_31 activehdl/axi_register_slice_v2_1_31
vmap axi_data_fifo_v2_1_30 activehdl/axi_data_fifo_v2_1_30
vmap axi_crossbar_v2_1_32 activehdl/axi_crossbar_v2_1_32
vmap axi_protocol_converter_v2_1_31 activehdl/axi_protocol_converter_v2_1_31
vmap axi_clock_converter_v2_1_30 activehdl/axi_clock_converter_v2_1_30
vmap blk_mem_gen_v8_4_8 activehdl/blk_mem_gen_v8_4_8
vmap axi_dwidth_converter_v2_1_31 activehdl/axi_dwidth_converter_v2_1_31
vmap axi_mmu_v2_1_29 activehdl/axi_mmu_v2_1_29

vlog -work xilinx_vip  -sv2k12 "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -  \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_pkg_v1_0_4 -  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10 -  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_19 -  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0a12/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_3 -  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_33 -  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bf20/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_18 -  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/6f54/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_32 -  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/8830/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -  \
"../../../bd/design_1/ip/design_1_axi_dma_0_2/sim/design_1_axi_dma_0_2.vhd" \

vcom -work proc_sys_reset_v5_0_15 -  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -  \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_2/sim/design_1_proc_sys_reset_0_2.vhd" \

vcom -work xbip_utils_v3_0_13 -  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/24e7/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_9 -  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/1a81/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_9 -  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/713b/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_6 -  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f596/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_9 -  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/378b/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_9 -  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/fe6e/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_9 -  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/cd0f/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_21 -  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f2b8/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_18 -  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0861/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work floating_point_v7_1_18  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0861/hdl/floating_point_v7_1_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
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

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_17  -sv2k12 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_17  -sv2k12 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim/design_1_zynq_ultra_ps_e_0_1_vip_wrapper.v" \

vlog -work generic_baseblocks_v2_1_2  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_30  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_32  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_31  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/3c06/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_30  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/80bf/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_8  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_31  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/14b9/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../bd/design_1/ip/design_1_auto_us_0/sim/design_1_auto_us_0.v" \
"../../../bd/design_1/ip/design_1_auto_us_1/sim/design_1_auto_us_1.v" \
"../../../bd/design_1/ip/design_1_auto_us_2/sim/design_1_auto_us_2.v" \
"../../../bd/design_1/ip/design_1_auto_ds_0/sim/design_1_auto_ds_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/ip/design_1_auto_ds_1/sim/design_1_auto_ds_1.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \

vlog -work axi_mmu_v2_1_29  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/b562/hdl/axi_mmu_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7958/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../bd/design_1/ip/design_1_s00_mmu_0/sim/design_1_s00_mmu_0.v" \
"../../../bd/design_1/ip/design_1_s01_mmu_0/sim/design_1_s01_mmu_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

