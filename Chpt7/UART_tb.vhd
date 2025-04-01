library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart_tb is
end uart_tb;

architecture tb of uart_tb is
   -- Sinais para conexão com a UART
   signal clk_tb      : std_logic := '0';
   signal reset_tb    : std_logic := '1';
   signal rd_uart_tb  : std_logic := '0';
   signal wr_uart_tb  : std_logic := '0';
   signal rx_tb       : std_logic := '1';
   signal w_data_tb   : std_logic_vector(7 downto 0) := (others => '0');
   signal tx_full_tb  : std_logic;
   signal rx_empty_tb : std_logic;
   signal r_data_tb   : std_logic_vector(7 downto 0);
   signal tx_tb       : std_logic;
   signal rx_data_tb : std_logic_vector(7 downto 0) := "01010101";


   -- Parâmetros da UART (usar os mesmos do seu top-level)
   constant CLK_PERIOD : time := 20 ns;  -- Clock de 50 MHz (1/50MHz = 20 ns)

begin

   -- Instância da UART
   uut: entity work.uart(str_arch)
      generic map(
         DBIT => 8,
         SB_TICK => 16,
         DVSR => 163,
         DVSR_BIT => 9,
         FIFO_W => 5
      )
      port map(
         clk => clk_tb,
         reset => reset_tb,
         rd_uart => rd_uart_tb,
         wr_uart => wr_uart_tb,
         rx => rx_tb,
         w_data => w_data_tb,
         tx_full => tx_full_tb,
         rx_empty => rx_empty_tb,
         r_data => r_data_tb,
         tx => tx_tb
      );

   -- Geração do clock (50 MHz)
   process
   begin
      while true loop
         clk_tb <= '0';
         wait for CLK_PERIOD / 2;
         clk_tb <= '1';
         wait for CLK_PERIOD / 2;
      end loop;
   end process;

   -- Processo de teste
   process
   begin
      -- Reset inicial
      reset_tb <= '1';
      wait for 100 ns;  -- Espera um tempo para resetar
      reset_tb <= '0';

      -- Teste 1: Enviar um byte pela UART
      wait for 50 ns;
      w_data_tb <= "10101010";  -- Enviar dado 0xAA
      wr_uart_tb <= '1';  -- Habilitar escrita
      wait for CLK_PERIOD;
      wr_uart_tb <= '0';  -- Desabilitar escrita

      -- Espera processamento
      wait for 500 ns;

      -- Teste 2: Simular recepção de dado
      rx_tb <= '0';  -- Início do start bit
      wait for 16 * CLK_PERIOD;  -- Tempo de um bit
      
      -- Enviar 8 bits de dados (0x55 = "01010101")
      for i in 0 to 7 loop
        rx_tb <= rx_data_tb(i);
        wait for 16 * CLK_PERIOD;  -- Tempo de um bit
     end loop;
  

      -- Enviar stop bit
      rx_tb <= '1';
      wait for 16 * CLK_PERIOD;

      -- Ativar leitura
      wait for 50 ns;
      rd_uart_tb <= '1';
      wait for CLK_PERIOD;
      rd_uart_tb <= '0';

      -- Espera verificação
      wait for 500 ns;
      
      -- Finaliza a simulação
      wait;
   end process;

end tb;
