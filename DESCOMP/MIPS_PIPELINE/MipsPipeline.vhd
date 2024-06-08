library ieee;
use ieee.std_logic_1164.all;

entity MipsPipeline is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 32;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );   
  port   (
    CLOCK_50 : in std_logic;
	 KEY: in std_logic_vector(3 downto 0);
	 
	 LEDR  : out std_logic_vector(9 downto 0);
	 HEX0  : out std_logic_vector(6 downto 0); 
	 HEX1  : out std_logic_vector(6 downto 0);
	 HEX2  : out std_logic_vector(6 downto 0);
	 HEX3  : out std_logic_vector(6 downto 0);
	 HEX4  : out std_logic_vector(6 downto 0);
	 HEX5  : out std_logic_vector(6 downto 0);
	 SW:	in std_logic_vector(9 downto 0) 
	

  );
end entity;


architecture arquitetura of MipsPipeline is


	--clock
	signal CLK						       : std_logic;
	
	
	--sinais IF - Internos
	signal Instrucao_Saida_ROM        : std_logic_vector(larguraEnderecos-1 downto 0);
	signal PC_Mais_4_Somador_PC       : std_logic_vector(larguraEnderecos-1 downto 0);
	signal PC_Saida                   : std_logic_vector(larguraEnderecos-1 downto 0);
	
	
	--sinais IF/ID
	signal Instrucao_Saida_ROM_IF_ID  : std_logic_vector(larguraEnderecos-1 downto 0);
	signal PC_Mais_4_IF_ID            : std_logic_vector(larguraEnderecos-1 downto 0);
	
	
	--sinais ID - vão para fase IF ou são entradas do registrador ID/EXEC
	signal JR_ID_IF                   : std_logic; 
   signal Sel_Mux_PC4_JMP_ID_IF      : std_logic;
   signal habEscrita_Banco_Regs      : std_logic;
   signal Sel_Mux_Rt_Imediato        : std_logic;
   signal tipoR                      : std_logic;
   signal Sel_Mux_ULA_RAM_LUI        : std_logic_vector(1 downto 0);
   signal BEQ                        : std_logic;
   signal BNE                        : std_logic;
   signal habEscritaMEM              : std_logic;
   signal habLeituraMEM              : std_logic;
	
	signal LUI_Estendido              : std_logic_vector(larguraDados-1 downto 0);
	signal Imediato_Estendido         : std_logic_vector(larguraDados-1 downto 0);
	signal Endereco_Reg_C_ID          : std_logic_vector(4 downto 0);
	signal Dado_Rs 					    : std_logic_vector(larguraDados-1 downto 0); --esse aqui vai tanto para o registrador quanto para IF
	signal Dado_Rt_RAM                : std_logic_vector(larguraDados-1 downto 0);
	signal Endereco_JMP_ID_IF			 : std_logic_vector(larguraEnderecos-1 downto 0);
	
	signal funct                      : std_logic_vector(5 downto 0);
   signal opcode                     : std_logic_vector(5 downto 0);
	signal PC_Mais_4_ID               : std_logic_vector(larguraEnderecos-1 downto 0);
	
	
	--sinais saída do registrador ID/EXEC
	signal habEscrita_Regs_ID_EXEC    : std_logic;
   signal Sel_Mux_Rt_Imm_ID_EXEC     : std_logic;
   signal tipoR_ID_EXEC              : std_logic;
	signal Sel_Mux_ULA_RAM_LUI_ID_EX  : std_logic_vector(1 downto 0);
   signal BEQ_ID_EXEC                : std_logic;
   signal BNE_ID_EXEC                : std_logic;
   signal habEscritaMEM_ID_EXEC      : std_logic;
   signal habLeituraMEM_ID_EXEC      : std_logic;
	
	signal LUI_Estendido_ID_EXEC      : std_logic_vector(larguraDados-1 downto 0);
	signal Imediato_Estendido_ID_EXEC : std_logic_vector(larguraDados-1 downto 0);
	signal Endereco_Reg_C_ID_EXEC     : std_logic_vector(4 downto 0);
	signal Dado_Rs_ID_EXEC 				 : std_logic_vector(larguraDados-1 downto 0);
	signal Dado_Rt_RAM_ID_EXEC        : std_logic_vector(larguraDados-1 downto 0);
	
	signal funct_ID_EXEC              : std_logic_vector(5 downto 0);
   signal opcode_ID_EXEC             : std_logic_vector(5 downto 0);
	signal PC_Mais_4_ID_EXEC          : std_logic_vector(larguraEnderecos-1 downto 0);
	
	
	--sinais internos EXEC
	signal habEscrita_Regs_EXEC       : std_logic;
	signal Sel_Mux_ULA_RAM_LUI_EXEC   : std_logic_vector(1 downto 0);
   signal BEQ_EXEC                   : std_logic;
   signal BNE_EXEC                   : std_logic;
   signal habEscritaMEM_EXEC         : std_logic;
   signal habLeituraMEM_EXEC         : std_logic;
	
	signal Branch_Address             : std_logic_vector(larguraDados-1 downto 0);
	signal Dado_Rt_RAM_EXEC           : std_logic_vector(larguraDados-1 downto 0);
	signal Endereco_Reg_C_EXEC        : std_logic_vector(4 downto 0);
	signal Zero_BEQ					    : std_logic;
	signal Endereco_ULA_RAM           : std_logic_vector(larguraEnderecos-1 downto 0);
	signal LUI_Estendido_EXEC         : std_logic_vector(larguraDados-1 downto 0);
	signal PC_Mais_4_EXEC             : std_logic_vector(larguraEnderecos-1 downto 0);
	
	
	--sinais saída do registrador EXEC/MEM
	signal habEscrita_Regs_EXEC_MEM   : std_logic;
	signal Sel_Mux_ULA_RAM_LUI_EX_MEM : std_logic_vector(1 downto 0);
   signal BEQ_EXEC_MEM               : std_logic;
   signal BNE_EXEC_MEM               : std_logic;
   signal habEscritaMEM_EXEC_MEM     : std_logic;
   signal habLeituraMEM_EXEC_MEM     : std_logic;
	
	signal Dado_Rt_RAM_EXEC_MEM       : std_logic_vector(larguraDados-1 downto 0);
	signal Zero_BEQ_EXEC_MEM			 : std_logic;
	signal Endereco_ULA_RAM_EXEC_MEM  : std_logic_vector(larguraEnderecos-1 downto 0);
	signal Endereco_Reg_C_EXEC_MEM    : std_logic_vector(4 downto 0);
	signal LUI_Estendido_EXEC_MEM     : std_logic_vector(larguraDados-1 downto 0);
	signal PC_Mais_4_EXEC_MEM         : std_logic_vector(larguraEnderecos-1 downto 0);
	signal Branch_Address_EXEC_IF     : std_logic_vector(larguraDados-1 downto 0);
	
	
	--sinais MEM - vão para fase IF ou são entradas do registrador MEM/WB
	signal habEscrita_Regs_MEM        : std_logic;
	signal Sel_Mux_BEQ_MEM_IF	       : std_logic;
	signal Sel_Mux_ULA_RAM_LUI_MEM    : std_logic_vector(1 downto 0);
	signal PC_Mais_4_MEM              : std_logic_vector(larguraEnderecos-1 downto 0);
	
	signal Endereco_ULA_RAM_MEM       : std_logic_vector(larguraEnderecos-1 downto 0);
	signal Dado_RAM_Rt                : std_logic_vector(larguraDados-1 downto 0);
	signal LUI_Estendido_MEM          : std_logic_vector(larguraDados-1 downto 0);
	signal Endereco_Reg_C_MEM         : std_logic_vector(4 downto 0);
	
	
	--sinais saida do registrador MEM/WB
	signal habEscrita_Regs_MEM_WB     : std_logic;
	signal Sel_Mux_ULA_RAM_LUI_MEM_WB : std_logic_vector(1 downto 0);
	signal PC_Mais_4_MEM_WB           : std_logic_vector(larguraEnderecos-1 downto 0);
	
	signal Endereco_ULA_RAM_MEM_WB    : std_logic_vector(larguraEnderecos-1 downto 0);
	signal Dado_RAM_Rt_MEM_WB         : std_logic_vector(larguraDados-1 downto 0);
	signal LUI_Estendido_MEM_WB       : std_logic_vector(larguraDados-1 downto 0);
	signal Endereco_Reg_C_MEM_WB      : std_logic_vector(4 downto 0);
	
	
	--saida da fase WB
	signal habEscrita_Regs_WB         : std_logic;
   signal Dado_Escrita_Banco_Reg     : std_logic_vector(larguraDados-1 downto 0);
	signal Endereco_Reg_C_WB          : std_logic_vector(4 downto 0);
	
	
	--sinais placa

	signal Saida_Placa                 : std_logic_vector(larguraDados-1 downto 0);

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;


