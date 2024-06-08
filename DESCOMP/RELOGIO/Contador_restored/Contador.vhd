library ieee;
use ieee.std_logic_1164.all;

entity Contador is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
	 -- Periféricos utilizados
    LEDR  : out std_logic_vector(9 downto 0); 
	 HEX0  : out std_logic_vector(6 downto 0); 
	 HEX1  : out std_logic_vector(6 downto 0);
	 HEX2  : out std_logic_vector(6 downto 0);
	 HEX3  : out std_logic_vector(6 downto 0);
	 HEX4  : out std_logic_vector(6 downto 0);
	 HEX5  : out std_logic_vector(6 downto 0);
	 SW:	in std_logic_vector(9 downto 0);
	 KEY: in std_logic_vector(3 downto 0);
	 FPGA_RESET_N: in std_logic
	 
  );
end entity;


architecture arquitetura of Contador is

	--sinais RAM, ROM e Processador
  signal MUX_Saida : std_logic_vector (larguraDados-1 downto 0);
  signal CLK_out : std_logic;
  signal Hab_Memoria : std_logic;
  signal Instrucao_SaidaROM : std_logic_vector (14 downto 0);
  signal Dados_SaidaRAM : std_logic_vector (larguraDados-1 downto 0);
  signal Dados_Saida_Registrador_LEDs : std_logic_vector (larguraDados-1 downto 0);
  signal Reset_Botao_Processador : std_logic;
  signal Dados_EntradaRAM : std_logic_vector (larguraDados-1 downto 0);
  signal Endereco_EntradaROM : std_logic_vector (larguraEnderecos-1 downto 0);
  signal Endereco_EntradaRAM : std_logic_vector (larguraEnderecos-1 downto 0);
  signal EscreverMem_EntradaRAM : std_logic;
  signal LerMem_EntradaRAM : std_logic;
  signal CLK : std_logic;
  
  
  --sinais debounce e memorização
  signal CLK_FF_KEY0 : std_logic;
  signal Saida_FF_KEY0: std_logic;
  signal limpaLeituraKEY0: std_logic;
  
  signal CLK_FF_KEY1 : std_logic;
  signal Saida_FF_KEY1: std_logic;
  signal limpaLeituraKEY1: std_logic;
  
  signal CLK_FF_FPGA_RESET : std_logic;
  signal Saida_FF_FPGA_RESET : std_logic;
  signal limpaLeituraFPGA_RESET : std_logic;
  
  --sinais base de tempo para o relógio
  signal Hab_Base_Tempo: std_logic;
  signal limpaLeituraBase_Tempo: std_logic;
  
  -- "habilitadores" dos leds e dos displays hexas
  signal Hab_LEDs_Display : std_logic;
  signal Hab_LED8 : std_logic;
  signal Hab_LED9 : std_logic;
  signal Hab_LEDs_7_to_0 : std_logic;
  signal Hab_HEX0 : std_logic;
  signal Hab_HEX1 : std_logic;
  signal Hab_HEX2 : std_logic;
  signal Hab_HEX3 : std_logic;
  signal Hab_HEX4 : std_logic;
  signal Hab_HEX5 : std_logic;
  
  --sinais habilita buffer das chaves
  signal Hab_Buffer_SW7_to_0 : std_logic;
  signal Hab_Buffer_SW8 : std_logic;
  signal Hab_Buffer_SW9 : std_logic;
  signal Seletor_Base_Tempo_SW9: std_logic;
  
  --sinais habilita buffer dos botões
  signal Hab_Buffer_KEY0 : std_logic;
  signal Hab_Buffer_KEY1 : std_logic;
  signal Hab_Buffer_KEY2 : std_logic;
  signal Hab_Buffer_KEY3 : std_logic;
  signal Hab_Buffer_FPGARESET : std_logic;
  
  --sinal habilita bloco 5
  signal Hab_Chaves_Botoes : std_logic;
  
  
  --sinais que saem do decodificador de endereços, o decoder é o mesmo apesar dos nomes referenciarem os sublocos
	--leds
  signal Saida_DecoderLED_LED8 : std_logic;
  signal Saida_DecoderLED_LED9 : std_logic;
  signal Saida_DecoderLED_LEDs7_to_0 : std_logic;
  
	--display
  signal Saida_DecoderDisplay_HEX0 : std_logic;
  signal Saida_DecoderDisplay_HEX1 : std_logic;
  signal Saida_DecoderDisplay_HEX2 : std_logic;
  signal Saida_DecoderDisplay_HEX3 : std_logic;
  signal Saida_DecoderDisplay_HEX4 : std_logic;
  signal Saida_DecoderDisplay_HEX5 : std_logic;
  
	--chaves
  signal Saida_DecoderChaves_SW7_to_0 : std_logic;
  signal Saida_DecoderChaves_SW8 : std_logic;
  signal Saida_DecoderChaves_SW9 : std_logic;
  
	--botões
  signal Saida_DecoderBotoes_KEY0 : std_logic;
  signal Saida_DecoderBotoes_KEY1 : std_logic;
  signal Saida_DecoderBotoes_KEY2 : std_logic;
  signal Saida_DecoderBotoes_KEY3 : std_logic;
  signal Saida_DecoderBotoes_FPGARESET : std_logic;
  signal Saida_DecoderBotoes_Base_Tempo: std_logic;
  
  -- saída dos flipflops dos leds
  signal Dado_FF_LED8 : std_logic;
  signal Dado_FF_LED9 : std_logic;
  
  -- saídas dos decoders utilizados para endereçar memória RAM e periféricos
  signal SaidaDecoderBloco: std_logic_vector (7 downto 0);
  signal SaidaDecoderLED: std_logic_vector (7 downto 0);
  
  -- saídas dos decodificadores dos displays de 7 segmentos
  signal Saida_Decoder7seg_Display_HEX0: std_logic_vector (6 downto 0);
  signal Saida_Decoder7seg_Display_HEX1: std_logic_vector (6 downto 0);
  signal Saida_Decoder7seg_Display_HEX2: std_logic_vector (6 downto 0);
  signal Saida_Decoder7seg_Display_HEX3: std_logic_vector (6 downto 0);
  signal Saida_Decoder7seg_Display_HEX4: std_logic_vector (6 downto 0);
  signal Saida_Decoder7seg_Display_HEX5: std_logic_vector (6 downto 0);
  
  -- saídas dos registradores utilizados com os displays 
  signal Dado_Reg_Display_HEX0: std_logic_vector (3 downto 0);
  signal Dado_Reg_Display_HEX1: std_logic_vector (3 downto 0);
  signal Dado_Reg_Display_HEX2: std_logic_vector (3 downto 0);
  signal Dado_Reg_Display_HEX3: std_logic_vector (3 downto 0);
  signal Dado_Reg_Display_HEX4: std_logic_vector (3 downto 0);
  signal Dado_Reg_Display_HEX5: std_logic_vector (3 downto 0);
  
  -- alias RAM, Bloco
  alias Endereco_RAM: std_logic_vector(5 downto 0) is Endereco_EntradaRAM(5 downto 0);
  alias Endereco_Bloco: std_logic_vector(2 downto 0) is Endereco_EntradaRAM(8 downto 6);
  alias Endereco_LED: std_logic_vector(2 downto 0) is Endereco_EntradaRAM(2 downto 0);
  
  -- alias Chaves, LEDs e Display
  alias A5_Display_LED: std_logic is Endereco_EntradaRAM(5);
  -- alias LEDs
  alias Dado_LEDs_8_e_9: std_logic is Dados_EntradaRAM(0);
  alias Dado_Display_7seg: std_logic_vector(3 downto 0) is Dados_EntradaRAM(3 downto 0);
  
  
begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
--gravar:  if simulacao generate
--CLK <= KEY(0);
--else generate
--detectorSubCLK0: work.edgeDetector(bordaSubida)
--        port map (clk => CLOCK_50, entrada => (not KEY(3)), saida => CLK);
--end generate;

CLK <= CLOCK_50;

-- port map do processador.
-- aqui contem as entradas e saídas dos barramentos de leitura e escrita de dados, barramento de endereços e de controle 
-- (Dados_SaidaRAM, Dados_EntradaRAM, EscreverMem_EntradaRAM, Endereco_EntradaRAM, LerMem_EntradaRAM) 
-- além disso, contém também os dados que o processador envia para a ROM (Endereco_EntradaROM)
-- e o que o processador recebe da ROM (Instrucao_SaidaROM)
-- a lógica principaldo nosso relógio acontece dentro do nosso processador

Processador1: entity work.Processador generic map (larguraDados => 8, larguraEnderecos => 9)
							port map(Instrucao_ROM_Processador => Instrucao_SaidaROM, 
										Data_OutRAM_Processador => Dados_SaidaRAM, 
										RST_InProcessador => Reset_Botao_Processador, 
										CLK => CLK, Data_Processador_InRAM =>Dados_EntradaRAM, 
										EnderecoROM_Processador_ROM=> Endereco_EntradaROM, 
										EnderecoRAM_Processador_RAM => Endereco_EntradaRAM, 
										EscreverMemoria_Processador_RAM => EscreverMem_EntradaRAM, 
										LerMemoria_Processador_RAM => LerMem_EntradaRAM); 

										
