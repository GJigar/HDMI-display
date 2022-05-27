-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: avnet:zedboard:zed_hdmi_out:2.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY work;
USE work.zed_hdmi_out;

ENTITY system_zed_hdmi_out_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    audio_spdif : IN STD_LOGIC;
    video_vsync : IN STD_LOGIC;
    video_hsync : IN STD_LOGIC;
    video_de : IN STD_LOGIC;
    video_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    io_hdmio_spdif : OUT STD_LOGIC;
    io_hdmio_video : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    io_hdmio_vsync : OUT STD_LOGIC;
    io_hdmio_hsync : OUT STD_LOGIC;
    io_hdmio_de : OUT STD_LOGIC;
    io_hdmio_clk : OUT STD_LOGIC
  );
END system_zed_hdmi_out_0_0;

ARCHITECTURE system_zed_hdmi_out_0_0_arch OF system_zed_hdmi_out_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF system_zed_hdmi_out_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT zed_hdmi_out IS
    GENERIC (
      C_DATA_WIDTH : INTEGER; -- Video Data Width
      C_FAMILY : STRING
    );
    PORT (
      clk : IN STD_LOGIC;
      reset : IN STD_LOGIC;
      audio_spdif : IN STD_LOGIC;
      video_vsync : IN STD_LOGIC;
      video_hsync : IN STD_LOGIC;
      video_de : IN STD_LOGIC;
      video_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      io_hdmio_spdif : OUT STD_LOGIC;
      io_hdmio_video : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      io_hdmio_vsync : OUT STD_LOGIC;
      io_hdmio_hsync : OUT STD_LOGIC;
      io_hdmio_de : OUT STD_LOGIC;
      io_hdmio_clk : OUT STD_LOGIC
    );
  END COMPONENT zed_hdmi_out;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF system_zed_hdmi_out_0_0_arch: ARCHITECTURE IS "zed_hdmi_out,Vivado 2019.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF system_zed_hdmi_out_0_0_arch : ARCHITECTURE IS "system_zed_hdmi_out_0_0,zed_hdmi_out,{}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF io_hdmio_clk: SIGNAL IS "avnet.com:interface:avnet_hdmi:1.0 IO_HDMIO CLK";
  ATTRIBUTE X_INTERFACE_INFO OF io_hdmio_de: SIGNAL IS "avnet.com:interface:avnet_hdmi:1.0 IO_HDMIO DE";
  ATTRIBUTE X_INTERFACE_INFO OF io_hdmio_hsync: SIGNAL IS "avnet.com:interface:avnet_hdmi:1.0 IO_HDMIO HSYNC";
  ATTRIBUTE X_INTERFACE_INFO OF io_hdmio_vsync: SIGNAL IS "avnet.com:interface:avnet_hdmi:1.0 IO_HDMIO VSYNC";
  ATTRIBUTE X_INTERFACE_INFO OF io_hdmio_video: SIGNAL IS "avnet.com:interface:avnet_hdmi:1.0 IO_HDMIO DATA";
  ATTRIBUTE X_INTERFACE_INFO OF io_hdmio_spdif: SIGNAL IS "avnet.com:interface:avnet_hdmi:1.0 IO_HDMIO SPDIF";
  ATTRIBUTE X_INTERFACE_INFO OF video_data: SIGNAL IS "xilinx.com:interface:vid_io:1.0 VID_IO_IN DATA";
  ATTRIBUTE X_INTERFACE_INFO OF video_de: SIGNAL IS "xilinx.com:interface:vid_io:1.0 VID_IO_IN ACTIVE_VIDEO";
  ATTRIBUTE X_INTERFACE_INFO OF video_hsync: SIGNAL IS "xilinx.com:interface:vid_io:1.0 VID_IO_IN HSYNC";
  ATTRIBUTE X_INTERFACE_INFO OF video_vsync: SIGNAL IS "xilinx.com:interface:vid_io:1.0 VID_IO_IN VSYNC";
BEGIN
  U0 : zed_hdmi_out
    GENERIC MAP (
      C_DATA_WIDTH => 16,
      C_FAMILY => "zynq"
    )
    PORT MAP (
      clk => clk,
      reset => reset,
      audio_spdif => audio_spdif,
      video_vsync => video_vsync,
      video_hsync => video_hsync,
      video_de => video_de,
      video_data => video_data,
      io_hdmio_spdif => io_hdmio_spdif,
      io_hdmio_video => io_hdmio_video,
      io_hdmio_vsync => io_hdmio_vsync,
      io_hdmio_hsync => io_hdmio_hsync,
      io_hdmio_de => io_hdmio_de,
      io_hdmio_clk => io_hdmio_clk
    );
END system_zed_hdmi_out_0_0_arch;
