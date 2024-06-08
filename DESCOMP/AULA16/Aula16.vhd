library ieee;
use ieee.std_logic_1164.all;

entity Aula16 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 32

  );   
  port   (
    
	 resultado_soma  : out std_logic_vector(larguraDados-1 downto 0);
	 resultado_and   : out std_logic_vector(larguraDados-1 downto 0);
	 resultado_or    : out std_logic_vector(larguraDados-1 downto 0);
	 resultado_sub   : out std_logic_vector(larguraDados-1 downto 0);
	 resultado_slt_v : out std_logic_vector(larguraDados-1 downto 0);
	 resultado_slt_f : out std_logic_vector(larguraDados-1 downto 0);
	 zero            : out std_logic

  );
end entity;


architecture arquitetura of Aula16 is

  signal inA        : std_logic_vector(larguraDados-1 downto 0);
  signal inB        : std_logic_vector(larguraDados-1 downto 0);
  signal zero_apoio : std_logic;
  signal r_apoio    : std_logic_vector(larguraDados-1 downto 0);


begin

	SOMA  : entity work.ULAMIPS
				port map (entradaA => inA, entradaB => inB, seletor => "10", inverteB => '0', saida => resultado_soma, Zero => zero_apoio);
				
	AND1  : entity work.ULAMIPS
				port map (entradaA => inA, entradaB => inB, seletor => "00", inverteB => '0', saida => resultado_and, Zero => zero_apoio);

	OR1   : entity work.ULAMIPS
				port map (entradaA => inA, entradaB => inB, seletor => "01", inverteB => '0', saida => resultado_or, Zero => zero_apoio);
				
	SUB   : entity work.ULAMIPS
				port map (entradaA => inA, entradaB => inB, seletor => "10", inverteB => '1', saida => resultado_sub, Zero => zero_apoio);
				
   SLTV  : entity work.ULAMIPS
				port map (entradaA => inB, entradaB => inA, seletor => "11", inverteB => '1', saida => resultado_slt_v, Zero => zero_apoio);
				
   SLTF  : entity work.ULAMIPS
				port map (entradaA => inA, entradaB => inB, seletor => "11", inverteB => '1', saida => resultado_slt_f, Zero => zero_apoio);	
				
   ZER   : entity work.ULAMIPS
				port map (entradaA => inA, entradaB => inA, seletor => "10", inverteB => '1', saida => r_apoio, Zero => zero);

	inA     <= "00000000000000000000000000000100";
	inB     <= "00000000000000000000000000000011";	

	

end architecture;