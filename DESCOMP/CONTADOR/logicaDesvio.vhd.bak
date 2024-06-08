library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logicaDesvio is
     Port (	  jmp,jeq,habIgual,jsr,ret : in  STD_LOGIC;
              saida   : out STD_LOGIC_VECTOR(1 downto 0)
				  );
end entity;

architecture comportamento of logicaDesvio is

begin
	saida(1) <= ret;
	saida(0) <= jmp OR jsr OR (jeq AND habIgual);

end  architecture ;