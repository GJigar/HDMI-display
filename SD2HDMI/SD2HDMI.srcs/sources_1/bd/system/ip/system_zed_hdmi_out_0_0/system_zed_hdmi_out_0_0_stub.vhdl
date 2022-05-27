-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Mon May 16 22:10:39 2022
-- Host        : MS-QMGTGLWCUXSR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/ZYNQ_demo/test/SD2HDMI/SD2HDMI/SD2HDMI.srcs/sources_1/bd/system/ip/system_zed_hdmi_out_0_0/system_zed_hdmi_out_0_0_stub.vhdl
-- Design      : system_zed_hdmi_out_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_zed_hdmi_out_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    audio_spdif : in STD_LOGIC;
    video_vsync : in STD_LOGIC;
    video_hsync : in STD_LOGIC;
    video_de : in STD_LOGIC;
    video_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    io_hdmio_spdif : out STD_LOGIC;
    io_hdmio_video : out STD_LOGIC_VECTOR ( 15 downto 0 );
    io_hdmio_vsync : out STD_LOGIC;
    io_hdmio_hsync : out STD_LOGIC;
    io_hdmio_de : out STD_LOGIC;
    io_hdmio_clk : out STD_LOGIC
  );

end system_zed_hdmi_out_0_0;

architecture stub of system_zed_hdmi_out_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,audio_spdif,video_vsync,video_hsync,video_de,video_data[15:0],io_hdmio_spdif,io_hdmio_video[15:0],io_hdmio_vsync,io_hdmio_hsync,io_hdmio_de,io_hdmio_clk";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "zed_hdmi_out,Vivado 2019.1";
begin
end;
