library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fifo_test is
    generic(
        B: natural := 8; -- número de bits
        W: natural := 4  -- número de bits do endereço
    );
    port(
        CLK, RST    : in std_logic;
        RD, WR      : in std_logic;
        W_DATA      : in std_logic_vector(B-1 downto 0);
        R_DATA      : out std_logic_vector(B-1 downto 0);
        EMPTY, FULL : out std_logic
    );
end fifo_test;
architecture arch of fifo_test is
    type mem_type is array(0 to 2**W-1) of std_logic_vector(B-1 downto 0);
    signal mem: mem_type := (others => (others => '0'));
    signal wr_ptr, rd_ptr: unsigned(W-1 downto 0);
    signal count: unsigned(W downto 0);
begin
    process(CLK, RST)
    begin
        if (RST = '1') then
            wr_ptr <= (others => '0');
            rd_ptr <= (others => '0');
            count  <= (others => '0');
        elsif rising_edge(CLK) then
            -- Escrita no FIFO (com wrapping)
            if (WR = '1' and FULL = '0') then
                mem(to_integer(wr_ptr)) <= W_DATA;
                wr_ptr <= (wr_ptr + 1) mod (2**W);  -- Volta a zero quando atinge o fim
                count  <= count + 1;
            end if;

            -- Leitura do FIFO (com wrapping)
            if (RD = '1' and EMPTY = '0') then
                rd_ptr <= (rd_ptr + 1) mod (2**W);  -- Volta a zero quando atinge o fim
                count  <= count - 1;
            end if;
        end if;
    end process;

    -- Saída de leitura (sempre disponível)
    R_DATA <= mem(to_integer(rd_ptr)) when EMPTY = '0' else (others => '0');

    -- Controle de flags
    FULL  <= '1' when count = 2**W else '0';
    EMPTY <= '1' when count = 0 else '0';

end arch;
