library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- =========================================
--  MÓDULO DE TESTE PARA CONVERSÃO HEX -> 7-SEGMENTOS
-- =========================================
-- Este código converte um valor hexadecimal de entrada para ser exibido
-- em um display de 7 segmentos. O valor de entrada também é incrementado
-- para mostrar a mudança no display.

entity hex_to_sseg_test is
    port(
        clk:            in std_logic;  -- Clock de entrada
        swith_board:    in std_logic_vector(7 downto 0);  -- Entrada de 8 bits (dois dígitos hexadecimais)
        an:             out std_logic_vector(3 downto 0); -- Controle dos 4 displays de 7 segmentos
        sseg:           out std_logic_vector(7 downto 0)  -- Saída para os segmentos do display
    );
end hex_to_sseg_test;

architecture arch of hex_to_sseg_test is
    signal inc                      : std_logic_vector(7 downto 0); -- Valor incrementado
    signal led3, led2, led1, led0   : std_logic_vector(7 downto 0); -- Saídas para cada display
begin
    -- Incrementa o valor de entrada e armazena em "inc"
    inc <= std_logic_vector(unsigned(swith_board) + 1);
    
    -- Instancia 4 conversores de hexadecimal para 7 segmentos
    
    -- Conversor para os 4 LSBs do valor de entrada
    sseg_unit_0: entity work.hex_to_sseg
        port map(hex=>swith_board(3 downto 0), dp=>'0', sseg=>led0); -- map(template_input1=>input1, ..., template_output=>output)
    
    -- Conversor para os 4 MSBs do valor de entrada
    sseg_unit_1: entity work.hex_to_sseg
        port map(hex=>swith_board(7 downto 4), dp=>'0', sseg=>led1);
    
    -- Conversor para os 4 LSBs do valor incrementado
    sseg_unit_2: entity work.hex_to_sseg
        port map(hex=>inc(3 downto 0), dp=>'1', sseg=>led2);
    
    -- Conversor para os 4 MSBs do valor incrementado
    sseg_unit_3: entity work.hex_to_sseg
        port map(hex=>inc(7 downto 4), dp=>'1', sseg=>led3);

    -- Instancia o módulo de multiplexação para o display de 7 segmentos
    -- Ele alterna entre os 4 displays, ligando um por vez para exibição correta
    -- disp_unit: entity work.disp_mux
    --     port map(
    --         clk=>clk, reset=>'0',
    --         in0=>led0, in1=>led1, in2=>led2, in3=>led3,
    --         an=>an, sseg=>sseg
    --     );
end arch;
