// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon May 16 22:10:39 2022
// Host        : MS-QMGTGLWCUXSR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/ZYNQ_demo/test/SD2HDMI/SD2HDMI/SD2HDMI.srcs/sources_1/bd/system/ip/system_zed_hdmi_out_0_0/system_zed_hdmi_out_0_0_sim_netlist.v
// Design      : system_zed_hdmi_out_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_zed_hdmi_out_0_0,zed_hdmi_out,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "zed_hdmi_out,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module system_zed_hdmi_out_0_0
   (clk,
    reset,
    audio_spdif,
    video_vsync,
    video_hsync,
    video_de,
    video_data,
    io_hdmio_spdif,
    io_hdmio_video,
    io_hdmio_vsync,
    io_hdmio_hsync,
    io_hdmio_de,
    io_hdmio_clk);
  input clk;
  input reset;
  input audio_spdif;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 VID_IO_IN VSYNC" *) input video_vsync;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 VID_IO_IN HSYNC" *) input video_hsync;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 VID_IO_IN ACTIVE_VIDEO" *) input video_de;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 VID_IO_IN DATA" *) input [15:0]video_data;
  (* x_interface_info = "avnet.com:interface:avnet_hdmi:1.0 IO_HDMIO SPDIF" *) output io_hdmio_spdif;
  (* x_interface_info = "avnet.com:interface:avnet_hdmi:1.0 IO_HDMIO DATA" *) output [15:0]io_hdmio_video;
  (* x_interface_info = "avnet.com:interface:avnet_hdmi:1.0 IO_HDMIO VSYNC" *) output io_hdmio_vsync;
  (* x_interface_info = "avnet.com:interface:avnet_hdmi:1.0 IO_HDMIO HSYNC" *) output io_hdmio_hsync;
  (* x_interface_info = "avnet.com:interface:avnet_hdmi:1.0 IO_HDMIO DE" *) output io_hdmio_de;
  (* x_interface_info = "avnet.com:interface:avnet_hdmi:1.0 IO_HDMIO CLK" *) output io_hdmio_clk;

  wire audio_spdif;
  wire clk;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire io_hdmio_clk;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire io_hdmio_de;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire io_hdmio_hsync;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire io_hdmio_spdif;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire [15:0]io_hdmio_video;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire io_hdmio_vsync;
  wire [15:0]video_data;
  wire video_de;
  wire video_hsync;
  wire video_vsync;

  system_zed_hdmi_out_0_0_zed_hdmi_out U0
       (.audio_spdif(audio_spdif),
        .clk(clk),
        .io_hdmio_clk(io_hdmio_clk),
        .io_hdmio_de(io_hdmio_de),
        .io_hdmio_hsync(io_hdmio_hsync),
        .io_hdmio_spdif(io_hdmio_spdif),
        .io_hdmio_video(io_hdmio_video),
        .io_hdmio_vsync(io_hdmio_vsync),
        .video_data(video_data),
        .video_de(video_de),
        .video_hsync(video_hsync),
        .video_vsync(video_vsync));
endmodule

