library ieee;
use ieee.std_logic_1164.all;

entity decoderGeneric is
  port ( entrada : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(4 downto 0)
  );
end entity;

architecture comportamento of decoderGeneric is

  constant SW   : std_logic_vector(5 downto 0) := "101011";
  constant LW   : std_logic_vector(5 downto 0) := "100011";
  constant BEQ  : std_logic_vector(5 downto 0) := "000100";

  begin
saida <= "01001"   when entrada = SW  else
         "00111"   when entrada = LW  else
			"10000"   when entrada = BEQ else
         "00000";  -- NOP para os entradas Indefinidas
end architecture;