-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Mon May 16 22:10:39 2022
-- Host        : MS-QMGTGLWCUXSR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/ZYNQ_demo/test/SD2HDMI/SD2HDMI/SD2HDMI.srcs/sources_1/bd/system/ip/system_zed_hdmi_out_0_0/system_zed_hdmi_out_0_0_sim_netlist.vhdl
-- Design      : system_zed_hdmi_out_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_zed_hdmi_out_0_0_zed_hdmi_out is
  port (
    io_hdmio_spdif : out STD_LOGIC;
    io_hdmio_vsync : out STD_LOGIC;
    io_hdmio_hsync : out STD_LOGIC;
    io_hdmio_de : out STD_LOGIC;
    io_hdmio_clk : out STD_LOGIC;
    io_hdmio_video : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    audio_spdif : in STD_LOGIC;
    video_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    video_vsync : in STD_LOGIC;
    video_hsync : in STD_LOGIC;
    video_de : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_zed_hdmi_out_0_0_zed_hdmi_out : entity is "zed_hdmi_out";
end system_zed_hdmi_out_0_0_zed_hdmi_out;

architecture STRUCTURE of system_zed_hdmi_out_0_0_zed_hdmi_out is
  signal I : STD_LOGIC;
  signal de_r : STD_LOGIC;
  signal hdmi_clk_o : STD_LOGIC;
  signal hdmi_clk_t : STD_LOGIC;
  signal hdmi_de_o : STD_LOGIC;
  signal hdmi_hsync_o : STD_LOGIC;
  signal hdmi_video_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal hdmi_vsync_o : STD_LOGIC;
  signal hsync_r : STD_LOGIC;
  signal video_r : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal vsync_r : STD_LOGIC;
  signal \NLW_V6_GEN.ODDR_hdmi_clk_o_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_V6_GEN.ODDR_hdmi_clk_o_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_V6_GEN.ODDR_hdmi_clk_t_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_V6_GEN.ODDR_hdmi_clk_t_S_UNCONNECTED\ : STD_LOGIC;
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of \IO1[0].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type : string;
  attribute box_type of \IO1[0].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[10].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[10].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[11].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[11].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[12].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[12].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[13].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[13].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[14].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[14].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[15].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[15].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[1].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[1].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[2].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[2].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[3].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[3].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[4].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[4].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[5].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[5].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[6].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[6].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[7].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[7].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[8].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[8].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \IO1[9].OBUFT_hdmio_video\ : label is "DONT_CARE";
  attribute box_type of \IO1[9].OBUFT_hdmio_video\ : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFT_hdmio_clk : label is "DONT_CARE";
  attribute box_type of OBUFT_hdmio_clk : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFT_hdmio_de : label is "DONT_CARE";
  attribute box_type of OBUFT_hdmio_de : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFT_hdmio_hsync : label is "DONT_CARE";
  attribute box_type of OBUFT_hdmio_hsync : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFT_hdmio_spdif : label is "DONT_CARE";
  attribute box_type of OBUFT_hdmio_spdif : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFT_hdmio_vsync : label is "DONT_CARE";
  attribute box_type of OBUFT_hdmio_vsync : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \V6_GEN.ODDR_hdmi_clk_o\ : label is "MLO";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of \V6_GEN.ODDR_hdmi_clk_o\ : label is "TRUE";
  attribute box_type of \V6_GEN.ODDR_hdmi_clk_o\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \V6_GEN.ODDR_hdmi_clk_t\ : label is "MLO";
  attribute \__SRVAL\ of \V6_GEN.ODDR_hdmi_clk_t\ : label is "TRUE";
  attribute box_type of \V6_GEN.ODDR_hdmi_clk_t\ : label is "PRIMITIVE";
  attribute IOB : string;
  attribute IOB of hdmi_de_o_reg : label is "TRUE";
  attribute IOB of hdmi_hsync_o_reg : label is "TRUE";
  attribute IOB of hdmi_spdif_o_reg : label is "TRUE";
  attribute IOB of \hdmi_video_o_reg[0]\ : label is "TRUE";
  attribute IOB of \hdmi_video_o_reg[10]\ : label is "TRUE";
  attribute IOB of \hdmi_video_o_reg[11]\ : label is "TRUE";
  attribute IOB of \hdmi_video_o_reg[12]\ : label is "TRUE";
  attribute IOB of \hdmi_video_o_reg[13]\ : label is "TRUE";
  attribute IOB of \hdmi_video_o_reg[14]\ : label is "TRUE";
  attribute IOB of \hdmi_video_o_reg[15]\ : label is "TRUE";
  attribute IOB of \hdmi_video_o_reg[1]\ : label is "TRUE";
  attribute IOB of \hdmi_video_o_reg[2]\ : label is "TRUE";
  attribute IOB of \hdmi_video_o_reg[3]\ : label is "TRUE";
  attribute IOB of \hdmi_video_o_reg[4]\ : label is "TRUE";
  attribute IOB of \hdmi_video_o_reg[5]\ : label is "TRUE";
  attribute IOB of \hdmi_video_o_reg[6]\ : label is "TRUE";
  attribute IOB of \hdmi_video_o_reg[7]\ : label is "TRUE";
  attribute IOB of \hdmi_video_o_reg[8]\ : label is "TRUE";
  attribute IOB of \hdmi_video_o_reg[9]\ : label is "TRUE";
  attribute IOB of hdmi_vsync_o_reg : label is "TRUE";
begin
\IO1[0].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmi_video_o(0),
      O => io_hdmio_video(0),
      T => '0'
    );
