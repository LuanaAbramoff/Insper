library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

--entradas : entradaA - saída do banco de registradores (Dados_EntradaRAM)
--				 entradaB - Imediato ou Valor da memória (MUX_Saida)
-- saida   : entra no banco de registradores
-- operações novas: AND e CLT 
-- CLT inclui a nova flag Menor_ULA que recebe o bit mais significativo do resultado da subtração


entity ULASomaSub is
    generic ( larguraDados : natural := 8 );
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC_VECTOR(1 downto 0);
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		Zero_ULA:		 out STD_LOGIC;
		Menor_ULA:		 out STD_LOGIC
    );
end entity;

architecture comportamento of ULASomaSub is
   signal soma :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal andi : STD_LOGIC_VECTOR((larguraDados-1) downto 0); --NOVO
	signal passa : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
    begin
      soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
      subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
		andi <= STD_LOGIC_VECTOR(unsigned(entradaA) AND unsigned(entradaB)); -- NOVO
		passa     <= entradaB;
      saida <= soma when (seletor = "01") else passa when (seletor = "10") else andi when (seletor = "11") else subtracao;
		Zero_ULA <= not (saida(7) or saida(6) or saida(5) or saida(4) or saida(3) or saida(2) or saida(1) or saida(0));
		Menor_ULA <= saida(7); --NOVO

end architecture;