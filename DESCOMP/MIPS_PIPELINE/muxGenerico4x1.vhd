LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity muxGenerico4x1 is

  generic ( larguraDados : natural := 8);
  port (
    entrada0_MUX, entrada1_MUX, entrada2_MUX, entrada3_MUX : in  std_logic_vector((larguraDados-1) downto 0);
    seletor_MUX : in std_logic_vector(1 downto 0);
    saida_MUX   : out std_logic_vector((larguraDados-1) downto 0)
  );
end entity;

architecture Behavioral of muxGenerico4x1 is
begin
    saida_MUX <= entrada3_MUX when (seletor_MUX = "11") else entrada2_MUX when (seletor_MUX = "10") else entrada1_MUX when (seletor_MUX = "01") else entrada0_MUX;
end architecture;