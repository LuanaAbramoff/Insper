library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 15;
          addrWidth: natural := 9
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);
  
  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI  : std_logic_vector(3 downto 0) := "0100";
  constant STA  : std_logic_vector(3 downto 0) := "0101"; 
  constant JMP  : std_logic_vector(3 downto 0) := "0110"; 
  constant JEQ  : std_logic_vector(3 downto 0) := "0111";
  constant CEQ  : std_logic_vector(3 downto 0) := "1000";
  constant JSR  : std_logic_vector(3 downto 0) := "1001";
  constant RET  : std_logic_vector(3 downto 0) := "1010";
  
  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
  
tmp(0) := x"4" & '0' & x"00" & "01"; -- LDI $0, R1 #Carregando 0 no registrador 1 #Carregando 0 no registrador 1
tmp(1) := x"5" & '0' & x"00" & "01"; -- STA @0, R1 #Carregando 0 na posição de memória 0 #Carregando 0 na posição de memória 0
tmp(2) := x"5" & '1' & x"FC" & "01"; -- STA @508, R1 #Limpando a leitura da base de tempo #Limpando a leitura da base de tempo
tmp(3) := x"5" & '1' & x"FE" & "01"; -- STA @510, R1 #Limpando a leitura de key 1 #Limpando a leitura de key 1
tmp(4) := x"5" & '0' & x"02" & "01"; -- STA @2, R1 #Zerando as unidades de segundo #Zerando as unidades de segundo
tmp(5) := x"5" & '0' & x"03" & "01"; -- STA @3, R1 #Zerando as dezenas de segundo #Zerando as dezenas de segundo
tmp(6) := x"5" & '0' & x"04" & "01"; -- STA @4, R1 #Zerando as unidades de minuto #Zerando as unidades de minuto
tmp(7) := x"5" & '0' & x"05" & "01"; -- STA @5, R1 #Zerando as dezenas de minuto #Zerando as dezenas de minuto
tmp(8) := x"5" & '0' & x"06" & "01"; -- STA @6, R1 #Zerando as unidades de hora #Zerando as unidades de hora
tmp(9) := x"5" & '0' & x"07" & "01"; -- STA @7, R1 #Zerando as dezenas de hora #Zerando as dezenas de hora
tmp(10) := x"5" & '0' & x"17" & "01"; -- STA @23, R1 #Zerando a flag #Zerando a flag
tmp(11) := x"5" & '1' & x"20" & "01"; -- STA @288, R1 #Zerando o hex 0 #Zerando o hex 0
tmp(12) := x"5" & '1' & x"21" & "01"; -- STA @289, R1 #Zerando o hex 1 #Zerando o hex 1
tmp(13) := x"5" & '1' & x"22" & "01"; -- STA @290, R1 #Zerando o hex 2 #Zerando o hex 2
tmp(14) := x"5" & '1' & x"23" & "01"; -- STA @291, R1 #Zerando o hex 3 #Zerando o hex 3
tmp(15) := x"5" & '1' & x"24" & "01"; -- STA @292, R1 #Zerando o hex 4 #Zerando o hex 4
tmp(16) := x"5" & '1' & x"25" & "01"; -- STA @293, R1 #Zerando o hex 5 #Zerando o hex 5
tmp(17) := x"5" & '1' & x"01" & "01"; -- STA @257, R1 #Zerando o led 8 #Zerando o led 8
tmp(18) := x"0" & '0' & x"00" & "00"; -- NOP #guardando variáveis #guardando variáveis
tmp(19) := x"4" & '0' & x"01" & "01"; -- LDI $1, R1 #Carregando 1 no registrador 1 #Carregando 1 no registrador 1
tmp(20) := x"5" & '0' & x"01" & "01"; -- STA @1, R1 #Armazenando na posição de memória 1 #Armazenando na posição de memória 1
tmp(21) := x"4" & '0' & x"02" & "01"; -- LDI $2, R1 #Carregando 2 no registrador 1 #Carregando 2 no registrador 1
tmp(22) := x"5" & '0' & x"20" & "01"; -- STA @32, R1 #Armazenando 2 na posição de memória 32 #Armazenando 2 na posição de memória 32
tmp(23) := x"4" & '0' & x"03" & "01"; -- LDI $3, R1 #Carregando 3 no registrador 1 #Carregando 3 no registrador 1
tmp(24) := x"5" & '0' & x"21" & "01"; -- STA @33, R1 #Armazenando 3 na posição de memória 33 #Armazenando 3 na posição de memória 33
tmp(25) := x"4" & '0' & x"04" & "01"; -- LDI $4, R1 #Carregando 4 no registrador 1 #Carregando 4 no registrador 1
tmp(26) := x"5" & '0' & x"22" & "01"; -- STA @34, R1 #Armazenando 4 na posição de memória 34 #Armazenando 4 na posição de memória 34
tmp(27) := x"4" & '0' & x"05" & "01"; -- LDI $5, R1 #Carregando 5 no registrador 1 #Carregando 5 no registrador 1
tmp(28) := x"5" & '0' & x"23" & "01"; -- STA @35, R1 #Armazenando 5 na posição de memória 35 #Armazenando 5 na posição de memória 35
tmp(29) := x"4" & '0' & x"06" & "01"; -- LDI $6, R1 #Carregando 6 no registrador 1 #Carregando 6 no registrador 1
tmp(30) := x"5" & '0' & x"24" & "01"; -- STA @36, R1 #Armazenando 6 na posição de memória 36 #Armazenando 6 na posição de memória 36
tmp(31) := x"4" & '0' & x"09" & "01"; -- LDI $9, R1 #Carregando 9 no registrador 1 #Carregando 9 no registrador 1
tmp(32) := x"5" & '0' & x"09" & "01"; -- STA @9, R1 #Armazenando 9 na posição de memória 9 #Armazenando 9 na posição de memória 9
tmp(33) := x"4" & '0' & x"0A" & "01"; -- LDI $10, R1 #Carregando 10 no registrador 1 #Carregando 10 no registrador 1
tmp(34) := x"5" & '0' & x"0A" & "01"; -- STA @10, R1 #Armazenando 10 na posição de memória 10 #Armazenando 10 na posição de memória 10
tmp(35) := x"1" & '1' & x"61" & "00"; -- LDA @353 #Lendo key1 (responsável por definir o tempo) #Lendo key1 (responsável por definir o tempo)
tmp(36) := x"D" & '0' & x"01" & "00"; -- AND @1 #Mascarando os bits e garantindo que o botão foi apertado #Mascarando os bits e garantindo que o botão foi apertado
tmp(37) := x"8" & '0' & x"00" & "00"; -- CEQ @0 #Caso o botão não tenha sido apertado #Caso o botão não tenha sido apertado
tmp(38) := x"7" & '0' & x"29" & "00"; -- JEQ .LOOP_TEMPO #Pular pra LOOP_TEMPO #Pular pra LOOP_TEMPO
tmp(39) := x"9" & '0' & x"88" & "00"; -- JSR .DEFINEHORARIO #Caso tenha sido apertado, pular para DEFINEHORARIO #Caso tenha sido apertado, pular para DEFINEHORARIO
tmp(40) := x"0" & '0' & x"00" & "00"; -- NOP 
tmp(41) := x"1" & '1' & x"65" & "00"; -- LDA @357 #Lendo a base de tempo #Lendo a base de tempo
tmp(42) := x"D" & '0' & x"01" & "00"; -- AND @1 #Mascarando os bits para garantir que tenha mudado #Mascarando os bits para garantir que tenha mudado
tmp(43) := x"8" & '0' & x"00" & "00"; -- CEQ @0 #Caso não tenha mudado #Caso não tenha mudado
tmp(44) := x"7" & '0' & x"23" & "00"; -- JEQ .LOOPPRINCIPAL #Voltar para LOOPPRINCIPAL #Voltar para LOOPPRINCIPAL
tmp(45) := x"9" & '0' & x"30" & "00"; -- JSR .INCREMENTATEMPO #Caso tenha mudado, pular para INCREMENTATEMPO #Caso tenha mudado, pular para INCREMENTATEMPO
tmp(46) := x"0" & '0' & x"00" & "00"; -- NOP 
tmp(47) := x"6" & '0' & x"23" & "00"; -- JMP .LOOPPRINCIPAL #Volta para o LOOPPRINCIPAL #Volta para o LOOPPRINCIPAL
tmp(48) := x"5" & '1' & x"FC" & "00"; -- STA @508 #Limpando a leitura do tempo #Limpando a leitura do tempo
tmp(49) := x"1" & '0' & x"02" & "00"; -- LDA @2 #Carrega as unidades do segundo #Carrega as unidades do segundo
tmp(50) := x"8" & '0' & x"09" & "00"; -- CEQ @9 #Compara com nove #Compara com nove
tmp(51) := x"7" & '0' & x"35" & "00"; -- JEQ .unidadeenove #Caso seja nove, vai para a unidadeenove #Caso seja nove, vai para a unidadeenove
tmp(52) := x"6" & '0' & x"39" & "00"; -- JMP .unidadenaoenove #Caso não seja nove, vai para unidadenaoenove #Caso não seja nove, vai para unidadenaoenove
tmp(53) := x"4" & '0' & x"00" & "00"; -- LDI $0 #Carrega zero no registrador #Carrega zero no registrador
tmp(54) := x"5" & '0' & x"02" & "00"; -- STA @2 #Zera a unidade de segundo #Zera a unidade de segundo
tmp(55) := x"5" & '1' & x"20" & "00"; -- STA @288 #Zerando o hex 0 #Zerando o hex 0
tmp(56) := x"6" & '0' & x"3E" & "00"; -- JMP .checadezena #Pula para a checagem da dezena #Pula para a checagem da dezena
tmp(57) := x"1" & '0' & x"02" & "00"; -- LDA @2 #Carrega as unidades de segundo no registrador #Carrega as unidades de segundo no registrador
tmp(58) := x"2" & '0' & x"01" & "00"; -- SOMA @1 #Soma 1 #Soma 1
tmp(59) := x"5" & '0' & x"02" & "00"; -- STA @2 #Carrega o valor somado nas unidades de segundo #Carrega o valor somado nas unidades de segundo
tmp(60) := x"5" & '1' & x"20" & "00"; -- STA @288 #Armazena no hex 0 #Armazena no hex 0
tmp(61) := x"6" & '0' & x"87" & "00"; -- JMP .retornaincrementaTempo #Pula para o retorno #Pula para o retorno
tmp(62) := x"1" & '0' & x"03" & "00"; -- LDA @3 #Carrega as dezenas de segundo no registrador #Carrega as dezenas de segundo no registrador
tmp(63) := x"8" & '0' & x"23" & "00"; -- CEQ @35 #Compara com 5 #Compara com 5
tmp(64) := x"7" & '0' & x"42" & "00"; -- JEQ .dezenae5 #Caso for 5, pula pra dezenae5 #Caso for 5, pula pra dezenae5
tmp(65) := x"6" & '0' & x"46" & "00"; -- JMP .dezenanaoe5 #Caso não 5, for pula pra dezenanaoe5 #Caso não 5, for pula pra dezenanaoe5
tmp(66) := x"4" & '0' & x"00" & "00"; -- LDI $0 #Carrega zero no registrador #Carrega zero no registrador
tmp(67) := x"5" & '0' & x"03" & "00"; -- STA @3 #Zera a dezena de segundo #Zera a dezena de segundo
tmp(68) := x"5" & '1' & x"21" & "00"; -- STA @289 #Zera o hex1 #Zera o hex1
tmp(69) := x"6" & '0' & x"4B" & "00"; -- JMP .checacentena #Vai para a checagem da centena #Vai para a checagem da centena
tmp(70) := x"1" & '0' & x"03" & "00"; -- LDA @3 #Carrega a dezena de segundo no registrador #Carrega a dezena de segundo no registrador
tmp(71) := x"2" & '0' & x"01" & "00"; -- SOMA @1 #Soma um #Soma um
tmp(72) := x"5" & '0' & x"03" & "00"; -- STA @3 #Armazena o novo valor na dezena de segundo #Armazena o novo valor na dezena de segundo
tmp(73) := x"5" & '1' & x"21" & "00"; -- STA @289 #Carrega o valor no HEX1 #Carrega o valor no HEX1
tmp(74) := x"6" & '0' & x"87" & "00"; -- JMP .retornaincrementaTempo #Vai para o retorno #Vai para o retorno
tmp(75) := x"1" & '0' & x"04" & "00"; -- LDA @4 #Carrega a unidade de minuto no registrador #Carrega a unidade de minuto no registrador
tmp(76) := x"8" & '0' & x"09" & "00"; -- CEQ @9 #Caso seja 9 #Caso seja 9
tmp(77) := x"7" & '0' & x"4F" & "00"; -- JEQ .centenae9 #Vai para centenae9 #Vai para centenae9
tmp(78) := x"6" & '0' & x"53" & "00"; -- JMP .centenanaoe9 #Caso não seja, vai para centenanaoe9 #Caso não seja, vai para centenanaoe9
tmp(79) := x"4" & '0' & x"00" & "00"; -- LDI $0 #Carrega zero no registrador #Carrega zero no registrador
tmp(80) := x"5" & '0' & x"04" & "00"; -- STA @4 #Zera a unidade de minuto #Zera a unidade de minuto
tmp(81) := x"5" & '1' & x"22" & "00"; -- STA @290 #Zera o HEX2 #Zera o HEX2
tmp(82) := x"6" & '0' & x"58" & "00"; -- JMP .checamilhar #Vai para a checagem da dezena de minuto #Vai para a checagem da dezena de minuto
tmp(83) := x"1" & '0' & x"04" & "00"; -- LDA @4 #Carrega unidade de minuto #Carrega unidade de minuto
tmp(84) := x"2" & '0' & x"01" & "00"; -- SOMA @1 #Soma 1 #Soma 1
tmp(85) := x"5" & '0' & x"04" & "00"; -- STA @4  #Armazena o novo valor na memória #Armazena o novo valor na memória
tmp(86) := x"5" & '1' & x"22" & "00"; -- STA @290 #Carrega o valor no hex2 #Carrega o valor no hex2
tmp(87) := x"6" & '0' & x"87" & "00"; -- JMP .retornaincrementaTempo #Vai para o retorno #Vai para o retorno
tmp(88) := x"1" & '0' & x"05" & "00"; -- LDA @5 #Carrega a dezena de minuto no registrador #Carrega a dezena de minuto no registrador
tmp(89) := x"8" & '0' & x"23" & "00"; -- CEQ @35 #Caso seja igual as 5 #Caso seja igual as 5
tmp(90) := x"7" & '0' & x"5C" & "00"; -- JEQ .milhare5 #Pula para milhare5 #Pula para milhare5
tmp(91) := x"6" & '0' & x"60" & "00"; -- JMP .milharnaoe5 #Caso não seja 5, pula para milharnaoe5 #Caso não seja 5, pula para milharnaoe5
tmp(92) := x"4" & '0' & x"00" & "00"; -- LDI $0 #Carrega 0 no registrador #Carrega 0 no registrador
tmp(93) := x"5" & '0' & x"05" & "00"; -- STA @5 #Zera a dezena de minuto #Zera a dezena de minuto
tmp(94) := x"5" & '1' & x"23" & "00"; -- STA @291 #Carrega o zero no hex3 #Carrega o zero no hex3
tmp(95) := x"6" & '0' & x"65" & "00"; -- JMP .checadzmilhar #Vai para a checagem da dezena de hora #Vai para a checagem da dezena de hora
tmp(96) := x"1" & '0' & x"05" & "00"; -- LDA @5 #Carrega a dezena de minuto no registrador #Carrega a dezena de minuto no registrador
tmp(97) := x"2" & '0' & x"01" & "00"; -- SOMA @1 #Soma 1 #Soma 1
tmp(98) := x"5" & '0' & x"05" & "00"; -- STA @5 #Carrega o novo valor na memória #Carrega o novo valor na memória
tmp(99) := x"5" & '1' & x"23" & "00"; -- STA @291 #Carrega o novo valor no hex3 #Carrega o novo valor no hex3
tmp(100) := x"6" & '0' & x"87" & "00"; -- JMP .retornaincrementaTempo #Vai para o retorno #Vai para o retorno
tmp(101) := x"1" & '0' & x"07" & "00"; -- LDA @7 #Carrega a dezena de hora #Carrega a dezena de hora
tmp(102) := x"B" & '0' & x"20" & "00"; -- CLT @32 #Caso for menor que dois #Caso for menor que dois
tmp(103) := x"C" & '0' & x"69" & "00"; -- JLT .aindanaoe2 #Pula para aindanaoe2 #Pula para aindanaoe2
tmp(104) := x"6" & '0' & x"6D" & "00"; -- JMP .jae2 #Caso for dois, pula para jae2 #Caso for dois, pula para jae2
tmp(105) := x"1" & '0' & x"06" & "00"; -- LDA @6 #Carrega a unidade de hora no registrador #Carrega a unidade de hora no registrador
tmp(106) := x"8" & '0' & x"09" & "00"; -- CEQ @9 #Caso for igual a 9 #Caso for igual a 9
tmp(107) := x"7" & '0' & x"71" & "00"; -- JEQ .dzmilhare9ou3 #Pula para dzmilhare9ou3 #Pula para dzmilhare9ou3
tmp(108) := x"6" & '0' & x"75" & "00"; -- JMP .dzmilharnaoe9ou3 #Caso não for, pula para dzmilharnaoe9ou3 #Caso não for, pula para dzmilharnaoe9ou3
tmp(109) := x"1" & '0' & x"06" & "00"; -- LDA @6 #Carrega a unidade de hora no registrador #Carrega a unidade de hora no registrador
tmp(110) := x"8" & '0' & x"21" & "00"; -- CEQ @33 #Caso for igual a 3 #Caso for igual a 3
tmp(111) := x"7" & '0' & x"71" & "00"; -- JEQ .dzmilhare9ou3 #Pula para dzmilhare9ou3 #Pula para dzmilhare9ou3
tmp(112) := x"6" & '0' & x"75" & "00"; -- JMP .dzmilharnaoe9ou3 #Caso não seja, muda pra dzmilharnaoe9ou3 #Caso não seja, muda pra dzmilharnaoe9ou3
tmp(113) := x"4" & '0' & x"00" & "00"; -- LDI $0 #Carrega 0 no registrador #Carrega 0 no registrador
tmp(114) := x"5" & '0' & x"06" & "00"; -- STA @6 #Armazena 0 na unidade de hora #Armazena 0 na unidade de hora
tmp(115) := x"5" & '1' & x"24" & "00"; -- STA @292 #Zera o hex 4 #Zera o hex 4
tmp(116) := x"6" & '0' & x"7A" & "00"; -- JMP .checactmilhar #Pula pro checactmilhar #Pula pro checactmilhar
tmp(117) := x"1" & '0' & x"06" & "00"; -- LDA @6 #Carrega a unidade de hora no registrador #Carrega a unidade de hora no registrador
tmp(118) := x"2" & '0' & x"01" & "00"; -- SOMA @1 #Soma 1 #Soma 1
tmp(119) := x"5" & '0' & x"06" & "00"; -- STA @6 #Armazena na unidade de hora #Armazena na unidade de hora
tmp(120) := x"5" & '1' & x"24" & "00"; -- STA @292 #Coloca o valor no hex 4 #Coloca o valor no hex 4
tmp(121) := x"6" & '0' & x"87" & "00"; -- JMP .retornaincrementaTempo #Pula pro retorno #Pula pro retorno
tmp(122) := x"1" & '0' & x"07" & "00"; -- LDA @7 #Carrega a dezena de hora no registrador #Carrega a dezena de hora no registrador
tmp(123) := x"8" & '0' & x"20" & "00"; -- CEQ @32 #Caso seja igual a 2 #Caso seja igual a 2
tmp(124) := x"7" & '0' & x"7E" & "00"; -- JEQ .ctmilhare2 #Pula para ctmilhare2 #Pula para ctmilhare2
tmp(125) := x"6" & '0' & x"82" & "00"; -- JMP .ctmillharnaoe2 #Caso não seja, pula para ctmillharnaoe2 #Caso não seja, pula para ctmillharnaoe2
tmp(126) := x"4" & '0' & x"00" & "00"; -- LDI $0 #Carrega 0 no registrador #Carrega 0 no registrador
tmp(127) := x"5" & '0' & x"07" & "00"; -- STA @7  #Armazena na dezena de hora #Armazena na dezena de hora
tmp(128) := x"5" & '1' & x"25" & "00"; -- STA @293 #Carrega o valor no HEX5 #Carrega o valor no HEX5
tmp(129) := x"6" & '0' & x"87" & "00"; -- JMP .retornaincrementaTempo #Pula pro retorno #Pula pro retorno
tmp(130) := x"1" & '0' & x"07" & "00"; -- LDA @7 #Carrega a dezena de hora no registrador #Carrega a dezena de hora no registrador
tmp(131) := x"2" & '0' & x"01" & "00"; -- SOMA @1 #Soma 1 #Soma 1
tmp(132) := x"5" & '0' & x"07" & "00"; -- STA @7 #Armazena na dezena de hora #Armazena na dezena de hora
tmp(133) := x"5" & '1' & x"25" & "00"; -- STA @293 #Altera o hex 5 #Altera o hex 5
tmp(134) := x"6" & '0' & x"87" & "00"; -- JMP .retornaincrementaTempo #Vai para o retorno #Vai para o retorno
tmp(135) := x"A" & '0' & x"00" & "00"; -- RET #retornando da subrotina de incrementar o tempo #retornando da subrotina de incrementar o tempo
tmp(136) := x"5" & '1' & x"FE" & "00"; -- STA @510 #limpa leitura de KEY1 #limpa leitura de KEY1
tmp(137) := x"4" & '0' & x"01" & "00"; -- LDI $1 #Carregando 1 no registrador #Carregando 1 no registrador
tmp(138) := x"5" & '1' & x"01" & "00"; -- STA @257 #Acendendo o LED8 #Acendendo o LED8
tmp(139) := x"4" & '0' & x"00" & "00"; -- LDI $0 #Carregando 0 no registrador #Carregando 0 no registrador
tmp(140) := x"5" & '1' & x"20" & "00"; -- STA @288 #Zerando o hex 0 #Zerando o hex 0
tmp(141) := x"5" & '1' & x"21" & "00"; -- STA @289 #Zerando o hex 1 #Zerando o hex 1
tmp(142) := x"5" & '1' & x"22" & "00"; -- STA @290 #Zerando o hex 2 #Zerando o hex 2
tmp(143) := x"5" & '1' & x"23" & "00"; -- STA @291 #Zerando o hex 3 #Zerando o hex 3
tmp(144) := x"5" & '1' & x"24" & "00"; -- STA @292 #Zerando o hex 4 #Zerando o hex 4
tmp(145) := x"5" & '1' & x"25" & "00"; -- STA @293 #Zerando o hex 5 #Zerando o hex 5
tmp(146) := x"1" & '1' & x"40" & "00"; -- LDA @320 #Le os valores das chaves #Le os valores das chaves
tmp(147) := x"B" & '0' & x"0A" & "00"; -- CLT @10 #Caso for menor que 10 #Caso for menor que 10
tmp(148) := x"C" & '0' & x"97" & "00"; -- JLT .ESCREVEUS #Pula para ESCREVEUS #Pula para ESCREVEUS
tmp(149) := x"6" & '0' & x"92" & "00"; -- JMP .defineunidadedossegundos #Caso não for, pula para defineunidadedossegundos (aguarda um valor menor que 10) #Caso não for, pula para defineunidadedossegundos (aguarda um valor menor que 10)
tmp(150) := x"0" & '0' & x"00" & "00"; -- NOP 
tmp(151) := x"5" & '0' & x"02" & "00"; -- STA @2 #Escreve o valor na unidade dos segundos #Escreve o valor na unidade dos segundos
tmp(152) := x"5" & '1' & x"20" & "00"; -- STA @288 #Carrega o valor no hex0 #Carrega o valor no hex0
tmp(153) := x"1" & '1' & x"61" & "00"; -- LDA @353 #Le KEY1 #Le KEY1
tmp(154) := x"D" & '0' & x"01" & "00"; -- AND @1 #Mascara os bits e confirma se o botão foi realmente apertado #Mascara os bits e confirma se o botão foi realmente apertado
tmp(155) := x"8" & '0' & x"00" & "00"; -- CEQ @0 #Caso não tenha sido apertado #Caso não tenha sido apertado
tmp(156) := x"7" & '0' & x"99" & "00"; -- JEQ .LEITURAKEY1_DS #Volta para LEITURAKEY1_DS, esperando key1 ser apertado #Volta para LEITURAKEY1_DS, esperando key1 ser apertado
tmp(157) := x"5" & '1' & x"FE" & "00"; -- STA @510 #Limpa a leitura de key1 #Limpa a leitura de key1
tmp(158) := x"0" & '0' & x"00" & "00"; -- NOP 
tmp(159) := x"1" & '1' & x"40" & "00"; -- LDA @320 #Le valores das chaves #Le valores das chaves
tmp(160) := x"B" & '0' & x"24" & "00"; -- CLT @36 #Caso for menor que 6 #Caso for menor que 6
tmp(161) := x"C" & '0' & x"A4" & "00"; -- JLT .ESCREVEDS #Vai para ESCREVEDS #Vai para ESCREVEDS
tmp(162) := x"6" & '0' & x"9F" & "00"; -- JMP .definedezenadossegundos #Caso não for menor, vai para definedezenadossegundos (aguarda um valor menor que 6) #Caso não for menor, vai para definedezenadossegundos (aguarda um valor menor que 6)
tmp(163) := x"0" & '0' & x"00" & "00"; -- NOP 
tmp(164) := x"5" & '0' & x"03" & "00"; -- STA @3 #Escreve o valor na dezena dos segundos #Escreve o valor na dezena dos segundos
tmp(165) := x"5" & '1' & x"21" & "00"; -- STA @289 #Carrega no hex1 #Carrega no hex1
tmp(166) := x"1" & '1' & x"61" & "00"; -- LDA @353 #Le KEY1 #Le KEY1
tmp(167) := x"D" & '0' & x"01" & "00"; -- AND @1 #Mascara os bits para garantir que foi apertado #Mascara os bits para garantir que foi apertado
tmp(168) := x"8" & '0' & x"00" & "00"; -- CEQ @0 #Caso não tenha sido apertado #Caso não tenha sido apertado
tmp(169) := x"7" & '0' & x"A6" & "00"; -- JEQ .LEITURAKEY1_UM #Vai para LEITURAKEY1_UM, esperando apertar o botão #Vai para LEITURAKEY1_UM, esperando apertar o botão
tmp(170) := x"5" & '1' & x"FE" & "00"; -- STA @510 #Limpa a leiura de key1 #Limpa a leiura de key1
tmp(171) := x"0" & '0' & x"00" & "00"; -- NOP 
tmp(172) := x"1" & '1' & x"40" & "00"; -- LDA @320 #Le valores das chaves #Le valores das chaves
tmp(173) := x"B" & '0' & x"0A" & "00"; -- CLT @10 #Caso for menor que 10 #Caso for menor que 10
tmp(174) := x"C" & '0' & x"B1" & "00"; -- JLT .ESCREVEUM #Vai para ESCREVEUM #Vai para ESCREVEUM
tmp(175) := x"6" & '0' & x"AC" & "00"; -- JMP .defineunidadedosminutos #Caso não for menor, vai para defineunidadedosminutos (aguarda um valor menor que 10) #Caso não for menor, vai para defineunidadedosminutos (aguarda um valor menor que 10)
tmp(176) := x"0" & '0' & x"00" & "00"; -- NOP 
tmp(177) := x"5" & '0' & x"04" & "00"; -- STA @4 #Escreve o valor na dezena dos segundos #Escreve o valor na dezena dos segundos
tmp(178) := x"5" & '1' & x"22" & "00"; -- STA @290 #Armazena no hex2 #Armazena no hex2
tmp(179) := x"0" & '0' & x"00" & "00"; -- NOP 
tmp(180) := x"1" & '1' & x"61" & "00"; -- LDA @353 #Le KEY1 #Le KEY1
tmp(181) := x"D" & '0' & x"01" & "00"; -- AND @1 #Mascara os bits garantindo que foi apertado #Mascara os bits garantindo que foi apertado
tmp(182) := x"8" & '0' & x"00" & "00"; -- CEQ @0 #Caso não tenha sido apertado #Caso não tenha sido apertado
tmp(183) := x"7" & '0' & x"B4" & "00"; -- JEQ .LEITURAKEY1_DM #Vai para LEITURAKEY1_DM, esperando apertar o botão #Vai para LEITURAKEY1_DM, esperando apertar o botão
tmp(184) := x"5" & '1' & x"FE" & "00"; -- STA @510 #Limpa a leitura de key1 #Limpa a leitura de key1
tmp(185) := x"0" & '0' & x"00" & "00"; -- NOP 
tmp(186) := x"1" & '1' & x"40" & "00"; -- LDA @320 #Le valores das chaves #Le valores das chaves
tmp(187) := x"B" & '0' & x"24" & "00"; -- CLT @36 #Caso for menor que 6 #Caso for menor que 6
tmp(188) := x"C" & '0' & x"BF" & "00"; -- JLT .ESCREVEDM #Vai para ESCREVEDM #Vai para ESCREVEDM
tmp(189) := x"6" & '0' & x"BA" & "00"; -- JMP .definedezenadosminutos #Caso não for menor, vai para definedezenadosminutos (aguarda um valor menor que 6) #Caso não for menor, vai para definedezenadosminutos (aguarda um valor menor que 6)
tmp(190) := x"0" & '0' & x"00" & "00"; -- NOP 
tmp(191) := x"5" & '0' & x"05" & "00"; -- STA @5 #Escreve o valor na dezena dos segundos #Escreve o valor na dezena dos segundos
tmp(192) := x"5" & '1' & x"23" & "00"; -- STA @291 #Armazena no hex 3 #Armazena no hex 3
tmp(193) := x"0" & '0' & x"00" & "00"; -- NOP 
tmp(194) := x"1" & '1' & x"61" & "00"; -- LDA @353 #Le KEY1 #Le KEY1
tmp(195) := x"D" & '0' & x"01" & "00"; -- AND @1 #Mascara os bits, garantindo que foi apertado #Mascara os bits, garantindo que foi apertado
tmp(196) := x"8" & '0' & x"00" & "00"; -- CEQ @0 #Caso não tenha sido apertado #Caso não tenha sido apertado
tmp(197) := x"7" & '0' & x"C2" & "00"; -- JEQ .LEITURAKEY1_UH #Vai para LEITURAKEY1_UH, esperando apertarkey1 #Vai para LEITURAKEY1_UH, esperando apertarkey1
tmp(198) := x"5" & '1' & x"FE" & "00"; -- STA @510 #Limpa a leitura de key 1 #Limpa a leitura de key 1
tmp(199) := x"0" & '0' & x"00" & "00"; -- NOP 
tmp(200) := x"1" & '1' & x"40" & "00"; -- LDA @320 #Le os valores das chaves #Le os valores das chaves
tmp(201) := x"B" & '0' & x"0A" & "00"; -- CLT @10 #Caso for menor que 10 #Caso for menor que 10
tmp(202) := x"C" & '0' & x"CD" & "00"; -- JLT .ESCREVEUH #Vai para ESCREVEUH #Vai para ESCREVEUH
tmp(203) := x"6" & '0' & x"C8" & "00"; -- JMP .defineunidadedashoras #Caso não for, vai para defineunidadedashoras (aguarda um valor menor que 10) #Caso não for, vai para defineunidadedashoras (aguarda um valor menor que 10)
tmp(204) := x"0" & '0' & x"00" & "00"; -- NOP 
tmp(205) := x"5" & '0' & x"06" & "00"; -- STA @6 #Armazena o valor na dezena dos segundos #Armazena o valor na dezena dos segundos
tmp(206) := x"5" & '1' & x"24" & "00"; -- STA @292 #Escreve o valor no hex 4 #Escreve o valor no hex 4
tmp(207) := x"0" & '0' & x"00" & "00"; -- NOP 
tmp(208) := x"1" & '1' & x"61" & "00"; -- LDA @353 #Le KEY1 #Le KEY1
tmp(209) := x"D" & '0' & x"01" & "00"; -- AND @1 #Mascara os bits garantindo que foi apertado #Mascara os bits garantindo que foi apertado
tmp(210) := x"8" & '0' & x"00" & "00"; -- CEQ @0 #Caso não tenha sido apertado #Caso não tenha sido apertado
tmp(211) := x"7" & '0' & x"D0" & "00"; -- JEQ .LEITURAKEY1_DH #Vai para para LEITURAKEY1_DH #Vai para para LEITURAKEY1_DH
tmp(212) := x"5" & '1' & x"FE" & "00"; -- STA @510 #Limpa a leitura de key 1 #Limpa a leitura de key 1
tmp(213) := x"0" & '0' & x"00" & "00"; -- NOP 
tmp(214) := x"1" & '0' & x"06" & "00"; -- LDA @6 #Carrega a unidade de hora no registrador #Carrega a unidade de hora no registrador
tmp(215) := x"B" & '0' & x"22" & "00"; -- CLT @34 #Caso for menor que 4 #Caso for menor que 4
tmp(216) := x"C" & '0' & x"DA" & "00"; -- JLT .MENORQUE4 #Vai para MENORQUE4 #Vai para MENORQUE4
tmp(217) := x"6" & '0' & x"DF" & "00"; -- JMP .MAIORQUE4 #Caso não for menor que 4, vai para MAIORQUE4 #Caso não for menor que 4, vai para MAIORQUE4
tmp(218) := x"1" & '1' & x"40" & "00"; -- LDA @320 #Le os valores das chaves #Le os valores das chaves
tmp(219) := x"B" & '0' & x"21" & "00"; -- CLT @33 #Caso for menor que 3 #Caso for menor que 3
tmp(220) := x"C" & '0' & x"E4" & "00"; -- JLT .ESCREVEDH #Vai para ESCREVEDH #Vai para ESCREVEDH
tmp(221) := x"6" & '0' & x"DA" & "00"; -- JMP .MENORQUE4 #Caso não for, vai para MENORQUE4 (espera um valor menor que 3) #Caso não for, vai para MENORQUE4 (espera um valor menor que 3)
tmp(222) := x"0" & '0' & x"00" & "00"; -- NOP 
tmp(223) := x"1" & '1' & x"40" & "00"; -- LDA @320 #Le os valores das chaves #Le os valores das chaves
tmp(224) := x"B" & '0' & x"20" & "00"; -- CLT @32 #Caso for menor que 2 #Caso for menor que 2
tmp(225) := x"C" & '0' & x"E4" & "00"; -- JLT .ESCREVEDH #Vai para ESCREVEDH #Vai para ESCREVEDH
tmp(226) := x"6" & '0' & x"DF" & "00"; -- JMP .MAIORQUE4 #Caso não for menor, vai para MAIORQUE4 (aguarda um valor menor que 2) #Caso não for menor, vai para MAIORQUE4 (aguarda um valor menor que 2)
tmp(227) := x"0" & '0' & x"00" & "00"; -- NOP 
tmp(228) := x"5" & '0' & x"07" & "00"; -- STA @7 #Escreve o valor na dezena das horas #Escreve o valor na dezena das horas
tmp(229) := x"5" & '1' & x"25" & "00"; -- STA @293 #Carrega no HEX 5 #Carrega no HEX 5
tmp(230) := x"A" & '0' & x"00" & "00"; -- RET #Retorna da subrotina #Retorna da subrotina

        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;