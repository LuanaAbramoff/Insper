library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity somador1bit is
    port
    (
        entradaA, entradaB, vem1: in STD_LOGIC;
        saida_soma, vai1:  out STD_LOGIC
    );
end entity;

architecture comportamento of somador1bit is
	
	signal saidaXOR1 : std_logic;
	signal saidaAND1 : std_logic;
	signal saidaAND2 : std_logic;



   begin
	 
				  
		XOR1 : entity work.operadorXOR
					 port map (in1 => entradaA , in2 => entradaB, saida => saidaXOR1); 
						 
		AND1 : entity work.operadorAND
					 port map (in1 => entradaA , in2 => entradaB, saida => saidaAND1); 
					 
		XOR2 : entity work.operadorXOR
					 port map (in1 => vem1 , in2 => saidaXOR1, saida => saida_soma);
					 
		AND2 : entity work.operadorAND
					 port map (in1 => vem1 , in2 => saidaXOR1, saida => saidaAND2);	
			
		OR1  : entity work.operadorOR
					 port map (in1 => saidaAND2 , in2 => saidaAND1, saida => vai1);
			
		  
end architecture;