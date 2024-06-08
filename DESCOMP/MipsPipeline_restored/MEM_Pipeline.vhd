library ieee;
use ieee.std_logic_1164.all;

entity MEM_Pipeline is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 32
  );   
  port   (
  
  --entradas
       CLK                          : in std_logic;
		 habEscrita_Banco_Regs_EXEC   : in std_logic;
		 Sel_Mux_ULA_RAM_LUI_EXEC     : in std_logic_vector(1 downto 0);
		 BEQ_EXEC_MEM                 : in std_logic;
		 BNE_EXEC_MEM                 : in std_logic;
		 habLeituraMEM_EXEC           : in std_logic;
		 habEscritaMEM_EXEC           : in std_logic;
		 PC_Mais_4_EXEC_MEM           : in std_logic_vector(larguraEnderecos-1 downto 0);
		 Dado_Rt_RAM_EXEC_MEM         : in std_logic_vector(larguraDados-1 downto 0);
		 Zero_BEQ					      : in std_logic;
		 Endereco_ULA_RAM             : in std_logic_vector(larguraEnderecos-1 downto 0);
		 LUI_Estendido_EXEC_MEM       : in std_logic_vector(larguraDados-1 downto 0);
		 Endereco_Reg_C_EXEC_MEM      : in std_logic_vector(4 downto 0);
		 
		 
  --saidas
		 habEscrita_Banco_Regs_MEM_WB : out std_logic;
		 Sel_Mux_BEQ	    		      : out std_logic;
		 Sel_Mux_ULA_RAM_LUI_MEM_WB   : out std_logic_vector(1 downto 0);
		 PC_Mais_4_MEM_WB             : out std_logic_vector(larguraEnderecos-1 downto 0);
		 Endereco_ULA_RAM_MEM_WB      : out std_logic_vector(larguraEnderecos-1 downto 0);
		 Dado_RAM_Rt                  : out std_logic_vector(larguraDados-1 downto 0);
		 LUI_Estendido_MEM_WB         : out std_logic_vector(larguraDados-1 downto 0);
		 Endereco_Reg_C_MEM           : out std_logic_vector(4 downto 0)

  );
end entity;


architecture arquitetura of MEM_Pipeline is


  signal SMux_BNE_BEQ    		   : std_logic;--fica!!!!!!!!!!!!!!!
  signal OR_BEQ_BNE     		   : std_logic;--fica!!!!!!!!!!!!!!!
  

begin


--FICA!!!!!!!!!!!!!				  
RAM : entity work.RAMMIPS generic map (dataWidth => larguraDados, addrWidth => larguraEnderecos, memoryAddrWidth => 6)
                   port map ( clk => CLK,
										Endereco => Endereco_ULA_RAM,
										Dado_in => Dado_Rt_RAM_EXEC_MEM,
										Dado_out => Dado_RAM_Rt,
										we => habEscritaMEM_EXEC, 
										re => habLeituraMEM_EXEC, 
										habilita  => '1');

-- mux contruído para selecionar se a próxima instrução vai ser a seguinte
-- ou vai ter algum salto devido aos números subtraídos na ula serem iguais (BEQ)
-- ou vai ter algum salto se esses números forem diferentes (BNE)
--  o seletor desse mux é o beq afinal a flag zero sendo igual a um e o beq sendo a 
-- instrução a ser executada, haverá um desvio.
-- caso seja um BNE e a flag zero não for zero, também haverá um desvio.					  
MUX_BEQ_BNE :  entity work.muxGenerico2x1bit 
		  port map( entradaA_MUX => NOT(Zero_BEQ),
					   entradaB_MUX =>  Zero_BEQ,
					   seletor_MUX => BEQ_EXEC_MEM,
					   saida_MUX => SMux_BNE_BEQ);
						
-- operador OR construído para checar se está havendo uma instrução de comparação 
-- e desvio (BEQ ou BNE)
opORBEQBNE : entity work.operadorOR
          port map (in1 => BEQ_EXEC_MEM , in2 => BNE_EXEC_MEM, saida => OR_BEQ_BNE);
			 
-- operador AND construído para checar se a ula está de acordo com a comparação 
-- pedida pelo BEQ ou pelo BNE e se essas instruções estão acontecendo naquele 
-- instante. A função desse AND é não permitir que, por mais que as condições
-- do beq ou do bne sejam favoráveis, eles só acontecam com o ponto de controle ligado				
opANDBEQ : entity work.operadorAND2x1
          port map (in1 => OR_BEQ_BNE , in2 => SMux_BNE_BEQ, saida => Sel_Mux_BEQ);
			 
			 
habEscrita_Banco_Regs_MEM_WB <= habEscrita_Banco_Regs_EXEC;
Sel_Mux_ULA_RAM_LUI_MEM_WB   <= Sel_Mux_ULA_RAM_LUI_EXEC;
PC_Mais_4_MEM_WB             <= PC_Mais_4_EXEC_MEM;
Endereco_ULA_RAM_MEM_WB      <= Endereco_ULA_RAM;
LUI_Estendido_MEM_WB         <= LUI_Estendido_EXEC_MEM;
Endereco_Reg_C_MEM           <= Endereco_Reg_C_EXEC_MEM;				  

end architecture;