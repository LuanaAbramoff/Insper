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
-- Generated on "05/10/2024 12:11:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Aula16
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Aula16_vhd_vec_tst IS
END Aula16_vhd_vec_tst;
ARCHITECTURE Aula16_arch OF Aula16_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL resultado_and : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL resultado_or : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL resultado_slt_f : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL resultado_slt_v : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL resultado_soma : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL resultado_sub : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL zero : STD_LOGIC;
COMPONENT Aula16
	PORT (
	resultado_and : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	resultado_or : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	resultado_slt_f : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	resultado_slt_v : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	resultado_soma : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	resultado_sub : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	zero : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Aula16
	PORT MAP (
-- list connections between master ports and signals
	resultado_and => resultado_and,
	resultado_or => resultado_or,
	resultado_slt_f => resultado_slt_f,
	resultado_slt_v => resultado_slt_v,
	resultado_soma => resultado_soma,
	resultado_sub => resultado_sub,
	zero => zero
	);
END Aula16_arch;