IFp  : entity work.IF_Pipeline  generic map (larguraDados => larguraDados, larguraEnderecos => larguraEnderecos)
		 port map ( 
		 CLK                  => CLK,
		 JR                   => JR_ID_IF,
		 Sel_Mux_PC4_JMP      => Sel_Mux_PC4_JMP_ID_IF,
		 Sel_Mux_BEQ          => Sel_Mux_BEQ_MEM_IF,
		 Endereco_JMP	       => Endereco_JMP_ID_IF,
		 Dado_Rs 		       => Dado_Rs,
		 Branch_Address       => Branch_Address_EXEC_IF,
		 PC_Saida_Placa       => PC_Saida,
		 
	  --saidas
		 Instrucao_Saida_ROM  => Instrucao_Saida_ROM,
		 PC_Mais_4_Somador_PC => PC_Mais_4_Somador_PC );
		 
		 
IF_ID : entity work.registradorGenerico_IF_ID  generic map (larguraDados => larguraDados, larguraEnderecos => larguraEnderecos)
		 port map ( 
		 Instrucao_Saida_ROM       => Instrucao_Saida_ROM,
		 PC_Mais_4_Somador_PC      => PC_Mais_4_Somador_PC,
		 CLK                       => CLK,
		 ENABLE                    => '1',
		 RST	                     => '0',
		 
	  --saidas
		 Instrucao_Saida_ROM_IF_ID => Instrucao_Saida_ROM_IF_ID,
		 PC_Mais_4_IF_ID           => PC_Mais_4_IF_ID );
		 
		 
			 
