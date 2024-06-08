library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULASomaSub is
    generic ( larguraDados : natural := 32 );
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC;
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		Zero:     out STD_LOGIC
    );
end entity;

architecture comportamento of ULASomaSub is
   signal soma :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
    begin
	 
      soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
      subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
      saida <= soma when (seletor = '1') else subtracao;
		
		Zero <= not (Saida(31) or Saida(30) or Saida(29) or Saida(28) or Saida(27) or Saida(26) or Saida(25) or Saida(24) or
				  Saida(23) or Saida(22) or Saida(21) or Saida(20) or Saida(19) or Saida(18) or Saida(17) or Saida(16) or
				  Saida(15) or Saida(14) or Saida(13) or Saida(12) or Saida(11) or Saida(10) or Saida(9)  or Saida(8)  or
				  Saida(7)  or Saida(6)  or Saida(5)  or Saida(4)  or Saida(3)  or Saida(2)  or Saida(1)  or Saida(0));
				  
end architecture;