-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Fri Mar 28 14:12:29 2025
-- Host        : BRJGSN325259 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/longo/FPGA_projects/Blinky-1_1/Blinky-1_1.gen/sources_1/bd/design_1/ip/design_1_Blinky_0_0/design_1_Blinky_0_0_stub.vhdl
-- Design      : design_1_Blinky_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_Blinky_0_0 is
  Port ( 
    sysclk : in STD_LOGIC;
    blinky_o : out STD_LOGIC
  );

end design_1_Blinky_0_0;

architecture stub of design_1_Blinky_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sysclk,blinky_o";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Blinky,Vivado 2021.2";
begin
end;
