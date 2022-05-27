// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon May 16 22:10:39 2022
// Host        : MS-QMGTGLWCUXSR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/ZYNQ_demo/test/SD2HDMI/SD2HDMI/SD2HDMI.srcs/sources_1/bd/system/ip/system_zed_hdmi_out_0_0/system_zed_hdmi_out_0_0_stub.v
// Design      : system_zed_hdmi_out_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "zed_hdmi_out,Vivado 2019.1" *)
module system_zed_hdmi_out_0_0(clk, reset, audio_spdif, video_vsync, 
  video_hsync, video_de, video_data, io_hdmio_spdif, io_hdmio_video, io_hdmio_vsync, 
  io_hdmio_hsync, io_hdmio_de, io_hdmio_clk)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,audio_spdif,video_vsync,video_hsync,video_de,video_data[15:0],io_hdmio_spdif,io_hdmio_video[15:0],io_hdmio_vsync,io_hdmio_hsync,io_hdmio_de,io_hdmio_clk" */;
  input clk;
  input reset;
  input audio_spdif;
  input video_vsync;
  input video_hsync;
  input video_de;
  input [15:0]video_data;
  output io_hdmio_spdif;
  output [15:0]io_hdmio_video;
  output io_hdmio_vsync;
  output io_hdmio_hsync;
  output io_hdmio_de;
  output io_hdmio_clk;
endmodule
