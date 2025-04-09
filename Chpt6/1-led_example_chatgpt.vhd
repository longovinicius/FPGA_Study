-- Vamos implementar um sistema que:

-- Espera um botão (start) ser pressionado.

-- Quando pressionado, começa a contar até 10.

-- Quando chegar a 10, acende um LED e volta ao estado inicial.


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity fsmd_counter is
    Port (
        clk    : in  STD_LOGIC;
        rst    : in  STD_LOGIC;
        btn_in  : in  STD_LOGIC;
        led    : out STD_LOGIC
    );
end fsmd_counter;

architecture Behavioral of fsmd_counter is
    type state_type is (IDLE, COUNTING, DONE);
    signal state      : state_type := IDLE;

    signal count_reg  : integer range 0 to 10 := 0;
    signal count_next : integer range 0 to 10 := 0;
begin

    -- Lógica de controle (FSM)
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                state     <= IDLE;
                count_reg <= 0;
            else
                state     <= state;
                count_reg <= count_next;

                case state is
                    when IDLE =>
                        if btn_in = '1' then
                            state <= COUNTING;
                        end if;

                    when COUNTING =>
                        if count_reg = 10 then
                            state <= DONE;
                        else
                            state <= COUNTING;
                        end if;

                    when DONE =>
                        state <= IDLE;
                end case;
            end if;
        end if;
    end process;

    -- Lógica de dados (Datapath)
    process(state, count_reg)
    begin
        count_next <= count_reg;

        case state is
            when IDLE =>
                count_next <= 0;

            when COUNTING =>
                count_next <= count_reg + 1;

            when DONE =>
                count_next <= count_reg;
        end case;
    end process;

    -- Saída LED
    led <= '1' when state = DONE else '0';

end Behavioral;
