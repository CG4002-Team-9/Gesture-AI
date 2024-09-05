vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/lib_pkg_v1_0_4
vlib modelsim_lib/msim/fifo_generator_v13_2_10
vlib modelsim_lib/msim/lib_fifo_v1_0_19
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_4
vlib modelsim_lib/msim/lib_cdc_v1_0_3
vlib modelsim_lib/msim/axi_datamover_v5_1_33
vlib modelsim_lib/msim/axi_sg_v4_1_18
vlib modelsim_lib/msim/axi_dma_v7_1_32
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconstant_v1_1_9
vlib modelsim_lib/msim/proc_sys_reset_v5_0_15
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_31
vlib modelsim_lib/msim/axi_vip_v1_1_17
vlib modelsim_lib/msim/generic_baseblocks_v2_1_2
vlib modelsim_lib/msim/axi_data_fifo_v2_1_30
vlib modelsim_lib/msim/axi_crossbar_v2_1_32
vlib modelsim_lib/msim/xbip_utils_v3_0_13
vlib modelsim_lib/msim/axi_utils_v2_0_9
vlib modelsim_lib/msim/xbip_pipe_v3_0_9
vlib modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_6
vlib modelsim_lib/msim/xbip_dsp48_addsub_v3_0_9
vlib modelsim_lib/msim/xbip_dsp48_multadd_v3_0_9
vlib modelsim_lib/msim/xbip_bram18k_v3_0_9
vlib modelsim_lib/msim/mult_gen_v12_0_21
vlib modelsim_lib/msim/floating_point_v7_1_18
vlib modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_17
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_31

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap lib_pkg_v1_0_4 modelsim_lib/msim/lib_pkg_v1_0_4
vmap fifo_generator_v13_2_10 modelsim_lib/msim/fifo_generator_v13_2_10
vmap lib_fifo_v1_0_19 modelsim_lib/msim/lib_fifo_v1_0_19
vmap lib_srl_fifo_v1_0_4 modelsim_lib/msim/lib_srl_fifo_v1_0_4
vmap lib_cdc_v1_0_3 modelsim_lib/msim/lib_cdc_v1_0_3
vmap axi_datamover_v5_1_33 modelsim_lib/msim/axi_datamover_v5_1_33
vmap axi_sg_v4_1_18 modelsim_lib/msim/axi_sg_v4_1_18
vmap axi_dma_v7_1_32 modelsim_lib/msim/axi_dma_v7_1_32
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_9 modelsim_lib/msim/xlconstant_v1_1_9
vmap proc_sys_reset_v5_0_15 modelsim_lib/msim/proc_sys_reset_v5_0_15
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_31 modelsim_lib/msim/axi_register_slice_v2_1_31
vmap axi_vip_v1_1_17 modelsim_lib/msim/axi_vip_v1_1_17
vmap generic_baseblocks_v2_1_2 modelsim_lib/msim/generic_baseblocks_v2_1_2
vmap axi_data_fifo_v2_1_30 modelsim_lib/msim/axi_data_fifo_v2_1_30
vmap axi_crossbar_v2_1_32 modelsim_lib/msim/axi_crossbar_v2_1_32
vmap xbip_utils_v3_0_13 modelsim_lib/msim/xbip_utils_v3_0_13
vmap axi_utils_v2_0_9 modelsim_lib/msim/axi_utils_v2_0_9
vmap xbip_pipe_v3_0_9 modelsim_lib/msim/xbip_pipe_v3_0_9
vmap xbip_dsp48_wrapper_v3_0_6 modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_6
vmap xbip_dsp48_addsub_v3_0_9 modelsim_lib/msim/xbip_dsp48_addsub_v3_0_9
vmap xbip_dsp48_multadd_v3_0_9 modelsim_lib/msim/xbip_dsp48_multadd_v3_0_9
vmap xbip_bram18k_v3_0_9 modelsim_lib/msim/xbip_bram18k_v3_0_9
vmap mult_gen_v12_0_21 modelsim_lib/msim/mult_gen_v12_0_21
vmap floating_point_v7_1_18 modelsim_lib/msim/floating_point_v7_1_18
vmap zynq_ultra_ps_e_vip_v1_0_17 modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_17
vmap axi_protocol_converter_v2_1_31 modelsim_lib/msim/axi_protocol_converter_v2_1_31

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_pkg_v1_0_4 -64 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_10 -64 -incr -mfcu  "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10 -64 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10 -64 -incr -mfcu  "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_19 -64 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0a12/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -64 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_3 -64 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_33 -64 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bf20/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_18 -64 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/6f54/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_32 -64 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/8830/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_axi_dma_0_2/sim/design_1_axi_dma_0_2.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/sim/bd_886d.v" \

vlog -work xlconstant_v1_1_9 -64 -incr -mfcu  "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_0/sim/bd_886d_one_0.v" \

vcom -work proc_sys_reset_v5_0_15 -64 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_1/sim/bd_886d_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_2/sim/bd_886d_arsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_3/sim/bd_886d_rsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_4/sim/bd_886d_awsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_5/sim/bd_886d_wsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_6/sim/bd_886d_bsw_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/98d8/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_7/sim/bd_886d_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_8/sim/bd_886d_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a950/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_9/sim/bd_886d_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_10/sim/bd_886d_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_11/sim/bd_886d_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_12/sim/bd_886d_srn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_13/sim/bd_886d_s01mmu_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_14/sim/bd_886d_s01tr_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_15/sim/bd_886d_s01sic_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_16/sim/bd_886d_s01a2s_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_17/sim/bd_886d_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_18/sim/bd_886d_swn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_19/sim/bd_886d_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_20/sim/bd_886d_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_21/sim/bd_886d_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_22/sim/bd_886d_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_23/sim/bd_886d_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_24/sim/bd_886d_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_25/sim/bd_886d_m00bn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/1f04/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_26/sim/bd_886d_m00e_0.sv" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31 -64 -incr -mfcu  "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_17 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/sim/design_1_smartconnect_0_1.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_2/sim/design_1_proc_sys_reset_0_2.vhd" \

