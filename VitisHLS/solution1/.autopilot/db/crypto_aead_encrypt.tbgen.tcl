set moduleName crypto_aead_encrypt
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
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {crypto_aead_encrypt}
set C_modelType { void 0 }
set C_modelArgList {
	{ c_0 int 8 regular {array 8 { 0 3 } 0 1 }  }
	{ c_1 int 8 regular {array 8 { 0 3 } 0 1 }  }
	{ c_2 int 8 regular {array 8 { 0 3 } 0 1 }  }
	{ c_3 int 8 regular {array 8 { 0 3 } 0 1 }  }
	{ p_read1 int 8 regular  }
	{ p_read2 int 8 regular  }
	{ p_read3 int 8 regular  }
	{ p_read4 int 8 regular  }
	{ p_read5 int 8 regular  }
	{ p_read6 int 8 regular  }
	{ p_read7 int 8 regular  }
	{ p_read8 int 8 regular  }
	{ p_read9 int 8 regular  }
	{ p_read10 int 8 regular  }
	{ p_read11 int 8 regular  }
	{ p_read12 int 8 regular  }
	{ p_read13 int 8 regular  }
	{ p_read14 int 8 regular  }
	{ p_read15 int 8 regular  }
	{ p_read16 int 8 regular  }
	{ p_read17 int 8 regular  }
	{ p_read18 int 8 regular  }
	{ p_read19 int 8 regular  }
	{ p_read20 int 8 regular  }
	{ p_read21 int 8 regular  }
	{ p_read22 int 8 regular  }
	{ p_read23 int 8 regular  }
	{ p_read24 int 8 regular  }
	{ p_read25 int 8 regular  }
	{ p_read26 int 8 regular  }
	{ p_read27 int 8 regular  }
	{ p_read28 int 8 regular  }
	{ p_read29 int 8 regular  }
	{ p_read30 int 8 regular  }
	{ p_read31 int 8 regular  }
	{ p_read32 int 8 regular  }
	{ p_read33 int 8 regular  }
	{ p_read34 int 8 regular  }
	{ p_read35 int 8 regular  }
	{ p_read36 int 8 regular  }
	{ p_read37 int 8 regular  }
	{ p_read38 int 8 regular  }
	{ p_read39 int 8 regular  }
	{ p_read40 int 8 regular  }
	{ p_read41 int 8 regular  }
	{ p_read42 int 8 regular  }
	{ p_read43 int 8 regular  }
	{ p_read44 int 8 regular  }
	{ p_read45 int 8 regular  }
	{ p_read46 int 8 regular  }
	{ p_read47 int 8 regular  }
	{ p_read48 int 8 regular  }
	{ p_read49 int 8 regular  }
	{ p_read50 int 8 regular  }
	{ p_read51 int 8 regular  }
	{ p_read52 int 8 regular  }
	{ p_read53 int 8 regular  }
	{ p_read54 int 8 regular  }
	{ p_read55 int 8 regular  }
	{ p_read56 int 8 regular  }
	{ p_read57 int 8 regular  }
	{ p_read58 int 8 regular  }
	{ p_read59 int 8 regular  }
	{ p_read60 int 8 regular  }
	{ p_read61 int 8 regular  }
	{ p_read62 int 8 regular  }
	{ p_read63 int 8 regular  }
	{ p_read64 int 8 regular  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "c_0", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_3", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read8", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read9", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read10", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read11", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read12", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read13", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read14", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read15", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read16", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read17", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read18", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read19", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read20", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read21", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read22", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read23", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read24", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read25", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read26", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read27", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read28", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read29", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read30", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read31", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read32", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read33", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read34", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read35", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read36", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read37", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read38", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read39", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read40", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read41", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read42", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read43", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read44", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read45", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read46", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read47", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read48", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read49", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read50", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read51", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read52", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read53", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read54", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read55", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read56", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read57", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read58", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read59", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read60", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read61", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read62", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read63", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read64", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 86
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ c_0_address0 sc_out sc_lv 3 signal 0 } 
	{ c_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ c_0_we0 sc_out sc_logic 1 signal 0 } 
	{ c_0_d0 sc_out sc_lv 8 signal 0 } 
	{ c_1_address0 sc_out sc_lv 3 signal 1 } 
	{ c_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ c_1_we0 sc_out sc_logic 1 signal 1 } 
	{ c_1_d0 sc_out sc_lv 8 signal 1 } 
	{ c_2_address0 sc_out sc_lv 3 signal 2 } 
	{ c_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ c_2_we0 sc_out sc_logic 1 signal 2 } 
	{ c_2_d0 sc_out sc_lv 8 signal 2 } 
	{ c_3_address0 sc_out sc_lv 3 signal 3 } 
	{ c_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ c_3_we0 sc_out sc_logic 1 signal 3 } 
	{ c_3_d0 sc_out sc_lv 8 signal 3 } 
	{ p_read1 sc_in sc_lv 8 signal 4 } 
	{ p_read2 sc_in sc_lv 8 signal 5 } 
	{ p_read3 sc_in sc_lv 8 signal 6 } 
	{ p_read4 sc_in sc_lv 8 signal 7 } 
	{ p_read5 sc_in sc_lv 8 signal 8 } 
	{ p_read6 sc_in sc_lv 8 signal 9 } 
	{ p_read7 sc_in sc_lv 8 signal 10 } 
	{ p_read8 sc_in sc_lv 8 signal 11 } 
	{ p_read9 sc_in sc_lv 8 signal 12 } 
	{ p_read10 sc_in sc_lv 8 signal 13 } 
	{ p_read11 sc_in sc_lv 8 signal 14 } 
	{ p_read12 sc_in sc_lv 8 signal 15 } 
	{ p_read13 sc_in sc_lv 8 signal 16 } 
	{ p_read14 sc_in sc_lv 8 signal 17 } 
	{ p_read15 sc_in sc_lv 8 signal 18 } 
	{ p_read16 sc_in sc_lv 8 signal 19 } 
	{ p_read17 sc_in sc_lv 8 signal 20 } 
	{ p_read18 sc_in sc_lv 8 signal 21 } 
	{ p_read19 sc_in sc_lv 8 signal 22 } 
	{ p_read20 sc_in sc_lv 8 signal 23 } 
	{ p_read21 sc_in sc_lv 8 signal 24 } 
	{ p_read22 sc_in sc_lv 8 signal 25 } 
	{ p_read23 sc_in sc_lv 8 signal 26 } 
	{ p_read24 sc_in sc_lv 8 signal 27 } 
	{ p_read25 sc_in sc_lv 8 signal 28 } 
	{ p_read26 sc_in sc_lv 8 signal 29 } 
	{ p_read27 sc_in sc_lv 8 signal 30 } 
	{ p_read28 sc_in sc_lv 8 signal 31 } 
	{ p_read29 sc_in sc_lv 8 signal 32 } 
	{ p_read30 sc_in sc_lv 8 signal 33 } 
	{ p_read31 sc_in sc_lv 8 signal 34 } 
	{ p_read32 sc_in sc_lv 8 signal 35 } 
	{ p_read33 sc_in sc_lv 8 signal 36 } 
	{ p_read34 sc_in sc_lv 8 signal 37 } 
	{ p_read35 sc_in sc_lv 8 signal 38 } 
	{ p_read36 sc_in sc_lv 8 signal 39 } 
	{ p_read37 sc_in sc_lv 8 signal 40 } 
	{ p_read38 sc_in sc_lv 8 signal 41 } 
	{ p_read39 sc_in sc_lv 8 signal 42 } 
	{ p_read40 sc_in sc_lv 8 signal 43 } 
	{ p_read41 sc_in sc_lv 8 signal 44 } 
	{ p_read42 sc_in sc_lv 8 signal 45 } 
	{ p_read43 sc_in sc_lv 8 signal 46 } 
	{ p_read44 sc_in sc_lv 8 signal 47 } 
	{ p_read45 sc_in sc_lv 8 signal 48 } 
	{ p_read46 sc_in sc_lv 8 signal 49 } 
	{ p_read47 sc_in sc_lv 8 signal 50 } 
	{ p_read48 sc_in sc_lv 8 signal 51 } 
	{ p_read49 sc_in sc_lv 8 signal 52 } 
	{ p_read50 sc_in sc_lv 8 signal 53 } 
	{ p_read51 sc_in sc_lv 8 signal 54 } 
	{ p_read52 sc_in sc_lv 8 signal 55 } 
	{ p_read53 sc_in sc_lv 8 signal 56 } 
	{ p_read54 sc_in sc_lv 8 signal 57 } 
	{ p_read55 sc_in sc_lv 8 signal 58 } 
	{ p_read56 sc_in sc_lv 8 signal 59 } 
	{ p_read57 sc_in sc_lv 8 signal 60 } 
	{ p_read58 sc_in sc_lv 8 signal 61 } 
	{ p_read59 sc_in sc_lv 8 signal 62 } 
	{ p_read60 sc_in sc_lv 8 signal 63 } 
	{ p_read61 sc_in sc_lv 8 signal 64 } 
	{ p_read62 sc_in sc_lv 8 signal 65 } 
	{ p_read63 sc_in sc_lv 8 signal 66 } 
	{ p_read64 sc_in sc_lv 8 signal 67 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "c_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "c_0", "role": "address0" }} , 
 	{ "name": "c_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_0", "role": "ce0" }} , 
 	{ "name": "c_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_0", "role": "we0" }} , 
 	{ "name": "c_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_0", "role": "d0" }} , 
 	{ "name": "c_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "c_1", "role": "address0" }} , 
 	{ "name": "c_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_1", "role": "ce0" }} , 
 	{ "name": "c_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_1", "role": "we0" }} , 
 	{ "name": "c_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_1", "role": "d0" }} , 
 	{ "name": "c_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "c_2", "role": "address0" }} , 
 	{ "name": "c_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_2", "role": "ce0" }} , 
 	{ "name": "c_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_2", "role": "we0" }} , 
 	{ "name": "c_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_2", "role": "d0" }} , 
 	{ "name": "c_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "c_3", "role": "address0" }} , 
 	{ "name": "c_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_3", "role": "ce0" }} , 
 	{ "name": "c_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_3", "role": "we0" }} , 
 	{ "name": "c_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_3", "role": "d0" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
 	{ "name": "p_read8", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read8", "role": "default" }} , 
 	{ "name": "p_read9", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read9", "role": "default" }} , 
 	{ "name": "p_read10", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read10", "role": "default" }} , 
 	{ "name": "p_read11", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read11", "role": "default" }} , 
 	{ "name": "p_read12", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read12", "role": "default" }} , 
 	{ "name": "p_read13", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read13", "role": "default" }} , 
 	{ "name": "p_read14", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read14", "role": "default" }} , 
 	{ "name": "p_read15", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read15", "role": "default" }} , 
 	{ "name": "p_read16", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read16", "role": "default" }} , 
 	{ "name": "p_read17", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read17", "role": "default" }} , 
 	{ "name": "p_read18", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read18", "role": "default" }} , 
 	{ "name": "p_read19", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read19", "role": "default" }} , 
 	{ "name": "p_read20", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read20", "role": "default" }} , 
 	{ "name": "p_read21", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read21", "role": "default" }} , 
 	{ "name": "p_read22", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read22", "role": "default" }} , 
 	{ "name": "p_read23", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read23", "role": "default" }} , 
 	{ "name": "p_read24", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read24", "role": "default" }} , 
 	{ "name": "p_read25", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read25", "role": "default" }} , 
 	{ "name": "p_read26", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read26", "role": "default" }} , 
 	{ "name": "p_read27", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read27", "role": "default" }} , 
 	{ "name": "p_read28", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read28", "role": "default" }} , 
 	{ "name": "p_read29", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read29", "role": "default" }} , 
 	{ "name": "p_read30", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read30", "role": "default" }} , 
 	{ "name": "p_read31", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read31", "role": "default" }} , 
 	{ "name": "p_read32", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read32", "role": "default" }} , 
 	{ "name": "p_read33", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read33", "role": "default" }} , 
 	{ "name": "p_read34", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read34", "role": "default" }} , 
 	{ "name": "p_read35", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read35", "role": "default" }} , 
 	{ "name": "p_read36", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read36", "role": "default" }} , 
 	{ "name": "p_read37", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read37", "role": "default" }} , 
 	{ "name": "p_read38", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read38", "role": "default" }} , 
 	{ "name": "p_read39", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read39", "role": "default" }} , 
 	{ "name": "p_read40", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read40", "role": "default" }} , 
 	{ "name": "p_read41", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read41", "role": "default" }} , 
 	{ "name": "p_read42", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read42", "role": "default" }} , 
 	{ "name": "p_read43", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read43", "role": "default" }} , 
 	{ "name": "p_read44", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read44", "role": "default" }} , 
 	{ "name": "p_read45", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read45", "role": "default" }} , 
 	{ "name": "p_read46", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read46", "role": "default" }} , 
 	{ "name": "p_read47", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read47", "role": "default" }} , 
 	{ "name": "p_read48", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read48", "role": "default" }} , 
 	{ "name": "p_read49", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read49", "role": "default" }} , 
 	{ "name": "p_read50", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read50", "role": "default" }} , 
 	{ "name": "p_read51", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read51", "role": "default" }} , 
 	{ "name": "p_read52", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read52", "role": "default" }} , 
 	{ "name": "p_read53", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read53", "role": "default" }} , 
 	{ "name": "p_read54", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read54", "role": "default" }} , 
 	{ "name": "p_read55", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read55", "role": "default" }} , 
 	{ "name": "p_read56", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read56", "role": "default" }} , 
 	{ "name": "p_read57", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read57", "role": "default" }} , 
 	{ "name": "p_read58", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read58", "role": "default" }} , 
 	{ "name": "p_read59", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read59", "role": "default" }} , 
 	{ "name": "p_read60", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read60", "role": "default" }} , 
 	{ "name": "p_read61", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read61", "role": "default" }} , 
 	{ "name": "p_read62", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read62", "role": "default" }} , 
 	{ "name": "p_read63", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read63", "role": "default" }} , 
 	{ "name": "p_read64", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read64", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "4", "7", "10", "13", "14", "16", "18"],
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
					{"ID" : "16", "SubInstance" : "grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_11_fu_852", "Port" : "c_0", "Inst_start_state" : "52", "Inst_end_state" : "53"},
					{"ID" : "18", "SubInstance" : "grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_12_fu_865", "Port" : "c_0", "Inst_start_state" : "54", "Inst_end_state" : "55"},
					{"ID" : "14", "SubInstance" : "grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_1_fu_838", "Port" : "c_0", "Inst_start_state" : "32", "Inst_end_state" : "33"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_11_fu_852", "Port" : "c_1", "Inst_start_state" : "52", "Inst_end_state" : "53"},
					{"ID" : "18", "SubInstance" : "grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_12_fu_865", "Port" : "c_1", "Inst_start_state" : "54", "Inst_end_state" : "55"},
					{"ID" : "14", "SubInstance" : "grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_1_fu_838", "Port" : "c_1", "Inst_start_state" : "32", "Inst_end_state" : "33"}]},
			{"Name" : "c_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_11_fu_852", "Port" : "c_2", "Inst_start_state" : "52", "Inst_end_state" : "53"},
					{"ID" : "18", "SubInstance" : "grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_12_fu_865", "Port" : "c_2", "Inst_start_state" : "54", "Inst_end_state" : "55"},
					{"ID" : "14", "SubInstance" : "grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_1_fu_838", "Port" : "c_2", "Inst_start_state" : "32", "Inst_end_state" : "33"}]},
			{"Name" : "c_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_11_fu_852", "Port" : "c_3", "Inst_start_state" : "52", "Inst_end_state" : "53"},
					{"ID" : "18", "SubInstance" : "grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_12_fu_865", "Port" : "c_3", "Inst_start_state" : "54", "Inst_end_state" : "55"},
					{"ID" : "14", "SubInstance" : "grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_1_fu_838", "Port" : "c_3", "Inst_start_state" : "32", "Inst_end_state" : "33"}]},
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LOADBYTES_fu_650", "Parent" : "0", "Child" : ["2", "3"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LOADBYTES_fu_650.sparsemux_33_4_8_1_1_U42", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LOADBYTES_fu_650.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LOADBYTES_fu_690", "Parent" : "0", "Child" : ["5", "6"],
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LOADBYTES_fu_690.sparsemux_33_4_8_1_1_U42", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LOADBYTES_fu_690.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LOADBYTES_fu_730", "Parent" : "0", "Child" : ["8", "9"],
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
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LOADBYTES_fu_730.sparsemux_33_4_8_1_1_U42", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LOADBYTES_fu_730.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LOADBYTES_fu_770", "Parent" : "0", "Child" : ["11", "12"],
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
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LOADBYTES_fu_770.sparsemux_33_4_8_1_1_U42", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LOADBYTES_fu_770.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ROUND_6_fu_811", "Parent" : "0",
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
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_1_fu_838", "Parent" : "0", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_1_fu_838.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_11_fu_852", "Parent" : "0", "Child" : ["17"],
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
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_11_fu_852.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_12_fu_865", "Parent" : "0", "Child" : ["19"],
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
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_12_fu_865.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "126", "Max" : "182"}
	, {"Name" : "Interval", "Min" : "126", "Max" : "182"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	c_0 { ap_memory {  { c_0_address0 mem_address 1 3 }  { c_0_ce0 mem_ce 1 1 }  { c_0_we0 mem_we 1 1 }  { c_0_d0 mem_din 1 8 } } }
	c_1 { ap_memory {  { c_1_address0 mem_address 1 3 }  { c_1_ce0 mem_ce 1 1 }  { c_1_we0 mem_we 1 1 }  { c_1_d0 mem_din 1 8 } } }
	c_2 { ap_memory {  { c_2_address0 mem_address 1 3 }  { c_2_ce0 mem_ce 1 1 }  { c_2_we0 mem_we 1 1 }  { c_2_d0 mem_din 1 8 } } }
	c_3 { ap_memory {  { c_3_address0 mem_address 1 3 }  { c_3_ce0 mem_ce 1 1 }  { c_3_we0 mem_we 1 1 }  { c_3_d0 mem_din 1 8 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 8 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 8 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 8 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 8 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 8 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 8 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 8 } } }
	p_read8 { ap_none {  { p_read8 in_data 0 8 } } }
	p_read9 { ap_none {  { p_read9 in_data 0 8 } } }
	p_read10 { ap_none {  { p_read10 in_data 0 8 } } }
	p_read11 { ap_none {  { p_read11 in_data 0 8 } } }
	p_read12 { ap_none {  { p_read12 in_data 0 8 } } }
	p_read13 { ap_none {  { p_read13 in_data 0 8 } } }
	p_read14 { ap_none {  { p_read14 in_data 0 8 } } }
	p_read15 { ap_none {  { p_read15 in_data 0 8 } } }
	p_read16 { ap_none {  { p_read16 in_data 0 8 } } }
	p_read17 { ap_none {  { p_read17 in_data 0 8 } } }
	p_read18 { ap_none {  { p_read18 in_data 0 8 } } }
	p_read19 { ap_none {  { p_read19 in_data 0 8 } } }
	p_read20 { ap_none {  { p_read20 in_data 0 8 } } }
	p_read21 { ap_none {  { p_read21 in_data 0 8 } } }
	p_read22 { ap_none {  { p_read22 in_data 0 8 } } }
	p_read23 { ap_none {  { p_read23 in_data 0 8 } } }
	p_read24 { ap_none {  { p_read24 in_data 0 8 } } }
	p_read25 { ap_none {  { p_read25 in_data 0 8 } } }
	p_read26 { ap_none {  { p_read26 in_data 0 8 } } }
	p_read27 { ap_none {  { p_read27 in_data 0 8 } } }
	p_read28 { ap_none {  { p_read28 in_data 0 8 } } }
	p_read29 { ap_none {  { p_read29 in_data 0 8 } } }
	p_read30 { ap_none {  { p_read30 in_data 0 8 } } }
	p_read31 { ap_none {  { p_read31 in_data 0 8 } } }
	p_read32 { ap_none {  { p_read32 in_data 0 8 } } }
	p_read33 { ap_none {  { p_read33 in_data 0 8 } } }
	p_read34 { ap_none {  { p_read34 in_data 0 8 } } }
	p_read35 { ap_none {  { p_read35 in_data 0 8 } } }
	p_read36 { ap_none {  { p_read36 in_data 0 8 } } }
	p_read37 { ap_none {  { p_read37 in_data 0 8 } } }
	p_read38 { ap_none {  { p_read38 in_data 0 8 } } }
	p_read39 { ap_none {  { p_read39 in_data 0 8 } } }
	p_read40 { ap_none {  { p_read40 in_data 0 8 } } }
	p_read41 { ap_none {  { p_read41 in_data 0 8 } } }
	p_read42 { ap_none {  { p_read42 in_data 0 8 } } }
	p_read43 { ap_none {  { p_read43 in_data 0 8 } } }
	p_read44 { ap_none {  { p_read44 in_data 0 8 } } }
	p_read45 { ap_none {  { p_read45 in_data 0 8 } } }
	p_read46 { ap_none {  { p_read46 in_data 0 8 } } }
	p_read47 { ap_none {  { p_read47 in_data 0 8 } } }
	p_read48 { ap_none {  { p_read48 in_data 0 8 } } }
	p_read49 { ap_none {  { p_read49 in_data 0 8 } } }
	p_read50 { ap_none {  { p_read50 in_data 0 8 } } }
	p_read51 { ap_none {  { p_read51 in_data 0 8 } } }
	p_read52 { ap_none {  { p_read52 in_data 0 8 } } }
	p_read53 { ap_none {  { p_read53 in_data 0 8 } } }
	p_read54 { ap_none {  { p_read54 in_data 0 8 } } }
	p_read55 { ap_none {  { p_read55 in_data 0 8 } } }
	p_read56 { ap_none {  { p_read56 in_data 0 8 } } }
	p_read57 { ap_none {  { p_read57 in_data 0 8 } } }
	p_read58 { ap_none {  { p_read58 in_data 0 8 } } }
	p_read59 { ap_none {  { p_read59 in_data 0 8 } } }
	p_read60 { ap_none {  { p_read60 in_data 0 8 } } }
	p_read61 { ap_none {  { p_read61 in_data 0 8 } } }
	p_read62 { ap_none {  { p_read62 in_data 0 8 } } }
	p_read63 { ap_none {  { p_read63 in_data 0 8 } } }
	p_read64 { ap_none {  { p_read64 in_data 0 8 } } }
}