-- utilizando as informações recebidas e enviadas do processador, é possível construir o port map da ROM
-- o nosso programa está presente dentro da rom, logo, é essencial a comunicação do processador com a ROM
ROM1 : entity work.memoriaROM   generic map (dataWidth => 15, addrWidth => larguraEnderecos)
          port map (Endereco => Endereco_EntradaROM, 
						  Dado => Instrucao_SaidaROM);

-- visto que possuímos a memória RAM, LEDS, SWs e KEYs, é necessário a utilização de dois decodificadores: o de bloco (decoderBloco) e um de endereço (decoderLED)
-- as informações recebidas pelo decoder vem do processador (Endereco_EntradaRAM)

-- o decoder de bloco serve para designar o periférico 
-- (0~63 (bloco 0) - memória RAM; 256~319 (bloco 4)- LEDs ou HEXs; 320~383 (bloco 5)- SWs, KEYs e base de tempo; 448~511 (bloco 7) -limpeza da leitura das chaves e da base de tempo
-- nem todos os "espaços" dos blocos são utilizados, mas eles estão disponíveis.		  
decoderBloco :  entity work.decoder3x8
        port map( entrada => Endereco_Bloco,
                 saida => SaidaDecoderBloco);

-- ja o decoder de endereço designa especificamente pra que endereço, dentro daquele bloco, a informação vai
-- por exemplo, por mais que LEDs e HEXs estão no mesmo bloco, designando endereços diferentes, é possível acessar somente o desejado			  
decoderLED :  entity work.decoder3x8
        port map( entrada => Endereco_LED, 
                 saida => SaidaDecoderLED);

-- a memória RAM é designada a armazenar as informações que julgamos necessárias.
-- esse componente "troca" informações com o processador, logo, com a decodificação correta, realizada pelos dois decoders e garantindo sua habilitação (Hab_Memoria, EscreverMem_EntradaRAM, LerMem_EntradaRAM)
-- é possível ler (Dados_SaidaRAM) e escrever (Dados_EntradaRAM) na memória
  		  
RAM1 : entity work.memoriaRAM   generic map (dataWidth => larguraDados, addrWidth => 6)
          port map (addr => Endereco_RAM, 
						  we => EscreverMem_EntradaRAM, 
						  re => LerMem_EntradaRAM, 
						  habilita => Hab_Memoria, 
						  clk => CLK, 
						  dado_in => Dados_EntradaRAM, 
						  dado_out => Dados_SaidaRAM);
						  
-- operador AND utilizado para o funcionamento do LED8
-- Para acionar o led 8 é necessário que ambos decoders estejam direcionando para aquele periférico (Hab_LEDs_Display, Saida_DecoderLED_LED8) 
-- além disso, é necessário o "habilita do dado de entrada" (EscreverMem_EntradaRAM) e saber o bit 5 do endereço (para conseguir "diferenciar" os periféricos)
opAndLED8 : entity work.operadorAND4x1
          port map (in1 => Hab_LEDs_Display, 
						  in2 => EscreverMem_EntradaRAM, 
						  in3 => Saida_DecoderLED_LED8, 
						  in4 => NOT(A5_Display_LED), 
						  saida => Hab_LED8 );

-- operador AND utilizado para o funcionamento do LED9
-- Para acionar o led 9 é necessário que ambos decoders estejam direcionando para aquele periférico (Hab_LEDs_Display, Saida_DecoderLED_LED9) 
-- além disso, é necessário o "habilita do dado de entrada" (EscreverMem_EntradaRAM) e saber o bit 5 do endereço (para conseguir "diferenciar" os periféricos)
opAndLED9 : entity work.operadorAND4x1
          port map (in1 => Hab_LEDs_Display , 
						  in2 => EscreverMem_EntradaRAM, 
						  in3 => Saida_DecoderLED_LED9, 
						  in4 => NOT(A5_Display_LED), 
						  saida => Hab_LED9 );
				
-- operador AND utilizado para o funcionamento dos LEDs 0~7
-- Para acionar os leds 0~7 é necessário que ambos decoders estejam direcionando para aquele periférico (Hab_LEDs_Display, Saida_DecoderLED_LEDs7_to_0) 
-- além disso, é necessário o "habilita do dado de entrada" (EscreverMem_EntradaRAM) e saber o bit 5 do endereço (para conseguir "diferenciar" os periféricos)
opAndLEDs_7_to_0 : entity work.operadorAND4x1
          port map (in1 => Hab_LEDs_Display , 
						  in2 => EscreverMem_EntradaRAM, 
						  in3 => Saida_DecoderLED_LEDs7_to_0, 
						  in4 => NOT(A5_Display_LED), 
						  saida => Hab_LEDs_7_to_0 );

						  
						  
-- operador AND utilizado para o funcionamento dos HEX
-- Para acionar o HEXN é necessário que ambos decoders estejam direcionando para aquele periférico (Hab_LEDs_Display, Saida_DecoderDisplay_HEXN) 
-- além disso, é necessário o "habilita do dado de entrada" (EscreverMem_EntradaRAM) e saber o bit 5 do endereço (para conseguir "diferenciar" os periféricos)  
opAndHEX0 : entity work.operadorAND4x1
          port map (in1 => Hab_LEDs_Display , 
						  in2 => EscreverMem_EntradaRAM, 
						  in3 => Saida_DecoderDisplay_HEX0 , 
						  in4 => A5_Display_LED, 
						  saida => Hab_HEX0 );
	
opAndHEX1 : entity work.operadorAND4x1
          port map (in1 => Hab_LEDs_Display , 
						  in2 => EscreverMem_EntradaRAM, 
						  in3 => Saida_DecoderDisplay_HEX1 , 
						  in4 => A5_Display_LED, 
						  saida => Hab_HEX1 );
						  
opAndHEX2 : entity work.operadorAND4x1
          port map (in1 => Hab_LEDs_Display , 
						  in2 => EscreverMem_EntradaRAM, 
						  in3 => Saida_DecoderDisplay_HEX2 , 
						  in4 => A5_Display_LED, 
						  saida => Hab_HEX2 );	
						  
opAndHEX3 : entity work.operadorAND4x1
          port map (in1 => Hab_LEDs_Display , 
						  in2 => EscreverMem_EntradaRAM, 
						  in3 => Saida_DecoderDisplay_HEX3 , 
						  in4 => A5_Display_LED, 
						  saida => Hab_HEX3 );	
						  		 
opAndHEX4 : entity work.operadorAND4x1
          port map (in1 => Hab_LEDs_Display , 
						  in2 => EscreverMem_EntradaRAM, 
						  in3 => Saida_DecoderDisplay_HEX4 , 
						  in4 => A5_Display_LED, 
						  saida => Hab_HEX4 );
			 
opAndHEX5 : entity work.operadorAND4x1
          port map (in1 => Hab_LEDs_Display , 
			 in2 => EscreverMem_EntradaRAM, 
			 in3 => Saida_DecoderDisplay_HEX5 , 
			 in4 => A5_Display_LED, 
			 saida => Hab_HEX5 );
			 
-- operador AND utilizado para o funcionamento das SW7_to_0
-- Para acionar as SW7_to_0 é necessário que ambos decoders estejam direcionando para aquele periférico (Hab_Chaves_Botoes, Saida_DecoderChaves_SW7_to_0) 
-- além disso, é necessário o "habilita do dado de saida" (LerMem_EntradaRAM) e saber o bit 5 do endereço (para conseguir "diferenciar" os periféricos)
opAndSW7_to_0 : entity work.operadorAND4x1
          port map (in1 => Hab_Chaves_Botoes , 
						  in2 => LerMem_EntradaRAM, 
						  in3 => Saida_DecoderChaves_SW7_to_0 , 
						  in4 => NOT(A5_Display_LED), 
						  saida => Hab_Buffer_SW7_to_0 );	
						  
-- operador AND utilizado para o funcionamento da SW8
-- Para acionar a SW8é necessário que ambos decoders estejam direcionando para aquele periférico (Hab_Chaves_Botoes, Saida_DecoderChaves_SW8) 
-- além disso, é necessário o "habilita do dado de saida" (LerMem_EntradaRAM) e saber o bit 5 do endereço (para conseguir "diferenciar" os periféricos)
opAndSW8 : entity work.operadorAND4x1
          port map (in1 => Hab_Chaves_Botoes , 
						  in2 => LerMem_EntradaRAM, 
						  in3 => Saida_DecoderChaves_SW8 , 
						  in4 => NOT(A5_Display_LED), 
						  saida => Hab_Buffer_SW8 );	
						  
-- operador AND utilizado para o funcionamento da SW9
-- Para acionar a SW9 é necessário que ambos decoders estejam direcionando para aquele periférico (Hab_Chaves_Botoes, Saida_DecoderChaves_SW9) 
-- além disso, é necessário o "habilita do dado de saida" (LerMem_EntradaRAM) e saber o bit 5 do endereço (para conseguir "diferenciar" os periféricos)	
opAndSW9 : entity work.operadorAND4x1
          port map (in1 => Hab_Chaves_Botoes , 
						  in2 => LerMem_EntradaRAM, 
						  in3 => Saida_DecoderChaves_SW9 , 
						  in4 => NOT(A5_Display_LED), 
						  saida => Hab_Buffer_SW9 );	

						  
-- operador AND utilizado para o funcionamento das KEYs
-- Para acionar a KEYN é necessário que ambos decoders estejam direcionando para aquele periférico (Hab_Chaves_Botoes, Saida_DecoderBotoes_KEYN) 
-- além disso, é necessário o "habilita do dado de saida" (LerMem_EntradaRAM) e saber o bit 5 do endereço (para conseguir "diferenciar" os periféricos)	
opAndKEY0 : entity work.operadorAND4x1
          port map (in1 => Hab_Chaves_Botoes , 
						  in2 => LerMem_EntradaRAM, 
						  in3 => Saida_DecoderBotoes_KEY0 , 
						  in4 => A5_Display_LED, 
						  saida => Hab_Buffer_KEY0 );	

opAndKEY1 : entity work.operadorAND4x1
          port map (in1 => Hab_Chaves_Botoes , 
						  in2 => LerMem_EntradaRAM, 
						  in3 => Saida_DecoderBotoes_KEY1 , 
						  in4 => A5_Display_LED, 
						  saida => Hab_Buffer_KEY1 );
						  		 
opAndKEY2 : entity work.operadorAND4x1
          port map (in1 => Hab_Chaves_Botoes , 
						  in2 => LerMem_EntradaRAM, 
						  in3 => Saida_DecoderBotoes_KEY2 , 
						  in4 => A5_Display_LED, 
						  saida => Hab_Buffer_KEY2 );
						  			 
opAndKEY3 : entity work.operadorAND4x1
          port map (in1 => Hab_Chaves_Botoes , 
						  in2 => LerMem_EntradaRAM, 
						  in3 => Saida_DecoderBotoes_KEY3 , 
						  in4 => A5_Display_LED, 
						  saida => Hab_Buffer_KEY3 );	

-- operador AND utilizado para o funcionamento da FPGA_RESET_N
-- Para acionar a FPGA_RESET_N é necessário que ambos decoders estejam direcionando para aquele periférico (Hab_Chaves_Botoes, Saida_DecoderBotoes_FPGARESET) 
-- além disso, é necessário o "habilita do dado de saida" (LerMem_EntradaRAM) e saber o bit 5 do endereço (para conseguir "diferenciar" os periféricos)
opAndFPGARESET : entity work.operadorAND4x1
          port map (in1 => Hab_Chaves_Botoes , 
					     in2 => LerMem_EntradaRAM, 
						  in3 => Saida_DecoderBotoes_FPGARESET , 
						  in4 => A5_Display_LED, 
						  saida => Hab_Buffer_FPGARESET );	
						  
-- operador AND utilizado para o funcionamento da base de tempo
-- Para acionar a base de tempo é necessário que ambos decoders estejam direcionando para aquele periférico (Hab_Chaves_Botoes, Saida_DecoderBotoes_Base_Tempo) 
-- além disso, é necessário o "habilita do dado de saida" (LerMem_EntradaRAM) e saber o bit 5 do endereço (para conseguir "diferenciar" os periféricos)
opAndBaseTempo : entity work.operadorAND4x1
          port map (in1 => Hab_Chaves_Botoes , 
						  in2 => LerMem_EntradaRAM, 
						  in3 => Saida_DecoderBotoes_Base_Tempo , 
						  in4 => A5_Display_LED, 
						  saida => Hab_Base_Tempo );			 

-- além do operador AND para permitir o acesso ao LED, utilizamos um registrador para "controlar" a escrita nesse LED.
-- o "resultado" do AND funciona como o habilita desse registrador (Hab_LEDs_7_to_0). logo, só é escrito algo ali quando deve ser escrito.		  
REG_LEDs_7_to_0 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => Dados_EntradaRAM, 
						  DOUT => Dados_Saida_Registrador_LEDs, 
						  ENABLE => Hab_LEDs_7_to_0, 
						  CLK => CLK, 
						  RST => '0');
						  
