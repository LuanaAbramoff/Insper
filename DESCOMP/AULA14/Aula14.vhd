library ieee;
use ieee.std_logic_1164.all;

entity Aula14 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 32;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );   
  port   (
    CLOCK_50 : in std_logic;
	 KEY: in std_logic_vector(3 downto 0);
	 
    PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0);
	 BranchAdress: out std_logic_vector(larguraEnderecos-1 downto 0);
	 selMuxBEQ   : out std_logic

  );
end entity;


architecture arquitetura of Aula14 is

  signal PC_Saida                : std_logic_vector(larguraEnderecos-1 downto 0);
  signal PC_Mais_4_Somador_PC    : std_logic_vector(larguraEnderecos-1 downto 0);
  signal Instrucao_Saida_ROM     : std_logic_vector(larguraEnderecos-1 downto 0);
  
  signal Dado_Rs 					   : std_logic_vector(larguraDados-1 downto 0);
  signal Dado_Rt_RAM             : std_logic_vector(larguraDados-1 downto 0);
  signal Dado_RAM_Rt             : std_logic_vector(larguraDados-1 downto 0);
  
  signal Imediato_Estendido      : std_logic_vector(larguraDados-1 downto 0);
  signal Endereco_ULA_RAM        : std_logic_vector(larguraEnderecos-1 downto 0);
  signal Entrada_B_ULA           : std_logic_vector(larguraDados-1 downto 0);
  
  signal Palavra_Controle        : std_logic_vector(4 downto 0);
  signal CLK						   : std_logic;
  
  signal Zero_BEQ					   : std_logic;
  signal Sel_Mux_BEQ	    		   : std_logic;
  signal Imediato_Estendido_Sft2 : std_logic_vector(larguraDados-1 downto 0);
  signal Branch_Address          : std_logic_vector(larguraDados-1 downto 0);
  signal Entrada_PC					: std_logic_vector(larguraEnderecos-1 downto 0);
  
  --atribuições Instrução
  alias opcode						   : std_logic_vector(5 downto 0)  is Instrucao_Saida_ROM(31 downto 26);
  alias Endereco_Rs				   : std_logic_vector(4 downto 0)  is Instrucao_Saida_ROM(25 downto 21);
  alias Endereco_Rt				   : std_logic_vector(4 downto 0)  is Instrucao_Saida_ROM(20 downto 16);
  alias Imediato    				   : std_logic_vector(15 downto 0) is Instrucao_Saida_ROM(15 downto 0);
  
  --atrbuição Controle
  alias BEQ                      : std_logic is Palavra_Controle(4);
  alias habEscritaMEM            : std_logic is Palavra_Controle(3);
  alias habLeituraMEM            : std_logic is Palavra_Controle(2);
  alias habEscrita_Banco_Regs	   : std_logic is Palavra_Controle(1);
  alias OpULA              	   : std_logic is Palavra_Controle(0);

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
          port map (DIN => Entrada_PC, DOUT => PC_Saida, ENABLE => '1', CLK => CLK, RST => '0');
			 
incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 4)
        port map( entrada => PC_Saida, saida => PC_Mais_4_Somador_PC);
		  
		  
-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM : entity work.ROMMIPS   generic map (dataWidth => larguraDados, addrWidth => larguraEnderecos, memoryAddrWidth => 6)
          port map (Endereco => PC_Saida, Dado => Instrucao_Saida_ROM);
			 
decoderInstru : entity work.decoderGeneric
          port map (entrada => opcode , saida => Palavra_Controle);
			 
bancoRegs : entity work.bancoReg generic map (larguraDados => larguraDados, larguraEndBancoRegs => 5)
          port map ( clk => CLK,
              enderecoA => Endereco_Rs,
              enderecoB => Endereco_Rt,
              enderecoC => Endereco_Rt,
              dadoEscritaC => Dado_RAM_Rt,
              escreveC => habEscrita_Banco_Regs,
              saidaA => Dado_Rs,
              saidaB  => Dado_Rt_RAM);
				  
muxEntrada_B_ULA   :  entity work.muxGenerico2x1 generic map (larguraDados => 32)
        port map( entradaA_MUX => Dado_Rt_RAM,
                 entradaB_MUX =>  Imediato_Estendido,
                 seletor_MUX => not(BEQ),
                 saida_MUX => Entrada_B_ULA);
				  
			 -- O port map completo da ULA:
ULA : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => Dado_Rs, 
						  entradaB => Entrada_B_ULA, 
						  saida => Endereco_ULA_RAM,
						  Zero => Zero_BEQ, 
						  seletor => OpULA);
				  
RAM : entity work.RAMMIPS generic map (dataWidth => larguraDados, addrWidth => larguraEnderecos, memoryAddrWidth => 6)
                   port map ( clk => CLK,
										Endereco => Endereco_ULA_RAM,
										Dado_in => Dado_Rt_RAM,
										Dado_out => Dado_RAM_Rt,
										we => habEscritaMEM, 
										re => habLeituraMEM, 
										habilita  => '1'
										);
										
estendeSinal : entity work.estendeSinalGenerico   generic map (larguraDadoEntrada => 16, larguraDadoSaida => larguraDados)
          port map (estendeSinal_IN => Imediato, estendeSinal_OUT =>  Imediato_Estendido);
			 
opANDBEQ : entity work.operadorAND2x1
          port map (in1 => BEQ , in2 => Zero_BEQ, saida => Sel_Mux_BEQ);
			 
Imediato_shift: entity work.shiftLeft2
          port map (entrada => Imediato_Estendido, saida => Imediato_Estendido_Sft2);
			 
somadorBrAdd :  entity work.somadorGenerico  generic map (larguraDados => larguraDados)
        port map( entradaA => PC_Mais_4_Somador_PC, entradaB =>  Imediato_Estendido_Sft2, saida => Branch_Address); 
		  
muxDesvio    :  entity work.muxGenerico2x1 generic map (larguraDados => 32)
        port map( entradaA_MUX => PC_Mais_4_Somador_PC,
                 entradaB_MUX =>  Branch_Address,
                 seletor_MUX => Sel_Mux_BEQ,
                 saida_MUX => Entrada_PC);
					 
		 

PC_OUT       <= PC_Saida;	
BranchAdress <= Branch_Address;
selMuxBEQ    <= Sel_Mux_BEQ;


end architecture;