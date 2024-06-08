library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity operadorXOR is
     Port (	  in1, in2: in  STD_LOGIC;
              saida   : out STD_LOGIC
				  );
end entity;

architecture comportamento of operadorXOR is

begin

	saida <= in1 XOR in2;

end  architecture ;