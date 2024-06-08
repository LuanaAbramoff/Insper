library ieee;
use ieee.std_logic_1164.all;

entity Aula5_JSR is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
   PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0);
    LEDR  : out std_logic_vector(9 downto 0);
	 Palavra_Controle : out std_logic_vector(11 downto 0)
  );
end entity;


architecture arquitetura of Aula5_JSR is

  signal MUX_Saida : std_logic_vector (larguraDados-1 downto 0);
  signal REG_1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal Sinais_Controle : std_logic_vector (11 downto 0);
  signal Saida_Dados : std_logic_vector(larguraDados-1 downto 0);
  signal Instrucao : std_logic_vector (12 downto 0);
  signal Endereco : std_logic_vector (larguraDados downto 0);
  signal proxPC : std_logic_vector (larguraDados downto 0);
  signal MUX_Saida_PC : std_logic_vector (larguraDados downto 0);
  signal Saida_End_Retorno : std_logic_vector (larguraEnderecos-1 downto 0);
  signal CLK : std_logic;
  signal SelMUX : std_logic;
  signal Logica_Desvio : std_logic_vector(1 downto 0);
  signal Habilita_A : std_logic;
  signal Reset_A : std_logic;
  signal Operacao_ULA : std_logic_vector(1 downto 0);
  signal Ler_Memoria : std_logic;
  signal Escrever_Memoria : std_logic;
  signal JUMP : std_logic;
  signal JEQ : std_logic;
  signal Zero : std_logic;
  signal Flag_Igual_Saida : std_logic;
  signal Hab_Flag_Igual : std_logic;
  signal Hab_Escrita_Retorno : std_logic;
  signal JSR : std_logic;
  signal RET : std_logic;
  
  alias Dest_Jump: std_logic_vector(8 downto 0) is Instrucao(8 downto 0);
  alias Valor_Imediato: std_logic_vector(7 downto 0) is Instrucao(7 downto 0);
  alias opcode_ROM: std_logic_vector(3 downto 0) is Instrucao(12 downto 9);
  alias Habilita_Memoria: std_logic is Instrucao(8);

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

-- O port map completo do MUX.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => Saida_Dados,
                 entradaB_MUX =>  Valor_Imediato,
                 seletor_MUX => SelMUX,
                 saida_MUX => MUX_Saida);
-- O port map completo do MUX para desvio de execução.					  
MUX2 :  entity work.muxGenerico4x1  generic map (larguraEntrada => 9, larguraSelecao => 2)
        port map( entrada0_MUX => proxPC,
                 entrada1_MUX =>  Dest_Jump,
					  entrada2_MUX => Saida_End_Retorno,
					  entrada3_MUX => "000000000",
                 seletor_MUX => Logica_Desvio,
                 saida_MUX => MUX_Saida_PC);

-- O port map completo do Acumulador.
REGA : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => Saida_ULA, DOUT => REG_1_ULA_A, ENABLE => Habilita_A, CLK => CLK, RST => '0');

Flag_Igual : entity work.FlipFlop   generic map (larguraDados => 1)
          port map (DIN => Zero, DOUT => Flag_Igual_Saida, ENABLE => Hab_Flag_Igual , CLK => CLK);

-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => MUX_Saida_PC, DOUT => Endereco, ENABLE => '1', CLK => CLK, RST => '0');
			 
End_Retorno : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => proxPC, DOUT => Saida_End_Retorno, ENABLE => Hab_Escrita_Retorno, CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 1)
        port map( entrada => Endereco, saida => proxPC);


-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => REG_1_ULA_A, entradaB => MUX_Saida, saida => Saida_ULA, seletor => Operacao_ULA, Zero_ULA => Zero);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.memoriaROM   generic map (dataWidth => (larguraDados+5), addrWidth => larguraEnderecos)
          port map (Endereco => Endereco, Dado => Instrucao);
			 
decoderInstru1 : entity work.decoderInstru
          port map (opcode => opcode_ROM , saida => Sinais_Controle);
			 
logicaDesvio1 : entity work.logicaDesvio
          port map (jmp => JUMP , jeq => JEQ, habIgual => Flag_Igual_Saida, jsr => JSR, ret => RET, saida => Logica_Desvio);
			 
RAM1 : entity work.memoriaRAM   generic map (dataWidth => larguraDados, addrWidth => (larguraEnderecos-1))
          port map (addr => Valor_Imediato, we => Escrever_Memoria, re => Ler_Memoria, habilita => Habilita_Memoria, clk => CLK, dado_in => REG_1_ULA_A, dado_out => Saida_Dados);

Hab_Escrita_Retorno <= Sinais_Controle(11);			 
JUMP <= Sinais_Controle(10);
RET <= Sinais_Controle(9);
JSR <= Sinais_Controle(8);
JEQ <= Sinais_Controle(7);
selMUX <= Sinais_Controle(6);
Habilita_A <= Sinais_Controle(5);
Operacao_ULA <= Sinais_Controle(4 downto 3);
Hab_Flag_Igual <= Sinais_Controle(2);
Ler_Memoria <= Sinais_Controle(1);
Escrever_Memoria <= Sinais_Controle(0);


-- A ligacao dos LEDs:
LEDR (9) <= Operacao_ULA(1);
LEDR (8) <= Operacao_ULA(0);
LEDR (7 downto 0) <= REG_1_ULA_A;

PC_OUT <= Endereco;
Palavra_Controle <= Sinais_Controle;


end architecture;