-- além do operador AND para permitir o acesso ao LED, utilizamos um flip-flop para "controlar" a escrita nesse LED.
-- o "resultado" do AND funciona como o habilita desse registrador (Hab_LED8). logo, só é escrito algo ali quando deve ser escrito.			 
FF_LED8 : entity work.FlipFlop   generic map (larguraDados => 1)
          port map (DIN => Dado_LEDs_8_e_9, 
						  DOUT => Dado_FF_LED8, 
						  ENABLE => Hab_LED8 , 
						  CLK => CLK, 
						  RST => '0');
						  
-- além do operador AND para permitir o acesso ao LED, utilizamos um flip-flop para "controlar" a escrita nesse LED.
-- o "resultado" do AND funciona como o habilita desse registrador (Hab_LED9). logo, só é escrito algo ali quando deve ser escrito.
FF_LED9 : entity work.FlipFlop   generic map (larguraDados => 1)
          port map (DIN => Dado_LEDs_8_e_9, 
						  DOUT => Dado_FF_LED9, 
						  ENABLE => Hab_LED9 , 
						  CLK => CLK, 
						  RST => '0');
						  
-- além do operador AND para permitir o acesso ao HEXN, utilizamos um registrador para "controlar" a escrita nesse HEXN.
-- o "resultado" do AND funciona como o habilita desse registrador (Hab_HEXN). logo, só é escrito algo ali quando deve ser escrito.			 
REG_HEX0 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Dado_Display_7seg, 
						  DOUT => Dado_Reg_Display_HEX0, 
						  ENABLE => Hab_HEX0, 
						  CLK => CLK, 
						  RST => '0');
						  		 
