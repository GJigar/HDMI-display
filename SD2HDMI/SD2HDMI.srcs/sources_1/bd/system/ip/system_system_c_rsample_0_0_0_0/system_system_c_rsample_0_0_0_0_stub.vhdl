-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Mon May 16 22:10:39 2022
-- Host        : MS-QMGTGLWCUXSR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/ZYNQ_demo/test/SD2HDMI/SD2HDMI/SD2HDMI.srcs/sources_1/bd/system/ip/system_system_c_rsample_0_0_0_0/system_system_c_rsample_0_0_0_0_stub.vhdl
-- Design      : system_system_c_rsample_0_0_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_system_c_rsample_0_0_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_video_tlast : in STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    s_axis_video_tuser : in STD_LOGIC;
    s_axis_video_tvalid : in STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_video_tlast : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC;
    m_axis_video_tvalid : out STD_LOGIC
  );

end system_system_c_rsample_0_0_0_0;

architecture stub of system_system_c_rsample_0_0_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axis_video_tdata[23:0],s_axis_video_tlast,s_axis_video_tready,s_axis_video_tuser,s_axis_video_tvalid,m_axis_video_tdata[15:0],m_axis_video_tlast,m_axis_video_tready,m_axis_video_tuser,m_axis_video_tvalid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "system_c_rsample_0_0,Vivado 2019.1";
begin
end;
