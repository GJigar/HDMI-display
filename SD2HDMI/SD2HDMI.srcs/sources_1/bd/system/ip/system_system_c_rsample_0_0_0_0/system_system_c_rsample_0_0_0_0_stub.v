// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon May 16 22:10:39 2022
// Host        : MS-QMGTGLWCUXSR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/ZYNQ_demo/test/SD2HDMI/SD2HDMI/SD2HDMI.srcs/sources_1/bd/system/ip/system_system_c_rsample_0_0_0_0/system_system_c_rsample_0_0_0_0_stub.v
// Design      : system_system_c_rsample_0_0_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "system_c_rsample_0_0,Vivado 2019.1" *)
module system_system_c_rsample_0_0_0_0(aclk, aresetn, s_axis_video_tdata, 
  s_axis_video_tlast, s_axis_video_tready, s_axis_video_tuser, s_axis_video_tvalid, 
  m_axis_video_tdata, m_axis_video_tlast, m_axis_video_tready, m_axis_video_tuser, 
  m_axis_video_tvalid)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_video_tdata[23:0],s_axis_video_tlast,s_axis_video_tready,s_axis_video_tuser,s_axis_video_tvalid,m_axis_video_tdata[15:0],m_axis_video_tlast,m_axis_video_tready,m_axis_video_tuser,m_axis_video_tvalid" */;
  input aclk;
  input aresetn;
  input [23:0]s_axis_video_tdata;
  input s_axis_video_tlast;
  output s_axis_video_tready;
  input s_axis_video_tuser;
  input s_axis_video_tvalid;
  output [15:0]m_axis_video_tdata;
  output m_axis_video_tlast;
  input m_axis_video_tready;
  output m_axis_video_tuser;
  output m_axis_video_tvalid;
endmodule
