library ieee;
use ieee.std_logic_1164.all;

entity decoderGeneric is
  port ( entrada : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(1 downto 0)
  );
end entity;

architecture comportamento of decoderGeneric is

  constant SOMA : std_logic_vector(5 downto 0) := "100000";
  constant SUB  : std_logic_vector(5 downto 0) := "100010";

  begin
saida <= "11"   when entrada = SOMA else
         "10"   when entrada = SUB else
         "00";  -- NOP para os entradas Indefinidas
end architecture;