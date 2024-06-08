LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

-- este componente possibilita o funcionamento de "contar o tempo"
entity divisorGenerico_e_Interface is
   port(clk      :   in std_logic;
      habilitaLeitura : in std_logic;
      limpaLeitura : in std_logic;
		modo	:	in std_logic;
      leituraUmSegundo :   out std_logic
   );
end entity;

architecture interface of divisorGenerico_e_Interface is
  signal sinalUmSegundo : std_logic;
  signal saidaclk_reg1seg : std_logic;
  signal saidaclk_regrapida : std_logic;
  signal saidaclk_baseTempoSelecionada : std_logic;
begin

-- bases de tempo
-- utilizando o "CLOCK_50" como base e realizando uma divisão com o componente divisorGenerico é possível controlar o quão rápido se quer contar o tempo.
baseTempo: entity work.divisorGenerico
           generic map (divisor => 25000000) 
           port map (clk => clk, saida_clk => saidaclk_reg1seg);
			  
baseTempoRapida: entity work.divisorGenerico
           generic map (divisor => 2500)   -- rapida
           port map (clk => clk, saida_clk => saidaclk_regrapida);

-- Visto que são duas bases de tempo, é necessário um mux tendo SW9 como seletor, assim é possível escolher a passagem de tempo normal ou acelerada			  
seletorBaseTempo :  entity work.muxGenerico2x1_1bit
        port map( entradaA_MUX => saidaclk_reg1seg,
                 entradaB_MUX =>  saidaclk_regrapida,
                 seletor_MUX => modo,
                 saida_MUX => saidaclk_baseTempoSelecionada);

-- flip-flop para armazenar a mudança do tempo
registraUmSegundo: entity work.FlipFlop
   port map (DIN => '1', DOUT => sinalUmSegundo,
         ENABLE => '1', CLK => saidaclk_baseTempoSelecionada,
         RST => limpaLeitura);

-- Faz o tristate de saida:
leituraUmSegundo <= sinalUmSegundo when habilitaLeitura = '1' else 'Z';

end architecture interface;