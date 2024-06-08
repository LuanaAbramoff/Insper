library ieee;
use ieee.std_logic_1164.all;

entity estendeLUI is
    generic
    (
        larguraDadoEntrada : natural  :=    16;
        larguraDadoSaida   : natural  :=    32
    );
    port
    (
        -- Input ports
        estendeSinal_IN : in  std_logic_vector(larguraDadoEntrada-1 downto 0);
        -- Output ports
        estendeSinal_OUT: out std_logic_vector(larguraDadoSaida-1 downto 0)
    );
end entity;

architecture comportamento of estendeLUI is
begin

	 estendeSinal_OUT(31 downto 16) <=  estendeSinal_IN ;
    estendeSinal_OUT(15 downto 0) <=  "0000000000000000";

end architecture;