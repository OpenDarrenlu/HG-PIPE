set moduleName quant_top
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {quant_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ i_stream_V int 32 regular {fifo 0 volatile }  }
	{ o_stream_V int 32 regular {fifo 1 volatile }  }
	{ scalars int 32 regular {pointer 0}  }
	{ table_r int 32 unused {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "i_stream_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "i_stream.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "o_stream_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "o_stream.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "scalars", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "scalars","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "table_r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "table","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ i_stream_V_dout sc_in sc_lv 32 signal 0 } 
	{ i_stream_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ i_stream_V_read sc_out sc_logic 1 signal 0 } 
	{ o_stream_V_din sc_out sc_lv 32 signal 1 } 
	{ o_stream_V_full_n sc_in sc_logic 1 signal 1 } 
	{ o_stream_V_write sc_out sc_logic 1 signal 1 } 
	{ scalars sc_in sc_lv 32 signal 2 } 
	{ table_r sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "i_stream_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "i_stream_V", "role": "dout" }} , 
 	{ "name": "i_stream_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "i_stream_V", "role": "empty_n" }} , 
 	{ "name": "i_stream_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "i_stream_V", "role": "read" }} , 
 	{ "name": "o_stream_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "o_stream_V", "role": "din" }} , 
 	{ "name": "o_stream_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "o_stream_V", "role": "full_n" }} , 
 	{ "name": "o_stream_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "o_stream_V", "role": "write" }} , 
 	{ "name": "scalars", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "scalars", "role": "default" }} , 
 	{ "name": "table_r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "table_r", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "quant_top",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18829", "EstimateLatencyMax" : "18829",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "i_stream_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_quant_fu_48", "Port" : "i_stream_V"}]},
			{"Name" : "o_stream_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_quant_fu_48", "Port" : "o_stream_V"}]},
			{"Name" : "scalars", "Type" : "None", "Direction" : "I"},
			{"Name" : "table_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.quant_module_table_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_do_quant_fu_48", "Parent" : "0", "Child" : ["3", "4", "5", "6"],
		"CDFG" : "do_quant",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18828", "EstimateLatencyMax" : "18828",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "i_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "o_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "o_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "this_b_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_table", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_quant_fu_48.fmul_32ns_32ns_32_4_max_dsp_1_U1", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_quant_fu_48.fmul_32ns_32ns_32_4_max_dsp_1_U2", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_quant_fu_48.sitofp_32ns_32_4_no_dsp_1_U3", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_quant_fu_48.sitofp_32ns_32_4_no_dsp_1_U4", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	quant_top {
		i_stream_V {Type I LastRead 2 FirstWrite -1}
		o_stream_V {Type O LastRead -1 FirstWrite 13}
		scalars {Type I LastRead 0 FirstWrite -1}
		table_r {Type I LastRead -1 FirstWrite -1}}
	do_quant {
		i_stream_V {Type I LastRead 2 FirstWrite -1}
		o_stream_V {Type O LastRead -1 FirstWrite 13}
		this_b_read {Type I LastRead 0 FirstWrite -1}
		this_table {Type I LastRead 13 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "18829", "Max" : "18829"}
	, {"Name" : "Interval", "Min" : "18830", "Max" : "18830"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	i_stream_V { ap_fifo {  { i_stream_V_dout fifo_data 0 32 }  { i_stream_V_empty_n fifo_status 0 1 }  { i_stream_V_read fifo_update 1 1 } } }
	o_stream_V { ap_fifo {  { o_stream_V_din fifo_data 1 32 }  { o_stream_V_full_n fifo_status 0 1 }  { o_stream_V_write fifo_update 1 1 } } }
	scalars { ap_none {  { scalars in_data 0 32 } } }
	table_r { ap_none {  { table_r in_data 0 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	i_stream_V { fifo_read 1 no_conditional }
	o_stream_V { fifo_write 1 no_conditional }
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