REG_HEX1 : entity work.registradorGenerico  generic map (larguraDados => 4)
          port map (DIN => Dado_Display_7seg, 
						  DOUT => Dado_Reg_Display_HEX1, 
						  ENABLE => Hab_HEX1, 
						  CLK => CLK, 
						  RST => '0');
						  
REG_HEX2 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Dado_Display_7seg,
						  DOUT => Dado_Reg_Display_HEX2, 
						  ENABLE => Hab_HEX2, 
						  CLK => CLK, 
						  RST => '0');
	  
REG_HEX3 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Dado_Display_7seg, 
						  DOUT => Dado_Reg_Display_HEX3, 
						  ENABLE => Hab_HEX3, 
						  CLK => CLK, 
						  RST => '0');
					
REG_HEX4 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Dado_Display_7seg, 
						  DOUT => Dado_Reg_Display_HEX4, 
						  ENABLE => Hab_HEX4, 
						  CLK => CLK, 
						  RST => '0');			 
						  
REG_HEX5 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Dado_Display_7seg, 
						  DOUT => Dado_Reg_Display_HEX5, 
						  ENABLE => Hab_HEX5, 
						  CLK => CLK, 
						  RST => '0');

						  
-- os buffers utilizados nas chaves servem para garantir um bom fluxo no barramento de dados, dessa forma, 
-- ele só será "ativado" quando o resultado do AND do determinado componente for 1
Buffer_SW_7_to_0 :  entity work.buffer_3_state_8portas
        port map(entrada => SW(3 downto 0), 
					  habilita =>  Hab_Buffer_SW7_to_0, 
					  saida => Dados_SaidaRAM(3 downto 0));			 

