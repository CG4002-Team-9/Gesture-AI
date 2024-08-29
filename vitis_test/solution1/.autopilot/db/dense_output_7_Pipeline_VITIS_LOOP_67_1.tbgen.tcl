set moduleName dense_output_7_Pipeline_VITIS_LOOP_67_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {dense_output_7_Pipeline_VITIS_LOOP_67_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ sext_ln818 int 16 regular  }
	{ sext_ln1347 int 16 regular  }
	{ sext_ln1347_1 int 16 regular  }
	{ sext_ln1347_2 int 16 regular  }
	{ sext_ln1347_3 int 16 regular  }
	{ sext_ln1347_4 int 16 regular  }
	{ sext_ln1347_5 int 16 regular  }
	{ sext_ln1347_6 int 16 regular  }
	{ sext_ln1347_7 int 16 regular  }
	{ sext_ln1347_8 int 16 regular  }
	{ sext_ln1347_9 int 16 regular  }
	{ sext_ln1347_10 int 16 regular  }
	{ sext_ln1347_11 int 16 regular  }
	{ sext_ln1347_12 int 16 regular  }
	{ sext_ln1347_13 int 16 regular  }
	{ sext_ln1347_14 int 16 regular  }
	{ output_r int 16 regular {array 20 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln818", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1347", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1347_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1347_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1347_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1347_4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1347_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1347_6", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1347_7", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1347_8", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1347_9", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1347_10", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1347_11", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1347_12", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1347_13", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1347_14", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln818 sc_in sc_lv 16 signal 0 } 
	{ sext_ln1347 sc_in sc_lv 16 signal 1 } 
	{ sext_ln1347_1 sc_in sc_lv 16 signal 2 } 
	{ sext_ln1347_2 sc_in sc_lv 16 signal 3 } 
	{ sext_ln1347_3 sc_in sc_lv 16 signal 4 } 
	{ sext_ln1347_4 sc_in sc_lv 16 signal 5 } 
	{ sext_ln1347_5 sc_in sc_lv 16 signal 6 } 
	{ sext_ln1347_6 sc_in sc_lv 16 signal 7 } 
	{ sext_ln1347_7 sc_in sc_lv 16 signal 8 } 
	{ sext_ln1347_8 sc_in sc_lv 16 signal 9 } 
	{ sext_ln1347_9 sc_in sc_lv 16 signal 10 } 
	{ sext_ln1347_10 sc_in sc_lv 16 signal 11 } 
	{ sext_ln1347_11 sc_in sc_lv 16 signal 12 } 
	{ sext_ln1347_12 sc_in sc_lv 16 signal 13 } 
	{ sext_ln1347_13 sc_in sc_lv 16 signal 14 } 
	{ sext_ln1347_14 sc_in sc_lv 16 signal 15 } 
	{ output_r_address0 sc_out sc_lv 5 signal 16 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 16 } 
	{ output_r_we0 sc_out sc_logic 1 signal 16 } 
	{ output_r_d0 sc_out sc_lv 16 signal 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sext_ln818", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln818", "role": "default" }} , 
 	{ "name": "sext_ln1347", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1347", "role": "default" }} , 
 	{ "name": "sext_ln1347_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1347_1", "role": "default" }} , 
 	{ "name": "sext_ln1347_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1347_2", "role": "default" }} , 
 	{ "name": "sext_ln1347_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1347_3", "role": "default" }} , 
 	{ "name": "sext_ln1347_4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1347_4", "role": "default" }} , 
 	{ "name": "sext_ln1347_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1347_5", "role": "default" }} , 
 	{ "name": "sext_ln1347_6", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1347_6", "role": "default" }} , 
 	{ "name": "sext_ln1347_7", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1347_7", "role": "default" }} , 
 	{ "name": "sext_ln1347_8", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1347_8", "role": "default" }} , 
 	{ "name": "sext_ln1347_9", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1347_9", "role": "default" }} , 
 	{ "name": "sext_ln1347_10", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1347_10", "role": "default" }} , 
 	{ "name": "sext_ln1347_11", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1347_11", "role": "default" }} , 
 	{ "name": "sext_ln1347_12", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1347_12", "role": "default" }} , 
 	{ "name": "sext_ln1347_13", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1347_13", "role": "default" }} , 
 	{ "name": "sext_ln1347_14", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1347_14", "role": "default" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"],
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
					{"ID" : "3", "SubInstance" : "grp_exp_17_9_s_fu_435", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "20", "Inst_end_state" : "25"}]},
			{"Name" : "exp_x_msb_2_m_1_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_exp_17_9_s_fu_435", "Port" : "exp_x_msb_2_m_1_table_V", "Inst_start_state" : "20", "Inst_end_state" : "25"}]},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_exp_17_9_s_fu_435", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "20", "Inst_end_state" : "25"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_67_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter24", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter24", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_weights_7_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_biases_7_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_exp_17_9_s_fu_435", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8"],
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_17_9_s_fu_435.f_x_lsb_table_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_17_9_s_fu_435.exp_x_msb_2_m_1_table_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_17_9_s_fu_435.exp_x_msb_1_table_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_17_9_s_fu_435.mul_25ns_25ns_50_1_1_U48", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_17_9_s_fu_435.mul_mul_25ns_18ns_43_4_1_U49", "Parent" : "3"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_9s_24_4_1_U56", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_9s_24ns_24_4_1_U57", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_9s_24ns_24_4_1_U58", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_9s_24ns_24_4_1_U59", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_9s_24ns_24_4_1_U60", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_9s_24ns_24_4_1_U61", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_9s_24ns_24_4_1_U62", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_9s_24ns_24_4_1_U63", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_9s_24ns_24_4_1_U64", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_9s_24ns_24_4_1_U65", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_9s_24ns_24_4_1_U66", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_9s_24ns_24_4_1_U67", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_9s_24ns_24_4_1_U68", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_9s_24ns_24_4_1_U69", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_9s_24ns_24_4_1_U70", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_9s_24ns_24_4_1_U71", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "45", "Max" : "45"}
	, {"Name" : "Interval", "Min" : "45", "Max" : "45"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln818 { ap_none {  { sext_ln818 in_data 0 16 } } }
	sext_ln1347 { ap_none {  { sext_ln1347 in_data 0 16 } } }
	sext_ln1347_1 { ap_none {  { sext_ln1347_1 in_data 0 16 } } }
	sext_ln1347_2 { ap_none {  { sext_ln1347_2 in_data 0 16 } } }
	sext_ln1347_3 { ap_none {  { sext_ln1347_3 in_data 0 16 } } }
	sext_ln1347_4 { ap_none {  { sext_ln1347_4 in_data 0 16 } } }
	sext_ln1347_5 { ap_none {  { sext_ln1347_5 in_data 0 16 } } }
	sext_ln1347_6 { ap_none {  { sext_ln1347_6 in_data 0 16 } } }
	sext_ln1347_7 { ap_none {  { sext_ln1347_7 in_data 0 16 } } }
	sext_ln1347_8 { ap_none {  { sext_ln1347_8 in_data 0 16 } } }
	sext_ln1347_9 { ap_none {  { sext_ln1347_9 in_data 0 16 } } }
	sext_ln1347_10 { ap_none {  { sext_ln1347_10 in_data 0 16 } } }
	sext_ln1347_11 { ap_none {  { sext_ln1347_11 in_data 0 16 } } }
	sext_ln1347_12 { ap_none {  { sext_ln1347_12 in_data 0 16 } } }
	sext_ln1347_13 { ap_none {  { sext_ln1347_13 in_data 0 16 } } }
	sext_ln1347_14 { ap_none {  { sext_ln1347_14 in_data 0 16 } } }
	output_r { ap_memory {  { output_r_address0 mem_address 1 5 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 16 } } }
}
