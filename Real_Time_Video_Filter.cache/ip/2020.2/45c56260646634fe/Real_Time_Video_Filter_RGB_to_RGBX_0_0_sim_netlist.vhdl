-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon Apr  1 12:35:31 2024
-- Host        : DESKTOP-QVBDF8G running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Real_Time_Video_Filter_RGB_to_RGBX_0_0_sim_netlist.vhdl
-- Design      : Real_Time_Video_Filter_RGB_to_RGBX_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RGB_to_RGBX is
  port (
    RGBX_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RGB_in : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RGB_to_RGBX;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RGB_to_RGBX is
  signal \RGBX_out0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \RGBX_out0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \RGBX_out0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \RGBX_out0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \RGBX_out0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \RGBX_out0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \RGBX_out0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \RGBX_out0_carry__0_n_1\ : STD_LOGIC;
  signal \RGBX_out0_carry__0_n_2\ : STD_LOGIC;
  signal \RGBX_out0_carry__0_n_3\ : STD_LOGIC;
  signal RGBX_out0_carry_i_2_n_0 : STD_LOGIC;
  signal RGBX_out0_carry_i_3_n_0 : STD_LOGIC;
  signal RGBX_out0_carry_i_4_n_0 : STD_LOGIC;
  signal RGBX_out0_carry_i_5_n_0 : STD_LOGIC;
  signal RGBX_out0_carry_i_6_n_0 : STD_LOGIC;
  signal RGBX_out0_carry_n_0 : STD_LOGIC;
  signal RGBX_out0_carry_n_1 : STD_LOGIC;
  signal RGBX_out0_carry_n_2 : STD_LOGIC;
  signal RGBX_out0_carry_n_3 : STD_LOGIC;
  signal greenScaled : STD_LOGIC_VECTOR ( 6 downto 3 );
  signal NLW_RGBX_out0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_RGBX_out0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of RGBX_out0_carry : label is 35;
  attribute ADDER_THRESHOLD of \RGBX_out0_carry__0\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \RGBX_out0_carry__0_i_10\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of RGBX_out0_carry_i_5 : label is "soft_lutpair0";
begin
RGBX_out0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => RGBX_out0_carry_n_0,
      CO(2) => RGBX_out0_carry_n_1,
      CO(1) => RGBX_out0_carry_n_2,
      CO(0) => RGBX_out0_carry_n_3,
      CYINIT => '0',
      DI(3) => greenScaled(3),
      DI(2 downto 1) => RGB_in(5 downto 4),
      DI(0) => '0',
      O(3 downto 0) => NLW_RGBX_out0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => RGBX_out0_carry_i_2_n_0,
      S(2) => RGBX_out0_carry_i_3_n_0,
      S(1) => RGBX_out0_carry_i_4_n_0,
      S(0) => RGB_in(8)
    );
\RGBX_out0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => RGBX_out0_carry_n_0,
      CO(3) => \NLW_RGBX_out0_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \RGBX_out0_carry__0_n_1\,
      CO(1) => \RGBX_out0_carry__0_n_2\,
      CO(0) => \RGBX_out0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => greenScaled(6 downto 4),
      O(3 downto 0) => RGBX_out(3 downto 0),
      S(3) => \RGBX_out0_carry__0_i_4_n_0\,
      S(2) => \RGBX_out0_carry__0_i_5_n_0\,
      S(1) => \RGBX_out0_carry__0_i_6_n_0\,
      S(0) => \RGBX_out0_carry__0_i_7_n_0\
    );
\RGBX_out0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5780"
    )
        port map (
      I0 => RGB_in(6),
      I1 => RGB_in(4),
      I2 => RGB_in(5),
      I3 => RGB_in(7),
      O => greenScaled(6)
    );
\RGBX_out0_carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1878"
    )
        port map (
      I0 => RGB_in(11),
      I1 => RGB_in(9),
      I2 => RGB_in(10),
      I3 => RGB_in(8),
      O => \RGBX_out0_carry__0_i_10_n_0\
    );
\RGBX_out0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1788"
    )
        port map (
      I0 => RGB_in(7),
      I1 => RGB_in(5),
      I2 => RGB_in(4),
      I3 => RGB_in(6),
      O => greenScaled(5)
    );
\RGBX_out0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => RGB_in(4),
      I1 => RGB_in(6),
      I2 => RGB_in(7),
      I3 => RGB_in(5),
      O => greenScaled(4)
    );
\RGBX_out0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A800"
    )
        port map (
      I0 => RGB_in(6),
      I1 => RGB_in(4),
      I2 => RGB_in(5),
      I3 => RGB_in(7),
      O => \RGBX_out0_carry__0_i_4_n_0\
    );
