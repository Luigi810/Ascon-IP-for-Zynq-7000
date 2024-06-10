set moduleName u64_to_u8_array
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {u64_to_u8_array}
set C_modelType { void 0 }
set C_modelArgList {
	{ a int 64 regular  }
	{ b_0 int 8 regular {array 8 { 0 3 } 0 1 }  }
	{ b_1 int 8 regular {array 8 { 0 3 } 0 1 }  }
	{ b_2 int 8 regular {array 8 { 0 3 } 0 1 }  }
	{ b_3 int 8 regular {array 8 { 0 3 } 0 1 }  }
	{ idx int 5 regular  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "a", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "b_0", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_3", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "idx", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a sc_in sc_lv 64 signal 0 } 
	{ b_0_address0 sc_out sc_lv 3 signal 1 } 
	{ b_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ b_0_we0 sc_out sc_logic 1 signal 1 } 
	{ b_0_d0 sc_out sc_lv 8 signal 1 } 
	{ b_1_address0 sc_out sc_lv 3 signal 2 } 
	{ b_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ b_1_we0 sc_out sc_logic 1 signal 2 } 
	{ b_1_d0 sc_out sc_lv 8 signal 2 } 
	{ b_2_address0 sc_out sc_lv 3 signal 3 } 
	{ b_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ b_2_we0 sc_out sc_logic 1 signal 3 } 
	{ b_2_d0 sc_out sc_lv 8 signal 3 } 
	{ b_3_address0 sc_out sc_lv 3 signal 4 } 
	{ b_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ b_3_we0 sc_out sc_logic 1 signal 4 } 
	{ b_3_d0 sc_out sc_lv 8 signal 4 } 
	{ idx sc_in sc_lv 5 signal 5 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a", "role": "default" }} , 
 	{ "name": "b_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "b_0", "role": "address0" }} , 
 	{ "name": "b_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_0", "role": "ce0" }} , 
 	{ "name": "b_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_0", "role": "we0" }} , 
 	{ "name": "b_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_0", "role": "d0" }} , 
 	{ "name": "b_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "b_1", "role": "address0" }} , 
 	{ "name": "b_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_1", "role": "ce0" }} , 
 	{ "name": "b_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_1", "role": "we0" }} , 
 	{ "name": "b_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_1", "role": "d0" }} , 
 	{ "name": "b_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "b_2", "role": "address0" }} , 
 	{ "name": "b_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_2", "role": "ce0" }} , 
 	{ "name": "b_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_2", "role": "we0" }} , 
 	{ "name": "b_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_2", "role": "d0" }} , 
 	{ "name": "b_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "b_3", "role": "address0" }} , 
 	{ "name": "b_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_3", "role": "ce0" }} , 
 	{ "name": "b_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_3", "role": "we0" }} , 
 	{ "name": "b_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_3", "role": "d0" }} , 
 	{ "name": "idx", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "idx", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "u64_to_u8_array",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "2",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "idx", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	u64_to_u8_array {
		a {Type I LastRead 0 FirstWrite -1}
		b_0 {Type O LastRead -1 FirstWrite 0}
		b_1 {Type O LastRead -1 FirstWrite 0}
		b_2 {Type O LastRead -1 FirstWrite 0}
		b_3 {Type O LastRead -1 FirstWrite 0}
		idx {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a { ap_none {  { a in_data 0 64 } } }
	b_0 { ap_memory {  { b_0_address0 mem_address 1 3 }  { b_0_ce0 mem_ce 1 1 }  { b_0_we0 mem_we 1 1 }  { b_0_d0 mem_din 1 8 } } }
	b_1 { ap_memory {  { b_1_address0 mem_address 1 3 }  { b_1_ce0 mem_ce 1 1 }  { b_1_we0 mem_we 1 1 }  { b_1_d0 mem_din 1 8 } } }
	b_2 { ap_memory {  { b_2_address0 mem_address 1 3 }  { b_2_ce0 mem_ce 1 1 }  { b_2_we0 mem_we 1 1 }  { b_2_d0 mem_din 1 8 } } }
	b_3 { ap_memory {  { b_3_address0 mem_address 1 3 }  { b_3_ce0 mem_ce 1 1 }  { b_3_we0 mem_we 1 1 }  { b_3_d0 mem_din 1 8 } } }
	idx { ap_none {  { idx in_data 0 5 } } }
}
