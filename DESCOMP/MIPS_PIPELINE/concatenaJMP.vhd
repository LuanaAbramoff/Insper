library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity concatenaJMP is
     Port (	  imediato  : in  std_logic_vector(25 downto 0);
              pc_mais_4 : in std_logic_vector(31 downto 0);
				  saida     : out std_logic_vector(31 downto 0)
				  );
end entity;

architecture comportamento of concatenaJMP is

begin

	saida <= pc_mais_4(31 downto 28) & imediato & "00";

end  architecture ;