\RGBX_out0_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66566A666A66AA6A"
    )
        port map (
      I0 => greenScaled(6),
      I1 => RGB_in(11),
      I2 => RGB_in(3),
      I3 => \RGBX_out0_carry__0_i_8_n_0\,
      I4 => \RGBX_out0_carry__0_i_9_n_0\,
      I5 => RGB_in(10),
      O => \RGBX_out0_carry__0_i_5_n_0\
    );
\RGBX_out0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A96A95A956956A56"
    )
        port map (
      I0 => greenScaled(5),
      I1 => RGB_in(10),
      I2 => \RGBX_out0_carry__0_i_9_n_0\,
      I3 => \RGBX_out0_carry__0_i_8_n_0\,
      I4 => RGB_in(3),
      I5 => RGB_in(11),
      O => \RGBX_out0_carry__0_i_6_n_0\
    );
\RGBX_out0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => greenScaled(4),
      I1 => RGB_in(3),
      I2 => \RGBX_out0_carry__0_i_10_n_0\,
      I3 => \RGBX_out0_carry__0_i_8_n_0\,
      O => \RGBX_out0_carry__0_i_7_n_0\
    );
\RGBX_out0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2BBBB222B2222BBB"
    )
        port map (
      I0 => RGBX_out0_carry_i_6_n_0,
      I1 => RGB_in(2),
      I2 => RGB_in(10),
      I3 => RGB_in(8),
      I4 => RGB_in(11),
      I5 => RGB_in(9),
      O => \RGBX_out0_carry__0_i_8_n_0\
    );
\RGBX_out0_carry__0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F880"
    )
        port map (
      I0 => RGB_in(8),
      I1 => RGB_in(10),
      I2 => RGB_in(9),
      I3 => RGB_in(11),
      O => \RGBX_out0_carry__0_i_9_n_0\
    );
RGBX_out0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => RGB_in(6),
      I1 => RGB_in(4),
      O => greenScaled(3)
    );
RGBX_out0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => greenScaled(3),
      I1 => RGB_in(2),
      I2 => RGBX_out0_carry_i_5_n_0,
      I3 => RGBX_out0_carry_i_6_n_0,
      O => RGBX_out0_carry_i_2_n_0
    );
RGBX_out0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666699969999666"
    )
        port map (
      I0 => RGB_in(5),
      I1 => RGB_in(1),
      I2 => RGB_in(0),
      I3 => RGB_in(9),
      I4 => RGB_in(8),
      I5 => RGB_in(10),
      O => RGBX_out0_carry_i_3_n_0
    );
RGBX_out0_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => RGB_in(4),
      I1 => RGB_in(0),
      I2 => RGB_in(9),
      O => RGBX_out0_carry_i_4_n_0
    );
RGBX_out0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => RGB_in(10),
      I1 => RGB_in(8),
      I2 => RGB_in(11),
      I3 => RGB_in(9),
      O => RGBX_out0_carry_i_5_n_0
    );
RGBX_out0_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09999FFF"
    )
        port map (
      I0 => RGB_in(8),
      I1 => RGB_in(10),
      I2 => RGB_in(9),
      I3 => RGB_in(0),
      I4 => RGB_in(1),
      O => RGBX_out0_carry_i_6_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    RGB_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    clk : in STD_LOGIC;
    address_in : in STD_LOGIC_VECTOR ( 18 downto 0 );
    address_out : out STD_LOGIC_VECTOR ( 18 downto 0 );
    writeEnable_in : in STD_LOGIC;
    RGBX_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    writeEnable_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Real_Time_Video_Filter_RGB_to_RGBX_0_0,RGB_to_RGBX,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "RGB_to_RGBX,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^rgbx_out\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^rgb_in\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^address_in\ : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \^writeenable_in\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Real_Time_Video_Filter_ov7670_capture_0_0_aclk, INSERT_VIP 0";
begin
  RGBX_out(15 downto 4) <= \^rgb_in\(11 downto 0);
  RGBX_out(3 downto 0) <= \^rgbx_out\(3 downto 0);
  \^address_in\(18 downto 0) <= address_in(18 downto 0);
  \^rgb_in\(11 downto 0) <= RGB_in(11 downto 0);
  \^writeenable_in\ <= writeEnable_in;
  address_out(18 downto 0) <= \^address_in\(18 downto 0);
  writeEnable_out <= \^writeenable_in\;
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RGB_to_RGBX
     port map (
      RGBX_out(3 downto 0) => \^rgbx_out\(3 downto 0),
      RGB_in(11 downto 0) => \^rgb_in\(11 downto 0)
    );
end STRUCTURE;
