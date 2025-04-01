library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fifo is
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
end fifo;
architecture arch of fifo is
    type mem_type is array(0 to 2**W-1) of std_logic_vector(B-1 downto 0);
    signal mem: mem_type := (others => (others => '0'));
    signal wr_ptr, rd_ptr: unsigned(W-1 downto 0);
    signal count: unsigned(W downto 0);
    signal full_flag, empty_flag: std_logic; -- Sinais internos para FULL e EMPTY
begin
    process(CLK, RST)
    begin
        if (RST = '1') then
            wr_ptr <= (others => '0');
            rd_ptr <= (others => '0');
            count  <= (others => '0');
        elsif rising_edge(CLK) then
            if (WR = '1' and full_flag = '0') then
                mem(to_integer(wr_ptr)) <= W_DATA;
                wr_ptr <= (wr_ptr + 1) mod (2**W);  
                count  <= count + 1;
            end if;

            if (RD = '1' and empty_flag = '0') then
                rd_ptr <= (rd_ptr + 1) mod (2**W);  
                count  <= count - 1;
            end if;
        end if;
    end process;

    -- Saída de leitura
    R_DATA <= mem(to_integer(rd_ptr)) when empty_flag = '0' else (others => '0');

    -- Controle de flags
    full_flag  <= '1' when count = 2**W else '0';
    empty_flag <= '1' when count = 0 else '0';

    -- Atribuir aos sinais de saída
    FULL  <= full_flag;
    EMPTY <= empty_flag;

end arch;
