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
-- Default libraries
--------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use std.textio.all;
use std.env.finish;

--------------------------------------------------------------------------
-- User packages
--------------------------------------------------------------------------

--------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------
Entity Blinky_tb is
End entity;

Architecture behavior of Blinky_tb is

    --------------------------------------------------------------------------
    -- Clock definition
    --------------------------------------------------------------------------
    constant CLK_FREQUENCY  : integer := 160e6;
    constant CLK_PERIOD     : time := 1 sec / CLK_FREQUENCY;

    --------------------------------------------------------------------------
    -- Testbench definition
    --------------------------------------------------------------------------


    --------------------------------------------------------------------------
    -- UUT ports
    --------------------------------------------------------------------------
    -- Inputs
    signal sysclk  : std_logic := '0';
    signal reset_n : std_logic := '0';
    signal blinky_o : std_logic := '0';
    
Begin

    --------------------------------------------------------------------------
    -- Clk generation
    --------------------------------------------------------------------------
    sysclk <= not sysclk after CLK_PERIOD/2;

    --------------------------------------------------------------------------
    -- UUT
    --------------------------------------------------------------------------
    uut: Entity work.Blinky
    Generic map(
        CLOCK_FREQ_MHZ  => CLK_FREQUENCY/1e6,
        PERIOD_US       => 12
    )
    Port map(
        sysclk      => sysclk,
        reset_n     => reset_n,
        blinky_o    => blinky_o
    );

    --------------------------------------------------------------------------
    -- Test
    --------------------------------------------------------------------------
    stimulus: process
    begin
        wait for CLK_PERIOD * 5;
        reset_n <= '1';
        wait for CLK_PERIOD * 5;

        --------------------------------------------------------------------------
        -- Stimulus
        --------------------------------------------------------------------------
        wait for 100 us;

        finish;
    end process;

End architecture;
