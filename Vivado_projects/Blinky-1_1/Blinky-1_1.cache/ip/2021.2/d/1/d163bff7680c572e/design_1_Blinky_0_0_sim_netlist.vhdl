-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Fri Mar 28 14:12:28 2025
-- Host        : BRJGSN325259 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Blinky_0_0_sim_netlist.vhdl
-- Design      : design_1_Blinky_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Blinky is
  port (
    blinky_o : out STD_LOGIC;
    sysclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Blinky;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Blinky is
  signal \^blinky_o\ : STD_LOGIC;
  signal blinky_reg_i_1_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal ctr_reg1 : STD_LOGIC;
  signal \ctr_reg1_carry__0_n_0\ : STD_LOGIC;
  signal \ctr_reg1_carry__0_n_1\ : STD_LOGIC;
  signal \ctr_reg1_carry__0_n_2\ : STD_LOGIC;
  signal \ctr_reg1_carry__0_n_3\ : STD_LOGIC;
  signal \ctr_reg1_carry__1_n_0\ : STD_LOGIC;
  signal \ctr_reg1_carry__1_n_1\ : STD_LOGIC;
  signal \ctr_reg1_carry__1_n_2\ : STD_LOGIC;
  signal \ctr_reg1_carry__1_n_3\ : STD_LOGIC;
  signal \ctr_reg1_carry__2_n_1\ : STD_LOGIC;
  signal \ctr_reg1_carry__2_n_2\ : STD_LOGIC;
  signal \ctr_reg1_carry__2_n_3\ : STD_LOGIC;
  signal \ctr_reg1_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \ctr_reg1_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \ctr_reg1_carry_i_1__2_n_0\ : STD_LOGIC;
  signal ctr_reg1_carry_i_1_n_0 : STD_LOGIC;
  signal \ctr_reg1_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \ctr_reg1_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \ctr_reg1_carry_i_2__2_n_0\ : STD_LOGIC;
  signal ctr_reg1_carry_i_2_n_0 : STD_LOGIC;
  signal \ctr_reg1_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \ctr_reg1_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \ctr_reg1_carry_i_3__2_n_0\ : STD_LOGIC;
  signal ctr_reg1_carry_i_3_n_0 : STD_LOGIC;
  signal \ctr_reg1_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \ctr_reg1_carry_i_4__1_n_0\ : STD_LOGIC;
  signal \ctr_reg1_carry_i_4__2_n_0\ : STD_LOGIC;
  signal ctr_reg1_carry_i_4_n_0 : STD_LOGIC;
  signal \ctr_reg1_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \ctr_reg1_carry_i_5__1_n_0\ : STD_LOGIC;
  signal \ctr_reg1_carry_i_5__2_n_0\ : STD_LOGIC;
  signal ctr_reg1_carry_i_5_n_0 : STD_LOGIC;
  signal \ctr_reg1_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \ctr_reg1_carry_i_6__1_n_0\ : STD_LOGIC;
  signal ctr_reg1_carry_i_6_n_0 : STD_LOGIC;
  signal \ctr_reg1_carry_i_7__0_n_0\ : STD_LOGIC;
  signal ctr_reg1_carry_i_7_n_0 : STD_LOGIC;
  signal \ctr_reg1_carry_i_8__0_n_0\ : STD_LOGIC;
  signal ctr_reg1_carry_i_8_n_0 : STD_LOGIC;
  signal ctr_reg1_carry_n_0 : STD_LOGIC;
  signal ctr_reg1_carry_n_1 : STD_LOGIC;
  signal ctr_reg1_carry_n_2 : STD_LOGIC;
  signal ctr_reg1_carry_n_3 : STD_LOGIC;
  signal \ctr_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal ctr_reg_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ctr_reg_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ctr_reg_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \ctr_reg_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \ctr_reg_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \ctr_reg_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \ctr_reg_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \ctr_reg_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \ctr_reg_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \ctr_reg_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \ctr_reg_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \ctr_reg_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \ctr_reg_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \ctr_reg_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \ctr_reg_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \ctr_reg_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \ctr_reg_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \ctr_reg_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \ctr_reg_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \ctr_reg_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \ctr_reg_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \ctr_reg_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \ctr_reg_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \ctr_reg_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \ctr_reg_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \ctr_reg_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \ctr_reg_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \ctr_reg_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \ctr_reg_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \ctr_reg_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \ctr_reg_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \ctr_reg_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \ctr_reg_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \ctr_reg_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \ctr_reg_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \ctr_reg_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \ctr_reg_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \ctr_reg_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \ctr_reg_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \ctr_reg_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \ctr_reg_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \ctr_reg_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \ctr_reg_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \ctr_reg_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \ctr_reg_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \ctr_reg_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \ctr_reg_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \ctr_reg_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \ctr_reg_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \ctr_reg_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \ctr_reg_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \ctr_reg_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \ctr_reg_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \ctr_reg_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \ctr_reg_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \ctr_reg_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \ctr_reg_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \ctr_reg_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \ctr_reg_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \ctr_reg_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \ctr_reg_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \ctr_reg_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \ctr_reg_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \ctr_reg_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal NLW_ctr_reg1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ctr_reg1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ctr_reg1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ctr_reg1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ctr_reg1_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ctr_reg1_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_ctr_reg_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \ctr_reg_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ctr_reg_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ctr_reg_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ctr_reg_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ctr_reg_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ctr_reg_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ctr_reg_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ctr_reg_reg[8]_i_1\ : label is 11;
begin
  blinky_o <= \^blinky_o\;
blinky_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => clear,
      I1 => \^blinky_o\,
      O => blinky_reg_i_1_n_0
    );
