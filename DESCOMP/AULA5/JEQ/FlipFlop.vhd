library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FlipFlop is
    generic (
        larguraDados : natural := 1
    );
    port (DIN : in std_logic;
       DOUT : out std_logic;
       ENABLE : in std_logic;
       CLK : in std_logic
        );
end entity;

architecture comportamento of FlipFlop is
begin
    -- In Altera devices, register signals have a set priority.
    -- The HDL design should reflect this priority.
    process( CLK)
    begin
            if (rising_edge(CLK)) then
                if (ENABLE = '1') then
                        DOUT <= DIN;
                end if;
            end if;
    end process;
end architecture;