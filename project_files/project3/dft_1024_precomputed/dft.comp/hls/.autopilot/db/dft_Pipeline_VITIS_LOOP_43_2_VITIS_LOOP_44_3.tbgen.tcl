set moduleName dft_Pipeline_VITIS_LOOP_43_2_VITIS_LOOP_44_3
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
set C_modelName {dft_Pipeline_VITIS_LOOP_43_2_VITIS_LOOP_44_3}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict real_sample_data { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict imag_sample_data { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict real_op_data { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict imag_op_data { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ real_sample_data float 32 regular {array 1024 { 1 3 } 1 1 }  }
	{ imag_sample_data float 32 regular {array 1024 { 1 3 } 1 1 }  }
	{ real_op_data float 32 regular {array 1024 { 2 3 } 1 1 }  }
	{ imag_op_data float 32 regular {array 1024 { 2 3 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "real_sample_data", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "imag_sample_data", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "real_op_data", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "imag_op_data", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ real_sample_data_address0 sc_out sc_lv 10 signal 0 } 
	{ real_sample_data_ce0 sc_out sc_logic 1 signal 0 } 
	{ real_sample_data_q0 sc_in sc_lv 32 signal 0 } 
	{ imag_sample_data_address0 sc_out sc_lv 10 signal 1 } 
	{ imag_sample_data_ce0 sc_out sc_logic 1 signal 1 } 
	{ imag_sample_data_q0 sc_in sc_lv 32 signal 1 } 
	{ real_op_data_address0 sc_out sc_lv 10 signal 2 } 
	{ real_op_data_ce0 sc_out sc_logic 1 signal 2 } 
	{ real_op_data_we0 sc_out sc_logic 1 signal 2 } 
	{ real_op_data_d0 sc_out sc_lv 32 signal 2 } 
	{ real_op_data_q0 sc_in sc_lv 32 signal 2 } 
	{ imag_op_data_address0 sc_out sc_lv 10 signal 3 } 
	{ imag_op_data_ce0 sc_out sc_logic 1 signal 3 } 
	{ imag_op_data_we0 sc_out sc_logic 1 signal 3 } 
	{ imag_op_data_d0 sc_out sc_lv 32 signal 3 } 
	{ imag_op_data_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "real_sample_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "real_sample_data", "role": "address0" }} , 
 	{ "name": "real_sample_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_sample_data", "role": "ce0" }} , 
 	{ "name": "real_sample_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_sample_data", "role": "q0" }} , 
 	{ "name": "imag_sample_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "imag_sample_data", "role": "address0" }} , 
 	{ "name": "imag_sample_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_sample_data", "role": "ce0" }} , 
 	{ "name": "imag_sample_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_sample_data", "role": "q0" }} , 
 	{ "name": "real_op_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "real_op_data", "role": "address0" }} , 
 	{ "name": "real_op_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_data", "role": "ce0" }} , 
 	{ "name": "real_op_data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_data", "role": "we0" }} , 
 	{ "name": "real_op_data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_data", "role": "d0" }} , 
 	{ "name": "real_op_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_data", "role": "q0" }} , 
 	{ "name": "imag_op_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "imag_op_data", "role": "address0" }} , 
 	{ "name": "imag_op_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_data", "role": "ce0" }} , 
 	{ "name": "imag_op_data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_data", "role": "we0" }} , 
 	{ "name": "imag_op_data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_data", "role": "d0" }} , 
 	{ "name": "imag_op_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_data", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "dft_Pipeline_VITIS_LOOP_43_2_VITIS_LOOP_44_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6291473", "EstimateLatencyMax" : "6291473",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "real_sample_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "imag_sample_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "real_op_data", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "imag_op_data", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cos_coefficients_table", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sin_coefficients_table", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_2_VITIS_LOOP_44_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage3", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage3_subdone", "QuitState" : "ap_ST_fsm_pp0_stage3", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage3_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cos_coefficients_table_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sin_coefficients_table_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_5_full_dsp_1_U13", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U14", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_10s_10_1_1_U15", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dft_Pipeline_VITIS_LOOP_43_2_VITIS_LOOP_44_3 {
		real_sample_data {Type I LastRead 0 FirstWrite -1}
		imag_sample_data {Type I LastRead 0 FirstWrite -1}
		real_op_data {Type IO LastRead 12 FirstWrite 19}
		imag_op_data {Type IO LastRead 12 FirstWrite 21}
		cos_coefficients_table {Type I LastRead -1 FirstWrite -1}
		sin_coefficients_table {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6291473", "Max" : "6291473"}
	, {"Name" : "Interval", "Min" : "6291473", "Max" : "6291473"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	real_sample_data { ap_memory {  { real_sample_data_address0 mem_address 1 10 }  { real_sample_data_ce0 mem_ce 1 1 }  { real_sample_data_q0 mem_dout 0 32 } } }
	imag_sample_data { ap_memory {  { imag_sample_data_address0 mem_address 1 10 }  { imag_sample_data_ce0 mem_ce 1 1 }  { imag_sample_data_q0 mem_dout 0 32 } } }
	real_op_data { ap_memory {  { real_op_data_address0 mem_address 1 10 }  { real_op_data_ce0 mem_ce 1 1 }  { real_op_data_we0 mem_we 1 1 }  { real_op_data_d0 mem_din 1 32 }  { real_op_data_q0 mem_dout 0 32 } } }
	imag_op_data { ap_memory {  { imag_op_data_address0 mem_address 1 10 }  { imag_op_data_ce0 mem_ce 1 1 }  { imag_op_data_we0 mem_we 1 1 }  { imag_op_data_d0 mem_din 1 32 }  { imag_op_data_q0 mem_dout 0 32 } } }
}