blinky_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => blinky_reg_i_1_n_0,
      Q => \^blinky_o\,
      R => '0'
    );
ctr_reg1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ctr_reg1_carry_n_0,
      CO(2) => ctr_reg1_carry_n_1,
      CO(1) => ctr_reg1_carry_n_2,
      CO(0) => ctr_reg1_carry_n_3,
      CYINIT => '0',
      DI(3) => \ctr_reg1_carry_i_1__2_n_0\,
      DI(2) => ctr_reg1_carry_i_2_n_0,
      DI(1) => \ctr_reg1_carry_i_3__1_n_0\,
      DI(0) => \ctr_reg1_carry_i_4__1_n_0\,
      O(3 downto 0) => NLW_ctr_reg1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \ctr_reg1_carry_i_5__2_n_0\,
      S(2) => ctr_reg1_carry_i_6_n_0,
      S(1) => ctr_reg1_carry_i_7_n_0,
      S(0) => ctr_reg1_carry_i_8_n_0
    );
\ctr_reg1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ctr_reg1_carry_n_0,
      CO(3) => \ctr_reg1_carry__0_n_0\,
      CO(2) => \ctr_reg1_carry__0_n_1\,
      CO(1) => \ctr_reg1_carry__0_n_2\,
      CO(0) => \ctr_reg1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \ctr_reg1_carry_i_1__0_n_0\,
      DI(2) => \ctr_reg1_carry_i_2__0_n_0\,
      DI(1 downto 0) => B"00",
      O(3 downto 0) => \NLW_ctr_reg1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => ctr_reg1_carry_i_3_n_0,
      S(2) => ctr_reg1_carry_i_4_n_0,
      S(1) => \ctr_reg1_carry_i_5__1_n_0\,
      S(0) => \ctr_reg1_carry_i_6__1_n_0\
    );
