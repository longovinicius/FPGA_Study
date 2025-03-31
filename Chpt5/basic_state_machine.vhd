library ieee;
use ieee.std_logic_1164.all;

entity STATEX is
    port(
        CLK, RST                            : in std_ulogic;
        CONDITION1, CONDITION2, CONDITION3  : in std_ulogic;
        OUTPUT1, OUTPUT2                    : out std_ulogic
    );
end STATEX;

architecture BEHAV of STATEX is
    type STATE_TYPE is (STATE1, STATE2, STATE3);
    signal CURRENT_STATE    : STATE_TYPE;
    signal NEXT_STATE       : STATE_TYPE;
begin
    -- state register
    process(CLK, RST)
    begin
        if RST = '1' then
            CURRENT_STATE <= STATE1;
        elsif (CLK'event and CLK = '1') then
            CURRENT_STATE <= NEXT_STATE;
        end if;
    end process;
    -- next-state/output
    process(CURRENT_STATE, CONDITION1, CONDITION2, CONDITION3)
    begin
        case CURRENT_STATE is
            when STATE1 =>
                if CONDITION1 = '1' then
                    NEXT_STATE <= STATE2;
                else
                    NEXT_STATE <= STATE1;
                end if;
            when STATE2 =>
                if CONDITION2 = '1' then
                    NEXT_STATE <= STATE3;
                else
                    NEXT_STATE <= STATE2;
                end if;
            when STATE3 =>
                if CONDITION3 = '1' then
                    NEXT_STATE <= STATE1;
                else
                    NEXT_STATE <= STATE3;
                end if;
            when others =>
                    NEXT_STATE <= STATE1;
        end case;
    end process; 
end BEHAV;
                

