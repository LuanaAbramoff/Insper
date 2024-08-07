library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity ULAMIPS1bit is
    port
    (
        entradaA, entradaB, vem1, inverteB, slt: in STD_LOGIC;
		  sel_opULA: in STD_LOGIC_VECTOR(1 downto 0);
        resultado, vai1:  out STD_LOGIC
    );
end entity;

architecture comportamento of ULAMIPS1bit is
	
	signal resultadoAND    : std_logic;
	signal resultadoOR     : std_logic;
	signal resultadoSOMA   : std_logic;
	signal B_invertido     : std_logic;
	signal Saida_MUX_InB   : std_logic;

   begin
	
	
	
		NOT1 : entity work.operadorNOT
					 port map (in1 => entradaB, saida => B_invertido);	
					
		MUX_SUB :  entity work.muxGenerico2x1bit 
				  port map( entradaA_MUX => entradaB,
							  entradaB_MUX =>  B_invertido,
							  seletor_MUX => inverteB,
							  saida_MUX => Saida_MUX_InB);	
						 
		AND1 : entity work.operadorAND
					 port map (in1 => entradaA , in2 => Saida_MUX_InB, saida => resultadoAND); 	
			
		OR1  : entity work.operadorOR
					 port map (in1 => entradaA , in2 => Saida_MUX_InB, saida => resultadoOR);
					 
		SOMADOR : entity work.somador1bit
					 port map (entradaA => entradaA, entradaB => Saida_MUX_InB, vem1 => vem1, saida_soma => resultadoSOMA, vai1 => vai1);
				 
		MUX_ULAout :  entity work.muxGenerico4x1bit
					  port map(entrada0_MUX => resultadoAND,
								  entrada1_MUX =>  resultadoOR,
								  entrada2_MUX => resultadoSOMA,
								  entrada3_MUX => slt,
								  seletor_MUX => sel_opULA,
								  saida_MUX => resultado);
			
		  
end architecture;