\ctr_reg1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ctr_reg1_carry__0_n_0\,
      CO(3) => \ctr_reg1_carry__1_n_0\,
      CO(2) => \ctr_reg1_carry__1_n_1\,
      CO(1) => \ctr_reg1_carry__1_n_2\,
      CO(0) => \ctr_reg1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \ctr_reg1_carry_i_1__1_n_0\,
      DI(2) => \ctr_reg1_carry_i_2__1_n_0\,
      DI(1) => \ctr_reg1_carry_i_3__0_n_0\,
      DI(0) => \ctr_reg1_carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_ctr_reg1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => ctr_reg1_carry_i_5_n_0,
      S(2) => \ctr_reg1_carry_i_6__0_n_0\,
      S(1) => \ctr_reg1_carry_i_7__0_n_0\,
      S(0) => \ctr_reg1_carry_i_8__0_n_0\
    );
\ctr_reg1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ctr_reg1_carry__1_n_0\,
      CO(3) => ctr_reg1,
      CO(2) => \ctr_reg1_carry__2_n_1\,
      CO(1) => \ctr_reg1_carry__2_n_2\,
      CO(0) => \ctr_reg1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => ctr_reg_reg(31),
      DI(2 downto 1) => B"00",
      DI(0) => ctr_reg1_carry_i_1_n_0,
      O(3 downto 0) => \NLW_ctr_reg1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \ctr_reg1_carry_i_2__2_n_0\,
      S(2) => \ctr_reg1_carry_i_3__2_n_0\,
      S(1) => \ctr_reg1_carry_i_4__2_n_0\,
      S(0) => \ctr_reg1_carry_i_5__0_n_0\
    );
\ctr_reg1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => ctr_reg1,
      CO(3 downto 0) => \NLW_ctr_reg1_carry__3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_ctr_reg1_carry__3_O_UNCONNECTED\(3 downto 1),
      O(0) => clear,
      S(3 downto 0) => B"0001"
    );
ctr_reg1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctr_reg_reg(25),
      O => ctr_reg1_carry_i_1_n_0
    );
\ctr_reg1_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ctr_reg_reg(14),
      I1 => ctr_reg_reg(15),
      O => \ctr_reg1_carry_i_1__0_n_0\
    );
\ctr_reg1_carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ctr_reg_reg(22),
      I1 => ctr_reg_reg(23),
      O => \ctr_reg1_carry_i_1__1_n_0\
    );
\ctr_reg1_carry_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctr_reg_reg(6),
      I1 => ctr_reg_reg(7),
      O => \ctr_reg1_carry_i_1__2_n_0\
    );
ctr_reg1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ctr_reg_reg(4),
      I1 => ctr_reg_reg(5),
      O => ctr_reg1_carry_i_2_n_0
    );
\ctr_reg1_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ctr_reg_reg(12),
      I1 => ctr_reg_reg(13),
      O => \ctr_reg1_carry_i_2__0_n_0\
    );
\ctr_reg1_carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ctr_reg_reg(20),
      I1 => ctr_reg_reg(21),
      O => \ctr_reg1_carry_i_2__1_n_0\
    );
\ctr_reg1_carry_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctr_reg_reg(30),
      I1 => ctr_reg_reg(31),
      O => \ctr_reg1_carry_i_2__2_n_0\
    );
ctr_reg1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ctr_reg_reg(14),
      I1 => ctr_reg_reg(15),
      O => ctr_reg1_carry_i_3_n_0
    );
\ctr_reg1_carry_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctr_reg_reg(19),
      O => \ctr_reg1_carry_i_3__0_n_0\
    );
\ctr_reg1_carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ctr_reg_reg(2),
      I1 => ctr_reg_reg(3),
      O => \ctr_reg1_carry_i_3__1_n_0\
    );
\ctr_reg1_carry_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctr_reg_reg(28),
      I1 => ctr_reg_reg(29),
      O => \ctr_reg1_carry_i_3__2_n_0\
    );
ctr_reg1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ctr_reg_reg(12),
      I1 => ctr_reg_reg(13),
      O => ctr_reg1_carry_i_4_n_0
    );
\ctr_reg1_carry_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctr_reg_reg(17),
      O => \ctr_reg1_carry_i_4__0_n_0\
    );
\ctr_reg1_carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ctr_reg_reg(0),
      I1 => ctr_reg_reg(1),
      O => \ctr_reg1_carry_i_4__1_n_0\
    );
