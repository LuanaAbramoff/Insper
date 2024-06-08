library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity operadorAND4x1 is
     Port (	  in1, in2, in3, in4 : in  STD_LOGIC;
              saida   : out STD_LOGIC
				  );
end entity;

architecture comportamento of operadorAND4x1 is

begin

	saida <= in1 AND in2 AND in3 AND in4;

end  architecture ;