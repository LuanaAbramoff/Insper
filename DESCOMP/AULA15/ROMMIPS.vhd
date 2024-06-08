library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROMMIPS IS
   generic (
          dataWidth: natural := 32;
          addrWidth: natural := 32;
       memoryAddrWidth:  natural := 6 );   -- 64 posicoes de 32 bits cada
   port (
          Endereco : in  std_logic_vector (addrWidth-1 downto 0);
          Dado     : out std_logic_vector (dataWidth-1 downto 0) );
end entity;

architecture assincrona OF ROMMIPS IS
  type blocoMemoria IS ARRAY(0 TO 2**memoryAddrWidth - 1) OF std_logic_vector(dataWidth-1 downto 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
        -- Inicializa os endereços:
		  
		  tmp(0) := x"AD280004"; -- sw $rt, immediate($rs) => sw $t0, 4($t1)
		  tmp(1) := x"8D290004"; -- lw $rt, immediate($rs) => lw $t1, 4($t1)
		  tmp(2) := x"11090002"; -- beq $rs, $rt, immediate => beq $t0, $t1, 2
		  tmp(3) := x"00000000"; -- nop
		  tmp(4) := x"00000000"; -- nop
		  tmp(5) := x"110AFFFE"; -- beq $rs, $rt, immediate => beq $t0, $t2, -2
		  tmp(6) := x"00000000"; -- nop
		  tmp(7) := x"08000002"; -- jmp 2
		  
		  
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

-- Utiliza uma quantidade menor de endereços locais:
   signal EnderecoLocal : std_logic_vector(memoryAddrWidth-1 downto 0);

begin
  EnderecoLocal <= Endereco(memoryAddrWidth+1 downto 2);
  Dado <= memROM (to_integer(unsigned(EnderecoLocal)));
end architecture;