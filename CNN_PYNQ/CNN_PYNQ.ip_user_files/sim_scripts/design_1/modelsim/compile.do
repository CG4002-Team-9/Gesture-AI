vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/fifo_generator_v13_2_7
vlib modelsim_lib/msim/lib_fifo_v1_0_16
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/axi_datamover_v5_1_29
vlib modelsim_lib/msim/axi_sg_v4_1_15
vlib modelsim_lib/msim/axi_dma_v7_1_28
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/axis_infrastructure_v1_1_0
vlib modelsim_lib/msim/axis_register_slice_v1_1_27
vlib modelsim_lib/msim/axis_switch_v1_1_27
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_13
vlib modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_13
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_27
vlib modelsim_lib/msim/axi_data_fifo_v2_1_26
vlib modelsim_lib/msim/axi_crossbar_v2_1_28
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_27
vlib modelsim_lib/msim/xbip_utils_v3_0_10
vlib modelsim_lib/msim/axi_utils_v2_0_6
vlib modelsim_lib/msim/xbip_pipe_v3_0_6
vlib modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vlib modelsim_lib/msim/xbip_dsp48_multadd_v3_0_6
vlib modelsim_lib/msim/xbip_bram18k_v3_0_6
vlib modelsim_lib/msim/mult_gen_v12_0_18
vlib modelsim_lib/msim/floating_point_v7_1_15

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_7 modelsim_lib/msim/fifo_generator_v13_2_7
vmap lib_fifo_v1_0_16 modelsim_lib/msim/lib_fifo_v1_0_16
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_29 modelsim_lib/msim/axi_datamover_v5_1_29
vmap axi_sg_v4_1_15 modelsim_lib/msim/axi_sg_v4_1_15
vmap axi_dma_v7_1_28 modelsim_lib/msim/axi_dma_v7_1_28
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap axis_infrastructure_v1_1_0 modelsim_lib/msim/axis_infrastructure_v1_1_0
vmap axis_register_slice_v1_1_27 modelsim_lib/msim/axis_register_slice_v1_1_27
vmap axis_switch_v1_1_27 modelsim_lib/msim/axis_switch_v1_1_27
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 modelsim_lib/msim/axi_vip_v1_1_13
vmap zynq_ultra_ps_e_vip_v1_0_13 modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_13
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_27 modelsim_lib/msim/axi_register_slice_v2_1_27
vmap axi_data_fifo_v2_1_26 modelsim_lib/msim/axi_data_fifo_v2_1_26
vmap axi_crossbar_v2_1_28 modelsim_lib/msim/axi_crossbar_v2_1_28
vmap axi_protocol_converter_v2_1_27 modelsim_lib/msim/axi_protocol_converter_v2_1_27
vmap xbip_utils_v3_0_10 modelsim_lib/msim/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 modelsim_lib/msim/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 modelsim_lib/msim/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 modelsim_lib/msim/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 modelsim_lib/msim/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_18 modelsim_lib/msim/mult_gen_v12_0_18
vmap floating_point_v7_1_15 modelsim_lib/msim/floating_point_v7_1_15

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L zynq_ultra_ps_e_vip_v1_0_13 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L zynq_ultra_ps_e_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_0_1/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93  \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_7 -64 -incr -mfcu  "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_0_1/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -64 -93  \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7 -64 -incr -mfcu  "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_0_1/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_16 -64 -93  \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93  \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93  \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_29 -64 -93  \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2237/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_15 -64 -93  \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/751a/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_28 -64 -93  \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/70c4/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_axi_dma_0_0/sim/design_1_axi_dma_0_0.vhd" \

