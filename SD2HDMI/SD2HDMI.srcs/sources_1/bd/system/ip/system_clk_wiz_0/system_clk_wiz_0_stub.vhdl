-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Mon May 16 22:10:39 2022
-- Host        : MS-QMGTGLWCUXSR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/ZYNQ_demo/test/SD2HDMI/SD2HDMI/SD2HDMI.srcs/sources_1/bd/system/ip/system_clk_wiz_0/system_clk_wiz_0_stub.vhdl
-- Design      : system_clk_wiz_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_clk_wiz_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end system_clk_wiz_0;

architecture stub of system_clk_wiz_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,locked,clk_in1";
begin
end;
