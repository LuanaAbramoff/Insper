library ieee;
use ieee.std_logic_1164.all;

entity decoderGeneric is
  port ( entrada_opcode : in std_logic_vector(5 downto 0);
			entrada_funct  : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(8 downto 0)
  );
end entity;

architecture comportamento of decoderGeneric is

  constant SW   : std_logic_vector(5 downto 0) := "101011";
  constant LW   : std_logic_vector(5 downto 0) := "100011";
  constant BEQ  : std_logic_vector(5 downto 0) := "000100";
  
  constant SOMA : std_logic_vector(5 downto 0) := "100000";
  constant SUB  : std_logic_vector(5 downto 0) := "100010";
  
  constant JMP  : std_logic_vector(5 downto 0) := "000010";

  begin
saida <= "011001001"   when entrada_opcode = SW   else
         "011000111"   when entrada_opcode = LW   else
			"000010000"   when entrada_opcode = BEQ  else
			"000100011"   when (entrada_funct  = SOMA AND entrada_opcode = "000000") else
			"000100010"   when (entrada_funct  = SUB  AND entrada_opcode = "000000") else
			"100000000"   when entrada_opcode = JMP  else
         "000000000";  -- NOP para os entradas Indefinidas
			
--ordem de bits: selMuxPc4JMP, selMuxULARAM, selMuxRtImediato, selMuxRtRd, BEQ, habEscritaMEM, habLeituraMEM, habEscrita_Banco_Regs, OpULA

end architecture;