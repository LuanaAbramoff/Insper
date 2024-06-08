-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/14/2024 07:59:18"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Aula5_JEQ
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Aula5_JEQ_vhd_vec_tst IS
END Aula5_JEQ_vhd_vec_tst;
ARCHITECTURE Aula5_JEQ_arch OF Aula5_JEQ_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL EntradaB_ULA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL OpULA : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Palavra_Controle : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL PC_OUT : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL Reg_A : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Zero_A : STD_LOGIC;
COMPONENT Aula5_JEQ
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	EntradaB_ULA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LEDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	OpULA : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	Palavra_Controle : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	PC_OUT : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	Reg_A : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Zero_A : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Aula5_JEQ
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	EntradaB_ULA => EntradaB_ULA,
	KEY => KEY,
	LEDR => LEDR,
	OpULA => OpULA,
	Palavra_Controle => Palavra_Controle,
	PC_OUT => PC_OUT,
	Reg_A => Reg_A,
	Zero_A => Zero_A
	);

-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
	KEY(0) <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 49
	LOOP
		KEY(0) <= '0';
		WAIT FOR 10000 ps;
		KEY(0) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	KEY(0) <= '0';
WAIT;
END PROCESS t_prcs_KEY_0;
END Aula5_JEQ_arch;
