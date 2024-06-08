library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registradorGenerico_MEM_WB is
    generic (
        larguraDados     : natural := 32;
		  larguraEnderecos : natural := 32
    );
	 
    port (
	 
		--entradas
		 habEscrita_Regs_MEM       : in std_logic;
		 Sel_Mux_ULA_RAM_LUI_MEM   : in std_logic_vector(1 downto 0);
		 PC_Mais_4_MEM             : in std_logic_vector(larguraEnderecos-1 downto 0);
		 
		 Endereco_ULA_RAM_MEM      : in std_logic_vector(larguraEnderecos-1 downto 0);
		 Dado_RAM_Rt					: in std_logic_vector(larguraDados-1 downto 0);
		 LUI_Estendido_MEM         : in std_logic_vector(larguraDados-1 downto 0);
		 Endereco_Reg_C_MEM        : in std_logic_vector(4 downto 0);
		 		 
		 --saídas
       habEscrita_Regs_MEM_WB    : out std_logic;
		 Sel_Mux_ULA_RAM_LUI_MEM_WB: out std_logic_vector(1 downto 0);
		 PC_Mais_4_MEM_WB          : out std_logic_vector(larguraEnderecos-1 downto 0);
		 
		 Endereco_ULA_RAM_MEM_WB   : out std_logic_vector(larguraEnderecos-1 downto 0);
		 Dado_RAM_Rt_MEM_WB     	: out std_logic_vector(larguraDados-1 downto 0);
		 LUI_Estendido_MEM_WB      : out std_logic_vector(larguraDados-1 downto 0);
		 Endereco_Reg_C_MEM_WB     : out std_logic_vector(4 downto 0);
		 
		 --controle
       ENABLE : in std_logic;
       CLK,RST : in std_logic
		 
		 
        );
end entity;

architecture comportamento of registradorGenerico_MEM_WB is
begin
    -- In Altera devices, register signals have a set priority.
    -- The HDL design should reflect this priority.
    process(RST, CLK)
    begin
        -- The asynchronous reset signal has the highest priority
        if (RST = '1') then
		  
            habEscrita_Regs_MEM_WB      <= '0';
				Sel_Mux_ULA_RAM_LUI_MEM_WB  <= (others => '0');
				PC_Mais_4_MEM_WB            <= (others => '0');
				
				Endereco_ULA_RAM_MEM_WB     <= (others => '0');
				Dado_RAM_Rt_MEM_WB          <= (others => '0');
				LUI_Estendido_MEM_WB        <= (others => '0');
				Endereco_Reg_C_MEM_WB       <= (others => '0');
				
				-- Código reconfigurável.
        else
            -- At a clock edge, if asynchronous signals have not taken priority,
            -- respond to the appropriate synchronous signal.
            -- Check for synchronous reset, then synchronous load.
            -- If none of these takes precedence, update the register output
            -- to be the register input.
            if (rising_edge(CLK)) then
                if (ENABLE = '1') then
					 
                        habEscrita_Regs_MEM_WB     <= habEscrita_Regs_MEM;
								Sel_Mux_ULA_RAM_LUI_MEM_WB <= Sel_Mux_ULA_RAM_LUI_MEM;
								PC_Mais_4_MEM_WB           <= PC_Mais_4_MEM;
								
								Endereco_ULA_RAM_MEM_WB    <= Endereco_ULA_RAM_MEM;
								Dado_RAM_Rt_MEM_WB         <= Dado_RAM_Rt;
								LUI_Estendido_MEM_WB       <= LUI_Estendido_MEM;
								Endereco_Reg_C_MEM_WB      <= Endereco_Reg_C_MEM;
								
                end if;
            end if;
        end if;
    end process;
end architecture;