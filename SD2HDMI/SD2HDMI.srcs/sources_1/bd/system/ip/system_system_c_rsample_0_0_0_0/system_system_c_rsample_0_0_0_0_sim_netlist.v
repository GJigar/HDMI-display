// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon May 16 22:10:39 2022
// Host        : MS-QMGTGLWCUXSR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/ZYNQ_demo/test/SD2HDMI/SD2HDMI/SD2HDMI.srcs/sources_1/bd/system/ip/system_system_c_rsample_0_0_0_0/system_system_c_rsample_0_0_0_0_sim_netlist.v
// Design      : system_system_c_rsample_0_0_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_system_c_rsample_0_0_0_0,system_c_rsample_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "system_c_rsample_0_0,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module system_system_c_rsample_0_0_0_0
   (aclk,
    aresetn,
    s_axis_video_tdata,
    s_axis_video_tlast,
    s_axis_video_tready,
    s_axis_video_tuser,
    s_axis_video_tvalid,
    m_axis_video_tdata,
    m_axis_video_tlast,
    m_axis_video_tready,
    m_axis_video_tuser,
    m_axis_video_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis_video:s_axis_video, ASSOCIATED_RESET aresetn, FREQ_HZ 148500000, PHASE 0.0, INSERT_VIP 0, CLK_DOMAIN /clk_wiz_clk_out1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TDATA" *) input [23:0]s_axis_video_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TLAST" *) input s_axis_video_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TREADY" *) output s_axis_video_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TUSER" *) input s_axis_video_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_video, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 148500000, PHASE 0.0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xilinx.com:video:Y_U_V_444:1.0} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value rows} size {attribs {resolve_type generated dependency active_rows format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_rows_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cols} size {attribs {resolve_type generated dependency active_cols format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_cols_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_Y {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value Y} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_U {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value U} enabled {attribs {resolve_type generated dependency video_comp1_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp1_offset format long minimum {} maximum {}} value 8} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_V {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value V} enabled {attribs {resolve_type generated dependency video_comp2_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp2_offset format long minimum {} maximum {}} value 16} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}} TDATA_WIDTH 24}, INSERT_VIP 0, CLK_DOMAIN /clk_wiz_clk_out1" *) input s_axis_video_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TDATA" *) output [15:0]m_axis_video_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TLAST" *) output m_axis_video_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TREADY" *) input m_axis_video_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TUSER" *) output m_axis_video_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_video, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 148500000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0, CLK_DOMAIN /clk_wiz_clk_out1" *) output m_axis_video_tvalid;

  wire aclk;
  wire [15:8]\^m_axis_video_tdata ;
  wire m_axis_video_tready;
  wire [23:0]s_axis_video_tdata;
  wire s_axis_video_tlast;
  wire s_axis_video_tuser;
  wire s_axis_video_tvalid;

  assign m_axis_video_tdata[15:8] = \^m_axis_video_tdata [15:8];
  assign m_axis_video_tdata[7:0] = s_axis_video_tdata[7:0];
  assign m_axis_video_tlast = s_axis_video_tlast;
  assign m_axis_video_tuser = s_axis_video_tuser;
  assign m_axis_video_tvalid = s_axis_video_tvalid;
  assign s_axis_video_tready = m_axis_video_tready;
  (* X_CORE_INFO = "c_rsample,Vivado 2019.1" *) 
  system_system_c_rsample_0_0_0_0_system_c_rsample_0_0 inst
       (.aclk(aclk),
        .m_axis_video_tdata(\^m_axis_video_tdata ),
        .m_axis_video_tready(m_axis_video_tready),
        .s_axis_video_tdata(s_axis_video_tdata[23:8]),
        .s_axis_video_tvalid(s_axis_video_tvalid));
endmodule

(* ORIG_REF_NAME = "c_rsample" *) 
module system_system_c_rsample_0_0_0_0_c_rsample
   (m_axis_video_tdata,
    s_axis_video_tdata,
    m_axis_video_tready,
    s_axis_video_tvalid,
    aclk);
  output [7:0]m_axis_video_tdata;
  input [15:0]s_axis_video_tdata;
  input m_axis_video_tready;
  input s_axis_video_tvalid;
  input aclk;

  wire aclk;
  wire [7:0]m_axis_video_tdata;
  wire m_axis_video_tready;
  wire [15:0]s_axis_video_tdata;
  wire s_axis_video_tvalid;
  wire toggle;
  wire toggle_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[10]_INST_0 
       (.I0(s_axis_video_tdata[10]),
        .I1(toggle),
        .I2(s_axis_video_tdata[2]),
        .O(m_axis_video_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[11]_INST_0 
       (.I0(s_axis_video_tdata[11]),
        .I1(toggle),
        .I2(s_axis_video_tdata[3]),
        .O(m_axis_video_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[12]_INST_0 
       (.I0(s_axis_video_tdata[12]),
        .I1(toggle),
        .I2(s_axis_video_tdata[4]),
        .O(m_axis_video_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[13]_INST_0 
       (.I0(s_axis_video_tdata[13]),
        .I1(toggle),
        .I2(s_axis_video_tdata[5]),
        .O(m_axis_video_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[14]_INST_0 
       (.I0(s_axis_video_tdata[14]),
        .I1(toggle),
        .I2(s_axis_video_tdata[6]),
        .O(m_axis_video_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[15]_INST_0 
       (.I0(s_axis_video_tdata[15]),
        .I1(toggle),
        .I2(s_axis_video_tdata[7]),
        .O(m_axis_video_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[8]_INST_0 
       (.I0(s_axis_video_tdata[8]),
        .I1(toggle),
        .I2(s_axis_video_tdata[0]),
        .O(m_axis_video_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[9]_INST_0 
       (.I0(s_axis_video_tdata[9]),
        .I1(toggle),
        .I2(s_axis_video_tdata[1]),
        .O(m_axis_video_tdata[1]));
  LUT3 #(
    .INIT(8'h78)) 
    toggle_i_1
       (.I0(m_axis_video_tready),
        .I1(s_axis_video_tvalid),
        .I2(toggle),
        .O(toggle_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    toggle_reg
       (.C(aclk),
        .CE(1'b1),
        .D(toggle_i_1_n_0),
        .Q(toggle),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "system_c_rsample_0_0" *) 
module system_system_c_rsample_0_0_0_0_system_c_rsample_0_0
   (m_axis_video_tdata,
    s_axis_video_tdata,
    m_axis_video_tready,
    s_axis_video_tvalid,
    aclk);
  output [7:0]m_axis_video_tdata;
  input [15:0]s_axis_video_tdata;
  input m_axis_video_tready;
  input s_axis_video_tvalid;
  input aclk;

  wire aclk;
  wire [7:0]m_axis_video_tdata;
  wire m_axis_video_tready;
  wire [15:0]s_axis_video_tdata;
  wire s_axis_video_tvalid;

  system_system_c_rsample_0_0_0_0_c_rsample inst
       (.aclk(aclk),
        .m_axis_video_tdata(m_axis_video_tdata),
        .m_axis_video_tready(m_axis_video_tready),
        .s_axis_video_tdata(s_axis_video_tdata),
        .s_axis_video_tvalid(s_axis_video_tvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