ID   : entity work.ID_Pipeline  generic map (larguraDados => larguraDados, larguraEnderecos => larguraEnderecos)
		 port map ( 
		 
		 --entradas
		 Instrucao_Saida_ROM          => Instrucao_Saida_ROM_IF_ID,
		 Dado_Escrita_Banco_Reg       => Dado_Escrita_Banco_Reg,
		 PC_Mais_4_Somador_PC         => PC_Mais_4_IF_ID,
		 Endereco_Reg_C_WB            => Endereco_Reg_C_WB,
		 habEscrita_Banco_Regs_WB     => habEscrita_Regs_WB,
		 CLK                          => CLK,
		 
	    --saidas
		 JR                           => JR_ID_IF, 
		 Sel_Mux_PC4_JMP              => Sel_Mux_PC4_JMP_ID_IF,
		 habEscrita_Banco_Regs        => habEscrita_Banco_Regs,
		 Sel_Mux_Rt_Imediato          => Sel_Mux_Rt_Imediato,
		 tipoR                        => tipoR,
		 Sel_Mux_ULA_RAM_LUI          => Sel_Mux_ULA_RAM_LUI,
		 BEQ                          => BEQ,
		 BNE                          => BNE,
		 habEscritaMEM                => habEscritaMEM,
		 habLeituraMEM                => habLeituraMEM,
	  
		 LUI_Estendido                => LUI_Estendido,
		 Imediato_Estendido           => Imediato_Estendido,
		 Dado_Rs 					      => Dado_Rs,
		 Dado_Rt_RAM                  => Dado_Rt_RAM,
		 Endereco_JMP				      => Endereco_JMP_ID_IF,
		 
		 Endereco_Reg_C_ID            => Endereco_Reg_C_ID,
		 funct_ID_EXEC				      => funct,
		 opcode_ID_EXEC				   => opcode,
		 PC_Mais_4_ID_EXEC            => PC_Mais_4_ID);
		 
		 