vlog -work generic_baseblocks_v2_1_2 -64 -incr -mfcu  "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_30 -64 -incr -mfcu  "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_32 -64 -incr -mfcu  "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work xbip_utils_v3_0_13 -64 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/24e7/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_9 -64 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/1a81/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_9 -64 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/713b/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_6 -64 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f596/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_9 -64 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/378b/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_9 -64 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/fe6e/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_9 -64 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/cd0f/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_21 -64 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f2b8/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_18 -64 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0861/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work floating_point_v7_1_18 -64 -incr -mfcu  "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0861/hdl/floating_point_v7_1_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/ip/gesture_model_fpext_32ns_64_2_no_dsp_1_ip.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_batch_norm_out_0_RAM_AUTO_1R1W.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_batch_norm_out_0_RAM_AUTO_1R1W_memcore.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_batch_normalization_0.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_batch_normalization_0_batch_norm_0_beta_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_batch_normalization_0_batch_norm_0_gamma_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_batch_normalization_0_batch_norm_0_mean_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_batch_normalization_0_batch_norm_0_variance_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_batch_normalization_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_batch_normalization_1_batch_norm_1_beta_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_batch_normalization_1_batch_norm_1_gamma_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_batch_normalization_1_batch_norm_1_mean_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_batch_normalization_1_batch_norm_1_variance_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_control_s_axi.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_conv1d_0.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_conv1d_0_Pipeline_VITIS_LOOP_25_2.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_conv1d_0_Pipeline_VITIS_LOOP_25_2_conv1d_0_biases_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_conv1d_0_Pipeline_VITIS_LOOP_25_2_conv1d_0_weights_0_0_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_conv1d_0_Pipeline_VITIS_LOOP_25_2_conv1d_0_weights_1_0_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_conv1d_0_Pipeline_VITIS_LOOP_25_2_conv1d_0_weights_2_0_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_conv1d_out_0_RAM_AUTO_1R1W.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_conv1d_out_0_RAM_AUTO_1R1W_memcore.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_dense_0.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_dense_0_dense_0_biases_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_dense_0_dense_0_weights_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_dense_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_107_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_107_1_dense_1_biases_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_107_1_dense_1_weights_0_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_107_1_dense_1_weights_1_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_107_1_dense_1_weights_2_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_107_1_dense_1_weights_3_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_107_1_dense_1_weights_4_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_107_1_dense_1_weights_5_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_107_1_dense_1_weights_6_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_107_1_dense_1_weights_7_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_107_1_dense_1_weights_8_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_107_1_dense_1_weights_9_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_107_1_dense_1_weights_10_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_107_1_dense_1_weights_11_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_107_1_dense_1_weights_12_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_107_1_dense_1_weights_13_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_107_1_dense_1_weights_14_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_107_1_dense_1_weights_15_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_119_3.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_124_4.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_dense_out_0_RAM_AUTO_1R1W.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_dense_out_0_RAM_AUTO_1R1W_memcore.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_exp_24_6_s.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_exp_24_6_s_exp_x_msb_1_table_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_exp_24_6_s_f_x_msb_2_table_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_exp_24_6_s_f_x_msb_3_table_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_exp_24_6_s_f_x_msb_4_h_table_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_exp_24_6_s_f_x_msb_4_l_table_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_fifo_w24_d2_S.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_flow_control_loop_delay_pipe.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_flow_control_loop_pipe.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_flow_control_loop_pipe_sequential_init.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_fpext_32ns_64_2_no_dsp_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_frp_fifoout.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_frp_pipeline_valid.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_hls_deadlock_detection_unit.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_hls_deadlock_idx0_monitor.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_input_0_RAM_AUTO_1R1W.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_input_0_RAM_AUTO_1R1W_memcore.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_Loop_VITIS_LOOP_75_1_proc.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_Loop_VITIS_LOOP_148_1_proc8.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_Loop_VITIS_LOOP_172_3_proc9.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_mac_muladd_24s_18s_42ns_42_4_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_max_pool_out_0_RAM_AUTO_1R1W.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_max_pool_out_0_RAM_AUTO_1R1W_memcore.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_max_pooling1d_0.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_mul_7ns_9ns_15_1_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_mul_24s_18s_42_1_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_mul_24s_19s_42_1_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_mul_42s_19ns_42_1_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_mul_42s_20ns_42_1_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_mul_44ns_42ns_86_1_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_mul_50ns_48ns_98_1_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_mul_50ns_50ns_100_1_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_output_r_RAM_AUTO_1R1W.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_output_r_RAM_AUTO_1R1W_memcore.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_regslice_both.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_sdiv_42ns_20ns_42_46_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_sdiv_42ns_24s_24_46_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_sparsemux_7_2_24_1_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_sparsemux_9_3_24_1_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model_sqrt_fixed_25_7_s.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog/gesture_model.v" \
"../../../bd/design_1/ip/design_1_gesture_model_0_2/sim/design_1_gesture_model_0_2.v" \

vlog -work zynq_ultra_ps_e_vip_v1_0_17 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim/design_1_zynq_ultra_ps_e_0_1_vip_wrapper.v" \

vlog -work axi_protocol_converter_v2_1_31 -64 -incr -mfcu  "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/3c06/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/042b/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

