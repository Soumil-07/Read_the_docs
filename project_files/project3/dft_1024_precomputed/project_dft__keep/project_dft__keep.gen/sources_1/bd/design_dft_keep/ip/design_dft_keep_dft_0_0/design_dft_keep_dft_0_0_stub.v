// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sun Nov  9 02:40:01 2025
// Host        : ieng6-253.ucsd.edu running 64-bit Linux Mint 22.1
// Command     : write_verilog -force -mode synth_stub
//               /home/linux/ieng6/students/186/dnwadhwani/Desktop/project3/Read_the_docs/project_files/project3/dft_1024_precomputed/project_dft__keep/project_dft__keep.gen/sources_1/bd/design_dft_keep/ip/design_dft_keep_dft_0_0/design_dft_keep_dft_0_0_stub.v
// Design      : design_dft_keep_dft_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_dft_keep_dft_0_0,dft,{}" *) (* CORE_GENERATION_INFO = "design_dft_keep_dft_0_0,dft,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=dft,x_ipVersion=1.0,x_ipCoreRevision=2114340012,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_CONTROL_ADDR_WIDTH=4,C_S_AXI_CONTROL_DATA_WIDTH=32}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "HLS" *) (* X_CORE_INFO = "dft,Vivado 2024.2" *) (* hls_module = "yes" *) 
module design_dft_keep_dft_0_0(s_axi_control_ARADDR, 
  s_axi_control_ARREADY, s_axi_control_ARVALID, s_axi_control_AWADDR, 
  s_axi_control_AWREADY, s_axi_control_AWVALID, s_axi_control_BREADY, 
  s_axi_control_BRESP, s_axi_control_BVALID, s_axi_control_RDATA, s_axi_control_RREADY, 
  s_axi_control_RRESP, s_axi_control_RVALID, s_axi_control_WDATA, s_axi_control_WREADY, 
  s_axi_control_WSTRB, s_axi_control_WVALID, ap_clk, ap_rst_n, interrupt, real_sample_TDATA, 
  real_sample_TKEEP, real_sample_TLAST, real_sample_TREADY, real_sample_TSTRB, 
  real_sample_TVALID, imag_sample_TDATA, imag_sample_TKEEP, imag_sample_TLAST, 
  imag_sample_TREADY, imag_sample_TSTRB, imag_sample_TVALID, real_op_TDATA, real_op_TKEEP, 
  real_op_TLAST, real_op_TREADY, real_op_TSTRB, real_op_TVALID, imag_op_TDATA, imag_op_TKEEP, 
  imag_op_TLAST, imag_op_TREADY, imag_op_TSTRB, imag_op_TVALID)
/* synthesis syn_black_box black_box_pad_pin="s_axi_control_ARADDR[3:0],s_axi_control_ARREADY,s_axi_control_ARVALID,s_axi_control_AWADDR[3:0],s_axi_control_AWREADY,s_axi_control_AWVALID,s_axi_control_BREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_RDATA[31:0],s_axi_control_RREADY,s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_WDATA[31:0],s_axi_control_WREADY,s_axi_control_WSTRB[3:0],s_axi_control_WVALID,ap_rst_n,interrupt,real_sample_TDATA[31:0],real_sample_TKEEP[3:0],real_sample_TLAST[0:0],real_sample_TREADY,real_sample_TSTRB[3:0],real_sample_TVALID,imag_sample_TDATA[31:0],imag_sample_TKEEP[3:0],imag_sample_TLAST[0:0],imag_sample_TREADY,imag_sample_TSTRB[3:0],imag_sample_TVALID,real_op_TDATA[31:0],real_op_TKEEP[3:0],real_op_TLAST[0:0],real_op_TREADY,real_op_TSTRB[3:0],real_op_TVALID,imag_op_TDATA[31:0],imag_op_TKEEP[3:0],imag_op_TLAST[0:0],imag_op_TREADY,imag_op_TSTRB[3:0],imag_op_TVALID" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 4, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 50000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_dft_keep_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s_axi_control_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [3:0]s_axi_control_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) output [1:0]s_axi_control_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) input s_axi_control_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control:real_sample:imag_sample:real_op:imag_op, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_dft_keep_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 real_sample TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME real_sample, TUSER_WIDTH 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_dft_keep_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]real_sample_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 real_sample TKEEP" *) input [3:0]real_sample_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 real_sample TLAST" *) input [0:0]real_sample_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 real_sample TREADY" *) output real_sample_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 real_sample TSTRB" *) input [3:0]real_sample_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 real_sample TVALID" *) input real_sample_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 imag_sample TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME imag_sample, TUSER_WIDTH 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_dft_keep_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]imag_sample_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 imag_sample TKEEP" *) input [3:0]imag_sample_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 imag_sample TLAST" *) input [0:0]imag_sample_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 imag_sample TREADY" *) output imag_sample_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 imag_sample TSTRB" *) input [3:0]imag_sample_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 imag_sample TVALID" *) input imag_sample_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 real_op TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME real_op, TUSER_WIDTH 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_dft_keep_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]real_op_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 real_op TKEEP" *) output [3:0]real_op_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 real_op TLAST" *) output [0:0]real_op_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 real_op TREADY" *) input real_op_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 real_op TSTRB" *) output [3:0]real_op_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 real_op TVALID" *) output real_op_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 imag_op TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME imag_op, TUSER_WIDTH 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_dft_keep_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]imag_op_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 imag_op TKEEP" *) output [3:0]imag_op_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 imag_op TLAST" *) output [0:0]imag_op_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 imag_op TREADY" *) input imag_op_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 imag_op TSTRB" *) output [3:0]imag_op_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 imag_op TVALID" *) output imag_op_TVALID;
endmodule