ID_EX : entity work.registradorGenerico_ID_EXEC generic map (larguraDados => larguraDados, larguraEnderecos => larguraEnderecos)
		 port map ( 
	  --controle
		 CLK                       => CLK,
		 ENABLE                    => '1',
		 RST	                     => '0',
		 
	  --entradas
		 habEscrita_Banco_Regs 		=> habEscrita_Banco_Regs,
		 Sel_Mux_Rt_Imediato       => Sel_Mux_Rt_Imediato,
		 tipoR                     => tipoR,
		 Sel_Mux_ULA_RAM_LUI       => Sel_Mux_ULA_RAM_LUI,
		 BEQ                       => BEQ,
		 BNE                       => BNE,
		 habEscritaMEM             => habEscritaMEM,
		 habLeituraMEM             => habLeituraMEM,
		 
		 LUI_Estendido             => LUI_Estendido,
		 Imediato_Estendido        => Imediato_Estendido,
		 Dado_Rs                   => Dado_Rs,
		 Dado_Rt_RAM               => Dado_Rt_RAM,
		 
		 funct                     => funct,
		 opcode                    => opcode,
		 Endereco_Reg_C_ID         => Endereco_Reg_C_ID,
		 PC_Mais_4_ID              => PC_Mais_4_ID,
		 
	  --saidas
		 habEscrita_Regs_ID_EXEC   => habEscrita_Regs_ID_EXEC,
		 Sel_Mux_Rt_Imm_ID_EXEC    => Sel_Mux_Rt_Imm_ID_EXEC,
		 tipoR_ID_EXEC             => tipoR_ID_EXEC,
		 Sel_Mux_ULA_RAM_LUI_ID_EX => Sel_Mux_ULA_RAM_LUI_ID_EX,
		 BEQ_ID_EXEC               => BEQ_ID_EXEC,
		 BNE_ID_EXEC               => BNE_ID_EXEC,
		 habEscritaMEM_ID_EXEC     => habEscritaMEM_ID_EXEC,
		 habLeituraMEM_ID_EXEC     => habLeituraMEM_ID_EXEC,
		 
		 LUI_Estendido_ID_EXEC     => LUI_Estendido_ID_EXEC,
		 Imediato_Estendido_ID_EXEC=> Imediato_Estendido_ID_EXEC,
		 Endereco_Reg_C_ID_EXEC    => Endereco_Reg_C_ID_EXEC,
		 Dado_Rs_ID_EXEC           => Dado_Rs_ID_EXEC,
		 Dado_Rt_RAM_ID_EXEC       => Dado_Rt_RAM_ID_EXEC,
		 
		 funct_ID_EXEC             => funct_ID_EXEC,
		 opcode_ID_EXEC            => opcode_ID_EXEC,
		 PC_Mais_4_ID_EXEC         => PC_Mais_4_ID_EXEC);		 

		  
		  
