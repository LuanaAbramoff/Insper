library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registradorGenerico_EXEC_MEM is
    generic (
        larguraDados     : natural := 32;
		  larguraEnderecos : natural := 32
    );
	 
    port (
	 
		--entradas
		 habEscrita_Regs_EXEC      : in std_logic;
		 Sel_Mux_ULA_RAM_LUI_EXEC  : in std_logic_vector(1 downto 0);
		 BEQ_EXEC                  : in std_logic;
		 BNE_EXEC                  : in std_logic;
		 habEscritaMEM_EXEC        : in std_logic;
		 habLeituraMEM_EXEC        : in std_logic;
		 
		 Dado_Rt_RAM_EXEC          : in std_logic_vector(larguraDados-1 downto 0);
		 Endereco_Reg_C_EXEC       : in std_logic_vector(4 downto 0);
		 Zero_BEQ					   : in std_logic;
		 Endereco_ULA_RAM          : in std_logic_vector(larguraEnderecos-1 downto 0);
		 LUI_Estendido_EXEC        : in std_logic_vector(larguraDados-1 downto 0);
		 PC_Mais_4_EXEC            : in std_logic_vector(larguraEnderecos-1 downto 0);
		 Branch_Address            : in std_logic_vector(larguraDados-1 downto 0);
		 
		 
		 --saídas
       habEscrita_Regs_EXEC_MEM  : out std_logic;
		 Sel_Mux_ULA_RAM_LUI_EX_MEM: out std_logic_vector(1 downto 0);
		 BEQ_EXEC_MEM              : out std_logic;
		 BNE_EXEC_MEM              : out std_logic;
		 habEscritaMEM_EXEC_MEM    : out std_logic;
		 habLeituraMEM_EXEC_MEM    : out std_logic;
		 
		 Dado_Rt_RAM_EXEC_MEM      : out std_logic_vector(larguraDados-1 downto 0);
		 Zero_BEQ_EXEC_MEM		   : out std_logic;
		 Endereco_ULA_RAM_EXEC_MEM : out std_logic_vector(larguraEnderecos-1 downto 0);
		 Endereco_Reg_C_EXEC_MEM   : out std_logic_vector(4 downto 0);
		 LUI_Estendido_EXEC_MEM 	: out std_logic_vector(larguraDados-1 downto 0);
		 PC_Mais_4_EXEC_MEM        : out std_logic_vector(larguraEnderecos-1 downto 0);
		 Branch_Address_EXEC_IF    : out std_logic_vector(larguraDados-1 downto 0);
		 
		 --controle
       ENABLE : in std_logic;
       CLK,RST : in std_logic
		 
		 
        );
end entity;

architecture comportamento of registradorGenerico_EXEC_MEM is
begin
    -- In Altera devices, register signals have a set priority.
    -- The HDL design should reflect this priority.
    process(RST, CLK)
    begin
        -- The asynchronous reset signal has the highest priority
        if (RST = '1') then
		  
            habEscrita_Regs_EXEC_MEM    <= '0';
				Sel_Mux_ULA_RAM_LUI_EX_MEM  <= (others => '0');
				BEQ_EXEC_MEM                <= '0';
				BNE_EXEC_MEM                <= '0';
				habEscritaMEM_EXEC_MEM      <= '0';
				habLeituraMEM_EXEC_MEM      <= '0';
				
				Dado_Rt_RAM_EXEC_MEM        <= (others => '0');
				Zero_BEQ_EXEC_MEM           <= '0'; 
				Endereco_ULA_RAM_EXEC_MEM   <= (others => '0'); 
				LUI_Estendido_EXEC_MEM      <= (others => '0');
				PC_Mais_4_EXEC_MEM          <= (others => '0');
				Endereco_Reg_C_EXEC_MEM     <= (others => '0');
				Branch_Address_EXEC_IF      <= (others => '0');
				
				-- Código reconfigurável.
        else
            -- At a clock edge, if asynchronous signals have not taken priority,
            -- respond to the appropriate synchronous signal.
            -- Check for synchronous reset, then synchronous load.
            -- If none of these takes precedence, update the register output
            -- to be the register input.
            if (rising_edge(CLK)) then
                if (ENABLE = '1') then
					 
                        habEscrita_Regs_EXEC_MEM   <= habEscrita_Regs_EXEC;
								Sel_Mux_ULA_RAM_LUI_EX_MEM <= Sel_Mux_ULA_RAM_LUI_EXEC;
								BEQ_EXEC_MEM               <= BEQ_EXEC;
								BNE_EXEC_MEM               <= BNE_EXEC;
								habEscritaMEM_EXEC_MEM     <= habEscritaMEM_EXEC;
								habLeituraMEM_EXEC_MEM     <= habLeituraMEM_EXEC;
								
								Dado_Rt_RAM_EXEC_MEM       <= Dado_Rt_RAM_EXEC;
								Zero_BEQ_EXEC_MEM          <= Zero_BEQ;
								Endereco_ULA_RAM_EXEC_MEM  <= Endereco_ULA_RAM;
								LUI_Estendido_EXEC_MEM     <= LUI_Estendido_EXEC;
								PC_Mais_4_EXEC_MEM         <= PC_Mais_4_EXEC;
								Endereco_Reg_C_EXEC_MEM    <= Endereco_Reg_C_EXEC;
								Branch_Address_EXEC_IF     <= Branch_Address;
								
                end if;
            end if;
        end if;
    end process;
end architecture;