\IO1[10].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmi_video_o(10),
      O => io_hdmio_video(10),
      T => '0'
    );
\IO1[11].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmi_video_o(11),
      O => io_hdmio_video(11),
      T => '0'
    );
\IO1[12].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmi_video_o(12),
      O => io_hdmio_video(12),
      T => '0'
    );
\IO1[13].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmi_video_o(13),
      O => io_hdmio_video(13),
      T => '0'
    );
\IO1[14].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmi_video_o(14),
      O => io_hdmio_video(14),
      T => '0'
    );
\IO1[15].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmi_video_o(15),
      O => io_hdmio_video(15),
      T => '0'
    );
\IO1[1].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmi_video_o(1),
      O => io_hdmio_video(1),
      T => '0'
    );
\IO1[2].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmi_video_o(2),
      O => io_hdmio_video(2),
      T => '0'
    );
\IO1[3].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmi_video_o(3),
      O => io_hdmio_video(3),
      T => '0'
    );
\IO1[4].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmi_video_o(4),
      O => io_hdmio_video(4),
      T => '0'
    );
\IO1[5].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmi_video_o(5),
      O => io_hdmio_video(5),
      T => '0'
    );
\IO1[6].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmi_video_o(6),
      O => io_hdmio_video(6),
      T => '0'
    );
\IO1[7].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmi_video_o(7),
      O => io_hdmio_video(7),
      T => '0'
    );
\IO1[8].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmi_video_o(8),
      O => io_hdmio_video(8),
      T => '0'
    );
\IO1[9].OBUFT_hdmio_video\: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmi_video_o(9),
      O => io_hdmio_video(9),
      T => '0'
    );
OBUFT_hdmio_clk: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmi_clk_o,
      O => io_hdmio_clk,
      T => hdmi_clk_t
    );
OBUFT_hdmio_de: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmi_de_o,
      O => io_hdmio_de,
      T => '0'
    );
OBUFT_hdmio_hsync: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmi_hsync_o,
      O => io_hdmio_hsync,
      T => '0'
    );
OBUFT_hdmio_spdif: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => I,
      O => io_hdmio_spdif,
      T => '0'
    );
OBUFT_hdmio_vsync: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmi_vsync_o,
      O => io_hdmio_vsync,
      T => '0'
    );
\V6_GEN.ODDR_hdmi_clk_o\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "ASYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => '0',
      D2 => '1',
      Q => hdmi_clk_o,
      R => \NLW_V6_GEN.ODDR_hdmi_clk_o_R_UNCONNECTED\,
      S => \NLW_V6_GEN.ODDR_hdmi_clk_o_S_UNCONNECTED\
    );
\V6_GEN.ODDR_hdmi_clk_t\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "ASYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => '0',
      D2 => '0',
      Q => hdmi_clk_t,
      R => \NLW_V6_GEN.ODDR_hdmi_clk_t_R_UNCONNECTED\,
      S => \NLW_V6_GEN.ODDR_hdmi_clk_t_S_UNCONNECTED\
    );
\VIDEO_PORTS_16BIT_GEN.de_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_de,
      Q => de_r,
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.hsync_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_hsync,
      Q => hsync_r,
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(0),
      Q => video_r(0),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(10),
      Q => video_r(10),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(11),
      Q => video_r(11),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(12),
      Q => video_r(12),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(13),
      Q => video_r(13),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(14),
      Q => video_r(14),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(15),
      Q => video_r(15),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(1),
      Q => video_r(1),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(2),
      Q => video_r(2),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(3),
      Q => video_r(3),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(4),
      Q => video_r(4),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(5),
      Q => video_r(5),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(6),
      Q => video_r(6),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(7),
      Q => video_r(7),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(8),
      Q => video_r(8),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_data(9),
      Q => video_r(9),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.vsync_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_vsync,
      Q => vsync_r,
      R => '0'
    );