\ctr_reg1_carry_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctr_reg_reg(26),
      I1 => ctr_reg_reg(27),
      O => \ctr_reg1_carry_i_4__2_n_0\
    );
ctr_reg1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ctr_reg_reg(22),
      I1 => ctr_reg_reg(23),
      O => ctr_reg1_carry_i_5_n_0
    );
\ctr_reg1_carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ctr_reg_reg(25),
      I1 => ctr_reg_reg(24),
      O => \ctr_reg1_carry_i_5__0_n_0\
    );
\ctr_reg1_carry_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctr_reg_reg(10),
      I1 => ctr_reg_reg(11),
      O => \ctr_reg1_carry_i_5__1_n_0\
    );
\ctr_reg1_carry_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ctr_reg_reg(6),
      I1 => ctr_reg_reg(7),
      O => \ctr_reg1_carry_i_5__2_n_0\
    );
ctr_reg1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ctr_reg_reg(4),
      I1 => ctr_reg_reg(5),
      O => ctr_reg1_carry_i_6_n_0
    );
\ctr_reg1_carry_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ctr_reg_reg(20),
      I1 => ctr_reg_reg(21),
      O => \ctr_reg1_carry_i_6__0_n_0\
    );
\ctr_reg1_carry_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctr_reg_reg(8),
      I1 => ctr_reg_reg(9),
      O => \ctr_reg1_carry_i_6__1_n_0\
    );
ctr_reg1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ctr_reg_reg(2),
      I1 => ctr_reg_reg(3),
      O => ctr_reg1_carry_i_7_n_0
    );
\ctr_reg1_carry_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ctr_reg_reg(19),
      I1 => ctr_reg_reg(18),
      O => \ctr_reg1_carry_i_7__0_n_0\
    );
ctr_reg1_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ctr_reg_reg(0),
      I1 => ctr_reg_reg(1),
      O => ctr_reg1_carry_i_8_n_0
    );
\ctr_reg1_carry_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ctr_reg_reg(17),
      I1 => ctr_reg_reg(16),
      O => \ctr_reg1_carry_i_8__0_n_0\
    );
\ctr_reg[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctr_reg_reg(0),
      O => \ctr_reg[0]_i_2_n_0\
    );
\ctr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[0]_i_1_n_7\,
      Q => ctr_reg_reg(0),
      R => clear
    );
\ctr_reg_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ctr_reg_reg[0]_i_1_n_0\,
      CO(2) => \ctr_reg_reg[0]_i_1_n_1\,
      CO(1) => \ctr_reg_reg[0]_i_1_n_2\,
      CO(0) => \ctr_reg_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \ctr_reg_reg[0]_i_1_n_4\,
      O(2) => \ctr_reg_reg[0]_i_1_n_5\,
      O(1) => \ctr_reg_reg[0]_i_1_n_6\,
      O(0) => \ctr_reg_reg[0]_i_1_n_7\,
      S(3 downto 1) => ctr_reg_reg(3 downto 1),
      S(0) => \ctr_reg[0]_i_2_n_0\
    );
\ctr_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[8]_i_1_n_5\,
      Q => ctr_reg_reg(10),
      R => clear
    );
\ctr_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[8]_i_1_n_4\,
      Q => ctr_reg_reg(11),
      R => clear
    );
\ctr_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[12]_i_1_n_7\,
      Q => ctr_reg_reg(12),
      R => clear
    );
\ctr_reg_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ctr_reg_reg[8]_i_1_n_0\,
      CO(3) => \ctr_reg_reg[12]_i_1_n_0\,
      CO(2) => \ctr_reg_reg[12]_i_1_n_1\,
      CO(1) => \ctr_reg_reg[12]_i_1_n_2\,
      CO(0) => \ctr_reg_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ctr_reg_reg[12]_i_1_n_4\,
      O(2) => \ctr_reg_reg[12]_i_1_n_5\,
      O(1) => \ctr_reg_reg[12]_i_1_n_6\,
      O(0) => \ctr_reg_reg[12]_i_1_n_7\,
      S(3 downto 0) => ctr_reg_reg(15 downto 12)
    );