EXEC  : entity work.EXEC_Pipeline  generic map (larguraDados => larguraDados, larguraEnderecos => larguraEnderecos)
		 port map ( 
		 
	    --entradas
		 CLK                          => CLK,
		 habEscrita_Banco_Regs        => habEscrita_Regs_ID_EXEC,
		 Sel_Mux_Rt_Imediato          => Sel_Mux_Rt_Imm_ID_EXEC,
		 tipoR                        => tipoR_ID_EXEC,
		 Sel_Mux_ULA_RAM_LUI          => Sel_Mux_ULA_RAM_LUI_ID_EX,
		 BEQ                          => BEQ_ID_EXEC,
		 BNE                          => BNE_ID_EXEC,
		 habEscritaMEM                => habEscritaMEM_ID_EXEC,
		 habLeituraMEM                => habLeituraMEM_ID_EXEC,
	  
		 LUI_Estendido                => LUI_Estendido_ID_EXEC,
		 Imediato_Estendido           => Imediato_Estendido_ID_EXEC,
		 Endereco_Reg_C_ID_EXEC       => Endereco_Reg_C_ID_EXEC,
		 Dado_Rs 					      => Dado_Rs_ID_EXEC,
		 Dado_Rt_RAM                  => Dado_Rt_RAM_ID_EXEC,
		 
		 funct_ID_EXEC				      => funct_ID_EXEC,
		 opcode_ID_EXEC				   => opcode_ID_EXEC,
		 PC_Mais_4_ID_EXEC            => PC_Mais_4_ID_EXEC,
		 
		 --saidas
		 habEscrita_Banco_Regs_EXEC   => habEscrita_Regs_EXEC,
		 Sel_Mux_ULA_RAM_LUI_EXEC     => Sel_Mux_ULA_RAM_LUI_EXEC,
		 BEQ_EXEC_MEM                 => BEQ_EXEC,
		 BNE_EXEC_MEM                 => BNE_EXEC,
		 habLeituraMEM_EXEC           => habLeituraMEM_EXEC,
		 habEscritaMEM_EXEC           => habEscritaMEM_EXEC,
		 PC_Mais_4_EXEC_MEM           => PC_Mais_4_EXEC,
		 Branch_Address               => Branch_Address,
		 Dado_Rt_RAM_EXEC_MEM         => Dado_Rt_RAM_EXEC,
		 Zero_BEQ					      => Zero_BEQ,
		 Endereco_Reg_C_EXEC          => Endereco_Reg_C_EXEC,
		 Endereco_ULA_RAM             => Endereco_ULA_RAM,
		 LUI_Estendido_EXEC_MEM       => LUI_Estendido_EXEC);
		 

EX_MEM : entity work.registradorGenerico_EXEC_MEM generic map (larguraDados => larguraDados, larguraEnderecos => larguraEnderecos)
		 port map ( 
	  --controle
		 CLK                       => CLK,
		 ENABLE                    => '1',
		 RST	                     => '0',
		 
	  --entradas
		 habEscrita_Regs_EXEC 		=> habEscrita_Regs_EXEC,
		 Sel_Mux_ULA_RAM_LUI_EXEC  => Sel_Mux_ULA_RAM_LUI_EXEC,
		 BEQ_EXEC                  => BEQ_EXEC,
		 BNE_EXEC                  => BNE_EXEC,
		 habEscritaMEM_EXEC        => habEscritaMEM_EXEC,
		 habLeituraMEM_EXEC        => habLeituraMEM_EXEC,
		 
		 Dado_Rt_RAM_EXEC          => Dado_Rt_RAM_EXEC,
		 Endereco_Reg_C_EXEC       => Endereco_Reg_C_EXEC,
		 Zero_BEQ                  => Zero_BEQ,
		 Endereco_ULA_RAM          => Endereco_ULA_RAM,
		 LUI_Estendido_EXEC        => LUI_Estendido_EXEC, 
		 PC_Mais_4_EXEC            => PC_Mais_4_EXEC,
		 Branch_Address            => Branch_Address,
		 
	  --saidas
		 habEscrita_Regs_EXEC_MEM  => habEscrita_Regs_EXEC_MEM,
		 Sel_Mux_ULA_RAM_LUI_EX_MEM=> Sel_Mux_ULA_RAM_LUI_EX_MEM,
		 BEQ_EXEC_MEM              => BEQ_EXEC_MEM,
		 BNE_EXEC_MEM              => BNE_EXEC_MEM,
		 habEscritaMEM_EXEC_MEM    => habEscritaMEM_EXEC_MEM,
		 habLeituraMEM_EXEC_MEM    => habLeituraMEM_EXEC_MEM,
		 
		 Dado_Rt_RAM_EXEC_MEM      => Dado_Rt_RAM_EXEC_MEM,
		 Zero_BEQ_EXEC_MEM         => Zero_BEQ_EXEC_MEM,
		 Endereco_ULA_RAM_EXEC_MEM => Endereco_ULA_RAM_EXEC_MEM,
		 Endereco_Reg_C_EXEC_MEM   => Endereco_Reg_C_EXEC_MEM,
		 LUI_Estendido_EXEC_MEM    => LUI_Estendido_EXEC_MEM,
		 PC_Mais_4_EXEC_MEM        => PC_Mais_4_EXEC_MEM,
		 Branch_Address_EXEC_IF    => Branch_Address_EXEC_IF);
		 
		 
