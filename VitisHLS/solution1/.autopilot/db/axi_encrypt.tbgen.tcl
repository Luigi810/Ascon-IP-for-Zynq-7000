set moduleName axi_encrypt
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
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {axi_encrypt}
set C_modelType { int 32 }
set C_modelArgList {
	{ gmem int 64 regular {axi_master 0}  }
	{ c int 64 regular {axi_slave 0}  }
	{ m int 64 regular {axi_slave 0}  }
	{ ad int 64 regular {axi_slave 0}  }
	{ nsec int 64 regular {axi_slave 0}  }
	{ npub int 64 regular {axi_slave 0}  }
	{ k int 64 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "c","offset": { "type": "dynamic","port_name": "c","bundle": "control"},"direction": "READONLY"},{"cName": "m","offset": { "type": "dynamic","port_name": "m","bundle": "control"},"direction": "READONLY"},{"cName": "ad","offset": { "type": "dynamic","port_name": "ad","bundle": "control"},"direction": "READONLY"},{"cName": "nsec","offset": { "type": "dynamic","port_name": "nsec","bundle": "control"},"direction": "READONLY"},{"cName": "npub","offset": { "type": "dynamic","port_name": "npub","bundle": "control"},"direction": "READONLY"},{"cName": "k","offset": { "type": "dynamic","port_name": "k","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "c", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":35}} , 
 	{ "Name" : "m", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":36}, "offset_end" : {"in":47}} , 
 	{ "Name" : "ad", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":59}} , 
 	{ "Name" : "nsec", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":60}, "offset_end" : {"in":71}} , 
 	{ "Name" : "npub", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":72}, "offset_end" : {"in":83}} , 
 	{ "Name" : "k", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":84}, "offset_end" : {"in":95}} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "offset" : {"out":16}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 64 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"axi_encrypt","role":"start","value":"0","valid_bit":"0"},{"name":"axi_encrypt","role":"continue","value":"0","valid_bit":"4"},{"name":"axi_encrypt","role":"auto_start","value":"0","valid_bit":"7"},{"name":"c","role":"data","value":"24"},{"name":"m","role":"data","value":"36"},{"name":"ad","role":"data","value":"48"},{"name":"nsec","role":"data","value":"60"},{"name":"npub","role":"data","value":"72"},{"name":"k","role":"data","value":"84"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"axi_encrypt","role":"start","value":"0","valid_bit":"0"},{"name":"axi_encrypt","role":"done","value":"0","valid_bit":"1"},{"name":"axi_encrypt","role":"idle","value":"0","valid_bit":"2"},{"name":"axi_encrypt","role":"ready","value":"0","valid_bit":"3"},{"name":"axi_encrypt","role":"auto_start","value":"0","valid_bit":"7"},{"name":"return","role":"data","value":"16"}] },
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
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "23", "40", "57", "74", "91", "108", "125", "145", "146"],
		"CDFG" : "axi_encrypt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "150", "EstimateLatencyMax" : "206",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "c", "Type" : "None", "Direction" : "I"},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "ad", "Type" : "None", "Direction" : "I"},
			{"Name" : "nsec", "Type" : "None", "Direction" : "I"},
			{"Name" : "npub", "Type" : "None", "Direction" : "I"},
			{"Name" : "k", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_u8_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_u8_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_u8_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_u8_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_u64_to_u8_array_fu_222", "Parent" : "0",
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
			{"Name" : "idx", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_u64_to_u8_array_clone_fu_236", "Parent" : "0", "Child" : ["7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"],
		"CDFG" : "u64_to_u8_array_clone",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_u64_to_u8_array_clone_fu_236.sparsemux_19_4_8_1_1_U7", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_u64_to_u8_array_clone_fu_236.sparsemux_19_4_8_1_1_U8", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_u64_to_u8_array_clone_fu_236.sparsemux_19_4_8_1_1_U9", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_u64_to_u8_array_clone_fu_236.sparsemux_19_4_8_1_1_U10", "Parent" : "6"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_u64_to_u8_array_clone_fu_236.sparsemux_19_4_8_1_1_U11", "Parent" : "6"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_u64_to_u8_array_clone_fu_236.sparsemux_19_4_8_1_1_U12", "Parent" : "6"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_u64_to_u8_array_clone_fu_236.sparsemux_19_4_8_1_1_U13", "Parent" : "6"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_u64_to_u8_array_clone_fu_236.sparsemux_19_4_8_1_1_U14", "Parent" : "6"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_u64_to_u8_array_clone_fu_236.sparsemux_19_4_8_1_1_U15", "Parent" : "6"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_u64_to_u8_array_clone_fu_236.sparsemux_19_4_8_1_1_U16", "Parent" : "6"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_u64_to_u8_array_clone_fu_236.sparsemux_19_4_8_1_1_U17", "Parent" : "6"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_u64_to_u8_array_clone_fu_236.sparsemux_19_4_8_1_1_U18", "Parent" : "6"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_u64_to_u8_array_clone_fu_236.sparsemux_19_4_8_1_1_U19", "Parent" : "6"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_u64_to_u8_array_clone_fu_236.sparsemux_19_4_8_1_1_U20", "Parent" : "6"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_u64_to_u8_array_clone_fu_236.sparsemux_19_4_8_1_1_U21", "Parent" : "6"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_u64_to_u8_array_clone_fu_236.sparsemux_19_4_8_1_1_U22", "Parent" : "6"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ret43_u64_to_u8_array_clone_fu_275", "Parent" : "0", "Child" : ["24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39"],
		"CDFG" : "u64_to_u8_array_clone",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret43_u64_to_u8_array_clone_fu_275.sparsemux_19_4_8_1_1_U7", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret43_u64_to_u8_array_clone_fu_275.sparsemux_19_4_8_1_1_U8", "Parent" : "23"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret43_u64_to_u8_array_clone_fu_275.sparsemux_19_4_8_1_1_U9", "Parent" : "23"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret43_u64_to_u8_array_clone_fu_275.sparsemux_19_4_8_1_1_U10", "Parent" : "23"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret43_u64_to_u8_array_clone_fu_275.sparsemux_19_4_8_1_1_U11", "Parent" : "23"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret43_u64_to_u8_array_clone_fu_275.sparsemux_19_4_8_1_1_U12", "Parent" : "23"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret43_u64_to_u8_array_clone_fu_275.sparsemux_19_4_8_1_1_U13", "Parent" : "23"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret43_u64_to_u8_array_clone_fu_275.sparsemux_19_4_8_1_1_U14", "Parent" : "23"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret43_u64_to_u8_array_clone_fu_275.sparsemux_19_4_8_1_1_U15", "Parent" : "23"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret43_u64_to_u8_array_clone_fu_275.sparsemux_19_4_8_1_1_U16", "Parent" : "23"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret43_u64_to_u8_array_clone_fu_275.sparsemux_19_4_8_1_1_U17", "Parent" : "23"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret43_u64_to_u8_array_clone_fu_275.sparsemux_19_4_8_1_1_U18", "Parent" : "23"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret43_u64_to_u8_array_clone_fu_275.sparsemux_19_4_8_1_1_U19", "Parent" : "23"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret43_u64_to_u8_array_clone_fu_275.sparsemux_19_4_8_1_1_U20", "Parent" : "23"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret43_u64_to_u8_array_clone_fu_275.sparsemux_19_4_8_1_1_U21", "Parent" : "23"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret43_u64_to_u8_array_clone_fu_275.sparsemux_19_4_8_1_1_U22", "Parent" : "23"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ret44_u64_to_u8_array_clone_fu_298", "Parent" : "0", "Child" : ["41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56"],
		"CDFG" : "u64_to_u8_array_clone",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret44_u64_to_u8_array_clone_fu_298.sparsemux_19_4_8_1_1_U7", "Parent" : "40"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret44_u64_to_u8_array_clone_fu_298.sparsemux_19_4_8_1_1_U8", "Parent" : "40"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret44_u64_to_u8_array_clone_fu_298.sparsemux_19_4_8_1_1_U9", "Parent" : "40"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret44_u64_to_u8_array_clone_fu_298.sparsemux_19_4_8_1_1_U10", "Parent" : "40"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret44_u64_to_u8_array_clone_fu_298.sparsemux_19_4_8_1_1_U11", "Parent" : "40"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret44_u64_to_u8_array_clone_fu_298.sparsemux_19_4_8_1_1_U12", "Parent" : "40"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret44_u64_to_u8_array_clone_fu_298.sparsemux_19_4_8_1_1_U13", "Parent" : "40"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret44_u64_to_u8_array_clone_fu_298.sparsemux_19_4_8_1_1_U14", "Parent" : "40"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret44_u64_to_u8_array_clone_fu_298.sparsemux_19_4_8_1_1_U15", "Parent" : "40"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret44_u64_to_u8_array_clone_fu_298.sparsemux_19_4_8_1_1_U16", "Parent" : "40"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret44_u64_to_u8_array_clone_fu_298.sparsemux_19_4_8_1_1_U17", "Parent" : "40"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret44_u64_to_u8_array_clone_fu_298.sparsemux_19_4_8_1_1_U18", "Parent" : "40"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret44_u64_to_u8_array_clone_fu_298.sparsemux_19_4_8_1_1_U19", "Parent" : "40"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret44_u64_to_u8_array_clone_fu_298.sparsemux_19_4_8_1_1_U20", "Parent" : "40"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret44_u64_to_u8_array_clone_fu_298.sparsemux_19_4_8_1_1_U21", "Parent" : "40"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret44_u64_to_u8_array_clone_fu_298.sparsemux_19_4_8_1_1_U22", "Parent" : "40"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ret45_u64_to_u8_array_clone_fu_337", "Parent" : "0", "Child" : ["58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73"],
		"CDFG" : "u64_to_u8_array_clone",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret45_u64_to_u8_array_clone_fu_337.sparsemux_19_4_8_1_1_U7", "Parent" : "57"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret45_u64_to_u8_array_clone_fu_337.sparsemux_19_4_8_1_1_U8", "Parent" : "57"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret45_u64_to_u8_array_clone_fu_337.sparsemux_19_4_8_1_1_U9", "Parent" : "57"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret45_u64_to_u8_array_clone_fu_337.sparsemux_19_4_8_1_1_U10", "Parent" : "57"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret45_u64_to_u8_array_clone_fu_337.sparsemux_19_4_8_1_1_U11", "Parent" : "57"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret45_u64_to_u8_array_clone_fu_337.sparsemux_19_4_8_1_1_U12", "Parent" : "57"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret45_u64_to_u8_array_clone_fu_337.sparsemux_19_4_8_1_1_U13", "Parent" : "57"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret45_u64_to_u8_array_clone_fu_337.sparsemux_19_4_8_1_1_U14", "Parent" : "57"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret45_u64_to_u8_array_clone_fu_337.sparsemux_19_4_8_1_1_U15", "Parent" : "57"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret45_u64_to_u8_array_clone_fu_337.sparsemux_19_4_8_1_1_U16", "Parent" : "57"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret45_u64_to_u8_array_clone_fu_337.sparsemux_19_4_8_1_1_U17", "Parent" : "57"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret45_u64_to_u8_array_clone_fu_337.sparsemux_19_4_8_1_1_U18", "Parent" : "57"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret45_u64_to_u8_array_clone_fu_337.sparsemux_19_4_8_1_1_U19", "Parent" : "57"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret45_u64_to_u8_array_clone_fu_337.sparsemux_19_4_8_1_1_U20", "Parent" : "57"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret45_u64_to_u8_array_clone_fu_337.sparsemux_19_4_8_1_1_U21", "Parent" : "57"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret45_u64_to_u8_array_clone_fu_337.sparsemux_19_4_8_1_1_U22", "Parent" : "57"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ret46_u64_to_u8_array_clone_fu_360", "Parent" : "0", "Child" : ["75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90"],
		"CDFG" : "u64_to_u8_array_clone",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret46_u64_to_u8_array_clone_fu_360.sparsemux_19_4_8_1_1_U7", "Parent" : "74"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret46_u64_to_u8_array_clone_fu_360.sparsemux_19_4_8_1_1_U8", "Parent" : "74"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret46_u64_to_u8_array_clone_fu_360.sparsemux_19_4_8_1_1_U9", "Parent" : "74"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret46_u64_to_u8_array_clone_fu_360.sparsemux_19_4_8_1_1_U10", "Parent" : "74"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret46_u64_to_u8_array_clone_fu_360.sparsemux_19_4_8_1_1_U11", "Parent" : "74"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret46_u64_to_u8_array_clone_fu_360.sparsemux_19_4_8_1_1_U12", "Parent" : "74"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret46_u64_to_u8_array_clone_fu_360.sparsemux_19_4_8_1_1_U13", "Parent" : "74"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret46_u64_to_u8_array_clone_fu_360.sparsemux_19_4_8_1_1_U14", "Parent" : "74"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret46_u64_to_u8_array_clone_fu_360.sparsemux_19_4_8_1_1_U15", "Parent" : "74"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret46_u64_to_u8_array_clone_fu_360.sparsemux_19_4_8_1_1_U16", "Parent" : "74"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret46_u64_to_u8_array_clone_fu_360.sparsemux_19_4_8_1_1_U17", "Parent" : "74"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret46_u64_to_u8_array_clone_fu_360.sparsemux_19_4_8_1_1_U18", "Parent" : "74"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret46_u64_to_u8_array_clone_fu_360.sparsemux_19_4_8_1_1_U19", "Parent" : "74"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret46_u64_to_u8_array_clone_fu_360.sparsemux_19_4_8_1_1_U20", "Parent" : "74"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret46_u64_to_u8_array_clone_fu_360.sparsemux_19_4_8_1_1_U21", "Parent" : "74"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret46_u64_to_u8_array_clone_fu_360.sparsemux_19_4_8_1_1_U22", "Parent" : "74"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ret47_u64_to_u8_array_clone_fu_399", "Parent" : "0", "Child" : ["92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107"],
		"CDFG" : "u64_to_u8_array_clone",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret47_u64_to_u8_array_clone_fu_399.sparsemux_19_4_8_1_1_U7", "Parent" : "91"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret47_u64_to_u8_array_clone_fu_399.sparsemux_19_4_8_1_1_U8", "Parent" : "91"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret47_u64_to_u8_array_clone_fu_399.sparsemux_19_4_8_1_1_U9", "Parent" : "91"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret47_u64_to_u8_array_clone_fu_399.sparsemux_19_4_8_1_1_U10", "Parent" : "91"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret47_u64_to_u8_array_clone_fu_399.sparsemux_19_4_8_1_1_U11", "Parent" : "91"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret47_u64_to_u8_array_clone_fu_399.sparsemux_19_4_8_1_1_U12", "Parent" : "91"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret47_u64_to_u8_array_clone_fu_399.sparsemux_19_4_8_1_1_U13", "Parent" : "91"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret47_u64_to_u8_array_clone_fu_399.sparsemux_19_4_8_1_1_U14", "Parent" : "91"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret47_u64_to_u8_array_clone_fu_399.sparsemux_19_4_8_1_1_U15", "Parent" : "91"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret47_u64_to_u8_array_clone_fu_399.sparsemux_19_4_8_1_1_U16", "Parent" : "91"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret47_u64_to_u8_array_clone_fu_399.sparsemux_19_4_8_1_1_U17", "Parent" : "91"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret47_u64_to_u8_array_clone_fu_399.sparsemux_19_4_8_1_1_U18", "Parent" : "91"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret47_u64_to_u8_array_clone_fu_399.sparsemux_19_4_8_1_1_U19", "Parent" : "91"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret47_u64_to_u8_array_clone_fu_399.sparsemux_19_4_8_1_1_U20", "Parent" : "91"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret47_u64_to_u8_array_clone_fu_399.sparsemux_19_4_8_1_1_U21", "Parent" : "91"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret47_u64_to_u8_array_clone_fu_399.sparsemux_19_4_8_1_1_U22", "Parent" : "91"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ret48_u64_to_u8_array_clone_fu_422", "Parent" : "0", "Child" : ["109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124"],
		"CDFG" : "u64_to_u8_array_clone",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret48_u64_to_u8_array_clone_fu_422.sparsemux_19_4_8_1_1_U7", "Parent" : "108"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret48_u64_to_u8_array_clone_fu_422.sparsemux_19_4_8_1_1_U8", "Parent" : "108"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret48_u64_to_u8_array_clone_fu_422.sparsemux_19_4_8_1_1_U9", "Parent" : "108"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret48_u64_to_u8_array_clone_fu_422.sparsemux_19_4_8_1_1_U10", "Parent" : "108"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret48_u64_to_u8_array_clone_fu_422.sparsemux_19_4_8_1_1_U11", "Parent" : "108"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret48_u64_to_u8_array_clone_fu_422.sparsemux_19_4_8_1_1_U12", "Parent" : "108"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret48_u64_to_u8_array_clone_fu_422.sparsemux_19_4_8_1_1_U13", "Parent" : "108"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret48_u64_to_u8_array_clone_fu_422.sparsemux_19_4_8_1_1_U14", "Parent" : "108"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret48_u64_to_u8_array_clone_fu_422.sparsemux_19_4_8_1_1_U15", "Parent" : "108"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret48_u64_to_u8_array_clone_fu_422.sparsemux_19_4_8_1_1_U16", "Parent" : "108"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret48_u64_to_u8_array_clone_fu_422.sparsemux_19_4_8_1_1_U17", "Parent" : "108"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret48_u64_to_u8_array_clone_fu_422.sparsemux_19_4_8_1_1_U18", "Parent" : "108"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret48_u64_to_u8_array_clone_fu_422.sparsemux_19_4_8_1_1_U19", "Parent" : "108"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret48_u64_to_u8_array_clone_fu_422.sparsemux_19_4_8_1_1_U20", "Parent" : "108"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret48_u64_to_u8_array_clone_fu_422.sparsemux_19_4_8_1_1_U21", "Parent" : "108"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret48_u64_to_u8_array_clone_fu_422.sparsemux_19_4_8_1_1_U22", "Parent" : "108"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_crypto_aead_encrypt_fu_462", "Parent" : "0", "Child" : ["126", "129", "132", "135", "138", "139", "141", "143"],
		"CDFG" : "crypto_aead_encrypt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "126", "EstimateLatencyMax" : "182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_11_fu_852", "Port" : "c_0", "Inst_start_state" : "52", "Inst_end_state" : "53"},
					{"ID" : "143", "SubInstance" : "grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_12_fu_865", "Port" : "c_0", "Inst_start_state" : "54", "Inst_end_state" : "55"},
					{"ID" : "139", "SubInstance" : "grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_1_fu_838", "Port" : "c_0", "Inst_start_state" : "32", "Inst_end_state" : "33"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_11_fu_852", "Port" : "c_1", "Inst_start_state" : "52", "Inst_end_state" : "53"},
					{"ID" : "143", "SubInstance" : "grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_12_fu_865", "Port" : "c_1", "Inst_start_state" : "54", "Inst_end_state" : "55"},
					{"ID" : "139", "SubInstance" : "grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_1_fu_838", "Port" : "c_1", "Inst_start_state" : "32", "Inst_end_state" : "33"}]},
			{"Name" : "c_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_11_fu_852", "Port" : "c_2", "Inst_start_state" : "52", "Inst_end_state" : "53"},
					{"ID" : "143", "SubInstance" : "grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_12_fu_865", "Port" : "c_2", "Inst_start_state" : "54", "Inst_end_state" : "55"},
					{"ID" : "139", "SubInstance" : "grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_1_fu_838", "Port" : "c_2", "Inst_start_state" : "32", "Inst_end_state" : "33"}]},
			{"Name" : "c_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_11_fu_852", "Port" : "c_3", "Inst_start_state" : "52", "Inst_end_state" : "53"},
					{"ID" : "143", "SubInstance" : "grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_12_fu_865", "Port" : "c_3", "Inst_start_state" : "54", "Inst_end_state" : "55"},
					{"ID" : "139", "SubInstance" : "grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_1_fu_838", "Port" : "c_3", "Inst_start_state" : "32", "Inst_end_state" : "33"}]},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read48", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read49", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read50", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read51", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read52", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read53", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read54", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read55", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read56", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read57", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read60", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read61", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read62", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read63", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read64", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_40_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "55", "FirstState" : "ap_ST_fsm_state15", "LastState" : ["ap_ST_fsm_state22"], "QuitState" : ["ap_ST_fsm_state15"], "PreState" : ["ap_ST_fsm_state14"], "PostState" : ["ap_ST_fsm_state23"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_58_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "55", "FirstState" : "ap_ST_fsm_state31", "LastState" : ["ap_ST_fsm_state38"], "QuitState" : ["ap_ST_fsm_state31"], "PreState" : ["ap_ST_fsm_state30"], "PostState" : ["ap_ST_fsm_state39"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_aead_encrypt_fu_462.grp_LOADBYTES_fu_650", "Parent" : "125", "Child" : ["127", "128"],
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
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_aead_encrypt_fu_462.grp_LOADBYTES_fu_650.sparsemux_33_4_8_1_1_U42", "Parent" : "126"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_aead_encrypt_fu_462.grp_LOADBYTES_fu_650.flow_control_loop_pipe_sequential_init_U", "Parent" : "126"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_aead_encrypt_fu_462.grp_LOADBYTES_fu_690", "Parent" : "125", "Child" : ["130", "131"],
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
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_aead_encrypt_fu_462.grp_LOADBYTES_fu_690.sparsemux_33_4_8_1_1_U42", "Parent" : "129"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_aead_encrypt_fu_462.grp_LOADBYTES_fu_690.flow_control_loop_pipe_sequential_init_U", "Parent" : "129"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_aead_encrypt_fu_462.grp_LOADBYTES_fu_730", "Parent" : "125", "Child" : ["133", "134"],
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
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_aead_encrypt_fu_462.grp_LOADBYTES_fu_730.sparsemux_33_4_8_1_1_U42", "Parent" : "132"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_aead_encrypt_fu_462.grp_LOADBYTES_fu_730.flow_control_loop_pipe_sequential_init_U", "Parent" : "132"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_aead_encrypt_fu_462.grp_LOADBYTES_fu_770", "Parent" : "125", "Child" : ["136", "137"],
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
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_aead_encrypt_fu_462.grp_LOADBYTES_fu_770.sparsemux_33_4_8_1_1_U42", "Parent" : "135"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_aead_encrypt_fu_462.grp_LOADBYTES_fu_770.flow_control_loop_pipe_sequential_init_U", "Parent" : "135"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_aead_encrypt_fu_462.grp_ROUND_6_fu_811", "Parent" : "125",
		"CDFG" : "ROUND_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "C", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_aead_encrypt_fu_462.grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_1_fu_838", "Parent" : "125", "Child" : ["140"],
		"CDFG" : "crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s_0_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx53", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_29_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_aead_encrypt_fu_462.grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_1_fu_838.flow_control_loop_pipe_sequential_init_U", "Parent" : "139"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_aead_encrypt_fu_462.grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_11_fu_852", "Parent" : "125", "Child" : ["142"],
		"CDFG" : "crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s_3_39", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_29_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_aead_encrypt_fu_462.grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_11_fu_852.flow_control_loop_pipe_sequential_init_U", "Parent" : "141"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_aead_encrypt_fu_462.grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_12_fu_865", "Parent" : "125", "Child" : ["144"],
		"CDFG" : "crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "xor_ln80", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_29_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_aead_encrypt_fu_462.grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_12_fu_865.flow_control_loop_pipe_sequential_init_U", "Parent" : "143"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	axi_encrypt {
		gmem {Type I LastRead 22 FirstWrite -1}
		c {Type I LastRead 0 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		ad {Type I LastRead 0 FirstWrite -1}
		nsec {Type I LastRead 0 FirstWrite -1}
		npub {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}}
	u64_to_u8_array {
		a {Type I LastRead 0 FirstWrite -1}
		b_0 {Type O LastRead -1 FirstWrite 0}
		b_1 {Type O LastRead -1 FirstWrite 0}
		b_2 {Type O LastRead -1 FirstWrite 0}
		b_3 {Type O LastRead -1 FirstWrite 0}
		idx {Type I LastRead 0 FirstWrite -1}}
	u64_to_u8_array_clone {
		a {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		idx {Type I LastRead 0 FirstWrite -1}}
	u64_to_u8_array_clone {
		a {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		idx {Type I LastRead 0 FirstWrite -1}}
	u64_to_u8_array_clone {
		a {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		idx {Type I LastRead 0 FirstWrite -1}}
	u64_to_u8_array_clone {
		a {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		idx {Type I LastRead 0 FirstWrite -1}}
	u64_to_u8_array_clone {
		a {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		idx {Type I LastRead 0 FirstWrite -1}}
	u64_to_u8_array_clone {
		a {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		idx {Type I LastRead 0 FirstWrite -1}}
	u64_to_u8_array_clone {
		a {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		idx {Type I LastRead 0 FirstWrite -1}}
	crypto_aead_encrypt {
		c_0 {Type O LastRead -1 FirstWrite 1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_2 {Type O LastRead -1 FirstWrite 1}
		c_3 {Type O LastRead -1 FirstWrite 1}
		p_read1 {Type I LastRead 13 FirstWrite -1}
		p_read2 {Type I LastRead 13 FirstWrite -1}
		p_read3 {Type I LastRead 13 FirstWrite -1}
		p_read4 {Type I LastRead 13 FirstWrite -1}
		p_read5 {Type I LastRead 13 FirstWrite -1}
		p_read6 {Type I LastRead 13 FirstWrite -1}
		p_read7 {Type I LastRead 13 FirstWrite -1}
		p_read8 {Type I LastRead 13 FirstWrite -1}
		p_read9 {Type I LastRead 13 FirstWrite -1}
		p_read10 {Type I LastRead 13 FirstWrite -1}
		p_read11 {Type I LastRead 13 FirstWrite -1}
		p_read12 {Type I LastRead 13 FirstWrite -1}
		p_read13 {Type I LastRead 13 FirstWrite -1}
		p_read14 {Type I LastRead 13 FirstWrite -1}
		p_read15 {Type I LastRead 13 FirstWrite -1}
		p_read16 {Type I LastRead 13 FirstWrite -1}
		p_read17 {Type I LastRead 13 FirstWrite -1}
		p_read18 {Type I LastRead 13 FirstWrite -1}
		p_read19 {Type I LastRead 13 FirstWrite -1}
		p_read20 {Type I LastRead 13 FirstWrite -1}
		p_read21 {Type I LastRead 13 FirstWrite -1}
		p_read22 {Type I LastRead 13 FirstWrite -1}
		p_read23 {Type I LastRead 13 FirstWrite -1}
		p_read24 {Type I LastRead 13 FirstWrite -1}
		p_read25 {Type I LastRead 13 FirstWrite -1}
		p_read26 {Type I LastRead 13 FirstWrite -1}
		p_read27 {Type I LastRead 13 FirstWrite -1}
		p_read28 {Type I LastRead 13 FirstWrite -1}
		p_read29 {Type I LastRead 13 FirstWrite -1}
		p_read30 {Type I LastRead 13 FirstWrite -1}
		p_read31 {Type I LastRead 13 FirstWrite -1}
		p_read32 {Type I LastRead 13 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read34 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
		p_read36 {Type I LastRead 0 FirstWrite -1}
		p_read37 {Type I LastRead 0 FirstWrite -1}
		p_read38 {Type I LastRead 0 FirstWrite -1}
		p_read39 {Type I LastRead 0 FirstWrite -1}
		p_read40 {Type I LastRead 0 FirstWrite -1}
		p_read41 {Type I LastRead 0 FirstWrite -1}
		p_read42 {Type I LastRead 0 FirstWrite -1}
		p_read43 {Type I LastRead 0 FirstWrite -1}
		p_read44 {Type I LastRead 0 FirstWrite -1}
		p_read45 {Type I LastRead 0 FirstWrite -1}
		p_read46 {Type I LastRead 0 FirstWrite -1}
		p_read47 {Type I LastRead 0 FirstWrite -1}
		p_read48 {Type I LastRead 0 FirstWrite -1}
		p_read49 {Type I LastRead 0 FirstWrite -1}
		p_read50 {Type I LastRead 0 FirstWrite -1}
		p_read51 {Type I LastRead 0 FirstWrite -1}
		p_read52 {Type I LastRead 0 FirstWrite -1}
		p_read53 {Type I LastRead 0 FirstWrite -1}
		p_read54 {Type I LastRead 0 FirstWrite -1}
		p_read55 {Type I LastRead 0 FirstWrite -1}
		p_read56 {Type I LastRead 0 FirstWrite -1}
		p_read57 {Type I LastRead 0 FirstWrite -1}
		p_read58 {Type I LastRead 0 FirstWrite -1}
		p_read59 {Type I LastRead 0 FirstWrite -1}
		p_read60 {Type I LastRead 0 FirstWrite -1}
		p_read61 {Type I LastRead 0 FirstWrite -1}
		p_read62 {Type I LastRead 0 FirstWrite -1}
		p_read63 {Type I LastRead 0 FirstWrite -1}
		p_read64 {Type I LastRead 0 FirstWrite -1}}
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
		idx {Type I LastRead 0 FirstWrite -1}}
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
		idx {Type I LastRead 0 FirstWrite -1}}
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
		idx {Type I LastRead 0 FirstWrite -1}}
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
		idx {Type I LastRead 0 FirstWrite -1}}
	ROUND_6 {
		s_0_read {Type I LastRead 0 FirstWrite -1}
		s_1_read {Type I LastRead 0 FirstWrite -1}
		s_2_read {Type I LastRead 0 FirstWrite -1}
		s_3_read {Type I LastRead 0 FirstWrite -1}
		s_4_read {Type I LastRead 0 FirstWrite -1}
		C {Type I LastRead 0 FirstWrite -1}}
	crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_1 {
		c_3 {Type O LastRead -1 FirstWrite 1}
		c_2 {Type O LastRead -1 FirstWrite 1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		s_0_26 {Type I LastRead 0 FirstWrite -1}
		idx53 {Type I LastRead 0 FirstWrite -1}}
	crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_11 {
		c_3 {Type O LastRead -1 FirstWrite 1}
		c_2 {Type O LastRead -1 FirstWrite 1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		s_3_39 {Type I LastRead 0 FirstWrite -1}}
	crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_12 {
		c_3 {Type O LastRead -1 FirstWrite 1}
		c_2 {Type O LastRead -1 FirstWrite 1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		xor_ln80 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "150", "Max" : "206"}
	, {"Name" : "Interval", "Min" : "151", "Max" : "207"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 8 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 64 }  { m_axi_gmem_WSTRB STRB 1 8 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 8 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 64 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
