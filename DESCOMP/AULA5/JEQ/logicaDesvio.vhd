library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logicaDesvio is
     Port (	  jmp,jeq,habIgual : in  STD_LOGIC;
              saida   : out STD_LOGIC);
end entity;

architecture comportamento of logicaDesvio is

begin
	saida <= JMP or (JEQ and habIgual);

end  architecture ;