library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity operadorNOT is
     Port (	  in1     : in  STD_LOGIC;
              saida   : out STD_LOGIC
				  );
end entity;

architecture comportamento of operadorNOT is

begin

	saida <= NOT(in1);

end  architecture ;