(* ORIG_REF_NAME = "zed_hdmi_out" *) 
module system_zed_hdmi_out_0_0_zed_hdmi_out
   (io_hdmio_spdif,
    io_hdmio_vsync,
    io_hdmio_hsync,
    io_hdmio_de,
    io_hdmio_clk,
    io_hdmio_video,
    clk,
    audio_spdif,
    video_data,
    video_vsync,
    video_hsync,
    video_de);
  output io_hdmio_spdif;
  output io_hdmio_vsync;
  output io_hdmio_hsync;
  output io_hdmio_de;
  output io_hdmio_clk;
  output [15:0]io_hdmio_video;
  input clk;
  input audio_spdif;
  input [15:0]video_data;
  input video_vsync;
  input video_hsync;
  input video_de;

  wire I;
  wire audio_spdif;
  wire clk;
  wire de_r;
  wire hdmi_clk_o;
  wire hdmi_clk_t;
  wire hdmi_de_o;
  wire hdmi_hsync_o;
  wire [15:0]hdmi_video_o;
  wire hdmi_vsync_o;
  wire hsync_r;
  wire io_hdmio_clk;
  wire io_hdmio_de;
  wire io_hdmio_hsync;
  wire io_hdmio_spdif;
  wire [15:0]io_hdmio_video;
  wire io_hdmio_vsync;
  wire [15:0]video_data;
  wire video_de;
  wire video_hsync;
  wire [15:0]video_r;
  wire video_vsync;
  wire vsync_r;
  wire \NLW_V6_GEN.ODDR_hdmi_clk_o_R_UNCONNECTED ;
  wire \NLW_V6_GEN.ODDR_hdmi_clk_o_S_UNCONNECTED ;
  wire \NLW_V6_GEN.ODDR_hdmi_clk_t_R_UNCONNECTED ;
  wire \NLW_V6_GEN.ODDR_hdmi_clk_t_S_UNCONNECTED ;

  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFT #(
    .IOSTANDARD("DEFAULT")) 
    \IO1[0].OBUFT_hdmio_video 
       (.I(hdmi_video_o[0]),
        .O(io_hdmio_video[0]),
        .T(1'b0));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFT #(
    .IOSTANDARD("DEFAULT")) 
    \IO1[10].OBUFT_hdmio_video 
       (.I(hdmi_video_o[10]),
        .O(io_hdmio_video[10]),
        .T(1'b0));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFT #(
    .IOSTANDARD("DEFAULT")) 
    \IO1[11].OBUFT_hdmio_video 
       (.I(hdmi_video_o[11]),
        .O(io_hdmio_video[11]),
        .T(1'b0));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFT #(
    .IOSTANDARD("DEFAULT")) 
    \IO1[12].OBUFT_hdmio_video 
       (.I(hdmi_video_o[12]),
        .O(io_hdmio_video[12]),
        .T(1'b0));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFT #(
    .IOSTANDARD("DEFAULT")) 
    \IO1[13].OBUFT_hdmio_video 
       (.I(hdmi_video_o[13]),
        .O(io_hdmio_video[13]),
        .T(1'b0));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFT #(
    .IOSTANDARD("DEFAULT")) 
    \IO1[14].OBUFT_hdmio_video 
       (.I(hdmi_video_o[14]),
        .O(io_hdmio_video[14]),
        .T(1'b0));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFT #(
    .IOSTANDARD("DEFAULT")) 
    \IO1[15].OBUFT_hdmio_video 
       (.I(hdmi_video_o[15]),
        .O(io_hdmio_video[15]),
        .T(1'b0));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFT #(
    .IOSTANDARD("DEFAULT")) 
    \IO1[1].OBUFT_hdmio_video 
       (.I(hdmi_video_o[1]),
        .O(io_hdmio_video[1]),
        .T(1'b0));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFT #(
    .IOSTANDARD("DEFAULT")) 
    \IO1[2].OBUFT_hdmio_video 
       (.I(hdmi_video_o[2]),
        .O(io_hdmio_video[2]),
        .T(1'b0));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFT #(
    .IOSTANDARD("DEFAULT")) 
    \IO1[3].OBUFT_hdmio_video 
       (.I(hdmi_video_o[3]),
        .O(io_hdmio_video[3]),
        .T(1'b0));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFT #(
    .IOSTANDARD("DEFAULT")) 
    \IO1[4].OBUFT_hdmio_video 
       (.I(hdmi_video_o[4]),
        .O(io_hdmio_video[4]),
        .T(1'b0));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFT #(
    .IOSTANDARD("DEFAULT")) 
    \IO1[5].OBUFT_hdmio_video 
       (.I(hdmi_video_o[5]),
        .O(io_hdmio_video[5]),
        .T(1'b0));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFT #(
    .IOSTANDARD("DEFAULT")) 
    \IO1[6].OBUFT_hdmio_video 
       (.I(hdmi_video_o[6]),
        .O(io_hdmio_video[6]),
        .T(1'b0));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFT #(
    .IOSTANDARD("DEFAULT")) 
    \IO1[7].OBUFT_hdmio_video 
       (.I(hdmi_video_o[7]),
        .O(io_hdmio_video[7]),
        .T(1'b0));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFT #(
    .IOSTANDARD("DEFAULT")) 
    \IO1[8].OBUFT_hdmio_video 
       (.I(hdmi_video_o[8]),
        .O(io_hdmio_video[8]),
        .T(1'b0));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFT #(
    .IOSTANDARD("DEFAULT")) 
    \IO1[9].OBUFT_hdmio_video 
       (.I(hdmi_video_o[9]),
        .O(io_hdmio_video[9]),
        .T(1'b0));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFT #(
    .IOSTANDARD("DEFAULT")) 
    OBUFT_hdmio_clk
       (.I(hdmi_clk_o),
        .O(io_hdmio_clk),
        .T(hdmi_clk_t));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFT #(
    .IOSTANDARD("DEFAULT")) 
    OBUFT_hdmio_de
       (.I(hdmi_de_o),
        .O(io_hdmio_de),
        .T(1'b0));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFT #(
    .IOSTANDARD("DEFAULT")) 
    OBUFT_hdmio_hsync
       (.I(hdmi_hsync_o),
        .O(io_hdmio_hsync),
        .T(1'b0));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFT #(
    .IOSTANDARD("DEFAULT")) 
    OBUFT_hdmio_spdif
       (.I(I),
        .O(io_hdmio_spdif),
        .T(1'b0));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFT #(
    .IOSTANDARD("DEFAULT")) 
    OBUFT_hdmio_vsync
       (.I(hdmi_vsync_o),
        .O(io_hdmio_vsync),
        .T(1'b0));
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("ASYNC")) 
    \V6_GEN.ODDR_hdmi_clk_o 
       (.C(clk),
        .CE(1'b1),
        .D1(1'b0),
        .D2(1'b1),
        .Q(hdmi_clk_o),
        .R(\NLW_V6_GEN.ODDR_hdmi_clk_o_R_UNCONNECTED ),
        .S(\NLW_V6_GEN.ODDR_hdmi_clk_o_S_UNCONNECTED ));
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("ASYNC")) 
    \V6_GEN.ODDR_hdmi_clk_t 
       (.C(clk),
        .CE(1'b1),
        .D1(1'b0),
        .D2(1'b0),
        .Q(hdmi_clk_t),
        .R(\NLW_V6_GEN.ODDR_hdmi_clk_t_R_UNCONNECTED ),
        .S(\NLW_V6_GEN.ODDR_hdmi_clk_t_S_UNCONNECTED ));
  FDRE \VIDEO_PORTS_16BIT_GEN.de_r_reg 
       (.C(clk),
        .CE(1'b1),
        .D(video_de),
        .Q(de_r),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.hsync_r_reg 
       (.C(clk),
        .CE(1'b1),
        .D(video_hsync),
        .Q(hsync_r),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_r_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(video_data[0]),
        .Q(video_r[0]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_r_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(video_data[10]),
        .Q(video_r[10]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_r_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(video_data[11]),
        .Q(video_r[11]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_r_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(video_data[12]),
        .Q(video_r[12]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_r_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(video_data[13]),
        .Q(video_r[13]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_r_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(video_data[14]),
        .Q(video_r[14]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_r_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(video_data[15]),
        .Q(video_r[15]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_r_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(video_data[1]),
        .Q(video_r[1]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_r_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(video_data[2]),
        .Q(video_r[2]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_r_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(video_data[3]),
        .Q(video_r[3]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_r_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(video_data[4]),
        .Q(video_r[4]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_r_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(video_data[5]),
        .Q(video_r[5]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_r_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(video_data[6]),
        .Q(video_r[6]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_r_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(video_data[7]),
        .Q(video_r[7]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_r_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(video_data[8]),
        .Q(video_r[8]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_r_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(video_data[9]),
        .Q(video_r[9]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.vsync_r_reg 
       (.C(clk),
        .CE(1'b1),
        .D(video_vsync),
        .Q(vsync_r),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE hdmi_de_o_reg
       (.C(clk),
        .CE(1'b1),
        .D(de_r),
        .Q(hdmi_de_o),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE hdmi_hsync_o_reg
       (.C(clk),
        .CE(1'b1),
        .D(hsync_r),
        .Q(hdmi_hsync_o),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE hdmi_spdif_o_reg
       (.C(clk),
        .CE(1'b1),
        .D(audio_spdif),
        .Q(I),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE \hdmi_video_o_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(video_r[0]),
        .Q(hdmi_video_o[0]),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE \hdmi_video_o_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(video_r[10]),
        .Q(hdmi_video_o[10]),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE \hdmi_video_o_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(video_r[11]),
        .Q(hdmi_video_o[11]),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE \hdmi_video_o_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(video_r[12]),
        .Q(hdmi_video_o[12]),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE \hdmi_video_o_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(video_r[13]),
        .Q(hdmi_video_o[13]),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE \hdmi_video_o_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(video_r[14]),
        .Q(hdmi_video_o[14]),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE \hdmi_video_o_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(video_r[15]),
        .Q(hdmi_video_o[15]),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE \hdmi_video_o_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(video_r[1]),
        .Q(hdmi_video_o[1]),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE \hdmi_video_o_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(video_r[2]),
        .Q(hdmi_video_o[2]),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE \hdmi_video_o_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(video_r[3]),
        .Q(hdmi_video_o[3]),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE \hdmi_video_o_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(video_r[4]),
        .Q(hdmi_video_o[4]),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE \hdmi_video_o_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(video_r[5]),
        .Q(hdmi_video_o[5]),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE \hdmi_video_o_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(video_r[6]),
        .Q(hdmi_video_o[6]),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE \hdmi_video_o_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(video_r[7]),
        .Q(hdmi_video_o[7]),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE \hdmi_video_o_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(video_r[8]),
        .Q(hdmi_video_o[8]),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE \hdmi_video_o_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(video_r[9]),
        .Q(hdmi_video_o[9]),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE hdmi_vsync_o_reg
       (.C(clk),
        .CE(1'b1),
        .D(vsync_r),
        .Q(hdmi_vsync_o),
        .R(1'b0));
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
