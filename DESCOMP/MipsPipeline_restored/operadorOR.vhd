library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity operadorOR is
     Port (	  in1, in2: in  STD_LOGIC;
              saida   : out STD_LOGIC
				  );
end entity;

architecture comportamento of operadorOR is

begin

	saida <= in1 OR in2;

end  architecture ;