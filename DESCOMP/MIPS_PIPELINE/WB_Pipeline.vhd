library ieee;
use ieee.std_logic_1164.all;

entity WB_Pipeline is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 32
  );   
  port   (
		
		--entradas
		 habEscrita_Banco_Regs_MEM_WB : in std_logic;
		 Sel_Mux_ULA_RAM_LUI_MEM_WB   : in std_logic_vector(1 downto 0);
		 PC_Mais_4_MEM_WB             : in std_logic_vector(larguraEnderecos-1 downto 0);
		 Endereco_ULA_RAM_MEM_WB      : in std_logic_vector(larguraEnderecos-1 downto 0);
		 Dado_RAM_Rt                  : in std_logic_vector(larguraDados-1 downto 0);
		 LUI_Estendido_MEM_WB         : in std_logic_vector(larguraDados-1 downto 0);
		 Endereco_Reg_C_MEM_WB        : in std_logic_vector(4 downto 0);
		 
		--saidas
		 Dado_Escrita_Banco_Reg       : out std_logic_vector(larguraDados-1 downto 0);
		 Endereco_Reg_C_WB            : out std_logic_vector(4 downto 0);
		 habEscrita_Banco_Regs_WB     : out std_logic
	

  );
end entity;


architecture arquitetura of WB_Pipeline is


begin

			 
Mux_ULA_RAM_LUI  :  entity work.muxGenerico4x1 generic map (larguraDados => larguraDados)
        port map(entrada0_MUX => Endereco_ULA_RAM_MEM_WB,
                 entrada1_MUX => Dado_RAM_Rt,
					  entrada2_MUX => PC_Mais_4_MEM_WB,
					  entrada3_MUX => LUI_Estendido_MEM_WB,
                 seletor_MUX => Sel_Mux_ULA_RAM_LUI_MEM_WB,
                 saida_MUX => Dado_Escrita_Banco_Reg);
					  
habEscrita_Banco_Regs_WB <= habEscrita_Banco_Regs_MEM_WB;
Endereco_Reg_C_WB        <= Endereco_Reg_C_MEM_WB;
					  

end architecture;