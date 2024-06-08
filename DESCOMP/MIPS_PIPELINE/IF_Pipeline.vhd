library ieee;
use ieee.std_logic_1164.all;

entity IF_Pipeline is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 32
  );   
  port   (
  
  --entradas
    CLK                   : in std_logic;
    JR                    : in std_logic;
	 Sel_Mux_PC4_JMP       : in std_logic;
	 Sel_Mux_BEQ           : in std_logic;
	 Endereco_JMP	        : in std_logic_vector(larguraEnderecos-1 downto 0);
	 Dado_Rs 		        : in std_logic_vector(larguraDados-1 downto 0);
	 Branch_Address		  : in std_logic_vector(larguraEnderecos-1 downto 0);
	 
  --saidas
	 Instrucao_Saida_ROM   : out std_logic_vector(larguraEnderecos-1 downto 0);
	 PC_Mais_4_Somador_PC  : out std_logic_vector(larguraEnderecos-1 downto 0);
	 PC_Saida_Placa        : out std_logic_vector(larguraEnderecos-1 downto 0) 

  );
end entity;


architecture arquitetura of IF_Pipeline is

  signal PC_Saida                : std_logic_vector(larguraEnderecos-1 downto 0);
  signal PC_Mais_4_Somador_PC1   : std_logic_vector(larguraEnderecos-1 downto 0);
  
  signal Entrada_PC   				: std_logic_vector(larguraEnderecos-1 downto 0);
  signal Entrada_PC_Sel				: std_logic_vector(larguraEnderecos-1 downto 0);
  signal Entrada_PC_Sel_JR			: std_logic_vector(larguraEnderecos-1 downto 0);
  

begin



PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => Entrada_PC_Sel_JR, DOUT => PC_Saida, ENABLE => '1', CLK => CLK, RST => '0');
			 
			 
incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 4)
        port map( entrada => PC_Saida, saida => PC_Mais_4_Somador_PC1);
		  
		  
		 
ROM : entity work.ROMMIPS   generic map (dataWidth => larguraDados, addrWidth => larguraEnderecos, memoryAddrWidth => 6)
          port map (Endereco => PC_Saida, Dado => Instrucao_Saida_ROM);
			 
			 
muxBEQPC4    :  entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => PC_Mais_4_Somador_PC1,
                 entradaB_MUX =>  Branch_Address,
                 seletor_MUX => Sel_Mux_BEQ,
                 saida_MUX => Entrada_PC);
			 
						
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
					  
PC_Saida_Placa       <= PC_Saida;
PC_Mais_4_Somador_PC <= PC_Mais_4_Somador_PC1;

end architecture;