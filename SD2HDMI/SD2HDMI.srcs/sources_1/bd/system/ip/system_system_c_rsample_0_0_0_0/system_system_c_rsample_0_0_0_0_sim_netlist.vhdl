-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Mon May 16 22:10:39 2022
-- Host        : MS-QMGTGLWCUXSR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/ZYNQ_demo/test/SD2HDMI/SD2HDMI/SD2HDMI.srcs/sources_1/bd/system/ip/system_system_c_rsample_0_0_0_0/system_system_c_rsample_0_0_0_0_sim_netlist.vhdl
-- Design      : system_system_c_rsample_0_0_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_system_c_rsample_0_0_0_0_c_rsample is
  port (
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_video_tready : in STD_LOGIC;
    s_axis_video_tvalid : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_system_c_rsample_0_0_0_0_c_rsample : entity is "c_rsample";
end system_system_c_rsample_0_0_0_0_c_rsample;

architecture STRUCTURE of system_system_c_rsample_0_0_0_0_c_rsample is
  signal toggle : STD_LOGIC;
  signal toggle_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axis_video_tdata[10]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_video_tdata[11]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_video_tdata[12]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_video_tdata[13]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_video_tdata[14]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_video_tdata[15]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_video_tdata[8]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_video_tdata[9]_INST_0\ : label is "soft_lutpair0";
begin
\m_axis_video_tdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_video_tdata(10),
      I1 => toggle,
      I2 => s_axis_video_tdata(2),
      O => m_axis_video_tdata(2)
    );
\m_axis_video_tdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_video_tdata(11),
      I1 => toggle,
      I2 => s_axis_video_tdata(3),
      O => m_axis_video_tdata(3)
    );
\m_axis_video_tdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_video_tdata(12),
      I1 => toggle,
      I2 => s_axis_video_tdata(4),
      O => m_axis_video_tdata(4)
    );
\m_axis_video_tdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_video_tdata(13),
      I1 => toggle,
      I2 => s_axis_video_tdata(5),
      O => m_axis_video_tdata(5)
    );
\m_axis_video_tdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_video_tdata(14),
      I1 => toggle,
      I2 => s_axis_video_tdata(6),
      O => m_axis_video_tdata(6)
    );
\m_axis_video_tdata[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_video_tdata(15),
      I1 => toggle,
      I2 => s_axis_video_tdata(7),
      O => m_axis_video_tdata(7)
    );
\m_axis_video_tdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_video_tdata(8),
      I1 => toggle,
      I2 => s_axis_video_tdata(0),
      O => m_axis_video_tdata(0)
    );
\m_axis_video_tdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_video_tdata(9),
      I1 => toggle,
      I2 => s_axis_video_tdata(1),
      O => m_axis_video_tdata(1)
    );
toggle_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => m_axis_video_tready,
      I1 => s_axis_video_tvalid,
      I2 => toggle,
      O => toggle_i_1_n_0
    );
