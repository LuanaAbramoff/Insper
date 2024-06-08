library ieee;
use ieee.std_logic_1164.all;

entity MipsCicloUnico is
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


architecture arquitetura of MipsCicloUnico is

  signal PC_Saida                : std_logic_vector(larguraEnderecos-1 downto 0);
  signal PC_Mais_4_Somador_PC    : std_logic_vector(larguraEnderecos-1 downto 0);
  signal Instrucao_Saida_ROM     : std_logic_vector(larguraEnderecos-1 downto 0);
  
  signal Dado_Rs 					   : std_logic_vector(larguraDados-1 downto 0);
  signal Dado_Rt_RAM             : std_logic_vector(larguraDados-1 downto 0);
  signal Dado_RAM_Rt             : std_logic_vector(larguraDados-1 downto 0);
  
  signal Imediato_Estendido      : std_logic_vector(larguraDados-1 downto 0);
  signal Endereco_ULA_RAM        : std_logic_vector(larguraEnderecos-1 downto 0);
  signal Entrada_B_ULA           : std_logic_vector(larguraDados-1 downto 0);
  signal End_C_Banco_Reg         : std_logic_vector(4 downto 0);
  signal Dado_Escrita_Banco_Reg  : std_logic_vector(larguraDados-1 downto 0);
  
  
  signal CLK						   : std_logic;
  
  signal Zero_BEQ					   : std_logic;
  signal Sel_Mux_BEQ	    		   : std_logic;
  signal SMux_BNE_BEQ    		   : std_logic;
  signal OR_BEQ_BNE     		   : std_logic;
  signal Imediato_Estendido_Sft2 : std_logic_vector(larguraDados-1 downto 0);
  signal LUI_Estendido           : std_logic_vector(larguraDados-1 downto 0);
  signal Branch_Address          : std_logic_vector(larguraDados-1 downto 0);
  signal Entrada_PC					: std_logic_vector(larguraEnderecos-1 downto 0);
  
  signal Endereco_JMP				: std_logic_vector(larguraEnderecos-1 downto 0);
  signal Entrada_PC_Sel				: std_logic_vector(larguraEnderecos-1 downto 0);
  signal Entrada_PC_Sel_JR			: std_logic_vector(larguraEnderecos-1 downto 0);
  
  -- sinais controle
  
  signal JR                       : std_logic; 
  signal Sel_Mux_PC4_JMP          : std_logic;
  signal Sel_Mux_Rt_Rd            : std_logic_vector(1 downto 0);
  signal ORI_ANDI                 : std_logic;
  signal habEscrita_Banco_Regs    : std_logic;
  signal Sel_Mux_Rt_Imediato      : std_logic;
  signal tipoR                    : std_logic;
  signal Sel_Mux_ULA_RAM_LUI      : std_logic_vector(1 downto 0);
  signal BEQ                      : std_logic;
  signal BNE                      : std_logic;
  signal habEscritaMEM            : std_logic;
  signal habLeituraMEM            : std_logic;
  
  --ula ctrl
  signal Controle_ULA            : std_logic_vector(2 downto 0);
  
  --implementação na placa
  signal Saida_Placa				   : std_logic_vector(larguraDados-1 downto 0);
  
  --atribuições Instrução
  alias opcode						   : std_logic_vector(5 downto 0)  is Instrucao_Saida_ROM(31 downto 26);
  alias Endereco_Rs				   : std_logic_vector(4 downto 0)  is Instrucao_Saida_ROM(25 downto 21);
  alias Endereco_Rt				   : std_logic_vector(4 downto 0)  is Instrucao_Saida_ROM(20 downto 16);
  alias Endereco_Rd				   : std_logic_vector(4 downto 0)  is Instrucao_Saida_ROM(15 downto 11);
  alias Imediato    				   : std_logic_vector(15 downto 0) is Instrucao_Saida_ROM(15 downto 0);
  alias Imediato_JMP    	      : std_logic_vector(25 downto 0) is Instrucao_Saida_ROM(25 downto 0);
