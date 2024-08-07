library ieee;
use ieee.std_logic_1164.all;

-- De forma a tornar o MIPS mais rápido, foi implementado a utilização de pipeline
-- que em um mesmo "ciclo", mais de uma instrução está sendo implementada.

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
	signal Endereco_Rs                : std_logic_vector(4 downto 0);
	signal Endereco_Rt                : std_logic_vector(4 downto 0);
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

-- Esse componente diz respeito a etapa chamada de "IF" (Instruction Fetch), que é
-- responsável por pegar a próxima instrução a ser executada
-- no caso, esse componente é construído como forma de organizar o toplevel
-- em componentes menores, por isso, ele tem várias entradas, que incluem
-- partes ligadas a jumps e, principalmente, tem como uma das saídas, 
-- a instrução indicada pela ROM.

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
		 
-- Esse componente é um registrador que une a "primeira etapa" do processador (IF)
-- a "segunda 	etapa" (ID). A utilização dos registradores entre etapas possibilita
-- o isolamento das etapas. No caso desse regitsrador, sua função princiapal
-- é receber e "repassar" a instrução da memória ROM
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
		 
		 
-- Esse componente corresponde a segunda etapa do pipeline. O ID (Instruction Decode)
-- tem como função decodificar a instrução recebida pelo registrador ID/IF e,
-- de acordo com a instrução, realiza a leitura do banco de registradores.
-- Essencialmente, essa é uma das etapas mais significativas por, basicamente,
-- comandar o resto do processador, afinal, aqui, a instrução é decodificada.
-- Por isso, recebendo a instrução do registrador, alguns "pontos de controle" 
-- do registrador, esse componente tem como saída os sinais de controle do nosso
-- processador, assim como alguns dados ligados ao nosso banco de registradores e
-- outras informações derivadas da saída da ROM.
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
		 Endereco_Rs_ID               => Endereco_Rs,
		 Endereco_Rt_ID               => Endereco_Rt,
		 funct_ID_EXEC				      => funct,
		 opcode_ID_EXEC				   => opcode,
		 PC_Mais_4_ID_EXEC            => PC_Mais_4_ID);
		 

-- Essa registrador separa a segunda (ID) da terceira etapa (EX) do nosso processador.
-- A utilização dos registradores entre etapas possibilita o isolamento das etapas.
-- Esses registradores carregam as informações da etapa anterior e da posterior,
-- dependendo do caso, podem carregar as infromações de etapas mais anteriores
-- Esse registrador tem como função principal receber os sinais de controle,
-- informações do banco de registradores, outros dados como imediatos, funct 
-- (quando utilizado) e opcode, entre outros pontos importantes		 
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

		  
-- Essa é a terceira etapa, ela é chamada de Execute (EX) e tem como papel principal
-- executar a operação definida pela instrução. Pode-se dizer que o componente
-- mais importante dessa etapa é a ULA, afinal ele o componente que realiza
-- a operação.	Recebendo as informações do registrador ID/EX, essa etapa
-- contem a própria unidade de controle da ULA, em conjunto com outros componentes
-- que trabalham de acordo com o que deve ser executado. Afinal, a ULA é dependente
-- do tipo de instrução e, depensendo disso, de informações do banco de registradores
-- e ou imediatos.	  
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
		 
-- Esse registrador une a terceira (EX) a quarta (MEM) etapa.
-- A utilização dos registradores entre etapas possibilita o isolamento das etapas.
-- Esses registradores carregam as informações da etapa anterior e da posterior,
-- dependendo do caso, podem carregar as infromações de etapas mais anteriores.
-- No caso do EX/MEM, esse registrador vai levar as saídas da nossa operação
-- para a memória (se estiver de acordo com a instrução)
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
		 
