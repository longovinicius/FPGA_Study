library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity fsmd_divider is
    Port (
        clk            : in  STD_LOGIC;
        rst            : in  STD_LOGIC;
        start          : in  STD_LOGIC;
        dividendo_in   : in  unsigned(7 downto 0);
        divisor_in     : in  unsigned(7 downto 0);
        quociente_out  : out unsigned(7 downto 0);
        resto_out      : out unsigned(7 downto 0);
        done_out       : out STD_LOGIC
    );
end fsmd_divider;

architecture Behavioral of fsmd_divider is
    type state_type is (IDLE, CALC, DONE);
    signal state         : state_type := IDLE;

    -- Registradores do datapath
    signal dividendo_reg  : unsigned(7 downto 0) := (others => '0');
    signal divisor_reg    : unsigned(7 downto 0) := (others => '0');
    signal quociente_reg  : unsigned(7 downto 0) := (others => '0');

begin

    -- Processo principal (FSM + datapath)
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                state           <= IDLE;
                dividendo_reg   <= (others => '0');
                divisor_reg     <= (others => '0');
                quociente_reg   <= (others => '0');
            else
                case state is
                    when IDLE =>
                        if start = '1' then
                            dividendo_reg <= dividendo_in;
                            divisor_reg   <= divisor_in;
                            quociente_reg <= (others => '0');
                            state         <= CALC;
                        end if;

                    when CALC =>
                        if dividendo_reg >= divisor_reg then
                            dividendo_reg <= dividendo_reg - divisor_reg;
                            quociente_reg <= quociente_reg + 1;
                        else
                            state <= DONE;
                        end if;

                    when DONE =>
                        state <= IDLE;
                end case;
            end if;
        end if;
    end process;

    -- Saídas
    quociente_out <= quociente_reg;
    resto_out     <= dividendo_reg;
    done_out      <= '1' when state = DONE else '0';

end Behavioral;
