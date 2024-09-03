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
	{ input_stream_V_data_V int 32 regular {axi_s 0 volatile  { input_stream Data } }  }
	{ input_stream_V_keep_V int 4 regular {axi_s 0 volatile  { input_stream Keep } }  }
	{ input_stream_V_strb_V int 4 regular {axi_s 0 volatile  { input_stream Strb } }  }
	{ input_stream_V_last_V int 1 regular {axi_s 0 volatile  { input_stream Last } }  }
	{ output_stream_V_data_V int 32 regular {axi_s 1 volatile  { output_stream Data } }  }
	{ output_stream_V_keep_V int 4 regular {axi_s 1 volatile  { output_stream Keep } }  }
	{ output_stream_V_strb_V int 4 regular {axi_s 1 volatile  { output_stream Strb } }  }
	{ output_stream_V_last_V int 1 regular {axi_s 1 volatile  { output_stream Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_stream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_stream_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "input_stream_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "input_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "output_stream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_stream_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_stream_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 32
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
	{ input_stream_TDATA sc_in sc_lv 32 signal 0 } 
	{ input_stream_TKEEP sc_in sc_lv 4 signal 1 } 
	{ input_stream_TSTRB sc_in sc_lv 4 signal 2 } 
	{ input_stream_TLAST sc_in sc_lv 1 signal 3 } 
	{ output_stream_TDATA sc_out sc_lv 32 signal 4 } 
	{ output_stream_TKEEP sc_out sc_lv 4 signal 5 } 
	{ output_stream_TSTRB sc_out sc_lv 4 signal 6 } 
	{ output_stream_TLAST sc_out sc_lv 1 signal 7 } 
	{ input_stream_TVALID sc_in sc_logic 1 invld 3 } 
	{ input_stream_TREADY sc_out sc_logic 1 inacc 3 } 
	{ output_stream_TVALID sc_out sc_logic 1 outvld 7 } 
	{ output_stream_TREADY sc_in sc_logic 1 outacc 7 } 
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
 	{ "name": "input_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_stream_V_data_V", "role": "default" }} , 
 	{ "name": "input_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "input_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "input_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_stream_V_last_V", "role": "default" }} , 
 	{ "name": "output_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_stream_V_data_V", "role": "default" }} , 
 	{ "name": "output_stream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "output_stream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "output_stream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_stream_V_last_V", "role": "default" }} , 
 	{ "name": "input_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_stream_V_last_V", "role": "default" }} , 
 	{ "name": "input_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_stream_V_last_V", "role": "default" }} , 
 	{ "name": "output_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_stream_V_last_V", "role": "default" }} , 
 	{ "name": "output_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "output_stream_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "16", "27", "39", "42", "44", "51", "63", "124"],
		"CDFG" : "gesture_model",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69392", "EstimateLatencyMax" : "69392",
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
			{"ID" : "124", "Name" : "Loop_VITIS_LOOP_171_3_proc9_U0"}],
		"Port" : [
			{"Name" : "input_stream_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "input_stream",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Loop_VITIS_LOOP_149_1_proc8_U0", "Port" : "input_stream_V_data_V"}]},
			{"Name" : "input_stream_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "input_stream",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Loop_VITIS_LOOP_149_1_proc8_U0", "Port" : "input_stream_V_keep_V"}]},
			{"Name" : "input_stream_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "input_stream",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Loop_VITIS_LOOP_149_1_proc8_U0", "Port" : "input_stream_V_strb_V"}]},
			{"Name" : "input_stream_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "input_stream",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Loop_VITIS_LOOP_149_1_proc8_U0", "Port" : "input_stream_V_last_V"}]},
			{"Name" : "output_stream_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "output_stream",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "Loop_VITIS_LOOP_171_3_proc9_U0", "Port" : "output_stream_V_data_V"}]},
			{"Name" : "output_stream_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "output_stream",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "Loop_VITIS_LOOP_171_3_proc9_U0", "Port" : "output_stream_V_keep_V"}]},
			{"Name" : "output_stream_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "output_stream",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "Loop_VITIS_LOOP_171_3_proc9_U0", "Port" : "output_stream_V_strb_V"}]},
			{"Name" : "output_stream_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "output_stream",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "Loop_VITIS_LOOP_171_3_proc9_U0", "Port" : "output_stream_V_last_V"}]},
			{"Name" : "conv1d_0_weights_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "conv1d_0_U0", "Port" : "conv1d_0_weights_0_0"}]},
			{"Name" : "conv1d_0_weights_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "conv1d_0_U0", "Port" : "conv1d_0_weights_1_0"}]},
			{"Name" : "conv1d_0_weights_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "conv1d_0_U0", "Port" : "conv1d_0_weights_2_0"}]},
			{"Name" : "conv1d_0_biases", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "conv1d_0_U0", "Port" : "conv1d_0_biases"}]},
			{"Name" : "batch_norm_0_gamma", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "batch_normalization_0_U0", "Port" : "batch_norm_0_gamma"}]},
			{"Name" : "batch_norm_0_mean", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "batch_normalization_0_U0", "Port" : "batch_norm_0_mean"}]},
			{"Name" : "batch_norm_0_variance", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "batch_normalization_0_U0", "Port" : "batch_norm_0_variance"}]},
			{"Name" : "batch_norm_0_beta", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "batch_normalization_0_U0", "Port" : "batch_norm_0_beta"}]},
			{"Name" : "dense_0_biases", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "dense_0_U0", "Port" : "dense_0_biases"}]},
			{"Name" : "dense_0_weights", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "dense_0_U0", "Port" : "dense_0_weights"}]},
			{"Name" : "batch_norm_1_gamma", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "batch_normalization_1_U0", "Port" : "batch_norm_1_gamma"}]},
			{"Name" : "batch_norm_1_mean", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "batch_normalization_1_U0", "Port" : "batch_norm_1_mean"}]},
			{"Name" : "batch_norm_1_variance", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "batch_normalization_1_U0", "Port" : "batch_norm_1_variance"}]},
			{"Name" : "batch_norm_1_beta", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "batch_normalization_1_U0", "Port" : "batch_norm_1_beta"}]},
			{"Name" : "dense_1_weights_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_0"}]},
			{"Name" : "dense_1_weights_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_1"}]},
			{"Name" : "dense_1_weights_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_2"}]},
			{"Name" : "dense_1_weights_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_3"}]},
			{"Name" : "dense_1_weights_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_4"}]},
			{"Name" : "dense_1_weights_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_5"}]},
			{"Name" : "dense_1_weights_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_6"}]},
			{"Name" : "dense_1_weights_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_7"}]},
			{"Name" : "dense_1_weights_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_8"}]},
			{"Name" : "dense_1_weights_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_9"}]},
			{"Name" : "dense_1_weights_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_10"}]},
			{"Name" : "dense_1_weights_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_11"}]},
			{"Name" : "dense_1_weights_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_12"}]},
			{"Name" : "dense_1_weights_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_13"}]},
			{"Name" : "dense_1_weights_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_14"}]},
			{"Name" : "dense_1_weights_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "dense_1_U0", "Port" : "dense_1_weights_15"}]},
			{"Name" : "dense_1_biases", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "dense_1_U0", "Port" : "dense_1_biases"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1d_out_0_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.batch_norm_out_0_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max_pool_out_0_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flatten_out_0_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_out_0_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.batch_norm_out_1_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_149_1_proc8_U0", "Parent" : "0", "Child" : ["11", "12", "13", "14", "15"],
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
			{"Name" : "input_stream_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "input_stream",
				"BlockSignal" : [
					{"Name" : "input_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_stream_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "input_stream"},
			{"Name" : "input_stream_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "input_stream"},
			{"Name" : "input_stream_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "input_stream"},
			{"Name" : "input_0", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "1"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_149_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_149_1_proc8_U0.flow_control_loop_pipe_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_149_1_proc8_U0.regslice_both_input_stream_V_data_V_U", "Parent" : "10"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_149_1_proc8_U0.regslice_both_input_stream_V_keep_V_U", "Parent" : "10"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_149_1_proc8_U0.regslice_both_input_stream_V_strb_V_U", "Parent" : "10"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_149_1_proc8_U0.regslice_both_input_stream_V_last_V_U", "Parent" : "10"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0", "Parent" : "0", "Child" : ["17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "conv1d_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3799", "EstimateLatencyMax" : "3799",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "1"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["27"], "DependentChan" : "3"},
			{"Name" : "conv1d_0_weights_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv1d_0_weights_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv1d_0_weights_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv1d_0_biases", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_25_1_VITIS_LOOP_27_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter11", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter11", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0.conv1d_0_weights_0_0_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0.conv1d_0_weights_1_0_U", "Parent" : "16"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0.conv1d_0_weights_2_0_U", "Parent" : "16"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0.conv1d_0_biases_U", "Parent" : "16"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0.fadd_32ns_32ns_32_4_full_dsp_1_U10", "Parent" : "16"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0.fadd_32ns_32ns_32_4_full_dsp_1_U11", "Parent" : "16"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0.fmul_32ns_32ns_32_3_max_dsp_1_U12", "Parent" : "16"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0.fmul_32ns_32ns_32_3_max_dsp_1_U13", "Parent" : "16"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U14", "Parent" : "16"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1d_0_U0.flow_control_loop_pipe_U", "Parent" : "16"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.batch_normalization_0_U0", "Parent" : "0", "Child" : ["28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38"],
		"CDFG" : "batch_normalization_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1918", "EstimateLatencyMax" : "1918",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["16"], "DependentChan" : "3"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["39"], "DependentChan" : "4"},
			{"Name" : "batch_norm_0_gamma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "batch_norm_0_mean", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "batch_norm_0_variance", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "batch_norm_0_beta", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_44_1_VITIS_LOOP_46_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter29", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter29", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_0_U0.batch_norm_0_gamma_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_0_U0.batch_norm_0_mean_U", "Parent" : "27"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_0_U0.batch_norm_0_variance_U", "Parent" : "27"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_0_U0.batch_norm_0_beta_U", "Parent" : "27"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_0_U0.fadd_32ns_32ns_32_4_full_dsp_1_U24", "Parent" : "27"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_0_U0.fsub_32ns_32ns_32_4_full_dsp_1_U25", "Parent" : "27"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_0_U0.fadd_32ns_32ns_32_4_full_dsp_1_U26", "Parent" : "27"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_0_U0.fmul_32ns_32ns_32_3_max_dsp_1_U27", "Parent" : "27"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_0_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U28", "Parent" : "27"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_0_U0.fsqrt_32ns_32ns_32_8_no_dsp_1_U29", "Parent" : "27"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_0_U0.flow_control_loop_delay_pipe_U", "Parent" : "27"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max_pooling1d_0_U0", "Parent" : "0", "Child" : ["40", "41"],
		"CDFG" : "max_pooling1d_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1892", "EstimateLatencyMax" : "1892",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["27"], "DependentChan" : "4"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["42"], "DependentChan" : "5"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_55_1_VITIS_LOOP_57_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.max_pooling1d_0_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U39", "Parent" : "39"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.max_pooling1d_0_U0.flow_control_loop_pipe_U", "Parent" : "39"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_77_1_proc_U0", "Parent" : "0", "Child" : ["43"],
		"CDFG" : "Loop_VITIS_LOOP_77_1_proc",
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
			{"Name" : "max_pool_out_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["39"], "DependentChan" : "5"},
			{"Name" : "flatten_out_0", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["44"], "DependentChan" : "6"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_77_1_VITIS_LOOP_79_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_77_1_proc_U0.flow_control_loop_pipe_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_0_U0", "Parent" : "0", "Child" : ["45", "46", "47", "48", "49", "50"],
		"CDFG" : "dense_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "60429", "EstimateLatencyMax" : "60429",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["42"], "DependentChan" : "6"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["51"], "DependentChan" : "7"},
			{"Name" : "dense_0_biases", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_0_weights", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_88_1_VITIS_LOOP_91_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage3", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage3_subdone", "QuitState" : "ap_ST_fsm_pp0_stage3", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage3_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_0_U0.dense_0_biases_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_0_U0.dense_0_weights_U", "Parent" : "44"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_0_U0.fadd_32ns_32ns_32_4_full_dsp_1_U44", "Parent" : "44"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_0_U0.fmul_32ns_32ns_32_3_max_dsp_1_U45", "Parent" : "44"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_0_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U46", "Parent" : "44"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_0_U0.flow_control_loop_pipe_U", "Parent" : "44"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.batch_normalization_1_U0", "Parent" : "0", "Child" : ["52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62"],
		"CDFG" : "batch_normalization_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "45", "EstimateLatencyMax" : "45",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["44"], "DependentChan" : "7"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["63"], "DependentChan" : "8"},
			{"Name" : "batch_norm_1_gamma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "batch_norm_1_mean", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "batch_norm_1_variance", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "batch_norm_1_beta", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_101_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter28", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter28", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_1_U0.batch_norm_1_gamma_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_1_U0.batch_norm_1_mean_U", "Parent" : "51"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_1_U0.batch_norm_1_variance_U", "Parent" : "51"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_1_U0.batch_norm_1_beta_U", "Parent" : "51"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_1_U0.fadd_32ns_32ns_32_4_full_dsp_1_U51", "Parent" : "51"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_1_U0.fsub_32ns_32ns_32_4_full_dsp_1_U52", "Parent" : "51"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_1_U0.fadd_32ns_32ns_32_4_full_dsp_1_U53", "Parent" : "51"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_1_U0.fmul_32ns_32ns_32_3_max_dsp_1_U54", "Parent" : "51"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_1_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U55", "Parent" : "51"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_1_U0.fsqrt_32ns_32ns_32_8_no_dsp_1_U56", "Parent" : "51"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.batch_normalization_1_U0.flow_control_loop_delay_pipe_U", "Parent" : "51"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_1_U0", "Parent" : "0", "Child" : ["64", "115", "117", "120", "121", "122", "123"],
		"CDFG" : "dense_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "234", "EstimateLatencyMax" : "234",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["51"], "DependentChan" : "8"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO", "DependentProc" : ["124"], "DependentChan" : "2", "PIPODir" : "O",
				"SubConnect" : [
					{"ID" : "115", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_120_3_fu_291", "Port" : "output_r", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "117", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_124_4_fu_298", "Port" : "output_r", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "64", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233", "Port" : "output_r", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233", "Port" : "dense_1_weights_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233", "Port" : "dense_1_weights_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233", "Port" : "dense_1_weights_2", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233", "Port" : "dense_1_weights_3", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233", "Port" : "dense_1_weights_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233", "Port" : "dense_1_weights_5", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233", "Port" : "dense_1_weights_6", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233", "Port" : "dense_1_weights_7", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233", "Port" : "dense_1_weights_8", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233", "Port" : "dense_1_weights_9", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233", "Port" : "dense_1_weights_10", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233", "Port" : "dense_1_weights_11", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233", "Port" : "dense_1_weights_12", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233", "Port" : "dense_1_weights_13", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233", "Port" : "dense_1_weights_14", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_weights_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233", "Port" : "dense_1_weights_15", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dense_1_biases", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233", "Port" : "dense_1_biases", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}]},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233", "Parent" : "63", "Child" : ["65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114"],
		"CDFG" : "dense_1_Pipeline_VITIS_LOOP_109_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "93", "EstimateLatencyMax" : "93",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dense_1_weights_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_weights_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_1_biases", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_109_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter72", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter72", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.dense_1_weights_0_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.dense_1_weights_1_U", "Parent" : "64"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.dense_1_weights_2_U", "Parent" : "64"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.dense_1_weights_3_U", "Parent" : "64"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.dense_1_weights_4_U", "Parent" : "64"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.dense_1_weights_5_U", "Parent" : "64"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.dense_1_weights_6_U", "Parent" : "64"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.dense_1_weights_7_U", "Parent" : "64"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.dense_1_weights_8_U", "Parent" : "64"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.dense_1_weights_9_U", "Parent" : "64"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.dense_1_weights_10_U", "Parent" : "64"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.dense_1_weights_11_U", "Parent" : "64"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.dense_1_weights_12_U", "Parent" : "64"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.dense_1_weights_13_U", "Parent" : "64"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.dense_1_weights_14_U", "Parent" : "64"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.dense_1_weights_15_U", "Parent" : "64"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.dense_1_biases_U", "Parent" : "64"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fadd_32ns_32ns_32_4_full_dsp_1_U64", "Parent" : "64"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fadd_32ns_32ns_32_4_full_dsp_1_U65", "Parent" : "64"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fadd_32ns_32ns_32_4_full_dsp_1_U66", "Parent" : "64"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fadd_32ns_32ns_32_4_full_dsp_1_U67", "Parent" : "64"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fadd_32ns_32ns_32_4_full_dsp_1_U68", "Parent" : "64"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fadd_32ns_32ns_32_4_full_dsp_1_U69", "Parent" : "64"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fadd_32ns_32ns_32_4_full_dsp_1_U70", "Parent" : "64"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fadd_32ns_32ns_32_4_full_dsp_1_U71", "Parent" : "64"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fadd_32ns_32ns_32_4_full_dsp_1_U72", "Parent" : "64"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fadd_32ns_32ns_32_4_full_dsp_1_U73", "Parent" : "64"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fadd_32ns_32ns_32_4_full_dsp_1_U74", "Parent" : "64"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fadd_32ns_32ns_32_4_full_dsp_1_U75", "Parent" : "64"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fadd_32ns_32ns_32_4_full_dsp_1_U76", "Parent" : "64"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fadd_32ns_32ns_32_4_full_dsp_1_U77", "Parent" : "64"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fadd_32ns_32ns_32_4_full_dsp_1_U78", "Parent" : "64"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fadd_32ns_32ns_32_4_full_dsp_1_U79", "Parent" : "64"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fmul_32ns_32ns_32_3_max_dsp_1_U80", "Parent" : "64"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fmul_32ns_32ns_32_3_max_dsp_1_U81", "Parent" : "64"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fmul_32ns_32ns_32_3_max_dsp_1_U82", "Parent" : "64"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fmul_32ns_32ns_32_3_max_dsp_1_U83", "Parent" : "64"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fmul_32ns_32ns_32_3_max_dsp_1_U84", "Parent" : "64"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fmul_32ns_32ns_32_3_max_dsp_1_U85", "Parent" : "64"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fmul_32ns_32ns_32_3_max_dsp_1_U86", "Parent" : "64"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fmul_32ns_32ns_32_3_max_dsp_1_U87", "Parent" : "64"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fmul_32ns_32ns_32_3_max_dsp_1_U88", "Parent" : "64"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fmul_32ns_32ns_32_3_max_dsp_1_U89", "Parent" : "64"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fmul_32ns_32ns_32_3_max_dsp_1_U90", "Parent" : "64"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fmul_32ns_32ns_32_3_max_dsp_1_U91", "Parent" : "64"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fmul_32ns_32ns_32_3_max_dsp_1_U92", "Parent" : "64"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fmul_32ns_32ns_32_3_max_dsp_1_U93", "Parent" : "64"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fmul_32ns_32ns_32_3_max_dsp_1_U94", "Parent" : "64"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.fmul_32ns_32ns_32_3_max_dsp_1_U95", "Parent" : "64"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_109_1_fu_233.flow_control_loop_pipe_sequential_init_U", "Parent" : "64"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_120_3_fu_291", "Parent" : "63", "Child" : ["116"],
		"CDFG" : "dense_1_Pipeline_VITIS_LOOP_120_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "80", "EstimateLatencyMax" : "80",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "softmax_sum_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_120_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_120_3_fu_291.flow_control_loop_pipe_sequential_init_U", "Parent" : "115"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_124_4_fu_298", "Parent" : "63", "Child" : ["118", "119"],
		"CDFG" : "dense_1_Pipeline_VITIS_LOOP_124_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "48", "EstimateLatencyMax" : "48",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "softmax_sum_reload", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_124_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter27", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter27", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_124_4_fu_298.fdiv_32ns_32ns_32_9_no_dsp_1_U136", "Parent" : "117"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.grp_dense_1_Pipeline_VITIS_LOOP_124_4_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "117"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.fadd_32ns_32ns_32_4_full_dsp_1_U142", "Parent" : "63"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.fptrunc_64ns_32_2_no_dsp_1_U143", "Parent" : "63"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.fpext_32ns_64_2_no_dsp_1_U144", "Parent" : "63"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_1_U0.dexp_64ns_64ns_64_13_full_dsp_1_U145", "Parent" : "63"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_171_3_proc9_U0", "Parent" : "0", "Child" : ["125", "126", "127", "128", "129"],
		"CDFG" : "Loop_VITIS_LOOP_171_3_proc9",
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
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["63"], "DependentChan" : "2"},
			{"Name" : "output_stream_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "output_stream",
				"BlockSignal" : [
					{"Name" : "output_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_stream_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "output_stream"},
			{"Name" : "output_stream_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "output_stream"},
			{"Name" : "output_stream_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "output_stream"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_171_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_171_3_proc9_U0.flow_control_loop_pipe_U", "Parent" : "124"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_171_3_proc9_U0.regslice_both_output_stream_V_data_V_U", "Parent" : "124"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_171_3_proc9_U0.regslice_both_output_stream_V_keep_V_U", "Parent" : "124"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_171_3_proc9_U0.regslice_both_output_stream_V_strb_V_U", "Parent" : "124"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_171_3_proc9_U0.regslice_both_output_stream_V_last_V_U", "Parent" : "124"}]}


set ArgLastReadFirstWriteLatency {
	gesture_model {
		input_stream_V_data_V {Type I LastRead 0 FirstWrite -1}
		input_stream_V_keep_V {Type I LastRead 0 FirstWrite -1}
		input_stream_V_strb_V {Type I LastRead 0 FirstWrite -1}
		input_stream_V_last_V {Type I LastRead 0 FirstWrite -1}
		output_stream_V_data_V {Type O LastRead -1 FirstWrite 1}
		output_stream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		output_stream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		output_stream_V_last_V {Type O LastRead -1 FirstWrite 1}
		conv1d_0_weights_0_0 {Type I LastRead -1 FirstWrite -1}
		conv1d_0_weights_1_0 {Type I LastRead -1 FirstWrite -1}
		conv1d_0_weights_2_0 {Type I LastRead -1 FirstWrite -1}
		conv1d_0_biases {Type I LastRead -1 FirstWrite -1}
		batch_norm_0_gamma {Type I LastRead -1 FirstWrite -1}
		batch_norm_0_mean {Type I LastRead -1 FirstWrite -1}
		batch_norm_0_variance {Type I LastRead -1 FirstWrite -1}
		batch_norm_0_beta {Type I LastRead -1 FirstWrite -1}
		dense_0_biases {Type I LastRead -1 FirstWrite -1}
		dense_0_weights {Type I LastRead -1 FirstWrite -1}
		batch_norm_1_gamma {Type I LastRead -1 FirstWrite -1}
		batch_norm_1_mean {Type I LastRead -1 FirstWrite -1}
		batch_norm_1_variance {Type I LastRead -1 FirstWrite -1}
		batch_norm_1_beta {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_0 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_1 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_2 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_3 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_4 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_5 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_6 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_7 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_8 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_9 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_10 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_11 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_12 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_13 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_14 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_15 {Type I LastRead -1 FirstWrite -1}
		dense_1_biases {Type I LastRead -1 FirstWrite -1}}
	Loop_VITIS_LOOP_149_1_proc8 {
		input_stream_V_data_V {Type I LastRead 0 FirstWrite -1}
		input_stream_V_keep_V {Type I LastRead 0 FirstWrite -1}
		input_stream_V_strb_V {Type I LastRead 0 FirstWrite -1}
		input_stream_V_last_V {Type I LastRead 0 FirstWrite -1}
		input_0 {Type O LastRead -1 FirstWrite 0}}
	conv1d_0 {
		input_0 {Type I LastRead 2 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 23}
		conv1d_0_weights_0_0 {Type I LastRead -1 FirstWrite -1}
		conv1d_0_weights_1_0 {Type I LastRead -1 FirstWrite -1}
		conv1d_0_weights_2_0 {Type I LastRead -1 FirstWrite -1}
		conv1d_0_biases {Type I LastRead -1 FirstWrite -1}}
	batch_normalization_0 {
		input_r {Type I LastRead 7 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 29}
		batch_norm_0_gamma {Type I LastRead -1 FirstWrite -1}
		batch_norm_0_mean {Type I LastRead -1 FirstWrite -1}
		batch_norm_0_variance {Type I LastRead -1 FirstWrite -1}
		batch_norm_0_beta {Type I LastRead -1 FirstWrite -1}}
	max_pooling1d_0 {
		input_r {Type I LastRead 3 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 4}}
	Loop_VITIS_LOOP_77_1_proc {
		max_pool_out_0 {Type I LastRead 0 FirstWrite -1}
		flatten_out_0 {Type O LastRead -1 FirstWrite 1}}
	dense_0 {
		input_r {Type I LastRead 0 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 15}
		dense_0_biases {Type I LastRead -1 FirstWrite -1}
		dense_0_weights {Type I LastRead -1 FirstWrite -1}}
	batch_normalization_1 {
		input_r {Type I LastRead 8 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 28}
		batch_norm_1_gamma {Type I LastRead -1 FirstWrite -1}
		batch_norm_1_mean {Type I LastRead -1 FirstWrite -1}
		batch_norm_1_variance {Type I LastRead -1 FirstWrite -1}
		batch_norm_1_beta {Type I LastRead -1 FirstWrite -1}}
	dense_1 {
		input_r {Type I LastRead 8 FirstWrite -1}
		output_r {Type IO LastRead 0 FirstWrite -1}
		dense_1_weights_0 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_1 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_2 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_3 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_4 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_5 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_6 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_7 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_8 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_9 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_10 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_11 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_12 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_13 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_14 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_15 {Type I LastRead -1 FirstWrite -1}
		dense_1_biases {Type I LastRead -1 FirstWrite -1}}
	dense_1_Pipeline_VITIS_LOOP_109_1 {
		input_load {Type I LastRead 0 FirstWrite -1}
		input_load_1 {Type I LastRead 0 FirstWrite -1}
		input_load_2 {Type I LastRead 0 FirstWrite -1}
		input_load_3 {Type I LastRead 0 FirstWrite -1}
		input_load_4 {Type I LastRead 0 FirstWrite -1}
		input_load_5 {Type I LastRead 0 FirstWrite -1}
		input_load_6 {Type I LastRead 0 FirstWrite -1}
		input_load_7 {Type I LastRead 0 FirstWrite -1}
		input_load_8 {Type I LastRead 0 FirstWrite -1}
		input_load_9 {Type I LastRead 0 FirstWrite -1}
		input_load_10 {Type I LastRead 0 FirstWrite -1}
		input_load_11 {Type I LastRead 0 FirstWrite -1}
		input_load_12 {Type I LastRead 0 FirstWrite -1}
		input_load_13 {Type I LastRead 0 FirstWrite -1}
		input_load_14 {Type I LastRead 0 FirstWrite -1}
		input_load_15 {Type I LastRead 0 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 72}
		dense_1_weights_0 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_1 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_2 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_3 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_4 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_5 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_6 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_7 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_8 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_9 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_10 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_11 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_12 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_13 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_14 {Type I LastRead -1 FirstWrite -1}
		dense_1_weights_15 {Type I LastRead -1 FirstWrite -1}
		dense_1_biases {Type I LastRead -1 FirstWrite -1}}
	dense_1_Pipeline_VITIS_LOOP_120_3 {
		output_r {Type I LastRead 0 FirstWrite -1}
		softmax_sum_out {Type O LastRead -1 FirstWrite 18}}
	dense_1_Pipeline_VITIS_LOOP_124_4 {
		output_r {Type IO LastRead 0 FirstWrite 27}
		softmax_sum_reload {Type I LastRead 0 FirstWrite -1}}
	Loop_VITIS_LOOP_171_3_proc9 {
		output_r {Type I LastRead 0 FirstWrite -1}
		output_stream_V_data_V {Type O LastRead -1 FirstWrite 1}
		output_stream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		output_stream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		output_stream_V_last_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "69392", "Max" : "69392"}
	, {"Name" : "Interval", "Min" : "60430", "Max" : "60430"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_stream_V_data_V { axis {  { input_stream_TDATA in_data 0 32 } } }
	input_stream_V_keep_V { axis {  { input_stream_TKEEP in_data 0 4 } } }
	input_stream_V_strb_V { axis {  { input_stream_TSTRB in_data 0 4 } } }
	input_stream_V_last_V { axis {  { input_stream_TLAST in_data 0 1 }  { input_stream_TVALID in_vld 0 1 }  { input_stream_TREADY in_acc 1 1 } } }
	output_stream_V_data_V { axis {  { output_stream_TDATA out_data 1 32 } } }
	output_stream_V_keep_V { axis {  { output_stream_TKEEP out_data 1 4 } } }
	output_stream_V_strb_V { axis {  { output_stream_TSTRB out_data 1 4 } } }
	output_stream_V_last_V { axis {  { output_stream_TLAST out_data 1 1 }  { output_stream_TVALID out_vld 1 1 }  { output_stream_TREADY out_acc 0 1 } } }
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
