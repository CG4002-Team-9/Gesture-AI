vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_13
vlib activehdl/zynq_ultra_ps_e_vip_v1_0_13
vlib activehdl/xil_defaultlib
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/fifo_generator_v13_2_7
vlib activehdl/lib_fifo_v1_0_16
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/axi_datamover_v5_1_29
vlib activehdl/axi_sg_v4_1_15
vlib activehdl/axi_dma_v7_1_28
vlib activehdl/xlconstant_v1_1_7
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_register_slice_v2_1_27
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_data_fifo_v2_1_26
vlib activehdl/axi_crossbar_v2_1_28
vlib activehdl/xbip_utils_v3_0_10
vlib activehdl/axi_utils_v2_0_6
vlib activehdl/xbip_pipe_v3_0_6
vlib activehdl/xbip_dsp48_wrapper_v3_0_4
vlib activehdl/xbip_dsp48_addsub_v3_0_6
vlib activehdl/xbip_dsp48_multadd_v3_0_6
vlib activehdl/xbip_bram18k_v3_0_6
vlib activehdl/mult_gen_v12_0_18
vlib activehdl/floating_point_v7_1_15
vlib activehdl/axi_protocol_converter_v2_1_27

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 activehdl/axi_vip_v1_1_13
vmap zynq_ultra_ps_e_vip_v1_0_13 activehdl/zynq_ultra_ps_e_vip_v1_0_13
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_7 activehdl/fifo_generator_v13_2_7
vmap lib_fifo_v1_0_16 activehdl/lib_fifo_v1_0_16
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_29 activehdl/axi_datamover_v5_1_29
vmap axi_sg_v4_1_15 activehdl/axi_sg_v4_1_15
vmap axi_dma_v7_1_28 activehdl/axi_dma_v7_1_28
vmap xlconstant_v1_1_7 activehdl/xlconstant_v1_1_7
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_register_slice_v2_1_27 activehdl/axi_register_slice_v2_1_27
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_data_fifo_v2_1_26 activehdl/axi_data_fifo_v2_1_26
vmap axi_crossbar_v2_1_28 activehdl/axi_crossbar_v2_1_28
vmap xbip_utils_v3_0_10 activehdl/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 activehdl/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 activehdl/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 activehdl/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 activehdl/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 activehdl/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 activehdl/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_18 activehdl/mult_gen_v12_0_18
vmap floating_point_v7_1_15 activehdl/floating_point_v7_1_15
vmap axi_protocol_converter_v2_1_27 activehdl/axi_protocol_converter_v2_1_27

vlog -work xilinx_vip  -sv2k12 "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13  -sv2k12 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_13  -sv2k12 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim/design_1_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work lib_pkg_v1_0_2 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_16 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_29 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/2237/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_15 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/751a/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_28 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/70c4/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_axi_dma_0_2/sim/design_1_axi_dma_0_2.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/sim/bd_886d.v" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/badb/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_0/sim/bd_886d_one_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_1/sim/bd_886d_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_2/sim/bd_886d_arsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_3/sim/bd_886d_rsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_4/sim/bd_886d_awsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_5/sim/bd_886d_wsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_6/sim/bd_886d_bsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/be1f/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_7/sim/bd_886d_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_8/sim/bd_886d_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/637d/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_9/sim/bd_886d_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f38e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_10/sim/bd_886d_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_11/sim/bd_886d_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_12/sim/bd_886d_srn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_13/sim/bd_886d_s01mmu_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_14/sim/bd_886d_s01tr_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_15/sim/bd_886d_s01sic_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_16/sim/bd_886d_s01a2s_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_17/sim/bd_886d_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_18/sim/bd_886d_swn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_19/sim/bd_886d_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/9cc5/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_20/sim/bd_886d_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_21/sim/bd_886d_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_22/sim/bd_886d_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_23/sim/bd_886d_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_24/sim/bd_886d_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_25/sim/bd_886d_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/6bba/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/bd_0/ip/ip_26/sim/bd_886d_m00e_0.sv" \

vlog -work axi_register_slice_v2_1_27  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_1/sim/design_1_smartconnect_0_1.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_2/sim/design_1_proc_sys_reset_0_2.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_28  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_4/sim/design_1_xbar_4.v" \

