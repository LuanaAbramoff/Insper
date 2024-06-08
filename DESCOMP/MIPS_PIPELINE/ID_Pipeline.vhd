library ieee;
use ieee.std_logic_1164.all;

entity ID_Pipeline is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 32
  );   
  port   (
  
  --entradas
    Instrucao_Saida_ROM          : in std_logic_vector(larguraEnderecos-1 downto 0);
	 Dado_Escrita_Banco_Reg       : in std_logic_vector(larguraDados-1 downto 0);
	 PC_Mais_4_Somador_PC         : in std_logic_vector(larguraEnderecos-1 downto 0);
	 Endereco_Reg_C_WB            : in std_logic_vector(4 downto 0);
	 habEscrita_Banco_Regs_WB     : in std_logic;
	 CLK                          : in std_logic;
	 
  --saidas
	 
    JR                           : out std_logic; 
    Sel_Mux_PC4_JMP              : out std_logic;
    habEscrita_Banco_Regs        : out std_logic;
    Sel_Mux_Rt_Imediato          : out std_logic;
    tipoR                        : out std_logic;
    Sel_Mux_ULA_RAM_LUI          : out std_logic_vector(1 downto 0);
    BEQ                          : out std_logic;
    BNE                          : out std_logic;
    habEscritaMEM                : out std_logic;
    habLeituraMEM                : out std_logic;
  
    LUI_Estendido                : out std_logic_vector(larguraDados-1 downto 0);
	 Imediato_Estendido           : out std_logic_vector(larguraDados-1 downto 0);
	 Dado_Rs 					      : out std_logic_vector(larguraDados-1 downto 0);
	 Dado_Rt_RAM                  : out std_logic_vector(larguraDados-1 downto 0);
	 Endereco_JMP				      : out std_logic_vector(larguraEnderecos-1 downto 0);
	 
	 Endereco_Reg_C_ID            : out std_logic_vector(4 downto 0);
	 funct_ID_EXEC				      : out std_logic_vector(5 downto 0);
	 opcode_ID_EXEC				   : out std_logic_vector(5 downto 0);
	 PC_Mais_4_ID_EXEC            : out std_logic_vector(larguraEnderecos-1 downto 0)
	 
  );
  
end entity;


architecture arquitetura of ID_Pipeline is

  signal End_C_Banco_Reg         : std_logic_vector(4 downto 0);
  
  -- sinais controle
  signal Sel_Mux_Rt_Rd            : std_logic_vector(1 downto 0);
  signal ORI_ANDI                 : std_logic;
  
  
  --atribuições Instrução
  alias opcode						   : std_logic_vector(5 downto 0)  is Instrucao_Saida_ROM(31 downto 26);
  alias Endereco_Rs				   : std_logic_vector(4 downto 0)  is Instrucao_Saida_ROM(25 downto 21);
  alias Endereco_Rt				   : std_logic_vector(4 downto 0)  is Instrucao_Saida_ROM(20 downto 16);
  alias Endereco_Rd				   : std_logic_vector(4 downto 0)  is Instrucao_Saida_ROM(15 downto 11);
  alias Imediato    				   : std_logic_vector(15 downto 0) is Instrucao_Saida_ROM(15 downto 0);
  alias Imediato_JMP    	      : std_logic_vector(25 downto 0) is Instrucao_Saida_ROM(25 downto 0);
--alias shamt     				   : std_logic_vector(4 downto 0)  is Instrucao_Saida_ROM(10 downto 6);
  alias funct     				   : std_logic_vector(5 downto 0)  is Instrucao_Saida_ROM(5 downto 0);

  
begin

			 
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
              enderecoC => Endereco_Reg_C_WB,
              dadoEscritaC => Dado_Escrita_Banco_Reg,
              escreveC => habEscrita_Banco_Regs_WB,
              saidaA => Dado_Rs,
              saidaB  => Dado_Rt_RAM);
				  
																			
estendeSinal : entity work.estendeSinalGenerico   generic map (larguraDadoEntrada => 16, larguraDadoSaida => larguraDados)
          port map (estendeSinal_IN => Imediato, ORI => ORI_ANDI, estendeSinal_OUT =>  Imediato_Estendido);

		 
estendeLUI1 : entity work.estendeLUI   generic map (larguraDadoEntrada => 16, larguraDadoSaida => larguraDados)
          port map (estendeSinal_IN => Imediato, estendeSinal_OUT =>  LUI_Estendido);
					  
					  
endJMP: entity work.concatenaJMP
          port map ( imediato => Imediato_JMP, 
							pc_mais_4 => PC_Mais_4_Somador_PC,
							saida     => Endereco_JMP );
							
		
PC_Mais_4_ID_EXEC <= PC_Mais_4_Somador_PC;
opcode_ID_EXEC    <= opcode;
funct_ID_EXEC     <= funct;
Endereco_Reg_C_ID <= End_C_Banco_Reg;

end architecture;