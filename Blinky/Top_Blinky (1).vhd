--! \file		Top_Blinky.vhd
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

--------------------------------------------------------------------------
-- User packages
--------------------------------------------------------------------------

--------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------
entity Top_Blinky is
    port (
        clk     : in std_logic;
        reset_n : in std_logic
    );
end entity;

--------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------
architecture rtl of Top_Blinky is

    signal sysclk : std_logic;
begin

    CLK_Multiplier_inst : entity work.CLK_Multiplier
    port map(
        clk     => clk,
        sysclk  => sysclk,
        reset   => '0',
        locked  => open
    );


    blinky: Entity work.Blinky
    Generic map(
        CLOCK_FREQ_MHZ  => CLK_FREQUENCY/1e6,
        PERIOD_US       => 12
    )
    Port map(
        sysclk      => sysclk,
        reset_n     => reset_n,
        blinky_o    => blinky_o
    );

end architecture;