vcom -work xbip_utils_v3_0_10 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_18 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ab19/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_15 -93  \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/22f8/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work floating_point_v7_1_15  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/22f8/hdl/floating_point_v7_1_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_batch_norm_out_0_V_RAM_AUTO_1R1W.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_batch_norm_out_0_V_RAM_AUTO_1R1W_memcore.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_batch_norm_out_1_V_RAM_AUTO_1R1W.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_batch_norm_out_1_V_RAM_AUTO_1R1W_memcore.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_batch_normalization_0.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_batch_normalization_0_batch_norm_0_beta_V_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_batch_normalization_0_batch_norm_0_gamma_V_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_batch_normalization_0_batch_norm_0_mean_V_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_batch_normalization_0_batch_norm_0_variance_V_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_batch_normalization_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_batch_normalization_1_batch_norm_1_beta_V_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_batch_normalization_1_batch_norm_1_gamma_V_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_batch_normalization_1_batch_norm_1_mean_V_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_batch_normalization_1_batch_norm_1_variance_V_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_control_s_axi.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_conv1d_0.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_conv1d_0_conv1d_0_biases_V_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_conv1d_0_conv1d_0_weights_V_0_0_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_conv1d_0_conv1d_0_weights_V_1_0_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_conv1d_0_conv1d_0_weights_V_2_0_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_conv1d_out_0_V_RAM_AUTO_1R1W.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_conv1d_out_0_V_RAM_AUTO_1R1W_memcore.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_dense_0.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_dense_0_dense_0_biases_V_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_dense_0_dense_0_weights_V_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_dense_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_biases_V_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_0_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_1_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_2_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_3_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_4_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_5_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_6_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_7_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_8_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_9_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_10_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_11_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_12_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_13_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_14_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_109_1_dense_1_weights_V_15_ROM_AUTO_1R.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_120_3.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_dense_1_Pipeline_VITIS_LOOP_124_4.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_dense_out_0_V_RAM_AUTO_1R1W.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_dense_out_0_V_RAM_AUTO_1R1W_memcore.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_dexp_64ns_64ns_64_13_full_dsp_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_dsqrt_64ns_64ns_64_21_no_dsp_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_flow_control_loop_delay_pipe.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_flow_control_loop_pipe.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_flow_control_loop_pipe_sequential_init.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_fpext_32ns_64_2_no_dsp_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_frp_fifoout.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_frp_pipeline_valid.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_hls_deadlock_detection_unit.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_hls_deadlock_idx0_monitor.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_input_V_0_RAM_AUTO_1R1W.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_input_V_0_RAM_AUTO_1R1W_memcore.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_Loop_VITIS_LOOP_77_1_proc.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_Loop_VITIS_LOOP_148_1_proc8.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_Loop_VITIS_LOOP_171_3_proc9.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_max_pool_out_0_V_RAM_AUTO_1R1W.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_max_pool_out_0_V_RAM_AUTO_1R1W_memcore.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_max_pooling1d_0.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_mul_43s_19ns_62_1_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_mul_43s_20ns_63_1_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_mul_mul_24s_18s_42_4_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_mul_mul_24s_19s_43_4_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_output_V_RAM_AUTO_1R1W.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_output_V_RAM_AUTO_1R1W_memcore.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_regslice_both.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_sdiv_42ns_24s_42_46_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model_sdiv_43s_24s_43_47_1.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog/gesture_model.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/ip/gesture_model_dsqrt_64ns_64ns_64_21_no_dsp_1_ip.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/ip/gesture_model_fpext_32ns_64_2_no_dsp_1_ip.v" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/ip/gesture_model_dexp_64ns_64ns_64_13_full_dsp_1_ip.v" \
"../../../bd/design_1/ip/design_1_gesture_model_0_2/sim/design_1_gesture_model_0_2.v" \

vlog -work axi_protocol_converter_v2_1_27  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ipshared/bd68/hdl/verilog" "+incdir+../../../../pynq_bitstream.gen/sources_1/bd/design_1/ip/design_1_gesture_model_0_2/drivers/gesture_model_v1_0/src" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

