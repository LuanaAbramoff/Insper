library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity operadorAND2x1 is
     Port (	  in1, in2: in  STD_LOGIC;
              saida   : out STD_LOGIC
				  );
end entity;

architecture comportamento of operadorAND2x1 is

begin

	saida <= in1 AND in2;

end  architecture ;