MEM   : entity work.MEM_Pipeline  generic map (larguraDados => larguraDados, larguraEnderecos => larguraEnderecos)
		 port map ( 
		 
	    --entradas
		 CLK                          => CLK,
		 habEscrita_Banco_Regs_EXEC   => habEscrita_Regs_EXEC_MEM,
		 Sel_Mux_ULA_RAM_LUI_EXEC     => Sel_Mux_ULA_RAM_LUI_EX_MEM,
		 BEQ_EXEC_MEM                 => BEQ_EXEC_MEM,
		 BNE_EXEC_MEM                 => BNE_EXEC_MEM,
		 habLeituraMEM_EXEC           => habLeituraMEM_EXEC_MEM,
		 habEscritaMEM_EXEC           => habEscritaMEM_EXEC_MEM,
		 PC_Mais_4_EXEC_MEM           => PC_Mais_4_EXEC_MEM,
		 Dado_Rt_RAM_EXEC_MEM         => Dado_Rt_RAM_EXEC_MEM,
		 Zero_BEQ					      => Zero_BEQ_EXEC_MEM,
		 Endereco_ULA_RAM             => Endereco_ULA_RAM_EXEC_MEM,
		 LUI_Estendido_EXEC_MEM       => LUI_Estendido_EXEC_MEM,
		 Endereco_Reg_C_EXEC_MEM      => Endereco_Reg_C_EXEC_MEM,
		 
		 
		 --saidas
		 habEscrita_Banco_Regs_MEM_WB => habEscrita_Regs_MEM,
		 Sel_Mux_BEQ	    		      => Sel_Mux_BEQ_MEM_IF,
		 Sel_Mux_ULA_RAM_LUI_MEM_WB   => Sel_Mux_ULA_RAM_LUI_MEM,
		 PC_Mais_4_MEM_WB             => PC_Mais_4_MEM,
		 Endereco_ULA_RAM_MEM_WB      => Endereco_ULA_RAM_MEM,
		 Dado_RAM_Rt                  => Dado_RAM_Rt,
		 LUI_Estendido_MEM_WB         => LUI_Estendido_MEM,
		 Endereco_Reg_C_MEM           => Endereco_Reg_C_MEM);
		 
		 
