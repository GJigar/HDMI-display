//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Sat May 21 16:22:55 2022
//Host        : MS-QMGTGLWCUXSR running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    hdmio_io_clk,
    hdmio_io_data,
    hdmio_io_de,
    hdmio_io_hsync,
    hdmio_io_spdif,
    hdmio_io_vsync,
    zed_hdmi_iic_scl_io,
    zed_hdmi_iic_sda_io);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output hdmio_io_clk;
  output [15:0]hdmio_io_data;
  output hdmio_io_de;
  output hdmio_io_hsync;
  output hdmio_io_spdif;
  output hdmio_io_vsync;
  inout zed_hdmi_iic_scl_io;
  inout zed_hdmi_iic_sda_io;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire hdmio_io_clk;
  wire [15:0]hdmio_io_data;
  wire hdmio_io_de;
  wire hdmio_io_hsync;
  wire hdmio_io_spdif;
  wire hdmio_io_vsync;
  wire zed_hdmi_iic_scl_i;
  wire zed_hdmi_iic_scl_io;
  wire zed_hdmi_iic_scl_o;
  wire zed_hdmi_iic_scl_t;
  wire zed_hdmi_iic_sda_i;
  wire zed_hdmi_iic_sda_io;
  wire zed_hdmi_iic_sda_o;
  wire zed_hdmi_iic_sda_t;

  system system_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .hdmio_io_clk(hdmio_io_clk),
        .hdmio_io_data(hdmio_io_data),
        .hdmio_io_de(hdmio_io_de),
        .hdmio_io_hsync(hdmio_io_hsync),
        .hdmio_io_spdif(hdmio_io_spdif),
        .hdmio_io_vsync(hdmio_io_vsync),
        .zed_hdmi_iic_scl_i(zed_hdmi_iic_scl_i),
        .zed_hdmi_iic_scl_o(zed_hdmi_iic_scl_o),
        .zed_hdmi_iic_scl_t(zed_hdmi_iic_scl_t),
        .zed_hdmi_iic_sda_i(zed_hdmi_iic_sda_i),
        .zed_hdmi_iic_sda_o(zed_hdmi_iic_sda_o),
        .zed_hdmi_iic_sda_t(zed_hdmi_iic_sda_t));
  IOBUF zed_hdmi_iic_scl_iobuf
       (.I(zed_hdmi_iic_scl_o),
        .IO(zed_hdmi_iic_scl_io),
        .O(zed_hdmi_iic_scl_i),
        .T(zed_hdmi_iic_scl_t));
  IOBUF zed_hdmi_iic_sda_iobuf
       (.I(zed_hdmi_iic_sda_o),
        .IO(zed_hdmi_iic_sda_io),
        .O(zed_hdmi_iic_sda_i),
        .T(zed_hdmi_iic_sda_t));
endmodule