--alias shamt     				   : std_logic_vector(4 downto 0)  is Instrucao_Saida_ROM(10 downto 6);
  alias funct     				   : std_logic_vector(5 downto 0)  is Instrucao_Saida_ROM(5 downto 0);
  
  
  alias OpULA              	   : std_logic_vector(1 downto 0) is Controle_ULA(1 downto 0);
  alias inverteB             	   : std_logic is Controle_ULA(2);

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;


PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => Entrada_PC_Sel_JR, DOUT => PC_Saida, ENABLE => '1', CLK => CLK, RST => '0');
			 
incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 4)
        port map( entrada => PC_Saida, saida => PC_Mais_4_Somador_PC);
		  
		  
-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM : entity work.ROMMIPS   generic map (dataWidth => larguraDados, addrWidth => larguraEnderecos, memoryAddrWidth => 6)
          port map (Endereco => PC_Saida, Dado => Instrucao_Saida_ROM);
			 
Unidade_Controle: entity work.UnidadeControle
						port map ( opcode                => opcode,
									  funct						=> funct,
									  JR							=> JR,
									  Sel_Mux_PC4_JMP       => Sel_Mux_PC4_JMP,
									  Sel_Mux_Rt_Rd         => Sel_Mux_Rt_Rd,
									  ORI_ANDI	    			=> ORI_ANDI,
									  habEscrita_Banco_Regs => habEscrita_Banco_Regs,
									  Sel_Mux_Rt_Imediato   => Sel_Mux_Rt_Imediato,
									  tipoR                 => tipoR,
									  Sel_Mux_ULA_RAM_LUI   => Sel_Mux_ULA_RAM_LUI,
									  BEQ                   => BEQ,
									  BNE							=> BNE,
									  habLeituraMEM         => habLeituraMEM,
									  habEscritaMEM         => habEscritaMEM);
									  
Controle_ULA1:   entity work.ULActrl
					  port map ( entrada_opcode => opcode,
					             entrada_funct  => funct,
									 tipoR          => tipoR,
									 saida          => Controle_ULA);
			 
			 
Mux_Rt_Rd_31 :  entity work.muxGenerico4x1 generic map (larguraDados => 5)
        port map(entrada0_MUX => Endereco_Rt,
                 entrada1_MUX => Endereco_Rd,
					  entrada2_MUX => "11111",
					  entrada3_MUX => "00000",
                 seletor_MUX => Sel_Mux_Rt_Rd,
                 saida_MUX   => End_C_Banco_Reg);
			 
bancoRegs : entity work.bancoReg generic map (larguraDados => larguraDados, larguraEndBancoRegs => 5)
          port map ( clk => CLK,
              enderecoA => Endereco_Rs,
              enderecoB => Endereco_Rt,
              enderecoC => End_C_Banco_Reg,
              dadoEscritaC => Dado_Escrita_Banco_Reg,
              escreveC => habEscrita_Banco_Regs,
              saidaA => Dado_Rs,
              saidaB  => Dado_Rt_RAM);
				  
Mux_Rt_Imediato   :  entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
        port map(entradaA_MUX => Dado_Rt_RAM,
                 entradaB_MUX =>  Imediato_Estendido,
                 seletor_MUX => Sel_Mux_Rt_Imediato,
                 saida_MUX => Entrada_B_ULA);
				  
			 -- O port map completo da ULA:
ULA : entity work.ULAMIPS  generic map(larguraDados => larguraDados)
          port map (entradaA => Dado_Rs, 
						  entradaB => Entrada_B_ULA,
						  seletor => OpULA,
						  inverteB => inverteB,
						  saida => Endereco_ULA_RAM,
						  Zero => Zero_BEQ);
				  