vlog -work axis_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_0_1/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_27 -64 -incr -mfcu  "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_0_1/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/6ba3/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work axis_switch_v1_1_27 -64 -incr -mfcu  "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_0_1/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/1b0f/hdl/axis_switch_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_0_1/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work proc_sys_reset_v5_0_13 -64 -93  \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_0/sim/design_1_proc_sys_reset_0_0.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_0_1/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L zynq_ultra_ps_e_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_0_1/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_13 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L zynq_ultra_ps_e_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_0_1/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/abef/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_0_1/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim/design_1_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr -mfcu  "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_0_1/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27 -64 -incr -mfcu  "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_0_1/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_26 -64 -incr -mfcu  "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_0_1/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_28 -64 -incr -mfcu  "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_0_1/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_0_1/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_1/sim/design_1_xbar_1.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work axi_protocol_converter_v2_1_27 -64 -incr -mfcu  "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_0_1/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_0_1/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vcom -work xbip_utils_v3_0_10 -64 -93  \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -64 -93  \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -64 -93  \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93  \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -64 -93  \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -64 -93  \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -64 -93  \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_18 -64 -93  \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/ab19/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_15 -64 -93  \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/22f8/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work floating_point_v7_1_15 -64 -incr -mfcu  "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_0_1/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/22f8/hdl/floating_point_v7_1_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog" "+incdir+../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_0_1/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_batch_norm_out_0_V_RAM_AUTO_1R1W.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_batch_norm_out_0_V_RAM_AUTO_1R1W_memcore.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_batch_norm_out_1_V_RAM_AUTO_1R1W.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_batch_norm_out_1_V_RAM_AUTO_1R1W_memcore.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_batch_normalization_0.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_batch_normalization_0_batch_norm_0_beta_V_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_batch_normalization_0_batch_norm_0_gamma_V_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_batch_normalization_0_batch_norm_0_mean_V_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_batch_normalization_0_batch_norm_0_variance_V_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_batch_normalization_1.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_batch_normalization_1_batch_norm_1_beta_V_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_batch_normalization_1_batch_norm_1_gamma_V_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_batch_normalization_1_batch_norm_1_mean_V_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_batch_normalization_1_batch_norm_1_variance_V_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_Block_for_end111_proc.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_control_s_axi.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_conv1d_0.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_conv1d_0_conv1d_0_biases_V_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_conv1d_0_conv1d_0_weights_V_0_0_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_conv1d_0_conv1d_0_weights_V_1_0_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_conv1d_0_conv1d_0_weights_V_2_0_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_conv1d_out_0_V_RAM_AUTO_1R1W.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_conv1d_out_0_V_RAM_AUTO_1R1W_memcore.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_dense_0.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_dense_0_dense_0_biases_V_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_dense_0_dense_0_weights_V_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_dense_1.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_biases_V_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_0_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_1_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_2_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_3_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_4_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_5_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_6_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_7_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_8_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_9_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_10_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_11_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_12_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_13_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_14_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_15_ROM_AUTO_1R.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_120_3.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_124_4.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_dense_out_0_V_RAM_AUTO_1R1W.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_dense_out_0_V_RAM_AUTO_1R1W_memcore.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_dexp_64ns_64ns_64_13_full_dsp_1.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_dsqrt_64ns_64ns_64_21_no_dsp_1.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_fifo_w16_d2_S.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_fifo_w32_d2_S.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_flow_control_loop_delay_pipe.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_flow_control_loop_pipe.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_flow_control_loop_pipe_sequential_init.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_frp_fifoout.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_frp_pipeline_valid.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_hls_deadlock_detection_unit.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_hls_deadlock_idx0_monitor.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_input_V_0_RAM_AUTO_1R1W.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_input_V_0_RAM_AUTO_1R1W_memcore.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_Loop_VITIS_LOOP_77_1_proc.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_Loop_VITIS_LOOP_147_1_proc9.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_Loop_VITIS_LOOP_167_3_proc.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_Loop_VITIS_LOOP_167_3_proc_Pipeline_VITIS_LOOP_167_3.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_mac_muladd_16s_8s_24ns_24_4_1.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_mac_muladd_16s_9s_24ns_24_4_1.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_mac_muladd_24s_9ns_15s_24_4_1.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_mac_muladd_24s_10ns_16s_24_4_1.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_max_pool_out_0_V_RAM_AUTO_1R1W.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_max_pool_out_0_V_RAM_AUTO_1R1W_memcore.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_max_pooling1d_0.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_mul_mul_16s_8s_24_4_1.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_mul_mul_16s_9s_24_4_1.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_output_V_RAM_AUTO_1R1W.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_output_V_RAM_AUTO_1R1W_memcore.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_regslice_both.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_sdiv_24ns_16s_16_28_1.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model_sdiv_24ns_16s_24_28_1.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/verilog/gesture_model.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/ip/gesture_model_dsqrt_64ns_64ns_64_21_no_dsp_1_ip.v" \
"../../../../CNN_PYNQ.gen/sources_1/bd/design_1/ipshared/2848/hdl/ip/gesture_model_dexp_64ns_64ns_64_13_full_dsp_1_ip.v" \
"../../../bd/design_1/ip/design_1_gesture_model_0_0_1/sim/design_1_gesture_model_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