\ctr_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[12]_i_1_n_6\,
      Q => ctr_reg_reg(13),
      R => clear
    );
\ctr_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[12]_i_1_n_5\,
      Q => ctr_reg_reg(14),
      R => clear
    );
\ctr_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[12]_i_1_n_4\,
      Q => ctr_reg_reg(15),
      R => clear
    );
\ctr_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[16]_i_1_n_7\,
      Q => ctr_reg_reg(16),
      R => clear
    );
\ctr_reg_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ctr_reg_reg[12]_i_1_n_0\,
      CO(3) => \ctr_reg_reg[16]_i_1_n_0\,
      CO(2) => \ctr_reg_reg[16]_i_1_n_1\,
      CO(1) => \ctr_reg_reg[16]_i_1_n_2\,
      CO(0) => \ctr_reg_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ctr_reg_reg[16]_i_1_n_4\,
      O(2) => \ctr_reg_reg[16]_i_1_n_5\,
      O(1) => \ctr_reg_reg[16]_i_1_n_6\,
      O(0) => \ctr_reg_reg[16]_i_1_n_7\,
      S(3 downto 0) => ctr_reg_reg(19 downto 16)
    );
\ctr_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[16]_i_1_n_6\,
      Q => ctr_reg_reg(17),
      R => clear
    );
\ctr_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[16]_i_1_n_5\,
      Q => ctr_reg_reg(18),
      R => clear
    );
\ctr_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[16]_i_1_n_4\,
      Q => ctr_reg_reg(19),
      R => clear
    );
\ctr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[0]_i_1_n_6\,
      Q => ctr_reg_reg(1),
      R => clear
    );
\ctr_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[20]_i_1_n_7\,
      Q => ctr_reg_reg(20),
      R => clear
    );
\ctr_reg_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ctr_reg_reg[16]_i_1_n_0\,
      CO(3) => \ctr_reg_reg[20]_i_1_n_0\,
      CO(2) => \ctr_reg_reg[20]_i_1_n_1\,
      CO(1) => \ctr_reg_reg[20]_i_1_n_2\,
      CO(0) => \ctr_reg_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ctr_reg_reg[20]_i_1_n_4\,
      O(2) => \ctr_reg_reg[20]_i_1_n_5\,
      O(1) => \ctr_reg_reg[20]_i_1_n_6\,
      O(0) => \ctr_reg_reg[20]_i_1_n_7\,
      S(3 downto 0) => ctr_reg_reg(23 downto 20)
    );
\ctr_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[20]_i_1_n_6\,
      Q => ctr_reg_reg(21),
      R => clear
    );
\ctr_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[20]_i_1_n_5\,
      Q => ctr_reg_reg(22),
      R => clear
    );
\ctr_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[20]_i_1_n_4\,
      Q => ctr_reg_reg(23),
      R => clear
    );
\ctr_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[24]_i_1_n_7\,
      Q => ctr_reg_reg(24),
      R => clear
    );
\ctr_reg_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ctr_reg_reg[20]_i_1_n_0\,
      CO(3) => \ctr_reg_reg[24]_i_1_n_0\,
      CO(2) => \ctr_reg_reg[24]_i_1_n_1\,
      CO(1) => \ctr_reg_reg[24]_i_1_n_2\,
      CO(0) => \ctr_reg_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ctr_reg_reg[24]_i_1_n_4\,
      O(2) => \ctr_reg_reg[24]_i_1_n_5\,
      O(1) => \ctr_reg_reg[24]_i_1_n_6\,
      O(0) => \ctr_reg_reg[24]_i_1_n_7\,
      S(3 downto 0) => ctr_reg_reg(27 downto 24)
    );
\ctr_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[24]_i_1_n_6\,
      Q => ctr_reg_reg(25),
      R => clear
    );
