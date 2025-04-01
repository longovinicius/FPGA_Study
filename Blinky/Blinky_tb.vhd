--! \file		Blinky_tb.vhd
--!
--! \brief		
--!
--! \author		Uriel Abe Contardi (contardii@weg.net)
--! \date       26-03-2025
--!
--! \version    1.0
--!
--! \copyright	Copyright (c) 2024 WEG - All Rights reserved.
--!
--! \note		Target devices : No specific target
--! \note		Tool versions  : No specific tool
--! \note		Dependencies   : No specific dependencies
--!
--! \ingroup	None
--! \warning	None
--!
--! \note		Revisions:
--!				- 1.0	26-03-2025	<contardii@weg.net>
--!				First revision.
--------------------------------------------------------------------------
-- Testbench
--------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use std.env.finish;

--------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------
Entity Blinky_tb is
End entity;

Architecture behavior of Blinky_tb is

    constant CLK_FREQUENCY  : integer := 160e6;
    constant CLK_PERIOD     : time := 1 sec / CLK_FREQUENCY;

    signal sysclk  : std_logic := '0';
    signal blinky_o : std_logic;
    
Begin

    sysclk <= not sysclk after CLK_PERIOD/2;

    uut: Entity work.Blinky
    Generic map(
        CLOCK_FREQ_MHZ  => CLK_FREQUENCY/1e6,
        PERIOD_MS       => 500
    )
    Port map(
        sysclk      => sysclk,
        blinky_o    => blinky_o
    );

    stimulus: process
    begin
        wait for CLK_PERIOD * 5;
        wait for 10000 ms;
        finish;
    end process;

End architecture;

