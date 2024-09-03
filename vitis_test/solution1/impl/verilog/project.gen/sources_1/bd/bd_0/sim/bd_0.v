//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Mon Sep  2 19:00:01 2024
//Host        : prince-ThinkPad-E14-Gen-5 running 64-bit Ubuntu 24.04 LTS
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
   (ap_clk,
    ap_rst_n,
    input_stream_tdata,
    input_stream_tkeep,
    input_stream_tlast,
    input_stream_tready,
    input_stream_tstrb,
    input_stream_tvalid,
    interrupt,
    output_stream_tdata,
    output_stream_tkeep,
    output_stream_tlast,
    output_stream_tready,
    output_stream_tstrb,
    output_stream_tvalid,
    s_axi_control_araddr,
    s_axi_control_arready,
    s_axi_control_arvalid,
    s_axi_control_awaddr,
    s_axi_control_awready,
    s_axi_control_awvalid,
    s_axi_control_bready,
    s_axi_control_bresp,
    s_axi_control_bvalid,
    s_axi_control_rdata,
    s_axi_control_rready,
    s_axi_control_rresp,
    s_axi_control_rvalid,
    s_axi_control_wdata,
    s_axi_control_wready,
    s_axi_control_wstrb,
    s_axi_control_wvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF input_stream:output_stream:s_axi_control, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_stream " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME input_stream, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]input_stream_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_stream " *) input [3:0]input_stream_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_stream " *) input [0:0]input_stream_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_stream " *) output input_stream_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_stream " *) input [3:0]input_stream_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_stream " *) input input_stream_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 output_stream " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME output_stream, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]output_stream_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 output_stream " *) output [3:0]output_stream_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 output_stream " *) output [0:0]output_stream_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 output_stream " *) input output_stream_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 output_stream " *) output [3:0]output_stream_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 output_stream " *) output output_stream_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 100000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [3:0]s_axi_control_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input [3:0]s_axi_control_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output [1:0]s_axi_control_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output [31:0]s_axi_control_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output [1:0]s_axi_control_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input [31:0]s_axi_control_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input [3:0]s_axi_control_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_wvalid;

  wire ap_clk_0_1;
  wire ap_rst_n_0_1;
  wire hls_inst_interrupt;
  wire [31:0]hls_inst_output_stream_TDATA;
  wire [3:0]hls_inst_output_stream_TKEEP;
  wire [0:0]hls_inst_output_stream_TLAST;
  wire hls_inst_output_stream_TREADY;
  wire [3:0]hls_inst_output_stream_TSTRB;
  wire hls_inst_output_stream_TVALID;
  wire [31:0]input_stream_0_1_TDATA;
  wire [3:0]input_stream_0_1_TKEEP;
  wire [0:0]input_stream_0_1_TLAST;
  wire input_stream_0_1_TREADY;
  wire [3:0]input_stream_0_1_TSTRB;
  wire input_stream_0_1_TVALID;
  wire [3:0]s_axi_control_0_1_ARADDR;
  wire s_axi_control_0_1_ARREADY;
  wire s_axi_control_0_1_ARVALID;
  wire [3:0]s_axi_control_0_1_AWADDR;
  wire s_axi_control_0_1_AWREADY;
  wire s_axi_control_0_1_AWVALID;
  wire s_axi_control_0_1_BREADY;
  wire [1:0]s_axi_control_0_1_BRESP;
  wire s_axi_control_0_1_BVALID;
  wire [31:0]s_axi_control_0_1_RDATA;
  wire s_axi_control_0_1_RREADY;
  wire [1:0]s_axi_control_0_1_RRESP;
  wire s_axi_control_0_1_RVALID;
  wire [31:0]s_axi_control_0_1_WDATA;
  wire s_axi_control_0_1_WREADY;
  wire [3:0]s_axi_control_0_1_WSTRB;
  wire s_axi_control_0_1_WVALID;

  assign ap_clk_0_1 = ap_clk;
  assign ap_rst_n_0_1 = ap_rst_n;
  assign hls_inst_output_stream_TREADY = output_stream_tready;
  assign input_stream_0_1_TDATA = input_stream_tdata[31:0];
  assign input_stream_0_1_TKEEP = input_stream_tkeep[3:0];
  assign input_stream_0_1_TLAST = input_stream_tlast[0];
  assign input_stream_0_1_TSTRB = input_stream_tstrb[3:0];
  assign input_stream_0_1_TVALID = input_stream_tvalid;
  assign input_stream_tready = input_stream_0_1_TREADY;
  assign interrupt = hls_inst_interrupt;
  assign output_stream_tdata[31:0] = hls_inst_output_stream_TDATA;
  assign output_stream_tkeep[3:0] = hls_inst_output_stream_TKEEP;
  assign output_stream_tlast[0] = hls_inst_output_stream_TLAST;
  assign output_stream_tstrb[3:0] = hls_inst_output_stream_TSTRB;
  assign output_stream_tvalid = hls_inst_output_stream_TVALID;
  assign s_axi_control_0_1_ARADDR = s_axi_control_araddr[3:0];
  assign s_axi_control_0_1_ARVALID = s_axi_control_arvalid;
  assign s_axi_control_0_1_AWADDR = s_axi_control_awaddr[3:0];
  assign s_axi_control_0_1_AWVALID = s_axi_control_awvalid;
  assign s_axi_control_0_1_BREADY = s_axi_control_bready;
  assign s_axi_control_0_1_RREADY = s_axi_control_rready;
  assign s_axi_control_0_1_WDATA = s_axi_control_wdata[31:0];
  assign s_axi_control_0_1_WSTRB = s_axi_control_wstrb[3:0];
  assign s_axi_control_0_1_WVALID = s_axi_control_wvalid;
  assign s_axi_control_arready = s_axi_control_0_1_ARREADY;
  assign s_axi_control_awready = s_axi_control_0_1_AWREADY;
  assign s_axi_control_bresp[1:0] = s_axi_control_0_1_BRESP;
  assign s_axi_control_bvalid = s_axi_control_0_1_BVALID;
  assign s_axi_control_rdata[31:0] = s_axi_control_0_1_RDATA;
  assign s_axi_control_rresp[1:0] = s_axi_control_0_1_RRESP;
  assign s_axi_control_rvalid = s_axi_control_0_1_RVALID;
  assign s_axi_control_wready = s_axi_control_0_1_WREADY;
  bd_0_hls_inst_0 hls_inst
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .input_stream_TDATA(input_stream_0_1_TDATA),
        .input_stream_TKEEP(input_stream_0_1_TKEEP),
        .input_stream_TLAST(input_stream_0_1_TLAST),
        .input_stream_TREADY(input_stream_0_1_TREADY),
        .input_stream_TSTRB(input_stream_0_1_TSTRB),
        .input_stream_TVALID(input_stream_0_1_TVALID),
        .interrupt(hls_inst_interrupt),
        .output_stream_TDATA(hls_inst_output_stream_TDATA),
        .output_stream_TKEEP(hls_inst_output_stream_TKEEP),
        .output_stream_TLAST(hls_inst_output_stream_TLAST),
        .output_stream_TREADY(hls_inst_output_stream_TREADY),
        .output_stream_TSTRB(hls_inst_output_stream_TSTRB),
        .output_stream_TVALID(hls_inst_output_stream_TVALID),
        .s_axi_control_ARADDR(s_axi_control_0_1_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_0_1_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_0_1_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_0_1_AWADDR),
        .s_axi_control_AWREADY(s_axi_control_0_1_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_0_1_AWVALID),
        .s_axi_control_BREADY(s_axi_control_0_1_BREADY),
        .s_axi_control_BRESP(s_axi_control_0_1_BRESP),
        .s_axi_control_BVALID(s_axi_control_0_1_BVALID),
        .s_axi_control_RDATA(s_axi_control_0_1_RDATA),
        .s_axi_control_RREADY(s_axi_control_0_1_RREADY),
        .s_axi_control_RRESP(s_axi_control_0_1_RRESP),
        .s_axi_control_RVALID(s_axi_control_0_1_RVALID),
        .s_axi_control_WDATA(s_axi_control_0_1_WDATA),
        .s_axi_control_WREADY(s_axi_control_0_1_WREADY),
        .s_axi_control_WSTRB(s_axi_control_0_1_WSTRB),
        .s_axi_control_WVALID(s_axi_control_0_1_WVALID));
endmodule
