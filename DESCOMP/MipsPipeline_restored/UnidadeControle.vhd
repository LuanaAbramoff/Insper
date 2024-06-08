library ieee;
use ieee.std_logic_1164.all;

entity UnidadeControle is
  port ( 
			opcode                 : in  std_logic_vector(5 downto 0);
			funct                  : in  std_logic_vector(5 downto 0);
			
			JR							  : out std_logic;
         Sel_Mux_PC4_JMP        : out std_logic;
			Sel_Mux_Rt_Rd          : out std_logic_vector(1 downto 0);
			ORI_ANDI	    			  : out std_logic;
			habEscrita_Banco_Regs  : out std_logic;
			Sel_Mux_Rt_Imediato    : out std_logic;
			tipoR                  : out std_logic;
			Sel_Mux_ULA_RAM_LUI    : out std_logic_vector(1 downto 0);
			BEQ						  : out std_logic;
			BNE						  : out std_logic;
			habLeituraMEM          : out std_logic;
			habEscritaMEM          : out std_logic
		);
		
		
end entity;

architecture comportamento of UnidadeControle is


--opcodes

  -- tipo I
  constant SW   : std_logic_vector(5 downto 0) := "101011";
  constant LW   : std_logic_vector(5 downto 0) := "100011";
  constant BEQi : std_logic_vector(5 downto 0) := "000100";
  constant BNEi : std_logic_vector(5 downto 0) := "000101";
  constant LUI  : std_logic_vector(5 downto 0) := "001111";
  constant ORim : std_logic_vector(5 downto 0) := "001101";
  constant ANDI : std_logic_vector(5 downto 0) := "001100";
  constant ADDI : std_logic_vector(5 downto 0) := "001000";
  constant SLTI : std_logic_vector(5 downto 0) := "001010";
  
  --tipo R
  constant SOMA : std_logic_vector(5 downto 0) := "000000";
  constant SUB  : std_logic_vector(5 downto 0) := "000000";
  constant ANDr : std_logic_vector(5 downto 0) := "000000";
  constant ORr  : std_logic_vector(5 downto 0) := "000000";
  constant SLT  : std_logic_vector(5 downto 0) := "000000";
  constant JRr  : std_logic_vector(5 downto 0) := "000000";
  
  --tipo J
  constant JMP  : std_logic_vector(5 downto 0) := "000010";
  constant JAL  : std_logic_vector(5 downto 0) := "000011";
  
  
--functs necessários (porém eu tenho toc e to muito triste de ter que por isso aqui)

  constant JRf  : std_logic_vector(5 downto 0) := "001000";

begin
	
	JR							 <= '1' when ((opcode = JRr) AND (funct = JRf)) else '0';
	Sel_Mux_PC4_JMP       <= '1' when ((opcode = JMP)  OR (opcode = JAL)) else '0';
	Sel_Mux_Rt_Rd         <= "10" when (opcode = JAL) else "01" when ((opcode = SOMA) OR (opcode = SUB) OR (opcode = ANDr) OR (opcode = ORr) OR (opcode = SLT) OR (opcode = JRr)) else "00";
	ORI_ANDI              <= '1' when ((opcode = ORim) OR (opcode = ANDI)) else '0';
	habEscrita_Banco_Regs <= '1' when ((opcode = SOMA) OR (opcode = SUB) OR (opcode = ANDr) OR (opcode = ORr) OR (opcode = SLT) OR (opcode = LW) OR (opcode = LUI) OR (opcode = ORim) OR (opcode = ADDI) OR (opcode = SLTI) OR (opcode = JRr) OR (opcode = JAL)) else '0';
	Sel_Mux_Rt_Imediato   <= '1' when ((opcode = SW)   OR (opcode = LW) OR (opcode = ORim) OR (opcode = ADDI) OR (opcode = SLTI) OR (opcode = ANDI)) else '0';
	tipoR						 <= '1' when ((opcode = SOMA) OR (opcode = SUB) OR (opcode = ANDr) OR (opcode = ORr) OR (opcode = SLT) OR (opcode = JRr)) else '0';
	Sel_Mux_ULA_RAM_LUI   <= "11" when (opcode = LUI) else "10" when (opcode = JAL) else "01" when (opcode  = LW) else "00";
	BEQ						 <= '1' when (opcode  = BEQi) else '0';
	BNE						 <= '1' when (opcode  = BNEi) else '0';
	habLeituraMEM			 <= '1' when (opcode  = LW) else '0';
	habEscritaMEM         <= '1' when (opcode  = SW) else '0';

end architecture;