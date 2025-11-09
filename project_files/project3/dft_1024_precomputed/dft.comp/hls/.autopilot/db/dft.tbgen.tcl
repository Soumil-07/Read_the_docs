set moduleName dft
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
set svuvm_can_support 1
set cdfgNum 6
set C_modelName {dft}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ real_sample_V_data_V int 32 regular {axi_s 0 volatile  { real_sample Data } }  }
	{ real_sample_V_keep_V int 4 regular {axi_s 0 volatile  { real_sample Keep } }  }
	{ real_sample_V_strb_V int 4 regular {axi_s 0 volatile  { real_sample Strb } }  }
	{ real_sample_V_last_V int 1 regular {axi_s 0 volatile  { real_sample Last } }  }
	{ imag_sample_V_data_V int 32 regular {axi_s 0 volatile  { imag_sample Data } }  }
	{ imag_sample_V_keep_V int 4 regular {axi_s 0 volatile  { imag_sample Keep } }  }
	{ imag_sample_V_strb_V int 4 regular {axi_s 0 volatile  { imag_sample Strb } }  }
	{ imag_sample_V_last_V int 1 regular {axi_s 0 volatile  { imag_sample Last } }  }
	{ real_op_V_data_V int 32 regular {axi_s 1 volatile  { real_op Data } }  }
	{ real_op_V_keep_V int 4 regular {axi_s 1 volatile  { real_op Keep } }  }
	{ real_op_V_strb_V int 4 regular {axi_s 1 volatile  { real_op Strb } }  }
	{ real_op_V_last_V int 1 regular {axi_s 1 volatile  { real_op Last } }  }
	{ imag_op_V_data_V int 32 regular {axi_s 1 volatile  { imag_op Data } }  }
	{ imag_op_V_keep_V int 4 regular {axi_s 1 volatile  { imag_op Keep } }  }
	{ imag_op_V_strb_V int 4 regular {axi_s 1 volatile  { imag_op Strb } }  }
	{ imag_op_V_last_V int 1 regular {axi_s 1 volatile  { imag_op Last } }  }
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
 	{ "Name" : "real_op_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "real_op_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "real_op_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "real_op_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imag_op_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imag_op_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imag_op_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imag_op_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 44
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ real_sample_TDATA sc_in sc_lv 32 signal 0 } 
	{ real_sample_TVALID sc_in sc_logic 1 invld 3 } 
	{ real_sample_TREADY sc_out sc_logic 1 inacc 3 } 
	{ real_sample_TKEEP sc_in sc_lv 4 signal 1 } 
	{ real_sample_TSTRB sc_in sc_lv 4 signal 2 } 
	{ real_sample_TLAST sc_in sc_lv 1 signal 3 } 
	{ imag_sample_TDATA sc_in sc_lv 32 signal 4 } 
	{ imag_sample_TVALID sc_in sc_logic 1 invld 7 } 
	{ imag_sample_TREADY sc_out sc_logic 1 inacc 7 } 
	{ imag_sample_TKEEP sc_in sc_lv 4 signal 5 } 
	{ imag_sample_TSTRB sc_in sc_lv 4 signal 6 } 
	{ imag_sample_TLAST sc_in sc_lv 1 signal 7 } 
	{ real_op_TDATA sc_out sc_lv 32 signal 8 } 
	{ real_op_TVALID sc_out sc_logic 1 outvld 11 } 
	{ real_op_TREADY sc_in sc_logic 1 outacc 11 } 
	{ real_op_TKEEP sc_out sc_lv 4 signal 9 } 
	{ real_op_TSTRB sc_out sc_lv 4 signal 10 } 
	{ real_op_TLAST sc_out sc_lv 1 signal 11 } 
	{ imag_op_TDATA sc_out sc_lv 32 signal 12 } 
	{ imag_op_TVALID sc_out sc_logic 1 outvld 15 } 
	{ imag_op_TREADY sc_in sc_logic 1 outacc 15 } 
	{ imag_op_TKEEP sc_out sc_lv 4 signal 13 } 
	{ imag_op_TSTRB sc_out sc_lv 4 signal 14 } 
	{ imag_op_TLAST sc_out sc_lv 1 signal 15 } 
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
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"dft","role":"start","value":"0","valid_bit":"0"},{"name":"dft","role":"continue","value":"0","valid_bit":"4"},{"name":"dft","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"dft","role":"start","value":"0","valid_bit":"0"},{"name":"dft","role":"done","value":"0","valid_bit":"1"},{"name":"dft","role":"idle","value":"0","valid_bit":"2"},{"name":"dft","role":"ready","value":"0","valid_bit":"3"},{"name":"dft","role":"auto_start","value":"0","valid_bit":"7"}] },
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
 	{ "name": "real_sample_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_sample_V_data_V", "role": "default" }} , 
 	{ "name": "real_sample_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "real_sample_V_last_V", "role": "default" }} , 
 	{ "name": "real_sample_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "real_sample_V_last_V", "role": "default" }} , 
 	{ "name": "real_sample_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "real_sample_V_keep_V", "role": "default" }} , 
 	{ "name": "real_sample_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "real_sample_V_strb_V", "role": "default" }} , 
 	{ "name": "real_sample_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "real_sample_V_last_V", "role": "default" }} , 
 	{ "name": "imag_sample_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_sample_V_data_V", "role": "default" }} , 
 	{ "name": "imag_sample_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "imag_sample_V_last_V", "role": "default" }} , 
 	{ "name": "imag_sample_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "imag_sample_V_last_V", "role": "default" }} , 
 	{ "name": "imag_sample_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imag_sample_V_keep_V", "role": "default" }} , 
 	{ "name": "imag_sample_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imag_sample_V_strb_V", "role": "default" }} , 
 	{ "name": "imag_sample_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_sample_V_last_V", "role": "default" }} , 
 	{ "name": "real_op_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_V_data_V", "role": "default" }} , 
 	{ "name": "real_op_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "real_op_V_last_V", "role": "default" }} , 
 	{ "name": "real_op_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "real_op_V_last_V", "role": "default" }} , 
 	{ "name": "real_op_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "real_op_V_keep_V", "role": "default" }} , 
 	{ "name": "real_op_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "real_op_V_strb_V", "role": "default" }} , 
 	{ "name": "real_op_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_V_last_V", "role": "default" }} , 
 	{ "name": "imag_op_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_V_data_V", "role": "default" }} , 
 	{ "name": "imag_op_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "imag_op_V_last_V", "role": "default" }} , 
 	{ "name": "imag_op_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "imag_op_V_last_V", "role": "default" }} , 
 	{ "name": "imag_op_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imag_op_V_keep_V", "role": "default" }} , 
 	{ "name": "imag_op_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imag_op_V_strb_V", "role": "default" }} , 
 	{ "name": "imag_op_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "7", "14", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32"],
		"CDFG" : "dft",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6293532", "EstimateLatencyMax" : "6293532",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "real_sample_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "real_sample",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dft_Pipeline_VITIS_LOOP_21_1_fu_96", "Port" : "real_sample_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "real_sample_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "real_sample",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dft_Pipeline_VITIS_LOOP_21_1_fu_96", "Port" : "real_sample_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "real_sample_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "real_sample",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dft_Pipeline_VITIS_LOOP_21_1_fu_96", "Port" : "real_sample_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "real_sample_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "real_sample",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dft_Pipeline_VITIS_LOOP_21_1_fu_96", "Port" : "real_sample_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "imag_sample_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "imag_sample",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dft_Pipeline_VITIS_LOOP_21_1_fu_96", "Port" : "imag_sample_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "imag_sample_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "imag_sample",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dft_Pipeline_VITIS_LOOP_21_1_fu_96", "Port" : "imag_sample_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "imag_sample_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "imag_sample",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dft_Pipeline_VITIS_LOOP_21_1_fu_96", "Port" : "imag_sample_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "imag_sample_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "imag_sample",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dft_Pipeline_VITIS_LOOP_21_1_fu_96", "Port" : "imag_sample_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "real_op_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "real_op",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_dft_Pipeline_VITIS_LOOP_67_4_fu_132", "Port" : "real_op_V_data_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "real_op_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "real_op",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_dft_Pipeline_VITIS_LOOP_67_4_fu_132", "Port" : "real_op_V_keep_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "real_op_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "real_op",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_dft_Pipeline_VITIS_LOOP_67_4_fu_132", "Port" : "real_op_V_strb_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "real_op_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "real_op",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_dft_Pipeline_VITIS_LOOP_67_4_fu_132", "Port" : "real_op_V_last_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "imag_op_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "imag_op",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_dft_Pipeline_VITIS_LOOP_67_4_fu_132", "Port" : "imag_op_V_data_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "imag_op_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "imag_op",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_dft_Pipeline_VITIS_LOOP_67_4_fu_132", "Port" : "imag_op_V_keep_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "imag_op_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "imag_op",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_dft_Pipeline_VITIS_LOOP_67_4_fu_132", "Port" : "imag_op_V_strb_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "imag_op_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "imag_op",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_dft_Pipeline_VITIS_LOOP_67_4_fu_132", "Port" : "imag_op_V_last_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "cos_coefficients_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_dft_Pipeline_VITIS_LOOP_43_2_VITIS_LOOP_44_3_fu_120", "Port" : "cos_coefficients_table", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "sin_coefficients_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_dft_Pipeline_VITIS_LOOP_43_2_VITIS_LOOP_44_3_fu_120", "Port" : "sin_coefficients_table", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.real_sample_data_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imag_sample_data_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.real_op_data_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imag_op_data_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_21_1_fu_96", "Parent" : "0", "Child" : ["6"],
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_21_1_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_43_2_VITIS_LOOP_44_3_fu_120", "Parent" : "0", "Child" : ["8", "9", "10", "11", "12", "13"],
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
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_43_2_VITIS_LOOP_44_3_fu_120.cos_coefficients_table_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_43_2_VITIS_LOOP_44_3_fu_120.sin_coefficients_table_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_43_2_VITIS_LOOP_44_3_fu_120.faddfsub_32ns_32ns_32_5_full_dsp_1_U13", "Parent" : "7"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_43_2_VITIS_LOOP_44_3_fu_120.fmul_32ns_32ns_32_4_max_dsp_1_U14", "Parent" : "7"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_43_2_VITIS_LOOP_44_3_fu_120.mul_10s_10s_10_1_1_U15", "Parent" : "7"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_43_2_VITIS_LOOP_44_3_fu_120.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_67_4_fu_132", "Parent" : "0", "Child" : ["15"],
		"CDFG" : "dft_Pipeline_VITIS_LOOP_67_4",
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
			{"Name" : "real_op_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "imag_op_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "real_op_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "real_op",
				"BlockSignal" : [
					{"Name" : "real_op_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "real_op_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "real_op"},
			{"Name" : "real_op_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "real_op"},
			{"Name" : "real_op_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "real_op"},
			{"Name" : "imag_op_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "imag_op",
				"BlockSignal" : [
					{"Name" : "imag_op_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imag_op_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "imag_op"},
			{"Name" : "imag_op_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "imag_op"},
			{"Name" : "imag_op_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "imag_op"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_67_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_67_4_fu_132.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_real_sample_V_data_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_real_sample_V_keep_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_real_sample_V_strb_V_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_real_sample_V_last_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_imag_sample_V_data_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_imag_sample_V_keep_V_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_imag_sample_V_strb_V_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_imag_sample_V_last_V_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_real_op_V_data_V_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_real_op_V_keep_V_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_real_op_V_strb_V_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_real_op_V_last_V_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_imag_op_V_data_V_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_imag_op_V_keep_V_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_imag_op_V_strb_V_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_imag_op_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dft {
		real_sample_V_data_V {Type I LastRead 1 FirstWrite -1}
		real_sample_V_keep_V {Type I LastRead 1 FirstWrite -1}
		real_sample_V_strb_V {Type I LastRead 1 FirstWrite -1}
		real_sample_V_last_V {Type I LastRead 1 FirstWrite -1}
		imag_sample_V_data_V {Type I LastRead 1 FirstWrite -1}
		imag_sample_V_keep_V {Type I LastRead 1 FirstWrite -1}
		imag_sample_V_strb_V {Type I LastRead 1 FirstWrite -1}
		imag_sample_V_last_V {Type I LastRead 1 FirstWrite -1}
		real_op_V_data_V {Type O LastRead -1 FirstWrite 1}
		real_op_V_keep_V {Type O LastRead -1 FirstWrite 1}
		real_op_V_strb_V {Type O LastRead -1 FirstWrite 1}
		real_op_V_last_V {Type O LastRead -1 FirstWrite 1}
		imag_op_V_data_V {Type O LastRead -1 FirstWrite 1}
		imag_op_V_keep_V {Type O LastRead -1 FirstWrite 1}
		imag_op_V_strb_V {Type O LastRead -1 FirstWrite 1}
		imag_op_V_last_V {Type O LastRead -1 FirstWrite 1}
		cos_coefficients_table {Type I LastRead -1 FirstWrite -1}
		sin_coefficients_table {Type I LastRead -1 FirstWrite -1}}
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
		imag_op_data {Type O LastRead -1 FirstWrite 0}}
	dft_Pipeline_VITIS_LOOP_43_2_VITIS_LOOP_44_3 {
		real_sample_data {Type I LastRead 0 FirstWrite -1}
		imag_sample_data {Type I LastRead 0 FirstWrite -1}
		real_op_data {Type IO LastRead 12 FirstWrite 19}
		imag_op_data {Type IO LastRead 12 FirstWrite 21}
		cos_coefficients_table {Type I LastRead -1 FirstWrite -1}
		sin_coefficients_table {Type I LastRead -1 FirstWrite -1}}
	dft_Pipeline_VITIS_LOOP_67_4 {
		real_op_data {Type I LastRead 0 FirstWrite -1}
		imag_op_data {Type I LastRead 0 FirstWrite -1}
		real_op_V_data_V {Type O LastRead -1 FirstWrite 1}
		real_op_V_keep_V {Type O LastRead -1 FirstWrite 1}
		real_op_V_strb_V {Type O LastRead -1 FirstWrite 1}
		real_op_V_last_V {Type O LastRead -1 FirstWrite 1}
		imag_op_V_data_V {Type O LastRead -1 FirstWrite 1}
		imag_op_V_keep_V {Type O LastRead -1 FirstWrite 1}
		imag_op_V_strb_V {Type O LastRead -1 FirstWrite 1}
		imag_op_V_last_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6293532", "Max" : "6293532"}
	, {"Name" : "Interval", "Min" : "6293533", "Max" : "6293533"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	real_sample_V_data_V { axis {  { real_sample_TDATA in_data 0 32 } } }
	real_sample_V_keep_V { axis {  { real_sample_TKEEP in_data 0 4 } } }
	real_sample_V_strb_V { axis {  { real_sample_TSTRB in_data 0 4 } } }
	real_sample_V_last_V { axis {  { real_sample_TVALID in_vld 0 1 }  { real_sample_TREADY in_acc 1 1 }  { real_sample_TLAST in_data 0 1 } } }
	imag_sample_V_data_V { axis {  { imag_sample_TDATA in_data 0 32 } } }
	imag_sample_V_keep_V { axis {  { imag_sample_TKEEP in_data 0 4 } } }
	imag_sample_V_strb_V { axis {  { imag_sample_TSTRB in_data 0 4 } } }
	imag_sample_V_last_V { axis {  { imag_sample_TVALID in_vld 0 1 }  { imag_sample_TREADY in_acc 1 1 }  { imag_sample_TLAST in_data 0 1 } } }
	real_op_V_data_V { axis {  { real_op_TDATA out_data 1 32 } } }
	real_op_V_keep_V { axis {  { real_op_TKEEP out_data 1 4 } } }
	real_op_V_strb_V { axis {  { real_op_TSTRB out_data 1 4 } } }
	real_op_V_last_V { axis {  { real_op_TVALID out_vld 1 1 }  { real_op_TREADY out_acc 0 1 }  { real_op_TLAST out_data 1 1 } } }
	imag_op_V_data_V { axis {  { imag_op_TDATA out_data 1 32 } } }
	imag_op_V_keep_V { axis {  { imag_op_TKEEP out_data 1 4 } } }
	imag_op_V_strb_V { axis {  { imag_op_TSTRB out_data 1 4 } } }
	imag_op_V_last_V { axis {  { imag_op_TVALID out_vld 1 1 }  { imag_op_TREADY out_acc 0 1 }  { imag_op_TLAST out_data 1 1 } } }
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
