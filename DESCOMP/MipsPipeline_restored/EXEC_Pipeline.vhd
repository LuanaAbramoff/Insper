library ieee;
use ieee.std_logic_1164.all;

entity EXEC_Pipeline is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 32
  );   
  port   (

  --entradas
		 CLK                          : in std_logic;
		 habEscrita_Banco_Regs        : in std_logic;
		 Sel_Mux_Rt_Imediato          : in std_logic;
		 tipoR                        : in std_logic;
		 Sel_Mux_ULA_RAM_LUI          : in std_logic_vector(1 downto 0);
		 BEQ                          : in std_logic;
		 BNE                          : in std_logic;
		 habEscritaMEM                : in std_logic;
		 habLeituraMEM                : in std_logic;
	  
		 LUI_Estendido                : in std_logic_vector(larguraDados-1 downto 0);
		 Imediato_Estendido           : in std_logic_vector(larguraDados-1 downto 0);
		 Endereco_Reg_C_ID_EXEC       : in std_logic_vector(4 downto 0);
		 Dado_Rs 					      : in std_logic_vector(larguraDados-1 downto 0);
		 Dado_Rt_RAM                  : in std_logic_vector(larguraDados-1 downto 0);
		 
		 funct_ID_EXEC				      : in std_logic_vector(5 downto 0);
		 opcode_ID_EXEC				   : in std_logic_vector(5 downto 0);
		 PC_Mais_4_ID_EXEC            : in std_logic_vector(larguraEnderecos-1 downto 0);
		 
	
	--saidas
		 habEscrita_Banco_Regs_EXEC   : out std_logic;
		 Sel_Mux_ULA_RAM_LUI_EXEC     : out std_logic_vector(1 downto 0);
		 BEQ_EXEC_MEM                 : out std_logic;
		 BNE_EXEC_MEM                 : out std_logic;
		 habLeituraMEM_EXEC           : out std_logic;
		 habEscritaMEM_EXEC           : out std_logic;
		 PC_Mais_4_EXEC_MEM           : out std_logic_vector(larguraEnderecos-1 downto 0);
		 Branch_Address               : out std_logic_vector(larguraDados-1 downto 0);
		 Dado_Rt_RAM_EXEC_MEM         : out std_logic_vector(larguraDados-1 downto 0);
		 Zero_BEQ					      : out std_logic;
		 Endereco_Reg_C_EXEC          : out std_logic_vector(4 downto 0);
		 Endereco_ULA_RAM             : out std_logic_vector(larguraEnderecos-1 downto 0);
		 LUI_Estendido_EXEC_MEM       : out std_logic_vector(larguraDados-1 downto 0)

  );
end entity;


architecture arquitetura of EXEC_Pipeline is


  signal Entrada_B_ULA           : std_logic_vector(larguraDados-1 downto 0);--fica!!!!!!
  signal Imediato_Estendido_Sft2 : std_logic_vector(larguraDados-1 downto 0);--fica!!!!
  
  --ula ctrl
  signal Controle_ULA            : std_logic_vector(2 downto 0);--fica!!!!!!!!
  
  --fica!!!!!
  alias OpULA              	   : std_logic_vector(1 downto 0) is Controle_ULA(1 downto 0);
  alias inverteB             	   : std_logic is Controle_ULA(2);

begin

		-- Unidade de controle da ULA									  									 								  
		Controle_ULA1:   entity work.ULActrl
							  port map ( entrada_opcode => opcode_ID_EXEC,
											 entrada_funct  => funct_ID_EXEC,
											 tipoR          => tipoR,
											 saida          => Controle_ULA);
											 
		-- mux de seleção do DaDo Lido Reg 2 ou do imediato estendido				  			  
		Mux_Rt_Imediato   :  entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
				  port map(entradaA_MUX => Dado_Rt_RAM,
							  entradaB_MUX =>  Imediato_Estendido,
							  seletor_MUX => Sel_Mux_Rt_Imediato,
							  saida_MUX => Entrada_B_ULA);
						  
		ULA : entity work.ULAMIPS  generic map(larguraDados => larguraDados)
					 port map (entradaA => Dado_Rs, 
								  entradaB => Entrada_B_ULA,
								  seletor => OpULA,
								  inverteB => inverteB,
								  saida => Endereco_ULA_RAM,
								  Zero => Zero_BEQ);			 
		
		-- imediato estendido shiftado
		Imediato_shift: entity work.shiftLeft2
					 port map (entrada => Imediato_Estendido, saida => Imediato_Estendido_Sft2);
		
		-- somador 	para a realização de desvios como o BEQ e o BNE	
		somadorBrAdd :  entity work.somadorGenerico  generic map (larguraDados => larguraDados)
				  port map( entradaA => PC_Mais_4_ID_EXEC, entradaB =>  Imediato_Estendido_Sft2, saida => Branch_Address); 
				  

				  
		habEscrita_Banco_Regs_EXEC <= habEscrita_Banco_Regs;
		Sel_Mux_ULA_RAM_LUI_EXEC   <= Sel_Mux_ULA_RAM_LUI;
		BEQ_EXEC_MEM               <= BEQ;
		BNE_EXEC_MEM               <= BNE;
		habLeituraMEM_EXEC         <= habLeituraMEM;
		habEscritaMEM_EXEC         <= habEscritaMEM;
		PC_Mais_4_EXEC_MEM         <= PC_Mais_4_ID_EXEC;
		Dado_Rt_RAM_EXEC_MEM       <= Dado_Rt_RAM;
		LUI_Estendido_EXEC_MEM     <= LUI_Estendido;
		Endereco_Reg_C_EXEC        <= Endereco_Reg_C_ID_EXEC;

end architecture;