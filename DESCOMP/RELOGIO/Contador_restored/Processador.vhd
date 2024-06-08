library ieee;
use ieee.std_logic_1164.all;

entity Processador is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9
  );
  port   (
  -- Os nome são escritos da seguinte maneira: Representação_Origem_Destino
  
	Instrucao_ROM_Processador : in std_logic_vector(14 downto 0);
	Data_OutRAM_Processador: in std_logic_vector(larguraDados-1 downto 0);
	RST_InProcessador:	in std_logic;	
	CLK: in std_logic;
   Data_Processador_InRAM : out std_logic_vector(larguraDados-1 downto 0);
	EnderecoROM_Processador_ROM: out std_logic_vector(larguraEnderecos-1 downto 0);
	EnderecoRAM_Processador_RAM: out std_logic_vector(larguraEnderecos-1 downto 0);
	EscreverMemoria_Processador_RAM: out std_logic;
	LerMemoria_Processador_RAM: out std_logic
  );
end entity;


architecture arquitetura of Processador is

  signal MUX_Saida : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal Dados_EntradaRAM : std_logic_vector (larguraDados-1 downto 0);
  signal EnderecoROM_incrementaPC: std_logic_vector(larguraEnderecos-1 downto 0);
  signal Sinais_Controle : std_logic_vector (13 downto 0);
  signal proxPC : std_logic_vector (larguraDados downto 0);
  signal MUX_Saida_PC : std_logic_vector (larguraDados downto 0);
  signal Saida_End_Retorno : std_logic_vector (larguraEnderecos-1 downto 0);
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
  signal Menor : std_logic;
  signal Flag_Igual_Saida : std_logic;
  signal Flag_Menor_Saida : std_logic;
  signal Hab_Flag_Igual : std_logic;
  signal Hab_Flag_Menor: std_logic;
  signal Hab_Escrita_Retorno : std_logic;
  signal JSR : std_logic;
  signal RET : std_logic;
  signal JLT : std_logic;
  
  alias Dest_Jump: std_logic_vector(8 downto 0) is Instrucao_ROM_Processador(10 downto 2);
  alias Valor_Imediato: std_logic_vector(7 downto 0) is Instrucao_ROM_Processador(9 downto 2);
  alias opcode_ROM: std_logic_vector(3 downto 0) is Instrucao_ROM_Processador(14 downto 11);
  --alias Habilita_Memoria: std_logic is Instrucao_ROM_Processador(10);
  alias End_Regs: std_logic_vector(1 downto 0) is Instrucao_ROM_Processador(1 downto 0); --inclusão do endereço do banco de registradores que na instrução são os bits 1 e 0

begin

-- Instanciando os componentes:


-- O port map completo do MUX.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => Data_OutRAM_Processador,
                 entradaB_MUX =>  Valor_Imediato,
                 seletor_MUX => SelMUX,
                 saida_MUX => MUX_Saida); --não teve nenhuma mudança/novidade desde a Aula 5, já corrigida em outra oportunidade
-- O port map completo do MUX para desvio de execução.					  
MUX2 :  entity work.muxGenerico4x1  generic map (larguraEntrada => 9, larguraSelecao => 2)
        port map( entrada0_MUX => proxPC,
                 entrada1_MUX =>  Dest_Jump,
					  entrada2_MUX => Saida_End_Retorno,
					  entrada3_MUX => "000000000",
                 seletor_MUX => Logica_Desvio,
                 saida_MUX => MUX_Saida_PC); --não teve nenhuma mudança/novidade desde a Aula 5, já corrigida em outra oportunidade 

-- O port map completo do Acumulador.
BANCO_REGS : entity work.bancoRegistradoresArqRegMem   generic map (larguraDados => larguraDados)
          port map ( clk => CLK,
              endereco => end_regs,
              dadoEscrita => Saida_ULA,
              habilitaEscrita => Habilita_A,
              saida  => Dados_EntradaRAM); --inclusão do banco de registradores (modelo do professor), mudanças feitas comentadas dentro do módulo

Flag_Igual : entity work.FlipFlop   generic map (larguraDados => 1)
          port map (DIN => Zero, DOUT => Flag_Igual_Saida, ENABLE => Hab_Flag_Igual , CLK => CLK, RST => '0');
			 
Flag_Menor : entity work.FlipFlop   generic map (larguraDados => 1)
          port map (DIN => Menor, DOUT => Flag_Menor_Saida, ENABLE => Hab_Flag_Menor , CLK => CLK, RST => '0'); --Inclusão de um Flip Flop como Flag, ativada pelo ponto de controle Hab_Flag_Menor que é '1' na  instrução CLT, e guarda o valor, quando Hab_Flag_Menor é '1', '1' quando o bit mais significativo da subtração é 1, '0' caso contrário

-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => MUX_Saida_PC, DOUT => EnderecoROM_incrementaPC, ENABLE => '1', CLK => CLK, RST => RST_InProcessador);--não teve nenhuma mudança/novidade desde a Aula 5, já corrigida em outra oportunidade
			 
End_Retorno : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => proxPC, DOUT => Saida_End_Retorno, ENABLE => Hab_Escrita_Retorno, CLK => CLK, RST => '0');--não teve nenhuma mudança/novidade desde a Aula 5, já corrigida em outra oportunidade

incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 1)
        port map( entrada => EnderecoROM_incrementaPC, saida => proxPC);--não teve nenhuma mudança/novidade desde a Aula 5, já corrigida em outra oportunidade

-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => Dados_EntradaRAM, 
							entradaB => MUX_Saida, 
							saida => Saida_ULA, 
							seletor => Operacao_ULA, 
							Zero_ULA => Zero,
							Menor_ULA =>Menor); --Mudanças comentadas dentro do Módulo
			 
decoderInstru1 : entity work.decoderInstru
          port map (opcode => opcode_ROM , saida => Sinais_Controle); --comentários de novas instruções feitas dentro do módulo
			 
logicaDesvio1 : entity work.logicaDesvio
          port map (jmp => JUMP , jeq => JEQ, habIgual => Flag_Igual_Saida, jsr => JSR, ret => RET, jlt => JLT, habMenor => Flag_Menor_Saida, saida => Logica_Desvio); --Módulo com função de executar a lógica de desvio, que tem como saída, o seletor do MUX que seleciona o endereço que entrará no PC

JLT <= Sinais_Controle(13);--Novo ponto de controle, ativado apenas na instrução JLT			 
Hab_Flag_Menor <= Sinais_Controle(12); -- Novo ponto de controle, ativado apenas na instrução CLT
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


-- Ligação necessária para o endereçamento da RAM, e encapsulamento do Processador, para ser utilizado futuramente no Top Level

EnderecoRAM_Processador_RAM <= Dest_JUMP; --endereço da RAM, bit 10 ao bit 2 da instrução que sai da ROM
EnderecoROM_Processador_ROM <= EnderecoROM_incrementaPC; --endereço da ROM, que sai do PC
EscreverMemoria_Processador_RAM <= Escrever_Memoria; --Sinal que habilita a escrita na RAM, vem do ponto de controle que é o bit 0 dos Sinais de Controle que saem do decodificador de instruções
LerMemoria_Processador_RAM <= Ler_Memoria; --Sinal que habilita a leitura na RAM, vem do ponto de controle que é o bit 1 dos Sinais de Controle que saem do decodificador de instruções 
Data_Processador_InRAM <= Dados_EntradaRAM; -- Dados que irão entrar na RAM

end architecture;