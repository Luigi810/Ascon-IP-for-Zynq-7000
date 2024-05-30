set moduleName LOADBYTES
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
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {LOADBYTES}
set C_modelType { int 64 }
set C_modelArgList {
	{ bytes_read int 8 regular  }
	{ bytes_read_47 int 8 regular  }
	{ bytes_read_48 int 8 regular  }
	{ bytes_read_49 int 8 regular  }
	{ bytes_read_50 int 8 regular  }
	{ bytes_read_51 int 8 regular  }
	{ bytes_read_52 int 8 regular  }
	{ bytes_read_53 int 8 regular  }
	{ bytes_read_54 int 8 regular  }
	{ bytes_read_55 int 8 regular  }
	{ bytes_read_56 int 8 regular  }
	{ bytes_read_57 int 8 regular  }
	{ bytes_read_58 int 8 regular  }
	{ bytes_read_59 int 8 regular  }
	{ bytes_read_60 int 8 regular  }
	{ bytes_read_61 int 8 regular  }
	{ n int 4 regular  }
	{ idx int 4 regular  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "bytes_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bytes_read_47", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bytes_read_48", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bytes_read_49", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bytes_read_50", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bytes_read_51", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bytes_read_52", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bytes_read_53", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bytes_read_54", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bytes_read_55", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bytes_read_56", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bytes_read_57", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bytes_read_58", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bytes_read_59", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bytes_read_60", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bytes_read_61", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "n", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "idx", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bytes_read sc_in sc_lv 8 signal 0 } 
	{ bytes_read_47 sc_in sc_lv 8 signal 1 } 
	{ bytes_read_48 sc_in sc_lv 8 signal 2 } 
	{ bytes_read_49 sc_in sc_lv 8 signal 3 } 
	{ bytes_read_50 sc_in sc_lv 8 signal 4 } 
	{ bytes_read_51 sc_in sc_lv 8 signal 5 } 
	{ bytes_read_52 sc_in sc_lv 8 signal 6 } 
	{ bytes_read_53 sc_in sc_lv 8 signal 7 } 
	{ bytes_read_54 sc_in sc_lv 8 signal 8 } 
	{ bytes_read_55 sc_in sc_lv 8 signal 9 } 
	{ bytes_read_56 sc_in sc_lv 8 signal 10 } 
	{ bytes_read_57 sc_in sc_lv 8 signal 11 } 
	{ bytes_read_58 sc_in sc_lv 8 signal 12 } 
	{ bytes_read_59 sc_in sc_lv 8 signal 13 } 
	{ bytes_read_60 sc_in sc_lv 8 signal 14 } 
	{ bytes_read_61 sc_in sc_lv 8 signal 15 } 
	{ n sc_in sc_lv 4 signal 16 } 
	{ idx sc_in sc_lv 4 signal 17 } 
	{ ap_return sc_out sc_lv 64 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bytes_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bytes_read", "role": "default" }} , 
 	{ "name": "bytes_read_47", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bytes_read_47", "role": "default" }} , 
 	{ "name": "bytes_read_48", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bytes_read_48", "role": "default" }} , 
 	{ "name": "bytes_read_49", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bytes_read_49", "role": "default" }} , 
 	{ "name": "bytes_read_50", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bytes_read_50", "role": "default" }} , 
 	{ "name": "bytes_read_51", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bytes_read_51", "role": "default" }} , 
 	{ "name": "bytes_read_52", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bytes_read_52", "role": "default" }} , 
 	{ "name": "bytes_read_53", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bytes_read_53", "role": "default" }} , 
 	{ "name": "bytes_read_54", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bytes_read_54", "role": "default" }} , 
 	{ "name": "bytes_read_55", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bytes_read_55", "role": "default" }} , 
 	{ "name": "bytes_read_56", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bytes_read_56", "role": "default" }} , 
 	{ "name": "bytes_read_57", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bytes_read_57", "role": "default" }} , 
 	{ "name": "bytes_read_58", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bytes_read_58", "role": "default" }} , 
 	{ "name": "bytes_read_59", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bytes_read_59", "role": "default" }} , 
 	{ "name": "bytes_read_60", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bytes_read_60", "role": "default" }} , 
 	{ "name": "bytes_read_61", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bytes_read_61", "role": "default" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "idx", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "idx", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "LOADBYTES",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bytes_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytes_read_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytes_read_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytes_read_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytes_read_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytes_read_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytes_read_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytes_read_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytes_read_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytes_read_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytes_read_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytes_read_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytes_read_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytes_read_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytes_read_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytes_read_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_22_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_33_4_8_1_1_U42", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	LOADBYTES {
		bytes_read {Type I LastRead 0 FirstWrite -1}
		bytes_read_47 {Type I LastRead 0 FirstWrite -1}
		bytes_read_48 {Type I LastRead 0 FirstWrite -1}
		bytes_read_49 {Type I LastRead 0 FirstWrite -1}
		bytes_read_50 {Type I LastRead 0 FirstWrite -1}
		bytes_read_51 {Type I LastRead 0 FirstWrite -1}
		bytes_read_52 {Type I LastRead 0 FirstWrite -1}
		bytes_read_53 {Type I LastRead 0 FirstWrite -1}
		bytes_read_54 {Type I LastRead 0 FirstWrite -1}
		bytes_read_55 {Type I LastRead 0 FirstWrite -1}
		bytes_read_56 {Type I LastRead 0 FirstWrite -1}
		bytes_read_57 {Type I LastRead 0 FirstWrite -1}
		bytes_read_58 {Type I LastRead 0 FirstWrite -1}
		bytes_read_59 {Type I LastRead 0 FirstWrite -1}
		bytes_read_60 {Type I LastRead 0 FirstWrite -1}
		bytes_read_61 {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		idx {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bytes_read { ap_none {  { bytes_read in_data 0 8 } } }
	bytes_read_47 { ap_none {  { bytes_read_47 in_data 0 8 } } }
	bytes_read_48 { ap_none {  { bytes_read_48 in_data 0 8 } } }
	bytes_read_49 { ap_none {  { bytes_read_49 in_data 0 8 } } }
	bytes_read_50 { ap_none {  { bytes_read_50 in_data 0 8 } } }
	bytes_read_51 { ap_none {  { bytes_read_51 in_data 0 8 } } }
	bytes_read_52 { ap_none {  { bytes_read_52 in_data 0 8 } } }
	bytes_read_53 { ap_none {  { bytes_read_53 in_data 0 8 } } }
	bytes_read_54 { ap_none {  { bytes_read_54 in_data 0 8 } } }
	bytes_read_55 { ap_none {  { bytes_read_55 in_data 0 8 } } }
	bytes_read_56 { ap_none {  { bytes_read_56 in_data 0 8 } } }
	bytes_read_57 { ap_none {  { bytes_read_57 in_data 0 8 } } }
	bytes_read_58 { ap_none {  { bytes_read_58 in_data 0 8 } } }
	bytes_read_59 { ap_none {  { bytes_read_59 in_data 0 8 } } }
	bytes_read_60 { ap_none {  { bytes_read_60 in_data 0 8 } } }
	bytes_read_61 { ap_none {  { bytes_read_61 in_data 0 8 } } }
	n { ap_none {  { n in_data 0 4 } } }
	idx { ap_none {  { idx in_data 0 4 } } }
}
