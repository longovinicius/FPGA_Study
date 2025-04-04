library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- ==============================
--        SOMADOR FP
-- ==============================
-- Este somador de ponto flutuante opera com números de 4 bits para o expoente
-- e 8 bits para a fração (mantissa). O formato é:
--    Número = (-1)^sinal * 1.fração * 2^expoente
--
-- Passos:
-- 1. Ordenar os operandos para identificar o maior número.
-- 2. Alinhar a fração do menor número ao expoente do maior.
-- 3. Somar ou subtrair as frações (dependendo do sinal).
-- 4. Normalizar o resultado (ajustar expoente e fração).
-- 5. Gerar a saída final.

entity fp_adder is 
    port(
        sign1, sign2    : in std_logic;
        exp1, exp2      : in std_logic_vector(3 downto 0);
        frac1, frac2    : in std_logic_vector(7 downto 0);
        sign_out        : out std_logic;
        exp_out         : out std_logic_vector(3 downto 0);
        frac_out        : out std_logic_vector(7 downto 0)
    );
end fp_adder;

architecture arch of fp_adder is
    signal signb, signs                 : std_logic;
    signal expb, exps, expn             : unsigned(3 downto 0);
    signal fracb, fracs, fraca, fracn   : unsigned(7 downto 0);
    signal sum_norm                     : unsigned(7 downto 0);
    signal exp_diff                     : unsigned(3 downto 0);
    signal sum                          : unsigned(8 downto 0); -- extra bit para carry
    signal lead0                        : unsigned(2 downto 0);

begin
    -- 1º Passo: Ordenação dos operandos
    -- Se exp1 e frac1 forem maiores, eles serão o operando principal.
    -- Exemplo: 
    --    exp1 = "0101" (5)   frac1 = "10101000"
    --    exp2 = "0011" (3)   frac2 = "10011000"
    --    Como 5 > 3, mantemos exp1 e frac1 como principais.
    process (sign1, sign2, exp1, exp2, frac1, frac2)
    begin
        if (exp1 & frac1) > (exp2 & frac2) then
            signb <= sign1;
            signs <= sign2;
            expb <= unsigned(exp1);
            exps <= unsigned(exp2);
            fracb <= unsigned(frac1);
            fracs <= unsigned(frac2);
        else
            signb <= sign2;
            signs <= sign1;
            expb <= unsigned(exp2);
            exps <= unsigned(exp1);
            fracb <= unsigned(frac2);
            fracs <= unsigned(frac1);
        end if;
    end process;

    -- 2º Passo: Alinhamento da fração do menor número
    -- Exemplo:
    --    exp_diff = expb - exps = 5 - 3 = 2
    --    fracs original: 1.0011000 (em binário)
    --    Após deslocamento: 0.01001100 (shift à direita 2x)
    exp_diff <= expb - exps;
    with exp_diff select 
        fraca <= fracs                          when "0000",
                 "0"        & fracs(7 downto 1) when "0001",
                 "00"       & fracs(7 downto 2) when "0010",
                 "000"      & fracs(7 downto 3) when "0011",
                 "0000"     & fracs(7 downto 4) when "0100",
                 "00000"    & fracs(7 downto 5) when "0101",
                 "000000"   & fracs(7 downto 6) when "0110",
                 "0000000"  & fracs(7)          when "0111",
                 "00000000"                     when others;

    -- 3º Passo: Soma/Subtração das frações
    -- Se os sinais forem iguais, somamos.
    -- Se forem diferentes, subtraímos.
    sum <= ('0' & fracb) + ('0' & fraca) when signb = signs else
           ('0' & fracb) - ('0' & fraca);

    -- 4º Passo: Normalização
    -- A normalização ajusta a mantissa para que o primeiro bit seja '1'.
    -- Caso contrário, a mantissa é deslocada para a esquerda e o expoente
    -- é reduzido na mesma quantidade de bits deslocados.
    --
    -- Exemplo:
    -- Soma resultante:    0.011 0100 (mantissa inválida)
    -- Após normalizar:    1.101 0000 (mantissa válida)
    -- Encontramos os zeros à esquerda para ajustar o expoente
    lead0 <= "000" when (sum(7)='1') else
             "001" when (sum(6)='1') else
             "010" when (sum(5)='1') else
             "011" when (sum(4)='1') else
             "100" when (sum(3)='1') else
             "101" when (sum(2)='1') else
             "110" when (sum(1)='1') else
             "111";

    -- Deslocamento da fração conforme os zeros à esquerda
    with lead0 select
        sum_norm <= sum(7 downto 0)             when "000",
                    sum(6 downto 0) & '0'       when "001",
                    sum(5 downto 0) & "00"      when "010",
                    sum(4 downto 0) & "000"     when "011",
                    sum(3 downto 0) & "0000"    when "100",
                    sum(2 downto 0) & "00000"   when "101",
                    sum(1 downto 0) & "000000"  when "110",
                    sum(0)          & "0000000" when others;

    -- Ajuste do expoente após normalização
    process(sum, sum_norm, expb, lead0)
    begin
        if sum(8)='1' then
           expn <= expb + 1;
           fracn <= sum(8 downto 1);
        elsif (lead0 > expb) then
            expn <= (others=>'0');
            fracn <= (others=>'0');
        else
            expn <= expb - lead0;
            fracn <= sum_norm;
        end if;
    end process;

    -- 5º Passo: Formação da saída
    sign_out <= signb;
    exp_out <= std_logic_vector(expn);
    frac_out <= std_logic_vector(fracn);

end arch;