\ctr_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[24]_i_1_n_5\,
      Q => ctr_reg_reg(26),
      R => clear
    );
\ctr_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[24]_i_1_n_4\,
      Q => ctr_reg_reg(27),
      R => clear
    );
\ctr_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[28]_i_1_n_7\,
      Q => ctr_reg_reg(28),
      R => clear
    );
\ctr_reg_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ctr_reg_reg[24]_i_1_n_0\,
      CO(3) => \NLW_ctr_reg_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \ctr_reg_reg[28]_i_1_n_1\,
      CO(1) => \ctr_reg_reg[28]_i_1_n_2\,
      CO(0) => \ctr_reg_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ctr_reg_reg[28]_i_1_n_4\,
      O(2) => \ctr_reg_reg[28]_i_1_n_5\,
      O(1) => \ctr_reg_reg[28]_i_1_n_6\,
      O(0) => \ctr_reg_reg[28]_i_1_n_7\,
      S(3 downto 0) => ctr_reg_reg(31 downto 28)
    );
\ctr_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[28]_i_1_n_6\,
      Q => ctr_reg_reg(29),
      R => clear
    );
\ctr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[0]_i_1_n_5\,
      Q => ctr_reg_reg(2),
      R => clear
    );
\ctr_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[28]_i_1_n_5\,
      Q => ctr_reg_reg(30),
      R => clear
    );
\ctr_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[28]_i_1_n_4\,
      Q => ctr_reg_reg(31),
      R => clear
    );
\ctr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[0]_i_1_n_4\,
      Q => ctr_reg_reg(3),
      R => clear
    );
\ctr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[4]_i_1_n_7\,
      Q => ctr_reg_reg(4),
      R => clear
    );
\ctr_reg_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ctr_reg_reg[0]_i_1_n_0\,
      CO(3) => \ctr_reg_reg[4]_i_1_n_0\,
      CO(2) => \ctr_reg_reg[4]_i_1_n_1\,
      CO(1) => \ctr_reg_reg[4]_i_1_n_2\,
      CO(0) => \ctr_reg_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ctr_reg_reg[4]_i_1_n_4\,
      O(2) => \ctr_reg_reg[4]_i_1_n_5\,
      O(1) => \ctr_reg_reg[4]_i_1_n_6\,
      O(0) => \ctr_reg_reg[4]_i_1_n_7\,
      S(3 downto 0) => ctr_reg_reg(7 downto 4)
    );
\ctr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[4]_i_1_n_6\,
      Q => ctr_reg_reg(5),
      R => clear
    );
\ctr_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[4]_i_1_n_5\,
      Q => ctr_reg_reg(6),
      R => clear
    );
\ctr_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[4]_i_1_n_4\,
      Q => ctr_reg_reg(7),
      R => clear
    );
\ctr_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[8]_i_1_n_7\,
      Q => ctr_reg_reg(8),
      R => clear
    );
\ctr_reg_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ctr_reg_reg[4]_i_1_n_0\,
      CO(3) => \ctr_reg_reg[8]_i_1_n_0\,
      CO(2) => \ctr_reg_reg[8]_i_1_n_1\,
      CO(1) => \ctr_reg_reg[8]_i_1_n_2\,
      CO(0) => \ctr_reg_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ctr_reg_reg[8]_i_1_n_4\,
      O(2) => \ctr_reg_reg[8]_i_1_n_5\,
      O(1) => \ctr_reg_reg[8]_i_1_n_6\,
      O(0) => \ctr_reg_reg[8]_i_1_n_7\,
      S(3 downto 0) => ctr_reg_reg(11 downto 8)
    );
\ctr_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \ctr_reg_reg[8]_i_1_n_6\,
      Q => ctr_reg_reg(9),
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    sysclk : in STD_LOGIC;
    blinky_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_Blinky_0_0,Blinky,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Blinky,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Blinky
     port map (
      blinky_o => blinky_o,
      sysclk => sysclk
    );
end STRUCTURE;