MEM_WB : entity work.registradorGenerico_MEM_WB generic map (larguraDados => larguraDados, larguraEnderecos => larguraEnderecos)
		 port map ( 
	  --controle
		 CLK                       => CLK,
		 ENABLE                    => '1',
		 RST	                     => '0',
		 
	  --entradas
		 habEscrita_Regs_MEM 		=> habEscrita_Regs_MEM,
		 Sel_Mux_ULA_RAM_LUI_MEM   => Sel_Mux_ULA_RAM_LUI_MEM,
		 PC_Mais_4_MEM             => PC_Mais_4_MEM,
		 
		 Endereco_ULA_RAM_MEM      => Endereco_ULA_RAM_MEM,
		 Dado_RAM_Rt               => Dado_RAM_Rt,
		 LUI_Estendido_MEM         => LUI_Estendido_MEM,
		 Endereco_Reg_C_MEM        => Endereco_Reg_C_MEM,
		 
	  --saidas
		 habEscrita_Regs_MEM_WB    => habEscrita_Regs_MEM_WB,
		 Sel_Mux_ULA_RAM_LUI_MEM_WB=> Sel_Mux_ULA_RAM_LUI_MEM_WB,
		 PC_Mais_4_MEM_WB          => PC_Mais_4_MEM_WB,
		 
		 Endereco_ULA_RAM_MEM_WB   => Endereco_ULA_RAM_MEM_WB,
		 Dado_RAM_Rt_MEM_WB        => Dado_RAM_Rt_MEM_WB,
		 LUI_Estendido_MEM_WB      => LUI_Estendido_MEM_WB,
		 Endereco_Reg_C_MEM_WB     => Endereco_Reg_C_MEM_WB);
		 
		 
		 
WB    : entity work.WB_Pipeline  generic map (larguraDados => larguraDados, larguraEnderecos => larguraEnderecos)
		 port map ( 
		 
	    --entradas
		 habEscrita_Banco_Regs_MEM_WB => habEscrita_Regs_MEM_WB,
		 Sel_Mux_ULA_RAM_LUI_MEM_WB   => Sel_Mux_ULA_RAM_LUI_MEM_WB,
		 PC_Mais_4_MEM_WB             => PC_Mais_4_MEM_WB,
		 Endereco_ULA_RAM_MEM_WB      => Endereco_ULA_RAM_MEM_WB,
		 Dado_RAM_Rt                  => Dado_RAM_Rt_MEM_WB,
		 LUI_Estendido_MEM_WB         => LUI_Estendido_MEM_WB,
		 Endereco_Reg_C_MEM_WB        => Endereco_Reg_C_MEM_WB,
		 
		 --saidas
		 Dado_Escrita_Banco_Reg       => Dado_Escrita_Banco_Reg,
		 Endereco_Reg_C_WB            => Endereco_Reg_C_WB,
		 habEscrita_Banco_Regs_WB     => habEscrita_Regs_WB);


--implementação na placa

mux_placa  :  entity work.muxGenerico4x1 generic map (larguraDados => larguraDados)
        port map(entrada0_MUX => PC_Saida,
                 entrada1_MUX => PC_Mais_4_ID_EXEC,
					  entrada2_MUX => Endereco_ULA_RAM,
					  entrada3_MUX => Dado_Escrita_Banco_Reg,
                 seletor_MUX => SW(1) & SW(0),
                 saida_MUX => Saida_Placa);
								  
--- bits (0 ~ 3)								  
Decod7seg_HEX0 :  entity work.conversorHex7Seg
        port map(dadoHex => Saida_Placa(3 downto 0),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX0);	

Decod7seg_HEX1 :  entity work.conversorHex7Seg
        port map(dadoHex => Saida_Placa(7 downto 4),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX1);
				
Decod7seg_HEX2 :  entity work.conversorHex7Seg
        port map(dadoHex => Saida_Placa(11 downto 8),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX2);
				
Decod7seg_HEX3 :  entity work.conversorHex7Seg
        port map(dadoHex => Saida_Placa(15 downto 12),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX3);
				
Decod7seg_HEX4 :  entity work.conversorHex7Seg
        port map(dadoHex => Saida_Placa(19 downto 16),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX4);
					  
Decod7seg_HEX5 :  entity work.conversorHex7Seg
        port map(dadoHex => Saida_Placa(23 downto 20),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX5);
					  

LEDR (9) <= Zero_BEQ;				  
LEDR (8) <= habEscrita_Regs_WB;
LEDR (7 downto 4) <= Saida_Placa(27 downto 24);
LEDR (3 downto 0) <= Saida_Placa(31 downto 28);
--LEDR(4 downto 0) <= Endereco_Reg_C_WB;

end architecture;