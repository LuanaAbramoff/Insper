library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registradorGenerico_IF_ID is
    generic (
        larguraDados     : natural := 32;
		  larguraEnderecos : natural := 32
    );
	 
    port (
	 
		--entradas
		 Instrucao_Saida_ROM       : in std_logic_vector(larguraDados-1 downto 0);
		 PC_Mais_4_Somador_PC      : in std_logic_vector(larguraEnderecos-1 downto 0);
		 
		 
		 --saídas
       Instrucao_Saida_ROM_IF_ID : out std_logic_vector(larguraEnderecos-1 downto 0);
		 PC_Mais_4_IF_ID           : out std_logic_vector(larguraEnderecos-1 downto 0);
		 
		 --controle
       ENABLE : in std_logic;
       CLK,RST : in std_logic
		 
		 
        );
end entity;

architecture comportamento of registradorGenerico_IF_ID is
begin
    -- In Altera devices, register signals have a set priority.
    -- The HDL design should reflect this priority.
    process(RST, CLK)
    begin
        -- The asynchronous reset signal has the highest priority
        if (RST = '1') then
		  
            Instrucao_Saida_ROM_IF_ID <= (others => '0');
				PC_Mais_4_IF_ID           <= (others => '0');
				-- Código reconfigurável.
        else
            -- At a clock edge, if asynchronous signals have not taken priority,
            -- respond to the appropriate synchronous signal.
            -- Check for synchronous reset, then synchronous load.
            -- If none of these takes precedence, update the register output
            -- to be the register input.
            if (rising_edge(CLK)) then
                if (ENABLE = '1') then
                        Instrucao_Saida_ROM_IF_ID <= Instrucao_Saida_ROM;
								PC_Mais_4_IF_ID           <= PC_Mais_4_Somador_PC;
                end if;
            end if;
        end if;
    end process;
end architecture;