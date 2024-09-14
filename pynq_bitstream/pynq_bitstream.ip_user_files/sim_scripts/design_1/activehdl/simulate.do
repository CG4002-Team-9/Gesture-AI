transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+design_1  -L xilinx_vip -L xpm -L lib_pkg_v1_0_4 -L fifo_generator_v13_2_10 -L lib_fifo_v1_0_19 -L lib_srl_fifo_v1_0_4 -L lib_cdc_v1_0_3 -L axi_datamover_v5_1_33 -L axi_sg_v4_1_18 -L axi_dma_v7_1_32 -L xil_defaultlib -L proc_sys_reset_v5_0_15 -L xbip_utils_v3_0_13 -L axi_utils_v2_0_9 -L xbip_pipe_v3_0_9 -L xbip_dsp48_wrapper_v3_0_6 -L xbip_dsp48_addsub_v3_0_9 -L xbip_dsp48_multadd_v3_0_9 -L xbip_bram18k_v3_0_9 -L mult_gen_v12_0_21 -L floating_point_v7_1_18 -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_17 -L zynq_ultra_ps_e_vip_v1_0_17 -L generic_baseblocks_v2_1_2 -L axi_register_slice_v2_1_31 -L axi_data_fifo_v2_1_30 -L axi_crossbar_v2_1_32 -L axi_protocol_converter_v2_1_31 -L axi_clock_converter_v2_1_30 -L blk_mem_gen_v8_4_8 -L axi_dwidth_converter_v2_1_31 -L axi_mmu_v2_1_29 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.design_1 xil_defaultlib.glbl

do {design_1.udo}

run

endsim

quit -force