-- Esse componente diz respeito a quarta etapa da pipeline o MEM (Memory Access).
-- Está etapa é responsável por ler/escrever na memória RAM de acordo com a instrução
-- e operação realizada na etapa de execução. As instruções mais populares ligadas a RAM
-- são o LW (leitura) e o SW (store). Essas instruções utilizam praticamente
-- todas as etapas do processador, mas o instante que elas utilizam a memória é
-- na etapa MEM. Além disso, essa etapa recebe informações das outras etapas como
-- habilitas relacionados a memória e a saída da ula, e, como padrão essas 
-- informações são intermediárias por um registrador. Dessa etapa, vão sair informações
-- da memória, assim como outros dados carregados de outras etapas.		 
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
		 
-- Esse registrador separa a quarta (MEM) da última etapa (WB).
-- A utilização dos registradores entre etapas possibilita o isolamento das etapas.
-- Esses registradores carregam as informações da etapa anterior e da posterior,
-- dependendo do caso, podem carregar as infromações de etapas mais anteriores.
-- No caso desse registrador (MEM/WB), ele irá receber dados da memória RAM, 
-- assim como outros dados carregados de outras etapas. 	 
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
		 
		 
-- Essa é a última etapa do pipeline, o WB (Write Back). Nessa etapa, será realizada
--  a escrita no banco de registradores. Esse componente tem uma ligação direta com
-- a etapa ID, afinal nela há a leitura do registrador. Recebendo do registrador
-- MEM/WB os dados da memória ou resultados da ULA (a depender da instrução), essa
-- etapa faz uso de um MEX para selecionar o tipo de dador e "devolve-los" para o 
--banco de registradores. 
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
-- para o teste desse processador, foi utilizado a maioria dos periféricos de saída
-- disponíveis. Visto que há muitas partes para a checagem, foi utilizado um mux 
-- que define as possíveis saídas:
-- 00: saída do PC na etapa de busca
-- 01: PC na etapa de execução
-- 10: saída da ULA
-- 11: dado a ser escrito no banco de registradores

mux_placa  :  entity work.muxGenerico4x1 generic map (larguraDados => larguraDados)
        port map(entrada0_MUX => PC_Saida,
                 entrada1_MUX => Dado_Rs_ID_EXEC,
					  entrada2_MUX => Endereco_ULA_RAM,
					  entrada3_MUX => Dado_Rt_RAM_ID_EXEC,
                 seletor_MUX => SW(1) & SW(0),
                 saida_MUX => Saida_Placa);
								  
--- bits (0 ~ 3)	da saída							  
Decod7seg_HEX0 :  entity work.conversorHex7Seg
        port map(dadoHex => Saida_Placa(3 downto 0),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX0);
					  
--- bits (4 ~ 7)	da saída	
Decod7seg_HEX1 :  entity work.conversorHex7Seg
        port map(dadoHex => Saida_Placa(7 downto 4),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX1);

--- bits (8 ~ 11)	da saída			  
Decod7seg_HEX2 :  entity work.conversorHex7Seg
        port map(dadoHex => Saida_Placa(11 downto 8),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX2);
					  
--- bits (12 ~ 15)	da saída					
Decod7seg_HEX3 :  entity work.conversorHex7Seg
        port map(dadoHex => Saida_Placa(15 downto 12),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX3);
			
--- bits (16 ~ 19)	da saída				
Decod7seg_HEX4 :  entity work.conversorHex7Seg
        port map(dadoHex => Endereco_Reg_C_WB(3 downto 0),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX4);

--- bits (20 ~ 23)	da saída						  
Decod7seg_HEX5 :  entity work.conversorHex7Seg
        port map(dadoHex => Endereco_Reg_C_WB(4) & Endereco_Reg_C_WB(4) & Endereco_Reg_C_WB(4) & Endereco_Reg_C_WB(4),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX5);
					  

--LEDR (9) <= Zero_BEQ; -- flag zero				  
--LEDR (8) <= habEscrita_Regs_WB; -- habilita do banco de registradores
--LEDR (7 downto 4) <= Saida_Placa(31 downto 28); --- bits (28 ~ 31)	da saída	
--LEDR (3 downto 0) <= Saida_Placa(27 downto 24); --- bits (27 ~ 24)	da saída	
LEDR(9 downto 5) <= Endereco_Rs;
LEDR(4 downto 0) <= Endereco_Rt;

end architecture;