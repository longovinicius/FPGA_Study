--! \file		Blinky.vhd
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
Entity Blinky is
    Generic (
        CLOCK_FREQ_MHZ  : integer := 200;
        PERIOD_US       : integer := 1
    );
    Port (
        sysclk      : in std_logic;
        reset_n     : in std_logic;
        blinky_o    : out std_logic
    );
End entity;

--------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------
Architecture rtl of Blinky is

    constant MAX_CTR_BLINKY : integer := PERIOD_US*CLOCK_FREQ_MHZ;
    signal ctr_reg          : integer := 0;
    signal blinky_reg       : std_logic := '0';

Begin

    blinky_o <= blinky_reg;

    Blinky_seq : process (sysclk, reset_n)
    begin
        if reset_n = '0' then
            ctr_reg     <= 0;
            blinky_reg      <= '0';
    
        elsif rising_edge(sysclk) then

            ctr_reg <= ctr_reg + 1;

            if ctr_reg = MAX_CTR_BLINKY - 1 then
                ctr_reg <= 0;
                blinky_reg <= not(blinky_reg);
            end if;

        end if;
    end process;

End architecture;