Buffer_SW_8 :  entity work.buffer_3_state
        port map(entrada => SW(8), 
					  habilita =>  Hab_Buffer_SW8, 
					  saida => Dados_SaidaRAM(0));		  

Buffer_SW_9 :  entity work.buffer_3_state
        port map(entrada => SW(9), habilita =>  
					  Hab_Buffer_SW9, 
					  saida => Seletor_Base_Tempo_SW9);

-- componente utilizado para detectar se KEY0 foi apertada. visto que um botão apertado é igual a 0,  é necessário inverte-lo
detectorSub_KEY0:entity work.edgeDetector(bordaSubida)
       port map (clk => CLOCK_50, 
					  entrada => (not KEY(0)), 
					  saida => CLK_FF_KEY0);

-- flip-flop utilizado para armazenar e "limpar" a leitura de key 0, 
-- assim, quando ela é apertada, guardamos no flip-flop "1"
-- e quando ja lemos o flip flop podemos "limpar" esse flip flop
-- isto é basicamente dizer "key0 lido, pode zerar de novo"
FF_KEY0 : entity work.FlipFlop   generic map (larguraDados => 1)
          port map (DIN => '1', 
						  DOUT => Saida_FF_KEY0, 
						  ENABLE => '1' , 
						  CLK => CLK_FF_KEY0, 
						  RST => limpaLeituraKEY0);	
						  
-- componente utilizado para detectar se KEY1 foi apertada. visto que um botão apertado é igual a 0,  é necessário inverte-lo			 
detectorSub_KEY1:entity work.edgeDetector(bordaSubida)
       port map (clk => CLOCK_50, 
					  entrada => (not KEY(1)), 
					  saida => CLK_FF_KEY1);

-- flip-flop utilizado para armazenar e "limpar" a leitura de key 1,
-- assim, quando ela é apertada, guardamos no flip-flop "1"
-- e quando ja lemos o flip flop podemos "limpar" esse flip flop
-- isto é basicamente dizer "key1 lido, pode zerar de novo"			 
FF_KEY1 : entity work.FlipFlop   generic map (larguraDados => 1)
          port map (DIN => '1', 
						  DOUT => Saida_FF_KEY1, 
						  ENABLE => '1' , 
						  CLK => CLK_FF_KEY1, 
						  RST => limpaLeituraKEY1);
						  
