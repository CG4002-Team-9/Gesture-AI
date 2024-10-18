transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/lib_pkg_v1_0_4
vlib riviera/fifo_generator_v13_2_10
vlib riviera/lib_fifo_v1_0_19
vlib riviera/lib_srl_fifo_v1_0_4
vlib riviera/lib_cdc_v1_0_3
vlib riviera/axi_datamover_v5_1_33
vlib riviera/axi_sg_v4_1_18
vlib riviera/axi_dma_v7_1_32
vlib riviera/xil_defaultlib
vlib riviera/proc_sys_reset_v5_0_15
vlib riviera/xbip_utils_v3_0_13
vlib riviera/axi_utils_v2_0_9
vlib riviera/xbip_pipe_v3_0_9
vlib riviera/xbip_dsp48_wrapper_v3_0_6
vlib riviera/xbip_dsp48_addsub_v3_0_9
vlib riviera/xbip_dsp48_multadd_v3_0_9
vlib riviera/xbip_bram18k_v3_0_9
vlib riviera/mult_gen_v12_0_21
vlib riviera/floating_point_v7_1_18
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_17
vlib riviera/zynq_ultra_ps_e_vip_v1_0_17
vlib riviera/generic_baseblocks_v2_1_2
vlib riviera/axi_register_slice_v2_1_31
vlib riviera/axi_data_fifo_v2_1_30
vlib riviera/axi_crossbar_v2_1_32
vlib riviera/axi_protocol_converter_v2_1_31
vlib riviera/axi_clock_converter_v2_1_30
vlib riviera/blk_mem_gen_v8_4_8
vlib riviera/axi_dwidth_converter_v2_1_31
vlib riviera/axi_mmu_v2_1_29

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap lib_pkg_v1_0_4 riviera/lib_pkg_v1_0_4
vmap fifo_generator_v13_2_10 riviera/fifo_generator_v13_2_10
vmap lib_fifo_v1_0_19 riviera/lib_fifo_v1_0_19
vmap lib_srl_fifo_v1_0_4 riviera/lib_srl_fifo_v1_0_4
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap axi_datamover_v5_1_33 riviera/axi_datamover_v5_1_33
vmap axi_sg_v4_1_18 riviera/axi_sg_v4_1_18
vmap axi_dma_v7_1_32 riviera/axi_dma_v7_1_32
vmap xil_defaultlib riviera/xil_defaultlib
vmap proc_sys_reset_v5_0_15 riviera/proc_sys_reset_v5_0_15
vmap xbip_utils_v3_0_13 riviera/xbip_utils_v3_0_13
vmap axi_utils_v2_0_9 riviera/axi_utils_v2_0_9
vmap xbip_pipe_v3_0_9 riviera/xbip_pipe_v3_0_9
vmap xbip_dsp48_wrapper_v3_0_6 riviera/xbip_dsp48_wrapper_v3_0_6
vmap xbip_dsp48_addsub_v3_0_9 riviera/xbip_dsp48_addsub_v3_0_9
vmap xbip_dsp48_multadd_v3_0_9 riviera/xbip_dsp48_multadd_v3_0_9
vmap xbip_bram18k_v3_0_9 riviera/xbip_bram18k_v3_0_9
vmap mult_gen_v12_0_21 riviera/mult_gen_v12_0_21
vmap floating_point_v7_1_18 riviera/floating_point_v7_1_18
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_17 riviera/axi_vip_v1_1_17
vmap zynq_ultra_ps_e_vip_v1_0_17 riviera/zynq_ultra_ps_e_vip_v1_0_17
vmap generic_baseblocks_v2_1_2 riviera/generic_baseblocks_v2_1_2
vmap axi_register_slice_v2_1_31 riviera/axi_register_slice_v2_1_31
vmap axi_data_fifo_v2_1_30 riviera/axi_data_fifo_v2_1_30
vmap axi_crossbar_v2_1_32 riviera/axi_crossbar_v2_1_32
vmap axi_protocol_converter_v2_1_31 riviera/axi_protocol_converter_v2_1_31
vmap axi_clock_converter_v2_1_30 riviera/axi_clock_converter_v2_1_30
vmap blk_mem_gen_v8_4_8 riviera/blk_mem_gen_v8_4_8
vmap axi_dwidth_converter_v2_1_31 riviera/axi_dwidth_converter_v2_1_31
vmap axi_mmu_v2_1_29 riviera/axi_mmu_v2_1_29

vlog -work xilinx_vip  -incr "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_pkg_v1_0_4 -93  -incr \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10 -93  -incr \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_19 -93  -incr \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0a12/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -93  -incr \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_33 -93  -incr \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bf20/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_18 -93  -incr \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/6f54/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_32 -93  -incr \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/8830/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_dma_0_2/sim/design_1_axi_dma_0_2.vhd" \

vcom -work proc_sys_reset_v5_0_15 -93  -incr \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_2/sim/design_1_proc_sys_reset_0_2.vhd" \

