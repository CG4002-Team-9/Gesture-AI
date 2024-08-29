set moduleName gesture_model
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {gesture_model}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_r int 16 regular {array 120 { 1 1 } 1 1 }  }
	{ output_r int 16 regular {array 20 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_r", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ input_r_address0 sc_out sc_lv 7 signal 0 } 
	{ input_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_r_d0 sc_out sc_lv 16 signal 0 } 
	{ input_r_q0 sc_in sc_lv 16 signal 0 } 
	{ input_r_we0 sc_out sc_logic 1 signal 0 } 
	{ input_r_address1 sc_out sc_lv 7 signal 0 } 
	{ input_r_ce1 sc_out sc_logic 1 signal 0 } 
	{ input_r_d1 sc_out sc_lv 16 signal 0 } 
	{ input_r_q1 sc_in sc_lv 16 signal 0 } 
	{ input_r_we1 sc_out sc_logic 1 signal 0 } 
	{ output_r_address0 sc_out sc_lv 5 signal 1 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 1 } 
	{ output_r_d0 sc_out sc_lv 16 signal 1 } 
	{ output_r_q0 sc_in sc_lv 16 signal 1 } 
	{ output_r_we0 sc_out sc_logic 1 signal 1 } 
	{ output_r_address1 sc_out sc_lv 5 signal 1 } 
	{ output_r_ce1 sc_out sc_logic 1 signal 1 } 
	{ output_r_d1 sc_out sc_lv 16 signal 1 } 
	{ output_r_q1 sc_in sc_lv 16 signal 1 } 
	{ output_r_we1 sc_out sc_logic 1 signal 1 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "input_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_r", "role": "address0" }} , 
 	{ "name": "input_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce0" }} , 
 	{ "name": "input_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_r", "role": "d0" }} , 
 	{ "name": "input_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_r", "role": "q0" }} , 
 	{ "name": "input_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "we0" }} , 
 	{ "name": "input_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_r", "role": "address1" }} , 
 	{ "name": "input_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce1" }} , 
 	{ "name": "input_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_r", "role": "d1" }} , 
 	{ "name": "input_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_r", "role": "q1" }} , 
 	{ "name": "input_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "we1" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "output_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_r", "role": "q0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_r", "role": "address1" }} , 
 	{ "name": "output_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce1" }} , 
 	{ "name": "output_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_r", "role": "d1" }} , 
 	{ "name": "output_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_r", "role": "q1" }} , 
 	{ "name": "output_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we1" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "20", "27", "29", "31", "36", "45", "72"],
		"CDFG" : "gesture_model",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17280", "EstimateLatencyMax" : "17280",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "8", "Name" : "conv1d_0_U0"}],
		"OutputProcess" : [
			{"ID" : "72", "Name" : "softmax_7_U0"}],
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "conv1d_0_U0", "Port" : "input_r"}]},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "softmax_7_U0", "Port" : "output_r"}]},
			{"Name" : "bn_moving_mean_1_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "batchnorm_1_U0", "Port" : "bn_moving_mean_1_V"}]},
			{"Name" : "bn_gamma_1_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "batchnorm_1_U0", "Port" : "bn_gamma_1_V"}]},
			{"Name" : "bn_beta_1_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "batchnorm_1_U0", "Port" : "bn_beta_1_V"}]},
			{"Name" : "dense_biases_4_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "dense_4_U0", "Port" : "dense_biases_4_V"}]},
			{"Name" : "dense_weights_4_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "dense_4_U0", "Port" : "dense_weights_4_V"}]},
			{"Name" : "bn_moving_mean_5_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "batchnorm_5_U0", "Port" : "bn_moving_mean_5_V"}]},
			{"Name" : "bn_moving_variance_5_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "batchnorm_5_U0", "Port" : "bn_moving_variance_5_V"}]},
			{"Name" : "bn_gamma_5_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "batchnorm_5_U0", "Port" : "bn_gamma_5_V"}]},
			{"Name" : "bn_beta_5_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "batchnorm_5_U0", "Port" : "bn_beta_5_V"}]},
			{"Name" : "dense_weights_7_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "dense_output_7_U0", "Port" : "dense_weights_7_V"}]},
			{"Name" : "dense_biases_7_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "dense_output_7_U0", "Port" : "dense_biases_7_V"}]},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "dense_output_7_U0", "Port" : "f_x_lsb_table_V"}]},
			{"Name" : "exp_x_msb_2_m_1_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "dense_output_7_U0", "Port" : "exp_x_msb_2_m_1_table_V"}]},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "dense_output_7_U0", "Port" : "exp_x_msb_1_table_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1d_out_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bn1_out_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.maxpool_out_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flatten_out_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense1_out_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bn2_out_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_output_out_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0", "Parent" : "0", "Child" : ["9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv1d_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "847", "EstimateLatencyMax" : "847",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "1"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_14_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage5", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage5_subdone", "QuitState" : "ap_ST_fsm_pp0_stage5", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage5_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0.mul_mul_16s_5ns_22_4_1_U1", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0.mac_muladd_16s_7ns_22s_24_4_1_U2", "Parent" : "8"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0.mac_muladd_16s_7s_24s_24_4_1_U3", "Parent" : "8"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0.mac_muladd_16s_8s_24ns_24_4_1_U4", "Parent" : "8"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0.mac_muladd_16s_5ns_24s_24_4_1_U5", "Parent" : "8"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0.mac_muladd_16s_6ns_24s_24_4_1_U6", "Parent" : "8"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0.mac_muladd_16s_7s_24s_24_4_1_U7", "Parent" : "8"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0.mac_muladd_16s_6ns_24s_24_4_1_U8", "Parent" : "8"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0.mac_muladd_16s_7s_24s_24_4_1_U9", "Parent" : "8"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0.mac_muladd_16s_7s_24s_24_4_1_U10", "Parent" : "8"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0.flow_control_loop_pipe_U", "Parent" : "8"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.batchnorm_1_U0", "Parent" : "0", "Child" : ["21", "22", "23", "24", "25", "26"],
		"CDFG" : "batchnorm_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "137", "EstimateLatencyMax" : "137",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["8"], "DependentChan" : "1"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["27"], "DependentChan" : "2"},
			{"Name" : "bn_moving_mean_1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bn_gamma_1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bn_beta_1_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter31", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter31", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batchnorm_1_U0.bn_moving_mean_1_V_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batchnorm_1_U0.bn_gamma_1_V_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batchnorm_1_U0.bn_beta_1_V_U", "Parent" : "20"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batchnorm_1_U0.sdiv_24ns_1ns_24_28_1_U19", "Parent" : "20"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batchnorm_1_U0.mac_muladd_24s_9ns_15s_24_4_1_U20", "Parent" : "20"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batchnorm_1_U0.flow_control_loop_pipe_U", "Parent" : "20"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.maxpool1d_2_U0", "Parent" : "0", "Child" : ["28"],
		"CDFG" : "maxpool1d_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "54", "EstimateLatencyMax" : "54",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["20"], "DependentChan" : "2"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["29"], "DependentChan" : "3"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_34_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.maxpool1d_2_U0.flow_control_loop_pipe_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_42_1_proc_U0", "Parent" : "0", "Child" : ["30"],
		"CDFG" : "Loop_VITIS_LOOP_42_1_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "946", "EstimateLatencyMax" : "946",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "maxpool_out_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["27"], "DependentChan" : "3"},
			{"Name" : "flatten_out_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "4"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_42_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_42_1_proc_U0.flow_control_loop_pipe_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_4_U0", "Parent" : "0", "Child" : ["32", "33", "34", "35"],
		"CDFG" : "dense_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15109", "EstimateLatencyMax" : "15109",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["29"], "DependentChan" : "4"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["36"], "DependentChan" : "5"},
			{"Name" : "dense_biases_4_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_weights_4_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_49_1_VITIS_LOOP_51_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_4_U0.dense_biases_4_V_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_4_U0.dense_weights_4_V_U", "Parent" : "31"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_4_U0.mac_muladd_16s_7s_24s_24_4_1_U32", "Parent" : "31"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_4_U0.flow_control_loop_pipe_U", "Parent" : "31"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.batchnorm_5_U0", "Parent" : "0", "Child" : ["37", "38", "39", "40", "41", "42", "43", "44"],
		"CDFG" : "batchnorm_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "52", "EstimateLatencyMax" : "52",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["31"], "DependentChan" : "5"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["45"], "DependentChan" : "6"},
			{"Name" : "bn_moving_mean_5_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bn_moving_variance_5_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bn_gamma_5_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bn_beta_5_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_60_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter35", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter35", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batchnorm_5_U0.bn_moving_mean_5_V_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batchnorm_5_U0.bn_moving_variance_5_V_U", "Parent" : "36"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batchnorm_5_U0.bn_gamma_5_V_U", "Parent" : "36"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batchnorm_5_U0.bn_beta_5_V_U", "Parent" : "36"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batchnorm_5_U0.grp_sqrt_fixed_17_9_s_fu_134", "Parent" : "36",
		"CDFG" : "sqrt_fixed_17_9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batchnorm_5_U0.sdiv_24ns_10ns_24_28_1_U38", "Parent" : "36"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batchnorm_5_U0.mac_muladd_24s_10ns_16s_24_4_1_U39", "Parent" : "36"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batchnorm_5_U0.flow_control_loop_delay_pipe_U", "Parent" : "36"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_output_7_U0", "Parent" : "0", "Child" : ["46"],
		"CDFG" : "dense_output_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "54", "EstimateLatencyMax" : "54",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["36"], "DependentChan" : "6"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["72"], "DependentChan" : "7",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201", "Port" : "output_r", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_weights_7_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201", "Port" : "dense_weights_7_V", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_biases_7_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201", "Port" : "dense_biases_7_V", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "exp_x_msb_2_m_1_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201", "Port" : "exp_x_msb_2_m_1_table_V", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_output_7_U0.grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201", "Parent" : "45", "Child" : ["47", "48", "49", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71"],
		"CDFG" : "dense_output_7_Pipeline_VITIS_LOOP_67_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "45", "EstimateLatencyMax" : "45",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln818", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1347", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1347_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1347_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1347_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1347_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1347_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1347_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1347_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1347_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1347_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1347_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1347_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1347_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1347_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1347_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dense_weights_7_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_biases_7_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_exp_17_9_s_fu_435", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "20", "Inst_end_state" : "25"}]},
			{"Name" : "exp_x_msb_2_m_1_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_exp_17_9_s_fu_435", "Port" : "exp_x_msb_2_m_1_table_V", "Inst_start_state" : "20", "Inst_end_state" : "25"}]},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_exp_17_9_s_fu_435", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "20", "Inst_end_state" : "25"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_67_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter24", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter24", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_output_7_U0.grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201.dense_weights_7_V_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_output_7_U0.grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201.dense_biases_7_V_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_output_7_U0.grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201.grp_exp_17_9_s_fu_435", "Parent" : "46", "Child" : ["50", "51", "52", "53", "54"],
		"CDFG" : "exp_17_9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_2_m_1_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dense_output_7_U0.grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201.grp_exp_17_9_s_fu_435.f_x_lsb_table_V_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dense_output_7_U0.grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201.grp_exp_17_9_s_fu_435.exp_x_msb_2_m_1_table_V_U", "Parent" : "49"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dense_output_7_U0.grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201.grp_exp_17_9_s_fu_435.exp_x_msb_1_table_V_U", "Parent" : "49"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dense_output_7_U0.grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201.grp_exp_17_9_s_fu_435.mul_25ns_25ns_50_1_1_U48", "Parent" : "49"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dense_output_7_U0.grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201.grp_exp_17_9_s_fu_435.mul_mul_25ns_18ns_43_4_1_U49", "Parent" : "49"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_output_7_U0.grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201.mul_mul_16s_9s_24_4_1_U56", "Parent" : "46"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_output_7_U0.grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201.mac_muladd_16s_9s_24ns_24_4_1_U57", "Parent" : "46"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_output_7_U0.grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201.mac_muladd_16s_9s_24ns_24_4_1_U58", "Parent" : "46"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_output_7_U0.grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201.mac_muladd_16s_9s_24ns_24_4_1_U59", "Parent" : "46"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_output_7_U0.grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201.mac_muladd_16s_9s_24ns_24_4_1_U60", "Parent" : "46"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_output_7_U0.grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201.mac_muladd_16s_9s_24ns_24_4_1_U61", "Parent" : "46"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_output_7_U0.grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201.mac_muladd_16s_9s_24ns_24_4_1_U62", "Parent" : "46"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_output_7_U0.grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201.mac_muladd_16s_9s_24ns_24_4_1_U63", "Parent" : "46"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_output_7_U0.grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201.mac_muladd_16s_9s_24ns_24_4_1_U64", "Parent" : "46"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_output_7_U0.grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201.mac_muladd_16s_9s_24ns_24_4_1_U65", "Parent" : "46"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_output_7_U0.grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201.mac_muladd_16s_9s_24ns_24_4_1_U66", "Parent" : "46"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_output_7_U0.grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201.mac_muladd_16s_9s_24ns_24_4_1_U67", "Parent" : "46"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_output_7_U0.grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201.mac_muladd_16s_9s_24ns_24_4_1_U68", "Parent" : "46"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_output_7_U0.grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201.mac_muladd_16s_9s_24ns_24_4_1_U69", "Parent" : "46"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_output_7_U0.grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201.mac_muladd_16s_9s_24ns_24_4_1_U70", "Parent" : "46"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_output_7_U0.grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201.mac_muladd_16s_9s_24ns_24_4_1_U71", "Parent" : "46"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_output_7_U0.grp_dense_output_7_Pipeline_VITIS_LOOP_67_1_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "46"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.softmax_7_U0", "Parent" : "0", "Child" : ["73", "75"],
		"CDFG" : "softmax_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "74", "EstimateLatencyMax" : "74",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["45"], "DependentChan" : "7",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "grp_softmax_7_Pipeline_VITIS_LOOP_79_1_fu_24", "Port" : "input_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "75", "SubInstance" : "grp_softmax_7_Pipeline_VITIS_LOOP_82_2_fu_31", "Port" : "input_r", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_softmax_7_Pipeline_VITIS_LOOP_82_2_fu_31", "Port" : "output_r", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.softmax_7_U0.grp_softmax_7_Pipeline_VITIS_LOOP_79_1_fu_24", "Parent" : "72", "Child" : ["74"],
		"CDFG" : "softmax_7_Pipeline_VITIS_LOOP_79_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_79_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_7_U0.grp_softmax_7_Pipeline_VITIS_LOOP_79_1_fu_24.flow_control_loop_pipe_sequential_init_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.softmax_7_U0.grp_softmax_7_Pipeline_VITIS_LOOP_82_2_fu_31", "Parent" : "72", "Child" : ["76", "77"],
		"CDFG" : "softmax_7_Pipeline_VITIS_LOOP_82_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "49",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sext_ln1303", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_82_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter28", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter28", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_7_U0.grp_softmax_7_Pipeline_VITIS_LOOP_82_2_fu_31.sdiv_24ns_16s_16_28_1_U97", "Parent" : "75"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_7_U0.grp_softmax_7_Pipeline_VITIS_LOOP_82_2_fu_31.flow_control_loop_pipe_sequential_init_U", "Parent" : "75"}]}


set ArgLastReadFirstWriteLatency {
	gesture_model {
		input_r {Type I LastRead 8 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 28}
		bn_moving_mean_1_V {Type I LastRead -1 FirstWrite -1}
		bn_gamma_1_V {Type I LastRead -1 FirstWrite -1}
		bn_beta_1_V {Type I LastRead -1 FirstWrite -1}
		dense_biases_4_V {Type I LastRead -1 FirstWrite -1}
		dense_weights_4_V {Type I LastRead -1 FirstWrite -1}
		bn_moving_mean_5_V {Type I LastRead -1 FirstWrite -1}
		bn_moving_variance_5_V {Type I LastRead -1 FirstWrite -1}
		bn_gamma_5_V {Type I LastRead -1 FirstWrite -1}
		bn_beta_5_V {Type I LastRead -1 FirstWrite -1}
		dense_weights_7_V {Type I LastRead -1 FirstWrite -1}
		dense_biases_7_V {Type I LastRead -1 FirstWrite -1}
		f_x_lsb_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_2_m_1_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	conv1d_0 {
		input_r {Type I LastRead 8 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 13}}
	batchnorm_1 {
		input_r {Type I LastRead 0 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 31}
		bn_moving_mean_1_V {Type I LastRead -1 FirstWrite -1}
		bn_gamma_1_V {Type I LastRead -1 FirstWrite -1}
		bn_beta_1_V {Type I LastRead -1 FirstWrite -1}}
	maxpool1d_2 {
		input_r {Type I LastRead 1 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 1}}
	Loop_VITIS_LOOP_42_1_proc {
		maxpool_out_V {Type I LastRead 0 FirstWrite -1}
		flatten_out_V {Type O LastRead -1 FirstWrite 1}}
	dense_4 {
		input_r {Type I LastRead 0 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 4}
		dense_biases_4_V {Type I LastRead -1 FirstWrite -1}
		dense_weights_4_V {Type I LastRead -1 FirstWrite -1}}
	batchnorm_5 {
		input_r {Type I LastRead 4 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 35}
		bn_moving_mean_5_V {Type I LastRead -1 FirstWrite -1}
		bn_moving_variance_5_V {Type I LastRead -1 FirstWrite -1}
		bn_gamma_5_V {Type I LastRead -1 FirstWrite -1}
		bn_beta_5_V {Type I LastRead -1 FirstWrite -1}}
	sqrt_fixed_17_9_s {
		x {Type I LastRead 0 FirstWrite -1}}
	dense_output_7 {
		input_r {Type I LastRead 8 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 24}
		dense_weights_7_V {Type I LastRead -1 FirstWrite -1}
		dense_biases_7_V {Type I LastRead -1 FirstWrite -1}
		f_x_lsb_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_2_m_1_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	dense_output_7_Pipeline_VITIS_LOOP_67_1 {
		sext_ln818 {Type I LastRead 0 FirstWrite -1}
		sext_ln1347 {Type I LastRead 0 FirstWrite -1}
		sext_ln1347_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln1347_2 {Type I LastRead 0 FirstWrite -1}
		sext_ln1347_3 {Type I LastRead 0 FirstWrite -1}
		sext_ln1347_4 {Type I LastRead 0 FirstWrite -1}
		sext_ln1347_5 {Type I LastRead 0 FirstWrite -1}
		sext_ln1347_6 {Type I LastRead 0 FirstWrite -1}
		sext_ln1347_7 {Type I LastRead 0 FirstWrite -1}
		sext_ln1347_8 {Type I LastRead 0 FirstWrite -1}
		sext_ln1347_9 {Type I LastRead 0 FirstWrite -1}
		sext_ln1347_10 {Type I LastRead 0 FirstWrite -1}
		sext_ln1347_11 {Type I LastRead 0 FirstWrite -1}
		sext_ln1347_12 {Type I LastRead 0 FirstWrite -1}
		sext_ln1347_13 {Type I LastRead 0 FirstWrite -1}
		sext_ln1347_14 {Type I LastRead 0 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 24}
		dense_weights_7_V {Type I LastRead -1 FirstWrite -1}
		dense_biases_7_V {Type I LastRead -1 FirstWrite -1}
		f_x_lsb_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_2_m_1_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_17_9_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_lsb_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_2_m_1_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	softmax_7 {
		input_r {Type I LastRead 0 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 28}}
	softmax_7_Pipeline_VITIS_LOOP_79_1 {
		input_r {Type I LastRead 0 FirstWrite -1}
		sum_V_out {Type O LastRead -1 FirstWrite 0}}
	softmax_7_Pipeline_VITIS_LOOP_82_2 {
		input_r {Type I LastRead 0 FirstWrite -1}
		sext_ln1303 {Type I LastRead 0 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 28}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17280", "Max" : "17280"}
	, {"Name" : "Interval", "Min" : "15110", "Max" : "15110"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_r { ap_memory {  { input_r_address0 mem_address 1 7 }  { input_r_ce0 mem_ce 1 1 }  { input_r_d0 mem_din 1 16 }  { input_r_q0 mem_dout 0 16 }  { input_r_we0 mem_we 1 1 }  { input_r_address1 MemPortADDR2 1 7 }  { input_r_ce1 MemPortCE2 1 1 }  { input_r_d1 mem_din 1 16 }  { input_r_q1 MemPortDOUT2 0 16 }  { input_r_we1 mem_we 1 1 } } }
	output_r { ap_memory {  { output_r_address0 mem_address 1 5 }  { output_r_ce0 mem_ce 1 1 }  { output_r_d0 mem_din 1 16 }  { output_r_q0 mem_dout 0 16 }  { output_r_we0 mem_we 1 1 }  { output_r_address1 mem_address 1 5 }  { output_r_ce1 mem_ce 1 1 }  { output_r_d1 mem_din 1 16 }  { output_r_q1 mem_dout 0 16 }  { output_r_we1 mem_we 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
