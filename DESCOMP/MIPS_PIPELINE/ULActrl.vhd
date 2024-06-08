library ieee;
use ieee.std_logic_1164.all;

entity ULActrl is

  port ( 
			entrada_opcode : in std_logic_vector(5 downto 0);
			entrada_funct  : in std_logic_vector(5 downto 0);
			tipoR				: in std_logic;
         saida          : out std_logic_vector(2 downto 0)
  );
end entity;

architecture comportamento of ULActrl is

  -- tipo I
  constant SW   : std_logic_vector(5 downto 0) := "101011";
  constant LW   : std_logic_vector(5 downto 0) := "100011";
  constant BEQ  : std_logic_vector(5 downto 0) := "000100";
  constant BNE  : std_logic_vector(5 downto 0) := "000101";
  constant LUI  : std_logic_vector(5 downto 0) := "001111";
  constant ORi  : std_logic_vector(5 downto 0) := "001101";
  constant ADDI : std_logic_vector(5 downto 0) := "001000";
  constant SLTI : std_logic_vector(5 downto 0) := "001010";
  constant ANDI : std_logic_vector(5 downto 0) := "001100";
  
  --tipo R
  constant SOMA : std_logic_vector(5 downto 0) := "100000";
  constant SUB  : std_logic_vector(5 downto 0) := "100010";
  constant ANDr : std_logic_vector(5 downto 0) := "100100";
  constant ORr  : std_logic_vector(5 downto 0) := "100101";
  constant SLT  : std_logic_vector(5 downto 0) := "101010";
  constant JR   : std_logic_vector(5 downto 0) := "001000";
  
  
  --tipo J
  constant JMP  : std_logic_vector(5 downto 0) := "000010";
  
  
  signal saida_mux : std_logic_vector(5 downto 0);

  begin
		
		
	  
		Mux_Rt_Rd :  entity work.muxGenerico2x1 generic map (larguraDados => 6)
						port map(entradaA_MUX => entrada_opcode,
									entradaB_MUX => entrada_funct,
									seletor_MUX => tipoR,
									saida_MUX   => saida_mux);
									
									
		saida <= "000" when (saida_mux = ANDr) else
					"001" when (saida_mux = ORr ) else
					"010" when (saida_mux = SOMA) else
					"110" when (saida_mux = SUB ) else
					"111" when (saida_mux = SLT ) else
					"110" when (saida_mux = SUB ) else
					"010" when (saida_mux = LW  ) else
					"010" when (saida_mux = SW  ) else
					"110" when (saida_mux = BEQ ) else
					"001" when (saida_mux = ORi ) else
					"010" when (saida_mux = ADDI) else
					"111" when (saida_mux = SLTI) else
					"000" when (saida_mux = ANDI) else
					"110" when (saida_mux = BNE ) else
					"000";
					
	-- descrição: bit 0 = bit 0 selMux, bit1 = bit 1 selMux, bit2 = InverteB
  
  end architecture;