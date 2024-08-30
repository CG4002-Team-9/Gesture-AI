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
	{ input_stream int 16 regular {axi_s 0 volatile  { input_stream Data } }  }
	{ output_stream int 16 regular {axi_s 1 volatile  { output_stream Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_stream", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "output_stream", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ input_stream_TDATA sc_in sc_lv 16 signal 0 } 
	{ output_stream_TDATA sc_out sc_lv 16 signal 1 } 
	{ input_stream_TVALID sc_in sc_logic 1 invld 0 } 
	{ input_stream_TREADY sc_out sc_logic 1 inacc 0 } 
	{ output_stream_TVALID sc_out sc_logic 1 outvld 1 } 
	{ output_stream_TREADY sc_in sc_logic 1 outacc 1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"gesture_model","role":"start","value":"0","valid_bit":"0"},{"name":"gesture_model","role":"continue","value":"0","valid_bit":"4"},{"name":"gesture_model","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"gesture_model","role":"start","value":"0","valid_bit":"0"},{"name":"gesture_model","role":"done","value":"0","valid_bit":"1"},{"name":"gesture_model","role":"idle","value":"0","valid_bit":"2"},{"name":"gesture_model","role":"ready","value":"0","valid_bit":"3"},{"name":"gesture_model","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "input_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_stream", "role": "TDATA" }} , 
 	{ "name": "output_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_stream", "role": "TDATA" }} , 
 	{ "name": "input_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_stream", "role": "TVALID" }} , 
 	{ "name": "input_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_stream", "role": "TREADY" }} , 
 	{ "name": "output_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_stream", "role": "TVALID" }} , 
 	{ "name": "output_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "output_stream", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "13", "22", "33", "35", "37", "42", "53", "95"],
		"CDFG" : "gesture_model",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23078", "EstimateLatencyMax" : "23078",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "10", "Name" : "Loop_VITIS_LOOP_149_1_proc8_U0"}],
		"OutputProcess" : [
			{"ID" : "95", "Name" : "Loop_VITIS_LOOP_166_3_proc9_U0"}],
		"Port" : [
			{"Name" : "input_stream", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Loop_VITIS_LOOP_149_1_proc8_U0", "Port" : "input_stream"}]},
			{"Name" : "output_stream", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "Loop_VITIS_LOOP_166_3_proc9_U0", "Port" : "output_stream"}]},
			{"Name" : "conv1d_0_weights_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "conv1d_0_U0", "Port" : "conv1d_0_weights_V_0_0"}]},
			{"Name" : "conv1d_0_weights_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "conv1d_0_U0", "Port" : "conv1d_0_weights_V_1_0"}]},
			{"Name" : "conv1d_0_weights_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "conv1d_0_U0", "Port" : "conv1d_0_weights_V_2_0"}]},
			{"Name" : "conv1d_0_biases_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "conv1d_0_U0", "Port" : "conv1d_0_biases_V"}]},
			{"Name" : "batch_norm_0_mean_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "batch_normalization_0_U0", "Port" : "batch_norm_0_mean_V"}]},
			{"Name" : "batch_norm_0_variance_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "batch_normalization_0_U0", "Port" : "batch_norm_0_variance_V"}]},
			{"Name" : "batch_norm_0_gamma_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "batch_normalization_0_U0", "Port" : "batch_norm_0_gamma_V"}]},
			{"Name" : "batch_norm_0_beta_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "batch_normalization_0_U0", "Port" : "batch_norm_0_beta_V"}]},
			{"Name" : "dense_0_biases_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "dense_0_U0", "Port" : "dense_0_biases_V"}]},
			{"Name" : "dense_0_weights_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "dense_0_U0", "Port" : "dense_0_weights_V"}]},
			{"Name" : "batch_norm_1_mean_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "batch_normalization_1_U0", "Port" : "batch_norm_1_mean_V"}]},
			{"Name" : "batch_norm_1_variance_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "batch_normalization_1_U0", "Port" : "batch_norm_1_variance_V"}]},
			{"Name" : "batch_norm_1_gamma_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "batch_normalization_1_U0", "Port" : "batch_norm_1_gamma_V"}]},
			{"Name" : "batch_norm_1_beta_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "batch_normalization_1_U0", "Port" : "batch_norm_1_beta_V"}]},
			{"Name" : "dense_1_weights_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_V_0"}]},
			{"Name" : "dense_1_weights_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_V_1"}]},
			{"Name" : "dense_1_weights_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_V_2"}]},
			{"Name" : "dense_1_weights_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_V_3"}]},
			{"Name" : "dense_1_weights_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_V_4"}]},
			{"Name" : "dense_1_weights_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_V_5"}]},
			{"Name" : "dense_1_weights_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_V_6"}]},
			{"Name" : "dense_1_weights_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_V_7"}]},
			{"Name" : "dense_1_weights_V_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_V_8"}]},
			{"Name" : "dense_1_weights_V_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_V_9"}]},
			{"Name" : "dense_1_weights_V_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_V_10"}]},
			{"Name" : "dense_1_weights_V_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_V_11"}]},
			{"Name" : "dense_1_weights_V_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_V_12"}]},
			{"Name" : "dense_1_weights_V_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_V_13"}]},
			{"Name" : "dense_1_weights_V_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_V_14"}]},
			{"Name" : "dense_1_weights_V_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_V_15"}]},
			{"Name" : "dense_1_biases_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "dense_1_U0", "Port" : "dense_1_biases_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1d_out_0_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.batch_norm_out_0_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max_pool_out_0_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flatten_out_0_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_out_0_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.batch_norm_out_1_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_149_1_proc8_U0", "Parent" : "0", "Child" : ["11", "12"],
		"CDFG" : "Loop_VITIS_LOOP_149_1_proc8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "122", "EstimateLatencyMax" : "122",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_stream", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "input_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_V_0", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "1"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_149_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_149_1_proc8_U0.flow_control_loop_pipe_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_149_1_proc8_U0.regslice_both_input_stream_U", "Parent" : "10"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0", "Parent" : "0", "Child" : ["14", "15", "16", "17", "18", "19", "20", "21"],
		"CDFG" : "conv1d_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3782", "EstimateLatencyMax" : "3782",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "1"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "3"},
			{"Name" : "conv1d_0_weights_V_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv1d_0_weights_V_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv1d_0_weights_V_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv1d_0_biases_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_26_1_VITIS_LOOP_28_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0.conv1d_0_weights_V_0_0_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0.conv1d_0_weights_V_1_0_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0.conv1d_0_weights_V_2_0_U", "Parent" : "13"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0.conv1d_0_biases_V_U", "Parent" : "13"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0.mul_mul_16s_8s_24_4_1_U4", "Parent" : "13"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0.mac_muladd_16s_8s_24ns_24_4_1_U5", "Parent" : "13"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0.mac_muladd_16s_8s_24ns_24_4_1_U6", "Parent" : "13"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0.flow_control_loop_pipe_U", "Parent" : "13"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.batch_normalization_0_U0", "Parent" : "0", "Child" : ["23", "24", "25", "26", "27", "28", "29", "30", "31", "32"],
		"CDFG" : "batch_normalization_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1942", "EstimateLatencyMax" : "1942",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "3"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["33"], "DependentChan" : "4"},
			{"Name" : "batch_norm_0_mean_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "batch_norm_0_variance_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "batch_norm_0_gamma_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "batch_norm_0_beta_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_45_1_VITIS_LOOP_47_2", "PipelineType" : "NotSupport"}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_0_U0.batch_norm_0_mean_V_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_0_U0.batch_norm_0_variance_V_U", "Parent" : "22"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_0_U0.batch_norm_0_gamma_V_U", "Parent" : "22"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_0_U0.batch_norm_0_beta_V_U", "Parent" : "22"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_0_U0.dsqrt_64ns_64ns_64_21_no_dsp_1_U15", "Parent" : "22"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_0_U0.sdiv_24ns_16s_24_28_1_U16", "Parent" : "22"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_0_U0.mac_muladd_24s_9ns_15s_24_4_1_U17", "Parent" : "22"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_0_U0.flow_control_loop_delay_pipe_U", "Parent" : "22"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_0_U0.frp_pipeline_valid_U", "Parent" : "22"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_0_U0.pf_output_r_d0_U", "Parent" : "22"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max_pooling1d_0_U0", "Parent" : "0", "Child" : ["34"],
		"CDFG" : "max_pooling1d_0",
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
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["22"], "DependentChan" : "4"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["35"], "DependentChan" : "5"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_57_1_VITIS_LOOP_59_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.max_pooling1d_0_U0.flow_control_loop_pipe_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_79_1_proc_U0", "Parent" : "0", "Child" : ["36"],
		"CDFG" : "Loop_VITIS_LOOP_79_1_proc",
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
			{"Name" : "max_pool_out_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["33"], "DependentChan" : "5"},
			{"Name" : "flatten_out_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["37"], "DependentChan" : "6"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_79_1_VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_79_1_proc_U0.flow_control_loop_pipe_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_0_U0", "Parent" : "0", "Child" : ["38", "39", "40", "41"],
		"CDFG" : "dense_0",
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
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["35"], "DependentChan" : "6"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["42"], "DependentChan" : "7"},
			{"Name" : "dense_0_biases_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_0_weights_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_90_1_VITIS_LOOP_93_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_0_U0.dense_0_biases_V_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_0_U0.dense_0_weights_V_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_0_U0.mac_muladd_16s_7s_24s_24_4_1_U32", "Parent" : "37"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_0_U0.flow_control_loop_pipe_U", "Parent" : "37"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.batch_normalization_1_U0", "Parent" : "0", "Child" : ["43", "44", "45", "46", "47", "48", "49", "50", "51", "52"],
		"CDFG" : "batch_normalization_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "70", "EstimateLatencyMax" : "70",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["37"], "DependentChan" : "7"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["53"], "DependentChan" : "8"},
			{"Name" : "batch_norm_1_mean_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "batch_norm_1_variance_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "batch_norm_1_gamma_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "batch_norm_1_beta_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_1_U0.batch_norm_1_mean_V_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_1_U0.batch_norm_1_variance_V_U", "Parent" : "42"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_1_U0.batch_norm_1_gamma_V_U", "Parent" : "42"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_1_U0.batch_norm_1_beta_V_U", "Parent" : "42"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_1_U0.dsqrt_64ns_64ns_64_21_no_dsp_1_U38", "Parent" : "42"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_1_U0.sdiv_24ns_16s_24_28_1_U39", "Parent" : "42"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_1_U0.mac_muladd_24s_10ns_16s_24_4_1_U40", "Parent" : "42"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_1_U0.flow_control_loop_delay_pipe_U", "Parent" : "42"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_1_U0.frp_pipeline_valid_U", "Parent" : "42"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_1_U0.pf_output_r_d0_U", "Parent" : "42"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_1_U0", "Parent" : "0", "Child" : ["54", "89", "91", "94"],
		"CDFG" : "dense_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "154", "EstimateLatencyMax" : "154",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["42"], "DependentChan" : "8"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO", "DependentProc" : ["95"], "DependentChan" : "2", "PIPODir" : "O",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_122_3_fu_291", "Port" : "output_r", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "91", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_126_4_fu_298", "Port" : "output_r", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "54", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233", "Port" : "output_r", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233", "Port" : "dense_1_weights_V_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233", "Port" : "dense_1_weights_V_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233", "Port" : "dense_1_weights_V_2", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233", "Port" : "dense_1_weights_V_3", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233", "Port" : "dense_1_weights_V_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233", "Port" : "dense_1_weights_V_5", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233", "Port" : "dense_1_weights_V_6", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233", "Port" : "dense_1_weights_V_7", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_V_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233", "Port" : "dense_1_weights_V_8", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_V_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233", "Port" : "dense_1_weights_V_9", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_V_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233", "Port" : "dense_1_weights_V_10", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_V_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233", "Port" : "dense_1_weights_V_11", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_V_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233", "Port" : "dense_1_weights_V_12", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_V_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233", "Port" : "dense_1_weights_V_13", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_V_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233", "Port" : "dense_1_weights_V_14", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_V_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233", "Port" : "dense_1_weights_V_15", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_biases_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233", "Port" : "dense_1_biases_V", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}]},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233", "Parent" : "53", "Child" : ["55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88"],
		"CDFG" : "dense_1_Pipeline_VITIS_LOOP_111_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "40", "EstimateLatencyMax" : "40",
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
			{"Name" : "dense_1_weights_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_biases_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_111_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter19", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter19", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.dense_1_weights_V_0_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.dense_1_weights_V_1_U", "Parent" : "54"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.dense_1_weights_V_2_U", "Parent" : "54"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.dense_1_weights_V_3_U", "Parent" : "54"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.dense_1_weights_V_4_U", "Parent" : "54"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.dense_1_weights_V_5_U", "Parent" : "54"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.dense_1_weights_V_6_U", "Parent" : "54"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.dense_1_weights_V_7_U", "Parent" : "54"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.dense_1_weights_V_8_U", "Parent" : "54"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.dense_1_weights_V_9_U", "Parent" : "54"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.dense_1_weights_V_10_U", "Parent" : "54"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.dense_1_weights_V_11_U", "Parent" : "54"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.dense_1_weights_V_12_U", "Parent" : "54"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.dense_1_weights_V_13_U", "Parent" : "54"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.dense_1_weights_V_14_U", "Parent" : "54"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.dense_1_weights_V_15_U", "Parent" : "54"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.dense_1_biases_V_U", "Parent" : "54"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.mul_mul_16s_9s_24_4_1_U49", "Parent" : "54"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.mac_muladd_16s_9s_24ns_24_4_1_U50", "Parent" : "54"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.mac_muladd_16s_9s_24ns_24_4_1_U51", "Parent" : "54"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.mac_muladd_16s_9s_24ns_24_4_1_U52", "Parent" : "54"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.mac_muladd_16s_9s_24ns_24_4_1_U53", "Parent" : "54"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.mac_muladd_16s_9s_24ns_24_4_1_U54", "Parent" : "54"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.mac_muladd_16s_9s_24ns_24_4_1_U55", "Parent" : "54"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.mac_muladd_16s_9s_24ns_24_4_1_U56", "Parent" : "54"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.mac_muladd_16s_9s_24ns_24_4_1_U57", "Parent" : "54"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.mac_muladd_16s_9s_24ns_24_4_1_U58", "Parent" : "54"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.mac_muladd_16s_9s_24ns_24_4_1_U59", "Parent" : "54"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.mac_muladd_16s_9s_24ns_24_4_1_U60", "Parent" : "54"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.mac_muladd_16s_9s_24ns_24_4_1_U61", "Parent" : "54"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.mac_muladd_16s_9s_24ns_24_4_1_U62", "Parent" : "54"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.mac_muladd_16s_9s_24ns_24_4_1_U63", "Parent" : "54"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.mac_muladd_16s_9s_24ns_24_4_1_U64", "Parent" : "54"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_111_1_fu_233.flow_control_loop_pipe_sequential_init_U", "Parent" : "54"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_122_3_fu_291", "Parent" : "53", "Child" : ["90"],
		"CDFG" : "dense_1_Pipeline_VITIS_LOOP_122_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "softmax_sum_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_122_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_122_3_fu_291.flow_control_loop_pipe_sequential_init_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_126_4_fu_298", "Parent" : "53", "Child" : ["92", "93"],
		"CDFG" : "dense_1_Pipeline_VITIS_LOOP_126_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln1303", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_126_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter43", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter43", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_126_4_fu_298.sdiv_24ns_16s_16_28_1_U105", "Parent" : "91"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_126_4_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "91"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.dexp_64ns_64ns_64_13_full_dsp_1_U109", "Parent" : "53"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_166_3_proc9_U0", "Parent" : "0", "Child" : ["96", "97"],
		"CDFG" : "Loop_VITIS_LOOP_166_3_proc9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "output_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["53"], "DependentChan" : "2"},
			{"Name" : "output_stream", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "output_stream_TDATA_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_166_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_166_3_proc9_U0.flow_control_loop_pipe_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_166_3_proc9_U0.regslice_both_output_stream_U", "Parent" : "95"}]}


set ArgLastReadFirstWriteLatency {
	gesture_model {
		input_stream {Type I LastRead 0 FirstWrite -1}
		output_stream {Type O LastRead -1 FirstWrite 1}
		conv1d_0_weights_V_0_0 {Type I LastRead -1 FirstWrite -1}
		conv1d_0_weights_V_1_0 {Type I LastRead -1 FirstWrite -1}
		conv1d_0_weights_V_2_0 {Type I LastRead -1 FirstWrite -1}
		conv1d_0_biases_V {Type I LastRead -1 FirstWrite -1}
		batch_norm_0_mean_V {Type I LastRead -1 FirstWrite -1}
		batch_norm_0_variance_V {Type I LastRead -1 FirstWrite -1}
		batch_norm_0_gamma_V {Type I LastRead -1 FirstWrite -1}
		batch_norm_0_beta_V {Type I LastRead -1 FirstWrite -1}
		dense_0_biases_V {Type I LastRead -1 FirstWrite -1}
		dense_0_weights_V {Type I LastRead -1 FirstWrite -1}
		batch_norm_1_mean_V {Type I LastRead -1 FirstWrite -1}
		batch_norm_1_variance_V {Type I LastRead -1 FirstWrite -1}
		batch_norm_1_gamma_V {Type I LastRead -1 FirstWrite -1}
		batch_norm_1_beta_V {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_0 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_1 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_2 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_3 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_4 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_5 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_6 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_7 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_8 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_9 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_10 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_11 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_12 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_13 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_14 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_15 {Type I LastRead -1 FirstWrite -1}
		dense_1_biases_V {Type I LastRead -1 FirstWrite -1}}
	Loop_VITIS_LOOP_149_1_proc8 {
		input_stream {Type I LastRead 0 FirstWrite -1}
		input_V_0 {Type O LastRead -1 FirstWrite 0}}
	conv1d_0 {
		input_0 {Type I LastRead 2 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 6}
		conv1d_0_weights_V_0_0 {Type I LastRead -1 FirstWrite -1}
		conv1d_0_weights_V_1_0 {Type I LastRead -1 FirstWrite -1}
		conv1d_0_weights_V_2_0 {Type I LastRead -1 FirstWrite -1}
		conv1d_0_biases_V {Type I LastRead -1 FirstWrite -1}}
	batch_normalization_0 {
		input_r {Type I LastRead 22 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 53}
		batch_norm_0_mean_V {Type I LastRead -1 FirstWrite -1}
		batch_norm_0_variance_V {Type I LastRead -1 FirstWrite -1}
		batch_norm_0_gamma_V {Type I LastRead -1 FirstWrite -1}
		batch_norm_0_beta_V {Type I LastRead -1 FirstWrite -1}}
	max_pooling1d_0 {
		input_r {Type I LastRead 1 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 1}}
	Loop_VITIS_LOOP_79_1_proc {
		max_pool_out_0_V {Type I LastRead 0 FirstWrite -1}
		flatten_out_0_V {Type O LastRead -1 FirstWrite 1}}
	dense_0 {
		input_r {Type I LastRead 0 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 4}
		dense_0_biases_V {Type I LastRead -1 FirstWrite -1}
		dense_0_weights_V {Type I LastRead -1 FirstWrite -1}}
	batch_normalization_1 {
		input_r {Type I LastRead 22 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 53}
		batch_norm_1_mean_V {Type I LastRead -1 FirstWrite -1}
		batch_norm_1_variance_V {Type I LastRead -1 FirstWrite -1}
		batch_norm_1_gamma_V {Type I LastRead -1 FirstWrite -1}
		batch_norm_1_beta_V {Type I LastRead -1 FirstWrite -1}}
	dense_1 {
		input_r {Type I LastRead 8 FirstWrite -1}
		output_r {Type IO LastRead 0 FirstWrite -1}
		dense_1_weights_V_0 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_1 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_2 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_3 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_4 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_5 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_6 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_7 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_8 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_9 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_10 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_11 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_12 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_13 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_14 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_15 {Type I LastRead -1 FirstWrite -1}
		dense_1_biases_V {Type I LastRead -1 FirstWrite -1}}
	dense_1_Pipeline_VITIS_LOOP_111_1 {
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
		output_r {Type O LastRead -1 FirstWrite 19}
		dense_1_weights_V_0 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_1 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_2 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_3 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_4 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_5 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_6 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_7 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_8 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_9 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_10 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_11 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_12 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_13 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_14 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_V_15 {Type I LastRead -1 FirstWrite -1}
		dense_1_biases_V {Type I LastRead -1 FirstWrite -1}}
	dense_1_Pipeline_VITIS_LOOP_122_3 {
		output_r {Type I LastRead 0 FirstWrite -1}
		softmax_sum_V_out {Type O LastRead -1 FirstWrite 15}}
	dense_1_Pipeline_VITIS_LOOP_126_4 {
		output_r {Type IO LastRead 0 FirstWrite 43}
		sext_ln1303 {Type I LastRead 0 FirstWrite -1}}
	Loop_VITIS_LOOP_166_3_proc9 {
		output_V {Type I LastRead 0 FirstWrite -1}
		output_stream {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "23078", "Max" : "23078"}
	, {"Name" : "Interval", "Min" : "15110", "Max" : "15110"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_stream { axis {  { input_stream_TDATA in_data 0 16 }  { input_stream_TVALID in_vld 0 1 }  { input_stream_TREADY in_acc 1 1 } } }
	output_stream { axis {  { output_stream_TDATA out_data 1 16 }  { output_stream_TVALID out_vld 1 1 }  { output_stream_TREADY out_acc 0 1 } } }
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
