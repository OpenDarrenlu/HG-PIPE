set moduleName do_gelu
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {do_gelu}
set C_modelType { void 0 }
set C_modelArgList {
	{ i_stream_V int 32 regular {fifo 0 volatile }  }
	{ o_stream_V int 32 regular {fifo 1 volatile }  }
	{ this_table int 8 regular {array 64 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "i_stream_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "o_stream_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "this_table", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
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
	{ this_table_address0 sc_out sc_lv 6 signal 2 } 
	{ this_table_ce0 sc_out sc_logic 1 signal 2 } 
	{ this_table_q0 sc_in sc_lv 8 signal 2 } 
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
 	{ "name": "this_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "this_table", "role": "address0" }} , 
 	{ "name": "this_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_table", "role": "ce0" }} , 
 	{ "name": "this_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "this_table", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "do_gelu",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9509", "EstimateLatencyMax" : "9509",
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
			{"Name" : "this_table", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	do_gelu {
		i_stream_V {Type I LastRead 3 FirstWrite -1}
		o_stream_V {Type O LastRead -1 FirstWrite 3}
		this_table {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "9509", "Max" : "9509"}
	, {"Name" : "Interval", "Min" : "9509", "Max" : "9509"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	i_stream_V { ap_fifo {  { i_stream_V_dout fifo_data 0 32 }  { i_stream_V_empty_n fifo_status 0 1 }  { i_stream_V_read fifo_update 1 1 } } }
	o_stream_V { ap_fifo {  { o_stream_V_din fifo_data 1 32 }  { o_stream_V_full_n fifo_status 0 1 }  { o_stream_V_write fifo_update 1 1 } } }
	this_table { ap_memory {  { this_table_address0 mem_address 1 6 }  { this_table_ce0 mem_ce 1 1 }  { this_table_q0 mem_dout 0 8 } } }
}
