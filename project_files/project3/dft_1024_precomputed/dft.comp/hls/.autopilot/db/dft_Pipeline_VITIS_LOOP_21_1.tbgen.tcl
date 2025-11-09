set moduleName dft_Pipeline_VITIS_LOOP_21_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 6
set C_modelName {dft_Pipeline_VITIS_LOOP_21_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict real_sample_data { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict imag_sample_data { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict real_op_data { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict imag_op_data { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ real_sample_V_data_V int 32 regular {axi_s 0 volatile  { real_sample Data } }  }
	{ real_sample_V_keep_V int 4 regular {axi_s 0 volatile  { real_sample Keep } }  }
	{ real_sample_V_strb_V int 4 regular {axi_s 0 volatile  { real_sample Strb } }  }
	{ real_sample_V_last_V int 1 regular {axi_s 0 volatile  { real_sample Last } }  }
	{ imag_sample_V_data_V int 32 regular {axi_s 0 volatile  { imag_sample Data } }  }
	{ imag_sample_V_keep_V int 4 regular {axi_s 0 volatile  { imag_sample Keep } }  }
	{ imag_sample_V_strb_V int 4 regular {axi_s 0 volatile  { imag_sample Strb } }  }
	{ imag_sample_V_last_V int 1 regular {axi_s 0 volatile  { imag_sample Last } }  }
	{ real_sample_data float 32 regular {array 1024 { 0 3 } 0 1 }  }
	{ imag_sample_data float 32 regular {array 1024 { 0 3 } 0 1 }  }
	{ real_op_data float 32 regular {array 1024 { 0 3 } 0 1 }  }
	{ imag_op_data float 32 regular {array 1024 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "real_sample_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "real_sample_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "real_sample_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "real_sample_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "imag_sample_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "imag_sample_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "imag_sample_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "imag_sample_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "real_sample_data", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imag_sample_data", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "real_op_data", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imag_op_data", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ real_sample_TVALID sc_in sc_logic 1 invld 0 } 
	{ imag_sample_TVALID sc_in sc_logic 1 invld 4 } 
	{ real_sample_TDATA sc_in sc_lv 32 signal 0 } 
	{ real_sample_TREADY sc_out sc_logic 1 inacc 3 } 
	{ real_sample_TKEEP sc_in sc_lv 4 signal 1 } 
	{ real_sample_TSTRB sc_in sc_lv 4 signal 2 } 
	{ real_sample_TLAST sc_in sc_lv 1 signal 3 } 
	{ imag_sample_TDATA sc_in sc_lv 32 signal 4 } 
	{ imag_sample_TREADY sc_out sc_logic 1 inacc 7 } 
	{ imag_sample_TKEEP sc_in sc_lv 4 signal 5 } 
	{ imag_sample_TSTRB sc_in sc_lv 4 signal 6 } 
	{ imag_sample_TLAST sc_in sc_lv 1 signal 7 } 
	{ real_sample_data_address0 sc_out sc_lv 10 signal 8 } 
	{ real_sample_data_ce0 sc_out sc_logic 1 signal 8 } 
	{ real_sample_data_we0 sc_out sc_logic 1 signal 8 } 
	{ real_sample_data_d0 sc_out sc_lv 32 signal 8 } 
	{ imag_sample_data_address0 sc_out sc_lv 10 signal 9 } 
	{ imag_sample_data_ce0 sc_out sc_logic 1 signal 9 } 
	{ imag_sample_data_we0 sc_out sc_logic 1 signal 9 } 
	{ imag_sample_data_d0 sc_out sc_lv 32 signal 9 } 
	{ real_op_data_address0 sc_out sc_lv 10 signal 10 } 
	{ real_op_data_ce0 sc_out sc_logic 1 signal 10 } 
	{ real_op_data_we0 sc_out sc_logic 1 signal 10 } 
	{ real_op_data_d0 sc_out sc_lv 32 signal 10 } 
	{ imag_op_data_address0 sc_out sc_lv 10 signal 11 } 
	{ imag_op_data_ce0 sc_out sc_logic 1 signal 11 } 
	{ imag_op_data_we0 sc_out sc_logic 1 signal 11 } 
	{ imag_op_data_d0 sc_out sc_lv 32 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "real_sample_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "real_sample_V_data_V", "role": "default" }} , 
 	{ "name": "imag_sample_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "imag_sample_V_data_V", "role": "default" }} , 
 	{ "name": "real_sample_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_sample_V_data_V", "role": "default" }} , 
 	{ "name": "real_sample_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "real_sample_V_last_V", "role": "default" }} , 
 	{ "name": "real_sample_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "real_sample_V_keep_V", "role": "default" }} , 
 	{ "name": "real_sample_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "real_sample_V_strb_V", "role": "default" }} , 
 	{ "name": "real_sample_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "real_sample_V_last_V", "role": "default" }} , 
 	{ "name": "imag_sample_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_sample_V_data_V", "role": "default" }} , 
 	{ "name": "imag_sample_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "imag_sample_V_last_V", "role": "default" }} , 
 	{ "name": "imag_sample_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imag_sample_V_keep_V", "role": "default" }} , 
 	{ "name": "imag_sample_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imag_sample_V_strb_V", "role": "default" }} , 
 	{ "name": "imag_sample_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_sample_V_last_V", "role": "default" }} , 
 	{ "name": "real_sample_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "real_sample_data", "role": "address0" }} , 
 	{ "name": "real_sample_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_sample_data", "role": "ce0" }} , 
 	{ "name": "real_sample_data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_sample_data", "role": "we0" }} , 
 	{ "name": "real_sample_data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_sample_data", "role": "d0" }} , 
 	{ "name": "imag_sample_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "imag_sample_data", "role": "address0" }} , 
 	{ "name": "imag_sample_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_sample_data", "role": "ce0" }} , 
 	{ "name": "imag_sample_data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_sample_data", "role": "we0" }} , 
 	{ "name": "imag_sample_data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_sample_data", "role": "d0" }} , 
 	{ "name": "real_op_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "real_op_data", "role": "address0" }} , 
 	{ "name": "real_op_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_data", "role": "ce0" }} , 
 	{ "name": "real_op_data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_data", "role": "we0" }} , 
 	{ "name": "real_op_data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_data", "role": "d0" }} , 
 	{ "name": "imag_op_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "imag_op_data", "role": "address0" }} , 
 	{ "name": "imag_op_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_data", "role": "ce0" }} , 
 	{ "name": "imag_op_data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_data", "role": "we0" }} , 
 	{ "name": "imag_op_data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_data", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dft_Pipeline_VITIS_LOOP_21_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1026", "EstimateLatencyMax" : "1026",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "real_sample_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "real_sample",
				"BlockSignal" : [
					{"Name" : "real_sample_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "real_sample_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "real_sample"},
			{"Name" : "real_sample_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "real_sample"},
			{"Name" : "real_sample_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "real_sample"},
			{"Name" : "imag_sample_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "imag_sample",
				"BlockSignal" : [
					{"Name" : "imag_sample_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imag_sample_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "imag_sample"},
			{"Name" : "imag_sample_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "imag_sample"},
			{"Name" : "imag_sample_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "imag_sample"},
			{"Name" : "real_sample_data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "imag_sample_data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "real_op_data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "imag_op_data", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dft_Pipeline_VITIS_LOOP_21_1 {
		real_sample_V_data_V {Type I LastRead 1 FirstWrite -1}
		real_sample_V_keep_V {Type I LastRead 1 FirstWrite -1}
		real_sample_V_strb_V {Type I LastRead 1 FirstWrite -1}
		real_sample_V_last_V {Type I LastRead 1 FirstWrite -1}
		imag_sample_V_data_V {Type I LastRead 1 FirstWrite -1}
		imag_sample_V_keep_V {Type I LastRead 1 FirstWrite -1}
		imag_sample_V_strb_V {Type I LastRead 1 FirstWrite -1}
		imag_sample_V_last_V {Type I LastRead 1 FirstWrite -1}
		real_sample_data {Type O LastRead -1 FirstWrite 1}
		imag_sample_data {Type O LastRead -1 FirstWrite 1}
		real_op_data {Type O LastRead -1 FirstWrite 0}
		imag_op_data {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1026", "Max" : "1026"}
	, {"Name" : "Interval", "Min" : "1026", "Max" : "1026"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	real_sample_V_data_V { axis {  { real_sample_TVALID in_vld 0 1 }  { real_sample_TDATA in_data 0 32 } } }
	real_sample_V_keep_V { axis {  { real_sample_TKEEP in_data 0 4 } } }
	real_sample_V_strb_V { axis {  { real_sample_TSTRB in_data 0 4 } } }
	real_sample_V_last_V { axis {  { real_sample_TREADY in_acc 1 1 }  { real_sample_TLAST in_data 0 1 } } }
	imag_sample_V_data_V { axis {  { imag_sample_TVALID in_vld 0 1 }  { imag_sample_TDATA in_data 0 32 } } }
	imag_sample_V_keep_V { axis {  { imag_sample_TKEEP in_data 0 4 } } }
	imag_sample_V_strb_V { axis {  { imag_sample_TSTRB in_data 0 4 } } }
	imag_sample_V_last_V { axis {  { imag_sample_TREADY in_acc 1 1 }  { imag_sample_TLAST in_data 0 1 } } }
	real_sample_data { ap_memory {  { real_sample_data_address0 mem_address 1 10 }  { real_sample_data_ce0 mem_ce 1 1 }  { real_sample_data_we0 mem_we 1 1 }  { real_sample_data_d0 mem_din 1 32 } } }
	imag_sample_data { ap_memory {  { imag_sample_data_address0 mem_address 1 10 }  { imag_sample_data_ce0 mem_ce 1 1 }  { imag_sample_data_we0 mem_we 1 1 }  { imag_sample_data_d0 mem_din 1 32 } } }
	real_op_data { ap_memory {  { real_op_data_address0 mem_address 1 10 }  { real_op_data_ce0 mem_ce 1 1 }  { real_op_data_we0 mem_we 1 1 }  { real_op_data_d0 mem_din 1 32 } } }
	imag_op_data { ap_memory {  { imag_op_data_address0 mem_address 1 10 }  { imag_op_data_ce0 mem_ce 1 1 }  { imag_op_data_we0 mem_we 1 1 }  { imag_op_data_d0 mem_din 1 32 } } }
}
