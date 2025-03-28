library ieee;
use ieee.std_logic_1164.all;

entity bin_counter_tb is
end entity bin_counter_tb;

architecture arch of bin_counter_tb is 
    constant THREE : integer := 3;
    constant T: time := 20 ns;
    signal CLK, RST: std_logic;
    signal SYN_CLR, LOAD, EN, UP: std_logic;
    signal D: std_logic_vector(THREE-1 downto 0);
    signal MAX_TICK, MIN_TICK: std_logic;
    signal Q: std_logic_vector(THREE-1 downto 0);
begin
    --***************************
    -- Instantiation
    --***************************
    counter_unit: entity work.univ_bin_counter(arch)
        generic map(N=>THREE)
        port map(
            CLK => CLK,
            RST => RST,
            SYN_CLR => SYN_CLR,
            LOAD => LOAD,
            EN => EN,
            UP => UP,
            D => D,
            MAX_TICK => MAX_TICK,
            MIN_TICK => MIN_TICK,
            Q => Q
        );
    --***************************
    -- Clock generation
    --***************************
    -- 20 ns clock running forever
    process
    begin
        clk <= '0';
        wait for T/2;
        clk <= '1';
        wait for T/2;
    end process;
    --***************************
    -- Reset generation
    --***************************
    -- Resent asserted for 40 ns (T/2)
    RST <= '1', '0' after T/2;
    --***************************
    -- other stimulus
    --***************************
    process
    begin
        --***************************
        -- initial input
        --***************************
        SYN_CLR <= '0';
        LOAD <= '0';
        EN <= '0';
        UP <= '1';
        D <= (others => '0');
        wait until falling_edge(CLK);
        wait until falling_edge(CLK);
        --***************************
        -- Test load
        --***************************
        LOAD <= '1';
        D <= "011";
        wait until falling_edge(CLK);
        LOAD <= '0';
        -- pause 2 clocks
        wait until falling_edge(CLK);
        wait until falling_edge(CLK);
        --***************************
        -- Test syn_clear
        --***************************
        SYN_CLR <= '1';
        wait until falling_edge(CLK);
        SYN_CLR <= '0';
        --***************************
        -- Test up counter and pause
        --***************************
        EN <= '1';
        UP <= '1';
        for i in 1 to 10 loop
            wait until falling_edge(CLK);
        end loop;
        --***************************
        -- Other wait conditions
        --***************************
        -- continue until Q = 2
        wait until Q = "010";
        wait until falling_edge(CLK);
        UP <= '1';
        -- continue until min_tick changes value
        wait on MIN_TICK;
        wait until falling_edge(CLK);
        UP <= '0';
        wait for 4*T;
        EN <= '0';
        wait for 4*T;
        --***************************
        -- Terminate Simulation
        --***************************
        assert false
            report "Simulation complete"
        severity failure;
    end process;
end arch;          