vcom -work xbip_utils_v3_0_13 -93  -incr \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/24e7/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_9 -93  -incr \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/1a81/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_9 -93  -incr \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/713b/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_6 -93  -incr \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f596/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_9 -93  -incr \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/378b/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_9 -93  -incr \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/fe6e/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_9 -93  -incr \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/cd0f/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_21 -93  -incr \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f2b8/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_18 -93  -incr \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0861/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work floating_point_v7_1_18  -incr -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0861/hdl/floating_point_v7_1_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/ip/gesture_model_fadd_32ns_32ns_32_4_full_dsp_1_ip.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/ip/gesture_model_fcmp_32ns_32ns_1_2_no_dsp_1_ip.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/ip/gesture_model_fdiv_32ns_32ns_32_9_no_dsp_1_ip.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/ip/gesture_model_fexp_32ns_32ns_32_8_full_dsp_1_ip.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/ip/gesture_model_fmul_32ns_32ns_32_3_max_dsp_1_ip.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/ip/gesture_model_fsqrt_32ns_32ns_32_8_no_dsp_1_ip.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/ip/gesture_model_fsub_32ns_32ns_32_4_full_dsp_1_ip.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_batch_norm_out_0_RAM_AUTO_1R1W.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_batch_norm_out_1_RAM_AUTO_1R1W.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_batch_norm_out_2_RAM_AUTO_1R1W.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_control_s_axi.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_conv1d_1_biases_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_conv1d_1_weights_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_conv1d_2_biases_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_conv1d_2_weights_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_conv1d_out_0_RAM_AUTO_1R1W.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_conv1d_out_1_RAM_AUTO_1R1W.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_conv1d_out_2_RAM_AUTO_1R1W.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_dense_out_0_RAM_AUTO_1R1W.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_fadd_32ns_32ns_32_4_full_dsp_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_fcmp_32ns_32ns_1_2_no_dsp_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_fdiv_32ns_32ns_32_9_no_dsp_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_fexp_32ns_32ns_32_8_full_dsp_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_flatten_out_0_RAM_AUTO_1R1W.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_flow_control_loop_pipe_sequential_init.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_fmul_32ns_32ns_32_3_max_dsp_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_fsqrt_32ns_32ns_32_8_no_dsp_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_fsub_32ns_32ns_32_4_full_dsp_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_25_3.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_25_3_conv1d_0_weights_0_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_43_2.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_54_1_VITIS_LOOP_56_2.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_83_4.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_83_41.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_96_1_VITIS_LOOP_98_2.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_96_1_VITIS_LOOP_98_2_batch_norm_1_beta_ROM_eOg.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_96_1_VITIS_LOOP_98_2_batch_norm_1_gamma_ROMcud.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_96_1_VITIS_LOOP_98_2_batch_norm_1_mean_ROM_dEe.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_96_1_VITIS_LOOP_98_2_batch_norm_1_variance_bkb.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_114_3.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_138_4.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_138_42.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_151_1_VITIS_LOOP_153_2.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_151_1_VITIS_LOOP_153_2_batch_norm_2_beta_ROibs.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_151_1_VITIS_LOOP_153_2_batch_norm_2_gamma_Rg8j.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_151_1_VITIS_LOOP_153_2_batch_norm_2_mean_ROhbi.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_151_1_VITIS_LOOP_153_2_batch_norm_2_variancfYi.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_164_1_VITIS_LOOP_166_2.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_187_1_VITIS_LOOP_189_2.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_198_1_VITIS_LOOP_201_2.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_198_1_VITIS_LOOP_201_2_dense_0_biases_ROM_AkbM.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_198_1_VITIS_LOOP_201_2_dense_0_weights_ROM_jbC.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_212_1_VITIS_LOOP_215_2.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_212_1_VITIS_LOOP_215_2_dense_1_biases_ROM_Amb6.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_212_1_VITIS_LOOP_215_2_dense_1_weights_ROM_lbW.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_224_3.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_230_4.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_260_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_gesture_model_Pipeline_VITIS_LOOP_287_3.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_hls_deadlock_idx0_monitor.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_input_0_RAM_AUTO_1R1W.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_max_pool_out_0_RAM_AUTO_1R1W.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_max_pool_out_1_RAM_AUTO_1R1W.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_max_pool_out_2_RAM_AUTO_1R1W.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_mul_9ns_11ns_19_1_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_output_RAM_AUTO_1R1W.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_regslice_both.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_sparsemux_9_2_32_1_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model_urem_9ns_3ns_2_13_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog/gesture_model.v" \
"../../../bd/design_1/ip/design_1_gesture_model_0_2/sim/design_1_gesture_model_0_2.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_17  -incr "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_17  -incr "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim/design_1_zynq_ultra_ps_e_0_1_vip_wrapper.v" \

vlog -work generic_baseblocks_v2_1_2  -incr -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31  -incr -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_30  -incr -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_32  -incr -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_31  -incr -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/3c06/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_30  -incr -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/80bf/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_8  -incr -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_31  -incr -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/14b9/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../bd/design_1/ip/design_1_auto_us_0/sim/design_1_auto_us_0.v" \
"../../../bd/design_1/ip/design_1_auto_us_1/sim/design_1_auto_us_1.v" \
"../../../bd/design_1/ip/design_1_auto_us_2/sim/design_1_auto_us_2.v" \
"../../../bd/design_1/ip/design_1_auto_ds_0/sim/design_1_auto_ds_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/ip/design_1_auto_ds_1/sim/design_1_auto_ds_1.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \

vlog -work axi_mmu_v2_1_29  -incr -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/b562/hdl/axi_mmu_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0bd1/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 -l axi_mmu_v2_1_29 \
"../../../bd/design_1/ip/design_1_s00_mmu_0/sim/design_1_s00_mmu_0.v" \
"../../../bd/design_1/ip/design_1_s01_mmu_0/sim/design_1_s01_mmu_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

