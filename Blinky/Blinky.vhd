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
--------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------
Entity Blinky is
    Generic (
        CLOCK_FREQ_MHZ  : integer := 200;
        PERIOD_MS       : integer := 500
    );
    Port (
        sysclk      : in std_logic;
        blinky_o    : out std_logic
    );
End entity;

--------------------------------------------------------------------------
-- Architecture
--------------------------------------------------------------------------
Architecture rtl of Blinky is

    -- Redefinindo a constante para trabalhar com milissegundos
    constant MAX_CTR_BLINKY : integer := (PERIOD_MS * CLOCK_FREQ_MHZ * 1000) / 2;
    signal ctr_reg          : integer := 0;
    signal blinky_reg       : std_logic := '0';

Begin

    blinky_o <= blinky_reg;

    Blinky_seq : process (sysclk)
    begin
        if rising_edge(sysclk) then
            if ctr_reg < MAX_CTR_BLINKY - 1 then
                ctr_reg <= ctr_reg + 1;
            else
                ctr_reg <= 0;
                blinky_reg <= not blinky_reg;
            end if;
        end if;
    end process;

End architecture;