RAM : entity work.RAMMIPS generic map (dataWidth => larguraDados, addrWidth => larguraEnderecos, memoryAddrWidth => 6)
                   port map ( clk => CLK,
										Endereco => Endereco_ULA_RAM,
										Dado_in => Dado_Rt_RAM,
										Dado_out => Dado_RAM_Rt,
										we => habEscritaMEM, 
										re => habLeituraMEM, 
										habilita  => '1');
																			
										
estendeSinal : entity work.estendeSinalGenerico   generic map (larguraDadoEntrada => 16, larguraDadoSaida => larguraDados)
          port map (estendeSinal_IN => Imediato, ORI => ORI_ANDI, estendeSinal_OUT =>  Imediato_Estendido);
			 
estendeLUI1 : entity work.estendeLUI   generic map (larguraDadoEntrada => 16, larguraDadoSaida => larguraDados)
          port map (estendeSinal_IN => Imediato, estendeSinal_OUT =>  LUI_Estendido);
			 
Mux_ULA_RAM_LUI  :  entity work.muxGenerico4x1 generic map (larguraDados => larguraDados)
        port map(entrada0_MUX => Endereco_ULA_RAM,
                 entrada1_MUX => Dado_RAM_Rt,
					  entrada2_MUX => PC_Mais_4_Somador_PC,
					  entrada3_MUX => LUI_Estendido,
                 seletor_MUX => Sel_Mux_ULA_RAM_LUI,
                 saida_MUX => Dado_Escrita_Banco_Reg);
					  
MUX_BEQ_BNE :  entity work.muxGenerico2x1bit 
		  port map( entradaA_MUX => NOT(Zero_BEQ),
					   entradaB_MUX =>  Zero_BEQ,
					   seletor_MUX => BEQ,
					   saida_MUX => SMux_BNE_BEQ);
						
opORBEQBNE : entity work.operadorOR
          port map (in1 => BEQ , in2 => BNE, saida => OR_BEQ_BNE);
						
opANDBEQ : entity work.operadorAND2x1
          port map (in1 => OR_BEQ_BNE , in2 => SMux_BNE_BEQ, saida => Sel_Mux_BEQ);
			 
Imediato_shift: entity work.shiftLeft2
          port map (entrada => Imediato_Estendido, saida => Imediato_Estendido_Sft2);
			 
somadorBrAdd :  entity work.somadorGenerico  generic map (larguraDados => larguraDados)
        port map( entradaA => PC_Mais_4_Somador_PC, entradaB =>  Imediato_Estendido_Sft2, saida => Branch_Address); 
		  
muxBEQPC4    :  entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => PC_Mais_4_Somador_PC,
                 entradaB_MUX =>  Branch_Address,
                 seletor_MUX => Sel_Mux_BEQ,
                 saida_MUX => Entrada_PC);
					 
endJMP: entity work.concatenaJMP
          port map ( imediato => Imediato_JMP, 
							pc_mais_4 => PC_Mais_4_Somador_PC,
							saida     => Endereco_JMP );
							
muxDesvio    :  entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => Entrada_PC,
                 entradaB_MUX =>  Endereco_JMP,
                 seletor_MUX => Sel_Mux_PC4_JMP,
                 saida_MUX => Entrada_PC_Sel);				  
					  
muxJR        :  entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => Entrada_PC_Sel,
                 entradaB_MUX =>  Dado_Rs,
                 seletor_MUX => JR,
                 saida_MUX => Entrada_PC_Sel_JR);

--implementação na placa

muxPlaca    :  entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
					 port map( entradaA_MUX => PC_Saida,
								  entradaB_MUX => Endereco_ULA_RAM,
								  seletor_MUX => SW(0),
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
					  
					  
LEDR (8) <= JR;
LEDR (7 downto 4) <= Saida_Placa(27 downto 24);
LEDR (3 downto 0) <= Saida_Placa(31 downto 28);

end architecture;