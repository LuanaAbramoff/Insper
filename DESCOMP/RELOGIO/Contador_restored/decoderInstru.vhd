library ieee;
use ieee.std_logic_1164.all;

--Mudanças feitas desde a Aula 5:
-- 1) Inclusão da Instrução ANDI (chama ANDI pois quando tentamos colocar AND ele não deixava compilar por confundir com o operador AND da própria linguagem)
--    Pontos de controle ativados: Bit 1 (Leitura de Memória), Bits 3 e 2 (Operação '11' que equivale a operação AND dentro da ULA), Bit 5 (Habilita A)


entity decoderInstru is
  port ( opcode : in std_logic_vector(3 downto 0);
         saida : out std_logic_vector(13 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is

  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI  : std_logic_vector(3 downto 0) := "0100";
  constant STA  : std_logic_vector(3 downto 0) := "0101"; 
  constant JMP  : std_logic_vector(3 downto 0) := "0110"; 
  constant JEQ  : std_logic_vector(3 downto 0) := "0111";
  constant CEQ  : std_logic_vector(3 downto 0) := "1000";
  constant JSR  : std_logic_vector(3 downto 0) := "1001";
  constant RET  : std_logic_vector(3 downto 0) := "1010";
  constant CLT  : std_logic_vector(3 downto 0) := "1011";
  constant JLT  : std_logic_vector(3 downto 0) := "1100";
  constant ANDI : std_logic_vector(3 downto 0) := "1101";

  begin
saida <= "00000000000000" when opcode = NOP else
         "00000000110010" when opcode = LDA else
         "00000000101010" when opcode = SOMA else
			"00000000111010" when opcode = ANDI else
         "00000000100010" when opcode = SUB else
         "00000001110000" when opcode = LDI else
			"00000000000001" when opcode = STA else
			"00010000000000" when opcode = JMP else
			"00000010000000" when opcode = JEQ else
			"00000000000110" when opcode = CEQ else
			"00100100000000" when opcode = JSR else
			"00001000000000" when opcode = RET else
			"01000000000010" when opcode = CLT else
			"10000000000000" when opcode = JLT else
         "00000000000000";  -- NOP para os opcodes Indefinidos
end architecture;