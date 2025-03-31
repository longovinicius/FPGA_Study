library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart is
   generic(
      -- Default settings:
      -- 19,200 baud, 8 data bits, 1 stop bits, 2^5 FIFO
      DBIT: integer:=8;     -- # data bits
      SB_TICK: integer:=16; -- # ticks for stop bits, 16/24/32 for 1/1.5/2 stop bits
      DVSR: integer:= 163;  -- baud rate divisor; DVSR = 50M/(16*baud rate)
            -- Note: read page 174 in P.P. Chu's textbook; this is so, because
            -- my De2-115 board has an off chip oscillator that gives me 50 MHz;
      DVSR_BIT: integer:=9; -- # bits of DVSR
      FIFO_W: integer:=5    -- # addr bits of FIFO
                            -- # words in FIFO=2^FIFO_W
   );
   port(
      clk: in std_logic; -- 50 MHz in the case of DE2-115 board;
      reset: in std_logic;
      rd_uart, wr_uart: in std_logic;
      rx: in std_logic;
      w_data: in std_logic_vector(7 downto 0);
      tx_full, rx_empty: out std_logic;
      r_data: out std_logic_vector(7 downto 0);
      tx: out std_logic
   );
end uart;

architecture str_arch of uart is

   signal tick: std_logic;
   signal rx_done_tick: std_logic;
   signal tx_fifo_out: std_logic_vector(7 downto 0);
   signal rx_data_out: std_logic_vector(7 downto 0);
   signal tx_empty, tx_fifo_not_empty: std_logic;
   signal tx_done_tick: std_logic;
   
begin

   -- this mod-m counter is ued here basically as a clock divider to 
   -- create the baud signal needed by both RX and TX units;
   baud_gen_unit: entity work.mod_m_counter(arch)
      generic map(M=>DVSR, N=>DVSR_BIT)
      port map(clk=>clk, reset=>reset,
               q=>open, max_tick=>tick);
               
   uart_rx_unit: entity work.uart_rx(arch)
      generic map(DBIT=>DBIT, SB_TICK=>SB_TICK)
      port map(clk=>clk, reset=>reset, rx=>rx,
               s_tick=>tick, rx_done_tick=>rx_done_tick,
               dout=>rx_data_out);
               
   fifo_rx_unit: entity work.fifo_test(arch)
      generic map(B=>DBIT, W=>FIFO_W)
      port map(clk=>clk, RST=>reset, rd=>rd_uart,
               wr=>rx_done_tick, w_data=>rx_data_out,
               empty=>rx_empty, full=>open, r_data=>r_data);
   fifo_tx_unit: entity work.fifo_test(arch)
      generic map(B=>DBIT, W=>FIFO_W)
      port map(clk=>clk, RST=>reset, rd=>tx_done_tick,
               wr=>wr_uart, w_data=>w_data, empty=>tx_empty,
               full=>tx_full, r_data=>tx_fifo_out);
               
   uart_tx_unit: entity work.uart_tx(arch)
      generic map(DBIT=>DBIT, SB_TICK=>SB_TICK)
      port map(clk=>clk, reset=>reset,
               tx_start=>tx_fifo_not_empty,
               s_tick=>tick, din=>tx_fifo_out,
               tx_done_tick=> tx_done_tick, tx=>tx);
               
   tx_fifo_not_empty <= not tx_empty; -- implements an inverter in fig.7.5 of P.P. Chu's textbook;
   
end str_arch;