-- componente utilizado para detectar se FPGA_RESET foi apertada. visto que um botão apertado é igual a 0,  é necessário inverte-lo			 	
detectorSub_FPGA_RESET:entity work.edgeDetector(bordaSubida)
       port map (clk => CLOCK_50, 
					  entrada => (not FPGA_RESET_N), 
					  saida => CLK_FF_FPGA_RESET);

					  

-- flip-flop utilizado para armazenar e "limpar" a leitura de FPGA_RESET, 
-- assim, quando ela é apertada, guardamos no flip-flop "1"
-- e quando ja lemos o flip flop podemos "limpar" esse flip flop
-- isto é basicamente dizer "FPGA_RESET lido, pode zerar de novo"					  
FF_FPGA_RESET : entity work.FlipFlop   generic map (larguraDados => 1)
          port map (DIN => '1', 
						  DOUT => Saida_FF_FPGA_RESET, 
						  ENABLE => '1' , 
						  CLK => CLK_FF_FPGA_RESET, 
						  RST => limpaLeituraFPGA_RESET);	 

-- os buffers utilizados nos botões servem para garantir um bom fluxo no barramento de dados, dessa forma, 
-- ele só será "ativado" quando o resultado do AND do determinado componente for 1						  
Buffer_KEY_0 :  entity work.buffer_3_state
        port map(entrada => Saida_FF_KEY0, 
					  habilita =>  Hab_Buffer_KEY0, 
					  saida => Dados_SaidaRAM(0));

Buffer_KEY_1 :  entity work.buffer_3_state
        port map(entrada => Saida_FF_KEY1, 
					  habilita =>  Hab_Buffer_KEY1, 
					  saida => Dados_SaidaRAM(0));

Buffer_KEY_2 :  entity work.buffer_3_state
        port map(entrada => KEY(2), 
					  habilita =>  Hab_Buffer_KEY2, 
					  saida => Dados_SaidaRAM(0));

Buffer_KEY_3 :  entity work.buffer_3_state
       port map(entrada => KEY(3), 
					 habilita =>  Hab_Buffer_KEY3, 
					 saida => Dados_SaidaRAM(0));		  

Buffer_FPGARESET :  entity work.buffer_3_state
        port map(entrada => Saida_FF_FPGA_RESET, 
					  habilita =>  Hab_Buffer_FPGARESET, 
					  saida => Dados_SaidaRAM(0));

-- O decodificador de 7 segmentos serve para receber os dados, por exemplo, se é de desejo acender um 6, ele recebe esse valor em binário (0110)
-- e o transforma em um número responsável por acender os leds que aparentam o número 6					  
Decod7seg_HEX0 :  entity work.conversorHex7Seg
        port map(dadoHex => Dado_Reg_Display_HEX0,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => Saida_Decoder7seg_Display_HEX0);	

Decod7seg_HEX1 :  entity work.conversorHex7Seg
        port map(dadoHex => Dado_Reg_Display_HEX1,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => Saida_Decoder7seg_Display_HEX1);
				
Decod7seg_HEX2 :  entity work.conversorHex7Seg
        port map(dadoHex => Dado_Reg_Display_HEX2,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => Saida_Decoder7seg_Display_HEX2);
				
Decod7seg_HEX3 :  entity work.conversorHex7Seg
        port map(dadoHex => Dado_Reg_Display_HEX3,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => Saida_Decoder7seg_Display_HEX3);
				
Decod7seg_HEX4 :  entity work.conversorHex7Seg
        port map(dadoHex => Dado_Reg_Display_HEX4,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => Saida_Decoder7seg_Display_HEX4);
Decod7seg_HEX5 :  entity work.conversorHex7Seg
        port map(dadoHex => Dado_Reg_Display_HEX5,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => Saida_Decoder7seg_Display_HEX5);

-- a interface base de tempo foi construída para possiblitar o funcionamento do relógio.
-- ela tem o funcionamento semelhante ao de um botão, mas é apertada "automaticamente" quando é necessário mudar o tempo (geralmente de 1 em um segundo)					  
interfaceBaseTempo : entity work.divisorGenerico_e_Interface
              port map (clk => CLOCK_50,
              habilitaLeitura => Hab_Base_Tempo,
              limpaLeitura => limpaLeituraBase_Tempo,
				  modo => Seletor_Base_Tempo_SW9,
              leituraUmSegundo => Dados_SaidaRAM(0));		 
					
					
