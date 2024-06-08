library ieee;
use ieee.std_logic_1164.all;

entity Aula5_JUMP is
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
	 EntradaB_ULA     : out std_logic_vector(larguraDados-1 downto 0);
	 Palavra_Controle : out std_logic_vector(6 downto 0)
  );
end entity;


architecture arquitetura of Aula5_JUMP is

  signal MUX_Saida : std_logic_vector (larguraDados-1 downto 0);
  signal REG_1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal Sinais_Controle : std_logic_vector (6 downto 0);
  signal Saida_Dados : std_logic_vector(larguraDados-1 downto 0);
  signal Instrucao : std_logic_vector (12 downto 0);
  signal Endereco : std_logic_vector (larguraDados downto 0);
  signal proxPC : std_logic_vector (larguraDados downto 0);
  signal MUX_Saida_PC : std_logic_vector (larguraDados downto 0);
  signal CLK : std_logic;
  signal SelMUX : std_logic;
  signal Habilita_A : std_logic;
  signal Reset_A : std_logic;
  signal Operacao_ULA : std_logic_vector(1 downto 0);
  signal Ler_Memoria : std_logic;
  signal Escrever_Memoria : std_logic;
  signal JUMP : std_logic;
  
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
MUX2 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraEnderecos)
        port map( entradaA_MUX => proxPC,
                 entradaB_MUX =>  Dest_Jump,
                 seletor_MUX => JUMP,
                 saida_MUX => MUX_Saida_PC);

-- O port map completo do Acumulador.
REGA : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => Saida_ULA, DOUT => REG_1_ULA_A, ENABLE => Habilita_A, CLK => CLK, RST => '0');

-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => MUX_Saida_PC, DOUT => Endereco, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 1)
        port map( entrada => Endereco, saida => proxPC);


-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => REG_1_ULA_A, entradaB => MUX_Saida, saida => Saida_ULA, seletor => Operacao_ULA);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.memoriaROM   generic map (dataWidth => (larguraDados+5), addrWidth => larguraEnderecos)
          port map (Endereco => Endereco, Dado => Instrucao);
			 
decoderInstru1 : entity work.decoderInstru
          port map (opcode => opcode_ROM , saida => Sinais_Controle);
			 
RAM1 : entity work.memoriaRAM   generic map (dataWidth => larguraDados, addrWidth => (larguraEnderecos-1))
          port map (addr => Valor_Imediato, we => Ler_Memoria, re => Escrever_Memoria, habilita => Habilita_Memoria, clk => CLK, dado_in => REG_1_ULA_A, dado_out => Saida_Dados);


JUMP <= Sinais_Controle(6);
selMUX <= Sinais_Controle(5);
Habilita_A <= Sinais_Controle(4);
Operacao_ULA <= Sinais_Controle(3 downto 2);
Ler_Memoria <= Sinais_Controle(1);
Escrever_Memoria <= Sinais_Controle(0);

-- A ligacao dos LEDs:
LEDR (9) <= Operacao_ULA(1);
LEDR (8) <= Operacao_ULA(0);
LEDR (7 downto 0) <= REG_1_ULA_A;

PC_OUT <= Endereco;
EntradaB_ULA <= MUX_Saida;
Palavra_Controle <= Sinais_Controle;

end architecture;