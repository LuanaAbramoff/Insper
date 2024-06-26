library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULAMIPS is

    generic ( larguraDados : natural := 32 );
	 
    port (
	 
      entradaA, entradaB :  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor            :  in STD_LOGIC_VECTOR(1 downto 0);
      inverteB           :  in STD_LOGIC;
		
		saida              :  out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		Zero					 :  out STD_LOGIC
		
    );
	 
end entity;

architecture comportamento of ULAMIPS is

   signal vaium_0     : STD_LOGIC;
	signal vaium_1     : STD_LOGIC;
	signal vaium_2     : STD_LOGIC;
	signal vaium_3     : STD_LOGIC;
	signal vaium_4     : STD_LOGIC;
	signal vaium_5     : STD_LOGIC;
	signal vaium_6     : STD_LOGIC;
	signal vaium_7     : STD_LOGIC;
	signal vaium_8     : STD_LOGIC;
	signal vaium_9     : STD_LOGIC;
	signal vaium_10    : STD_LOGIC;
	signal vaium_11    : STD_LOGIC;
	signal vaium_12    : STD_LOGIC;
	signal vaium_13    : STD_LOGIC;
	signal vaium_14    : STD_LOGIC;
	signal vaium_15    : STD_LOGIC;
	signal vaium_16    : STD_LOGIC;
	signal vaium_17    : STD_LOGIC;
	signal vaium_18    : STD_LOGIC;
	signal vaium_19    : STD_LOGIC;
	signal vaium_20    : STD_LOGIC;
	signal vaium_21    : STD_LOGIC;
	signal vaium_22    : STD_LOGIC;
	signal vaium_23    : STD_LOGIC;
	signal vaium_24    : STD_LOGIC;
	signal vaium_25    : STD_LOGIC;
	signal vaium_26    : STD_LOGIC;
	signal vaium_27    : STD_LOGIC;
	signal vaium_28    : STD_LOGIC;
	signal vaium_29    : STD_LOGIC;
	signal vaium_30    : STD_LOGIC;
	signal overflow_31 : STD_LOGIC;


	
   begin
	
	BIT0  : entity work.ULAMIPS1bit port map (entradaA => entradaA(0), entradaB => entradaB(0), vem1 => inverteB, inverteB => inverteB, slt => overflow_31, sel_opULA => seletor, resultado => saida(0), vai1 => vaium_0);

	BIT1  : entity work.ULAMIPS1bit port map (entradaA => entradaA(1), entradaB => entradaB(1), vem1 => vaium_0, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(1), vai1 => vaium_1);	

	BIT2  : entity work.ULAMIPS1bit port map (entradaA => entradaA(2), entradaB => entradaB(2), vem1 => vaium_1, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(2), vai1 => vaium_2);
	
	BIT3  : entity work.ULAMIPS1bit port map (entradaA => entradaA(3), entradaB => entradaB(3), vem1 => vaium_2, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(3), vai1 => vaium_3);
	
	BIT4  : entity work.ULAMIPS1bit port map (entradaA => entradaA(4), entradaB => entradaB(4), vem1 => vaium_3, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(4), vai1 => vaium_4);
	
	BIT5  : entity work.ULAMIPS1bit port map (entradaA => entradaA(5), entradaB => entradaB(5), vem1 => vaium_4, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(5), vai1 => vaium_5);
	
	BIT6  : entity work.ULAMIPS1bit port map (entradaA => entradaA(6), entradaB => entradaB(6), vem1 => vaium_5, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(6), vai1 => vaium_6);
	
	BIT7  : entity work.ULAMIPS1bit port map (entradaA => entradaA(7), entradaB => entradaB(7), vem1 => vaium_6, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(7), vai1 => vaium_7);
	
	BIT8  : entity work.ULAMIPS1bit port map (entradaA => entradaA(8), entradaB => entradaB(8), vem1 => vaium_7, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(8), vai1 => vaium_8);
	
	BIT9  : entity work.ULAMIPS1bit port map (entradaA => entradaA(9), entradaB => entradaB(9), vem1 => vaium_8, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(9), vai1 => vaium_9);
	
	BIT10 : entity work.ULAMIPS1bit port map (entradaA => entradaA(10), entradaB => entradaB(10), vem1 => vaium_9, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(10), vai1 => vaium_10);
	
	BIT11 : entity work.ULAMIPS1bit port map (entradaA => entradaA(11), entradaB => entradaB(11), vem1 => vaium_10, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(11), vai1 => vaium_11);
	
	BIT12 : entity work.ULAMIPS1bit port map (entradaA => entradaA(12), entradaB => entradaB(12), vem1 => vaium_11, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(12), vai1 => vaium_12);
	
	BIT13 : entity work.ULAMIPS1bit port map (entradaA => entradaA(13), entradaB => entradaB(13), vem1 => vaium_12, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(13), vai1 => vaium_13);
	
	BIT14 : entity work.ULAMIPS1bit port map (entradaA => entradaA(14), entradaB => entradaB(14), vem1 => vaium_13, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(14), vai1 => vaium_14);
	
	BIT15 : entity work.ULAMIPS1bit port map (entradaA => entradaA(15), entradaB => entradaB(15), vem1 => vaium_14, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(15), vai1 => vaium_15);
	
	BIT16 : entity work.ULAMIPS1bit port map (entradaA => entradaA(16), entradaB => entradaB(16), vem1 => vaium_15, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(16), vai1 => vaium_16);
	
	BIT17 : entity work.ULAMIPS1bit port map (entradaA => entradaA(17), entradaB => entradaB(17), vem1 => vaium_16, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(17), vai1 => vaium_17);
	
	BIT18 : entity work.ULAMIPS1bit port map (entradaA => entradaA(18), entradaB => entradaB(18), vem1 => vaium_17, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(18), vai1 => vaium_18);
	
	BIT19 : entity work.ULAMIPS1bit port map (entradaA => entradaA(19), entradaB => entradaB(19), vem1 => vaium_18, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(19), vai1 => vaium_19);
	
	BIT20 : entity work.ULAMIPS1bit port map (entradaA => entradaA(20), entradaB => entradaB(20), vem1 => vaium_19, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(20), vai1 => vaium_20);
	
	BIT21 : entity work.ULAMIPS1bit port map (entradaA => entradaA(21), entradaB => entradaB(21), vem1 => vaium_20, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(21), vai1 => vaium_21);
	
	BIT22 : entity work.ULAMIPS1bit port map (entradaA => entradaA(22), entradaB => entradaB(22), vem1 => vaium_21, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(22), vai1 => vaium_22);
	
	BIT23 : entity work.ULAMIPS1bit port map (entradaA => entradaA(23), entradaB => entradaB(23), vem1 => vaium_22, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(23), vai1 => vaium_23);
	
	BIT24 : entity work.ULAMIPS1bit port map (entradaA => entradaA(24), entradaB => entradaB(24), vem1 => vaium_23, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(24), vai1 => vaium_24);
	
	BIT25 : entity work.ULAMIPS1bit port map (entradaA => entradaA(25), entradaB => entradaB(25), vem1 => vaium_24, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(25), vai1 => vaium_25);
	
	BIT26 : entity work.ULAMIPS1bit port map (entradaA => entradaA(26), entradaB => entradaB(26), vem1 => vaium_25, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(26), vai1 => vaium_26);
	
	BIT27 : entity work.ULAMIPS1bit port map (entradaA => entradaA(27), entradaB => entradaB(27), vem1 => vaium_26, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(27), vai1 => vaium_27);
	
	BIT28 : entity work.ULAMIPS1bit port map (entradaA => entradaA(28), entradaB => entradaB(28), vem1 => vaium_27, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(28), vai1 => vaium_28);
	
	BIT29 : entity work.ULAMIPS1bit port map (entradaA => entradaA(29), entradaB => entradaB(29), vem1 => vaium_28, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(29), vai1 => vaium_29);
	
	BIT30 : entity work.ULAMIPS1bit port map (entradaA => entradaA(30), entradaB => entradaB(30), vem1 => vaium_29, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(30), vai1 => vaium_30);
	
	BIT31 : entity work.ULAMIPSbit31 port map (entradaA => entradaA(31), entradaB => entradaB(31), vem1 => vaium_30, inverteB => inverteB, slt => '0', sel_opULA => seletor, resultado => saida(31), overflow => overflow_31);
	
	
	Zero <= not (saida(31) or saida(30) or saida(29) or saida(28) or saida(27) or saida(26) or saida(25) or saida(24) or
					 saida(23) or saida(22) or saida(21) or saida(20) or saida(19) or saida(18) or saida(17) or saida(16) or
					 saida(15) or saida(14) or saida(13) or saida(12) or saida(11) or saida(10) or saida(9)  or saida(8) or
					 saida(7)  or saida(6)  or saida(5)  or saida(4)  or saida(3)  or saida(2)  or saida(1)  or saida(0));

				  
end architecture;