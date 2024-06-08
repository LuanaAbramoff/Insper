library ieee;
use ieee.std_logic_1164.all;

entity Aula13 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 32;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );   
  port   (
    CLOCK_50 : in std_logic;
	 KEY: in std_logic_vector(3 downto 0);
	 
    PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0);
	 Saida_ULA: out std_logic_vector(larguraDados-1 downto 0);
	 Rs_EntradaAULA: out std_logic_vector(larguraDados-1 downto 0);
	 Rt_EntradaBULA: out std_logic_vector(larguraDados-1 downto 0);
	 End_Rt:out std_logic_vector(4 downto 0); 
	 End_Rs:out std_logic_vector(4 downto 0); 
	 End_Rd:out std_logic_vector(4 downto 0)
  );
end entity;


architecture arquitetura of Aula13 is

  signal PC_Saida              : std_logic_vector(larguraEnderecos-1 downto 0);
  signal PC_Mais_4_Somador_PC  : std_logic_vector(larguraEnderecos-1 downto 0);
  signal Instrucao_Saida_ROM   : std_logic_vector(larguraEnderecos-1 downto 0);
  
  signal Dado_Rs_Entrada_A_ULA : std_logic_vector(larguraDados-1 downto 0);
  signal Dado_Rt_Entrada_B_ULA : std_logic_vector(larguraDados-1 downto 0);
  signal Saida_ULA_Entrada_Rd  : std_logic_vector(larguraDados-1 downto 0);
  
  signal Palavra_Controle      : std_logic_vector(1 downto 0);
  signal CLK						 : std_logic;
  
  
  --atribuições Instrução
  alias opcode						 : std_logic_vector(5 downto 0) is Instrucao_Saida_ROM(31 downto 26);
  alias Endereco_Rs				 : std_logic_vector(4 downto 0) is Instrucao_Saida_ROM(25 downto 21);
  alias Endereco_Rt				 : std_logic_vector(4 downto 0) is Instrucao_Saida_ROM(20 downto 16);
  alias Endereco_Rd				 : std_logic_vector(4 downto 0) is Instrucao_Saida_ROM(15 downto 11);
--alias shamt     				 : std_logic_vector(4 downto 0) is Instrucao_Saida_ROM(10 downto 6);
  alias funct     				 : std_logic_vector(5 downto 0) is Instrucao_Saida_ROM(5 downto 0);
  
  --atrbuição Controle
  alias habEscrita_Banco_Regs	 : std_logic is Palavra_Controle(1);
  alias OpULA              	 : std_logic is Palavra_Controle(0);

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
          port map (DIN => PC_Mais_4_Somador_PC, DOUT => PC_Saida, ENABLE => '1', CLK => CLK, RST => '0');

			 
incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 4)
        port map( entrada => PC_Saida, saida => PC_Mais_4_Somador_PC);


-- O port map completo da ULA:
ULA : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => Dado_Rs_Entrada_A_ULA, 
						  entradaB => Dado_Rt_Entrada_B_ULA, 
						  saida => Saida_ULA_Entrada_Rd, 
						  seletor => OpULA);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM : entity work.ROMMIPS   generic map (dataWidth => larguraDados, addrWidth => larguraEnderecos, memoryAddrWidth => 6)
          port map (Endereco => PC_Saida, Dado => Instrucao_Saida_ROM);
			 
decoderInstru : entity work.decoderGeneric
          port map (entrada => funct , saida => Palavra_Controle);
			 
bancoRegs : entity work.bancoReg generic map (larguraDados => larguraDados, larguraEndBancoRegs => 5)
          port map ( clk => CLK,
              enderecoA => Endereco_Rs,
              enderecoB => Endereco_Rt,
              enderecoC => Endereco_Rd,
              dadoEscritaC => Saida_ULA_Entrada_Rd,
              escreveC => habEscrita_Banco_Regs,
              saidaA => Dado_Rs_Entrada_A_ULA,
              saidaB  => Dado_Rt_Entrada_B_ULA);



PC_OUT         <= PC_Saida;
Saida_ULA      <= Saida_ULA_Entrada_Rd;
Rs_EntradaAULA <= Dado_Rs_Entrada_A_ULA;
Rt_EntradaBULA <= Dado_Rt_Entrada_B_ULA;
End_Rt			<= Endereco_Rt;
End_Rs			<= Endereco_Rs;
End_Rd			<= Endereco_Rd;

end architecture;