-- O sinal limpaLeitura das chaves funciona para resetar o flip flop que armazena se foi apertada ou não
limpaLeituraKEY0 <= (Endereco_EntradaRAM(0) AND Endereco_EntradaRAM(1) AND Endereco_EntradaRAM(2)	AND Endereco_EntradaRAM(3)	AND Endereco_EntradaRAM(4)	AND Endereco_EntradaRAM(5)	AND Endereco_EntradaRAM(6) AND Endereco_EntradaRAM(7) AND Endereco_EntradaRAM(8)	AND EscreverMem_EntradaRAM);		

limpaLeituraKEY1 <= (NOT(Endereco_EntradaRAM(0)) AND Endereco_EntradaRAM(1) AND Endereco_EntradaRAM(2)	AND Endereco_EntradaRAM(3)	AND Endereco_EntradaRAM(4)	AND Endereco_EntradaRAM(5)	AND Endereco_EntradaRAM(6) AND Endereco_EntradaRAM(7) AND Endereco_EntradaRAM(8)	AND EscreverMem_EntradaRAM);	

limpaLeituraFPGA_RESET <=(Endereco_EntradaRAM(0) AND NOT(Endereco_EntradaRAM(1)) AND Endereco_EntradaRAM(2)	AND Endereco_EntradaRAM(3)	AND Endereco_EntradaRAM(4)	AND Endereco_EntradaRAM(5)	AND Endereco_EntradaRAM(6) AND Endereco_EntradaRAM(7) AND Endereco_EntradaRAM(8)	AND EscreverMem_EntradaRAM);	

limpaLeituraBase_Tempo <=(NOT(Endereco_EntradaRAM(0)) AND NOT(Endereco_EntradaRAM(1)) AND Endereco_EntradaRAM(2)	AND Endereco_EntradaRAM(3)	AND Endereco_EntradaRAM(4)	AND Endereco_EntradaRAM(5)	AND Endereco_EntradaRAM(6) AND Endereco_EntradaRAM(7) AND Endereco_EntradaRAM(8)	AND EscreverMem_EntradaRAM);	

-- Designando variáveis para deixar mais claro as saídas dos decoders:
-- alocação da saida do decoder bloco	
Hab_Memoria <= SaidaDecoderBloco(0);
Hab_LEDs_Display <= SaidaDecoderBloco(4);
Hab_Chaves_Botoes <= SaidaDecoderBloco(5);

-- alocação da saida do decoderLED
Saida_DecoderLED_LEDs7_to_0 <= SaidaDecoderLED(0);
Saida_DecoderLED_LED8 <= SaidaDecoderLED(1);
Saida_DecoderLED_LED9 <= SaidaDecoderLED(2);

Saida_DecoderDisplay_HEX0 <= SaidaDecoderLED(0);
Saida_DecoderDisplay_HEX1 <= SaidaDecoderLED(1);
Saida_DecoderDisplay_HEX2 <= SaidaDecoderLED(2);
Saida_DecoderDisplay_HEX3 <= SaidaDecoderLED(3);
Saida_DecoderDisplay_HEX4 <= SaidaDecoderLED(4);
Saida_DecoderDisplay_HEX5 <= SaidaDecoderLED(5);

Saida_DecoderChaves_SW7_to_0 <= SaidaDecoderLED(0);
Saida_DecoderChaves_SW8 <= SaidaDecoderLED(1);
Saida_DecoderChaves_SW9 <= SaidaDecoderLED(2);

Saida_DecoderBotoes_KEY0 <= SaidaDecoderLED(0);
Saida_DecoderBotoes_KEY1 <= SaidaDecoderLED(1);
Saida_DecoderBotoes_KEY2 <= SaidaDecoderLED(2);
Saida_DecoderBotoes_KEY3 <= SaidaDecoderLED(3);
Saida_DecoderBotoes_FPGARESET <= SaidaDecoderLED(4);
Saida_DecoderBotoes_Base_Tempo <= SaidaDecoderLED(5);



-- A ligacao dos LEDs:
-- Os leds recebem os dados armazenados em seus respectivos flipflops
LEDR(9) <= Dado_FF_LED9;
LEDR(8) <= Dado_FF_LED8;
LEDR(7 downto 0) <= Dados_Saida_Registrador_LEDs;

-- Os HEXs recebem a saída dos decodificadores de & segmentos, possibilitando acender os leds corretos
HEX0 <= Saida_Decoder7seg_Display_HEX0;
HEX1 <= Saida_Decoder7seg_Display_HEX1;
HEX2 <= Saida_Decoder7seg_Display_HEX2;
HEX3 <= Saida_Decoder7seg_Display_HEX3;
HEX4 <= Saida_Decoder7seg_Display_HEX4;
HEX5 <= Saida_Decoder7seg_Display_HEX5;

end architecture;