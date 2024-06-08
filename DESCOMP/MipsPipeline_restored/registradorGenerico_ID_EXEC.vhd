library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registradorGenerico_ID_EXEC is
    generic (
        larguraDados     : natural := 32;
		  larguraEnderecos : natural := 32
    );
	 
    port (
	 
		--entradas
		 habEscrita_Banco_Regs     : in std_logic;
		 Sel_Mux_Rt_Imediato       : in std_logic;
		 tipoR                     : in std_logic;
		 Sel_Mux_ULA_RAM_LUI       : in std_logic_vector(1 downto 0);
		 BEQ                       : in std_logic;
		 BNE                       : in std_logic;
		 habEscritaMEM             : in std_logic;
		 habLeituraMEM             : in std_logic;
		 
		 LUI_Estendido             : in std_logic_vector(larguraDados-1 downto 0);
		 Imediato_Estendido        : in std_logic_vector(larguraDados-1 downto 0);
		 Dado_Rs 					   : in std_logic_vector(larguraDados-1 downto 0);
		 Dado_Rt_RAM               : in std_logic_vector(larguraDados-1 downto 0);
		 
		 funct                     : in std_logic_vector(5 downto 0);
		 opcode                    : in std_logic_vector(5 downto 0);
		 Endereco_Reg_C_ID         : in std_logic_vector(4 downto 0);
		 PC_Mais_4_ID              : in std_logic_vector(larguraEnderecos-1 downto 0);
		 
		 
		 --saídas
       habEscrita_Regs_ID_EXEC   : out std_logic;
		 Sel_Mux_Rt_Imm_ID_EXEC    : out std_logic;
		 tipoR_ID_EXEC             : out std_logic;
		 Sel_Mux_ULA_RAM_LUI_ID_EX : out std_logic_vector(1 downto 0);
		 BEQ_ID_EXEC               : out std_logic;
		 BNE_ID_EXEC               : out std_logic;
		 habEscritaMEM_ID_EXEC     : out std_logic;
		 habLeituraMEM_ID_EXEC     : out std_logic;
		 
		 LUI_Estendido_ID_EXEC     : out std_logic_vector(larguraDados-1 downto 0);
		 Imediato_Estendido_ID_EXEC: out std_logic_vector(larguraDados-1 downto 0);
		 Endereco_Reg_C_ID_EXEC    : out std_logic_vector(4 downto 0);
		 Dado_Rs_ID_EXEC 				: out std_logic_vector(larguraDados-1 downto 0);
		 Dado_Rt_RAM_ID_EXEC       : out std_logic_vector(larguraDados-1 downto 0);
		 
		 funct_ID_EXEC             : out std_logic_vector(5 downto 0);
		 opcode_ID_EXEC            : out std_logic_vector(5 downto 0);
		 PC_Mais_4_ID_EXEC         : out std_logic_vector(larguraEnderecos-1 downto 0);
		 
		 --controle
       ENABLE : in std_logic;
       CLK,RST : in std_logic
		 
		 
        );
end entity;

architecture comportamento of registradorGenerico_ID_EXEC is
begin
    -- In Altera devices, register signals have a set priority.
    -- The HDL design should reflect this priority.
    process(RST, CLK)
    begin
        -- The asynchronous reset signal has the highest priority
        if (RST = '1') then
		  
            habEscrita_Regs_ID_EXEC     <= '0';
				Sel_Mux_Rt_Imm_ID_EXEC      <= '0';
				tipoR_ID_EXEC               <= '0';
				Sel_Mux_ULA_RAM_LUI_ID_EX   <= (others => '0');
				BEQ_ID_EXEC                 <= '0';
				BNE_ID_EXEC                 <= '0';
				habEscritaMEM_ID_EXEC       <= '0';
				habLeituraMEM_ID_EXEC       <= '0';
				
				LUI_Estendido_ID_EXEC       <= (others => '0');
				Imediato_Estendido_ID_EXEC  <= (others => '0'); 
				Dado_Rs_ID_EXEC             <= (others => '0'); 
				Dado_Rt_RAM_ID_EXEC         <= (others => '0');
				Endereco_Reg_C_ID_EXEC      <= (others => '0');
				
				funct_ID_EXEC               <= (others => '0');
				opcode_ID_EXEC              <= (others => '0');
				PC_Mais_4_ID_EXEC           <= (others => '0');
				
				-- Código reconfigurável.
        else
            -- At a clock edge, if asynchronous signals have not taken priority,
            -- respond to the appropriate synchronous signal.
            -- Check for synchronous reset, then synchronous load.
            -- If none of these takes precedence, update the register output
            -- to be the register input.
            if (rising_edge(CLK)) then
                if (ENABLE = '1') then
					 
                        habEscrita_Regs_ID_EXEC    <= habEscrita_Banco_Regs;
								Sel_Mux_Rt_Imm_ID_EXEC     <= Sel_Mux_Rt_Imediato;
								tipoR_ID_EXEC              <= tipoR;
								Sel_Mux_ULA_RAM_LUI_ID_EX  <= Sel_Mux_ULA_RAM_LUI;
								BEQ_ID_EXEC                <= BEQ;
								BNE_ID_EXEC                <= BNE;
								habEscritaMEM_ID_EXEC      <= habEscritaMEM;
								habLeituraMEM_ID_EXEC      <= habLeituraMEM;
								
								LUI_Estendido_ID_EXEC      <= LUI_Estendido;
								Imediato_Estendido_ID_EXEC <= Imediato_Estendido;
								Dado_Rs_ID_EXEC            <= Dado_Rs;
								Dado_Rt_RAM_ID_EXEC        <= Dado_Rt_RAM;
								Endereco_Reg_C_ID_EXEC     <= Endereco_Reg_C_ID;
								
								funct_ID_EXEC              <= funct;
								opcode_ID_EXEC             <= opcode;
								PC_Mais_4_ID_EXEC          <= PC_Mais_4_ID;
								
                end if;
            end if;
        end if;
    end process;
end architecture;