hdmi_de_o_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => de_r,
      Q => hdmi_de_o,
      R => '0'
    );
hdmi_hsync_o_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => hsync_r,
      Q => hdmi_hsync_o,
      R => '0'
    );
hdmi_spdif_o_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => audio_spdif,
      Q => I,
      R => '0'
    );
\hdmi_video_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(0),
      Q => hdmi_video_o(0),
      R => '0'
    );
\hdmi_video_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(10),
      Q => hdmi_video_o(10),
      R => '0'
    );
\hdmi_video_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(11),
      Q => hdmi_video_o(11),
      R => '0'
    );
\hdmi_video_o_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(12),
      Q => hdmi_video_o(12),
      R => '0'
    );
\hdmi_video_o_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(13),
      Q => hdmi_video_o(13),
      R => '0'
    );
\hdmi_video_o_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(14),
      Q => hdmi_video_o(14),
      R => '0'
    );
\hdmi_video_o_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(15),
      Q => hdmi_video_o(15),
      R => '0'
    );
\hdmi_video_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(1),
      Q => hdmi_video_o(1),
      R => '0'
    );
\hdmi_video_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(2),
      Q => hdmi_video_o(2),
      R => '0'
    );
\hdmi_video_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(3),
      Q => hdmi_video_o(3),
      R => '0'
    );
\hdmi_video_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(4),
      Q => hdmi_video_o(4),
      R => '0'
    );
\hdmi_video_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(5),
      Q => hdmi_video_o(5),
      R => '0'
    );
\hdmi_video_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(6),
      Q => hdmi_video_o(6),
      R => '0'
    );
\hdmi_video_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(7),
      Q => hdmi_video_o(7),
      R => '0'
    );
\hdmi_video_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(8),
      Q => hdmi_video_o(8),
      R => '0'
    );
\hdmi_video_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_r(9),
      Q => hdmi_video_o(9),
      R => '0'
    );
hdmi_vsync_o_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => vsync_r,
      Q => hdmi_vsync_o,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_zed_hdmi_out_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_zed_hdmi_out_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_zed_hdmi_out_0_0 : entity is "system_zed_hdmi_out_0_0,zed_hdmi_out,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_zed_hdmi_out_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of system_zed_hdmi_out_0_0 : entity is "zed_hdmi_out,Vivado 2019.1";
end system_zed_hdmi_out_0_0;

architecture STRUCTURE of system_zed_hdmi_out_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of io_hdmio_clk : signal is "avnet.com:interface:avnet_hdmi:1.0 IO_HDMIO CLK";
  attribute x_interface_info of io_hdmio_de : signal is "avnet.com:interface:avnet_hdmi:1.0 IO_HDMIO DE";
  attribute x_interface_info of io_hdmio_hsync : signal is "avnet.com:interface:avnet_hdmi:1.0 IO_HDMIO HSYNC";
  attribute x_interface_info of io_hdmio_spdif : signal is "avnet.com:interface:avnet_hdmi:1.0 IO_HDMIO SPDIF";
  attribute x_interface_info of io_hdmio_vsync : signal is "avnet.com:interface:avnet_hdmi:1.0 IO_HDMIO VSYNC";
  attribute x_interface_info of video_de : signal is "xilinx.com:interface:vid_io:1.0 VID_IO_IN ACTIVE_VIDEO";
  attribute x_interface_info of video_hsync : signal is "xilinx.com:interface:vid_io:1.0 VID_IO_IN HSYNC";
  attribute x_interface_info of video_vsync : signal is "xilinx.com:interface:vid_io:1.0 VID_IO_IN VSYNC";
  attribute x_interface_info of io_hdmio_video : signal is "avnet.com:interface:avnet_hdmi:1.0 IO_HDMIO DATA";
  attribute x_interface_info of video_data : signal is "xilinx.com:interface:vid_io:1.0 VID_IO_IN DATA";
begin
U0: entity work.system_zed_hdmi_out_0_0_zed_hdmi_out
     port map (
      audio_spdif => audio_spdif,
      clk => clk,
      io_hdmio_clk => io_hdmio_clk,
      io_hdmio_de => io_hdmio_de,
      io_hdmio_hsync => io_hdmio_hsync,
      io_hdmio_spdif => io_hdmio_spdif,
      io_hdmio_video(15 downto 0) => io_hdmio_video(15 downto 0),
      io_hdmio_vsync => io_hdmio_vsync,
      video_data(15 downto 0) => video_data(15 downto 0),
      video_de => video_de,
      video_hsync => video_hsync,
      video_vsync => video_vsync
    );
end STRUCTURE;