toggle_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => toggle_i_1_n_0,
      Q => toggle,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_system_c_rsample_0_0_0_0_system_c_rsample_0_0 is
  port (
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_video_tready : in STD_LOGIC;
    s_axis_video_tvalid : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_system_c_rsample_0_0_0_0_system_c_rsample_0_0 : entity is "system_c_rsample_0_0";
end system_system_c_rsample_0_0_0_0_system_c_rsample_0_0;

architecture STRUCTURE of system_system_c_rsample_0_0_0_0_system_c_rsample_0_0 is
begin
inst: entity work.system_system_c_rsample_0_0_0_0_c_rsample
     port map (
      aclk => aclk,
      m_axis_video_tdata(7 downto 0) => m_axis_video_tdata(7 downto 0),
      m_axis_video_tready => m_axis_video_tready,
      s_axis_video_tdata(15 downto 0) => s_axis_video_tdata(15 downto 0),
      s_axis_video_tvalid => s_axis_video_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_system_c_rsample_0_0_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_system_c_rsample_0_0_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_system_c_rsample_0_0_0_0 : entity is "system_system_c_rsample_0_0_0_0,system_c_rsample_0_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_system_c_rsample_0_0_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_system_c_rsample_0_0_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_system_c_rsample_0_0_0_0 : entity is "system_c_rsample_0_0,Vivado 2019.1";
end system_system_c_rsample_0_0_0_0;

architecture STRUCTURE of system_system_c_rsample_0_0_0_0 is
  signal \^m_axis_video_tdata\ : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \^m_axis_video_tready\ : STD_LOGIC;
  signal \^s_axis_video_tdata\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^s_axis_video_tlast\ : STD_LOGIC;
  signal \^s_axis_video_tuser\ : STD_LOGIC;
  signal \^s_axis_video_tvalid\ : STD_LOGIC;
  attribute X_CORE_INFO of inst : label is "c_rsample,Vivado 2019.1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis_video:s_axis_video, ASSOCIATED_RESET aresetn, FREQ_HZ 148500000, PHASE 0.0, INSERT_VIP 0, CLK_DOMAIN /clk_wiz_clk_out1";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_video_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis_video TLAST";
  attribute X_INTERFACE_INFO of m_axis_video_tready : signal is "xilinx.com:interface:axis:1.0 m_axis_video TREADY";
  attribute X_INTERFACE_INFO of m_axis_video_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis_video TUSER";
  attribute X_INTERFACE_INFO of m_axis_video_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_video TVALID";
  attribute X_INTERFACE_PARAMETER of m_axis_video_tvalid : signal is "XIL_INTERFACENAME m_axis_video, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 148500000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0, CLK_DOMAIN /clk_wiz_clk_out1";
  attribute X_INTERFACE_INFO of s_axis_video_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis_video TLAST";
  attribute X_INTERFACE_INFO of s_axis_video_tready : signal is "xilinx.com:interface:axis:1.0 s_axis_video TREADY";
  attribute X_INTERFACE_INFO of s_axis_video_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis_video TUSER";
  attribute X_INTERFACE_INFO of s_axis_video_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_video TVALID";
  attribute X_INTERFACE_PARAMETER of s_axis_video_tvalid : signal is "XIL_INTERFACENAME s_axis_video, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 148500000, PHASE 0.0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xilinx.com:video:Y_U_V_444:1.0} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value rows} size {attribs {resolve_type generated dependency active_rows format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_rows_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cols} size {attribs {resolve_type generated dependency active_cols format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_cols_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_Y {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value Y} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_U {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value U} enabled {attribs {resolve_type generated dependency video_comp1_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp1_offset format long minimum {} maximum {}} value 8} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_V {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value V} enabled {attribs {resolve_type generated dependency video_comp2_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp2_offset format long minimum {} maximum {}} value 16} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}} TDATA_WIDTH 24}, INSERT_VIP 0, CLK_DOMAIN /clk_wiz_clk_out1";
  attribute X_INTERFACE_INFO of m_axis_video_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_video TDATA";
  attribute X_INTERFACE_INFO of s_axis_video_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_video TDATA";
begin
  \^m_axis_video_tready\ <= m_axis_video_tready;
  \^s_axis_video_tdata\(23 downto 0) <= s_axis_video_tdata(23 downto 0);
  \^s_axis_video_tlast\ <= s_axis_video_tlast;
  \^s_axis_video_tuser\ <= s_axis_video_tuser;
  \^s_axis_video_tvalid\ <= s_axis_video_tvalid;
  m_axis_video_tdata(15 downto 8) <= \^m_axis_video_tdata\(15 downto 8);
  m_axis_video_tdata(7 downto 0) <= \^s_axis_video_tdata\(7 downto 0);
  m_axis_video_tlast <= \^s_axis_video_tlast\;
  m_axis_video_tuser <= \^s_axis_video_tuser\;
  m_axis_video_tvalid <= \^s_axis_video_tvalid\;
  s_axis_video_tready <= \^m_axis_video_tready\;
inst: entity work.system_system_c_rsample_0_0_0_0_system_c_rsample_0_0
     port map (
      aclk => aclk,
      m_axis_video_tdata(7 downto 0) => \^m_axis_video_tdata\(15 downto 8),
      m_axis_video_tready => \^m_axis_video_tready\,
      s_axis_video_tdata(15 downto 0) => \^s_axis_video_tdata\(23 downto 8),
      s_axis_video_tvalid => \^s_axis_video_tvalid\
    );
end STRUCTURE;
