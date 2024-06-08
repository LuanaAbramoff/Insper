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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "04/24/2024 18:49:47"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Aula13 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(31 DOWNTO 0);
	Saida_ULA : OUT std_logic_vector(31 DOWNTO 0);
	Rs_EntradaAULA : OUT std_logic_vector(31 DOWNTO 0);
	Rt_EntradaBULA : OUT std_logic_vector(31 DOWNTO 0);
	End_Rt : OUT std_logic_vector(4 DOWNTO 0);
	End_Rs : OUT std_logic_vector(4 DOWNTO 0);
	End_Rd : OUT std_logic_vector(4 DOWNTO 0)
	);
END Aula13;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[9]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[10]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[11]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[12]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[13]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[14]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[15]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[16]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[17]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[18]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[19]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[20]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[21]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[22]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[23]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[24]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[25]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[26]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[27]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[28]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[29]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[30]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[31]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[3]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[4]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[5]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[7]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[8]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[9]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[10]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[11]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[12]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[13]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[14]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[15]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[16]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[17]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[18]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[19]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[20]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[21]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[22]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[23]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[24]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[25]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[26]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[27]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[28]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[29]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[30]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_ULA[31]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[0]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[1]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[2]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[3]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[5]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[7]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[8]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[9]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[10]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[11]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[12]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[13]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[14]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[15]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[16]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[17]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[18]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[19]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[20]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[21]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[22]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[23]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[24]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[25]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[26]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[27]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[28]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[29]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[30]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_EntradaAULA[31]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[0]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[1]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[3]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[4]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[5]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[6]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[7]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[8]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[9]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[10]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[11]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[12]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[13]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[14]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[15]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[16]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[17]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[18]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[19]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[20]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[21]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[22]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[23]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[24]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[25]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[26]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[27]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[28]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[29]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[30]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_EntradaBULA[31]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- End_Rt[0]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- End_Rt[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- End_Rt[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- End_Rt[3]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- End_Rt[4]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- End_Rs[0]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- End_Rs[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- End_Rs[2]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- End_Rs[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- End_Rs[4]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- End_Rd[0]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- End_Rd[1]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- End_Rd[2]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- End_Rd[3]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- End_Rd[4]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Aula13 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Saida_ULA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Rs_EntradaAULA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Rt_EntradaBULA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_End_Rt : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_End_Rs : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_End_Rd : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \PC|DOUT[2]~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~30\ : std_logic;
SIGNAL \incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~34\ : std_logic;
SIGNAL \incrementaPC|Add0~37_sumout\ : std_logic;
SIGNAL \PC|DOUT[12]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[13]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~38\ : std_logic;
SIGNAL \incrementaPC|Add0~41_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~42\ : std_logic;
SIGNAL \incrementaPC|Add0~45_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~46\ : std_logic;
SIGNAL \incrementaPC|Add0~49_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~50\ : std_logic;
SIGNAL \incrementaPC|Add0~53_sumout\ : std_logic;
SIGNAL \PC|DOUT[17]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~54\ : std_logic;
SIGNAL \incrementaPC|Add0~57_sumout\ : std_logic;
SIGNAL \PC|DOUT[18]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~58\ : std_logic;
SIGNAL \incrementaPC|Add0~61_sumout\ : std_logic;
SIGNAL \PC|DOUT[19]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~62\ : std_logic;
SIGNAL \incrementaPC|Add0~65_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~66\ : std_logic;
SIGNAL \incrementaPC|Add0~69_sumout\ : std_logic;
SIGNAL \PC|DOUT[21]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~70\ : std_logic;
SIGNAL \incrementaPC|Add0~73_sumout\ : std_logic;
SIGNAL \PC|DOUT[22]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~74\ : std_logic;
SIGNAL \incrementaPC|Add0~77_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~78\ : std_logic;
SIGNAL \incrementaPC|Add0~81_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~82\ : std_logic;
SIGNAL \incrementaPC|Add0~85_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~86\ : std_logic;
SIGNAL \incrementaPC|Add0~89_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~90\ : std_logic;
SIGNAL \incrementaPC|Add0~93_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~94\ : std_logic;
SIGNAL \incrementaPC|Add0~97_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~98\ : std_logic;
SIGNAL \incrementaPC|Add0~101_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~102\ : std_logic;
SIGNAL \incrementaPC|Add0~105_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~106\ : std_logic;
SIGNAL \incrementaPC|Add0~109_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~110\ : std_logic;
SIGNAL \incrementaPC|Add0~113_sumout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ULA|Add1~130_cout\ : std_logic;
SIGNAL \ULA|Add1~1_sumout\ : std_logic;
SIGNAL \ULA|saida[0]~2_combout\ : std_logic;
SIGNAL \bancoRegs|registrador~1062_combout\ : std_logic;
SIGNAL \ULA|Add1~2\ : std_logic;
SIGNAL \ULA|Add1~5_sumout\ : std_logic;
SIGNAL \ULA|Add0~1_sumout\ : std_logic;
SIGNAL \ULA|saida[1]~3_combout\ : std_logic;
SIGNAL \ULA|Add0~2\ : std_logic;
SIGNAL \ULA|Add0~5_sumout\ : std_logic;
SIGNAL \ULA|Add1~6\ : std_logic;
SIGNAL \ULA|Add1~9_sumout\ : std_logic;
SIGNAL \ULA|saida[2]~4_combout\ : std_logic;
SIGNAL \ULA|Add0~6\ : std_logic;
SIGNAL \ULA|Add0~9_sumout\ : std_logic;
SIGNAL \ULA|Add1~10\ : std_logic;
SIGNAL \ULA|Add1~13_sumout\ : std_logic;
SIGNAL \ULA|saida[3]~5_combout\ : std_logic;
SIGNAL \ULA|Add0~10\ : std_logic;
SIGNAL \ULA|Add0~13_sumout\ : std_logic;
SIGNAL \ULA|Add1~14\ : std_logic;
SIGNAL \ULA|Add1~17_sumout\ : std_logic;
SIGNAL \ULA|saida[4]~6_combout\ : std_logic;
SIGNAL \ULA|Add1~18\ : std_logic;
SIGNAL \ULA|Add1~21_sumout\ : std_logic;
SIGNAL \ULA|Add0~14\ : std_logic;
SIGNAL \ULA|Add0~17_sumout\ : std_logic;
SIGNAL \ULA|saida[5]~7_combout\ : std_logic;
SIGNAL \ULA|Add0~18\ : std_logic;
SIGNAL \ULA|Add0~21_sumout\ : std_logic;
SIGNAL \ULA|Add1~22\ : std_logic;
SIGNAL \ULA|Add1~25_sumout\ : std_logic;
SIGNAL \ULA|saida[6]~8_combout\ : std_logic;
SIGNAL \ULA|Add1~26\ : std_logic;
SIGNAL \ULA|Add1~29_sumout\ : std_logic;
SIGNAL \ULA|Add0~22\ : std_logic;
SIGNAL \ULA|Add0~25_sumout\ : std_logic;
SIGNAL \ULA|saida[7]~9_combout\ : std_logic;
SIGNAL \ULA|Add0~26\ : std_logic;
SIGNAL \ULA|Add0~29_sumout\ : std_logic;
SIGNAL \ULA|Add1~30\ : std_logic;
SIGNAL \ULA|Add1~33_sumout\ : std_logic;
SIGNAL \ULA|saida[8]~10_combout\ : std_logic;
SIGNAL \ULA|Add1~34\ : std_logic;
SIGNAL \ULA|Add1~37_sumout\ : std_logic;
SIGNAL \ULA|Add0~30\ : std_logic;
SIGNAL \ULA|Add0~33_sumout\ : std_logic;
SIGNAL \ULA|saida[9]~11_combout\ : std_logic;
SIGNAL \ULA|Add1~38\ : std_logic;
SIGNAL \ULA|Add1~41_sumout\ : std_logic;
SIGNAL \ULA|Add0~34\ : std_logic;
SIGNAL \ULA|Add0~37_sumout\ : std_logic;
SIGNAL \ULA|saida[10]~12_combout\ : std_logic;
SIGNAL \ULA|Add1~42\ : std_logic;
SIGNAL \ULA|Add1~45_sumout\ : std_logic;
SIGNAL \ULA|Add0~38\ : std_logic;
SIGNAL \ULA|Add0~41_sumout\ : std_logic;
SIGNAL \ULA|saida[11]~13_combout\ : std_logic;
SIGNAL \ULA|Add0~42\ : std_logic;
SIGNAL \ULA|Add0~45_sumout\ : std_logic;
SIGNAL \ULA|Add1~46\ : std_logic;
SIGNAL \ULA|Add1~49_sumout\ : std_logic;
SIGNAL \ULA|saida[12]~14_combout\ : std_logic;
SIGNAL \ULA|Add0~46\ : std_logic;
SIGNAL \ULA|Add0~49_sumout\ : std_logic;
SIGNAL \ULA|Add1~50\ : std_logic;
SIGNAL \ULA|Add1~53_sumout\ : std_logic;
SIGNAL \ULA|saida[13]~15_combout\ : std_logic;
SIGNAL \ULA|Add0~50\ : std_logic;
SIGNAL \ULA|Add0~53_sumout\ : std_logic;
SIGNAL \ULA|Add1~54\ : std_logic;
SIGNAL \ULA|Add1~57_sumout\ : std_logic;
SIGNAL \ULA|saida[14]~16_combout\ : std_logic;
SIGNAL \ULA|Add1~58\ : std_logic;
SIGNAL \ULA|Add1~61_sumout\ : std_logic;
SIGNAL \ULA|Add0~54\ : std_logic;
SIGNAL \ULA|Add0~57_sumout\ : std_logic;
SIGNAL \ULA|saida[15]~17_combout\ : std_logic;
SIGNAL \ULA|Add1~62\ : std_logic;
SIGNAL \ULA|Add1~65_sumout\ : std_logic;
SIGNAL \ULA|Add0~58\ : std_logic;
SIGNAL \ULA|Add0~61_sumout\ : std_logic;
SIGNAL \ULA|saida[16]~18_combout\ : std_logic;
SIGNAL \ULA|Add0~62\ : std_logic;
SIGNAL \ULA|Add0~65_sumout\ : std_logic;
SIGNAL \ULA|Add1~66\ : std_logic;
SIGNAL \ULA|Add1~69_sumout\ : std_logic;
SIGNAL \ULA|saida[17]~19_combout\ : std_logic;
SIGNAL \ULA|Add1~70\ : std_logic;
SIGNAL \ULA|Add1~73_sumout\ : std_logic;
SIGNAL \ULA|Add0~66\ : std_logic;
SIGNAL \ULA|Add0~69_sumout\ : std_logic;
SIGNAL \ULA|saida[18]~20_combout\ : std_logic;
SIGNAL \ULA|Add1~74\ : std_logic;
SIGNAL \ULA|Add1~77_sumout\ : std_logic;
SIGNAL \ULA|Add0~70\ : std_logic;
SIGNAL \ULA|Add0~73_sumout\ : std_logic;
SIGNAL \ULA|saida[19]~21_combout\ : std_logic;
SIGNAL \ULA|Add0~74\ : std_logic;
SIGNAL \ULA|Add0~77_sumout\ : std_logic;
SIGNAL \ULA|Add1~78\ : std_logic;
SIGNAL \ULA|Add1~81_sumout\ : std_logic;
SIGNAL \ULA|saida[20]~22_combout\ : std_logic;
SIGNAL \ULA|Add1~82\ : std_logic;
SIGNAL \ULA|Add1~85_sumout\ : std_logic;
SIGNAL \ULA|Add0~78\ : std_logic;
SIGNAL \ULA|Add0~81_sumout\ : std_logic;
SIGNAL \ULA|saida[21]~23_combout\ : std_logic;
SIGNAL \ULA|Add0~82\ : std_logic;
SIGNAL \ULA|Add0~85_sumout\ : std_logic;
SIGNAL \ULA|Add1~86\ : std_logic;
SIGNAL \ULA|Add1~89_sumout\ : std_logic;
SIGNAL \ULA|saida[22]~24_combout\ : std_logic;
SIGNAL \ULA|Add1~90\ : std_logic;
SIGNAL \ULA|Add1~93_sumout\ : std_logic;
SIGNAL \ULA|Add0~86\ : std_logic;
SIGNAL \ULA|Add0~89_sumout\ : std_logic;
SIGNAL \ULA|saida[23]~25_combout\ : std_logic;
SIGNAL \ULA|Add0~90\ : std_logic;
SIGNAL \ULA|Add0~93_sumout\ : std_logic;
SIGNAL \ULA|Add1~94\ : std_logic;
SIGNAL \ULA|Add1~97_sumout\ : std_logic;
SIGNAL \ULA|saida[24]~26_combout\ : std_logic;
SIGNAL \ULA|Add0~94\ : std_logic;
SIGNAL \ULA|Add0~97_sumout\ : std_logic;
SIGNAL \ULA|Add1~98\ : std_logic;
SIGNAL \ULA|Add1~101_sumout\ : std_logic;
SIGNAL \ULA|saida[25]~27_combout\ : std_logic;
SIGNAL \ULA|Add1~102\ : std_logic;
SIGNAL \ULA|Add1~105_sumout\ : std_logic;
SIGNAL \ULA|Add0~98\ : std_logic;
SIGNAL \ULA|Add0~101_sumout\ : std_logic;
SIGNAL \ULA|saida[26]~28_combout\ : std_logic;
SIGNAL \ULA|Add0~102\ : std_logic;
SIGNAL \ULA|Add0~105_sumout\ : std_logic;
SIGNAL \ULA|Add1~106\ : std_logic;
SIGNAL \ULA|Add1~109_sumout\ : std_logic;
SIGNAL \ULA|saida[27]~29_combout\ : std_logic;
SIGNAL \ULA|Add0~106\ : std_logic;
SIGNAL \ULA|Add0~109_sumout\ : std_logic;
SIGNAL \ULA|Add1~110\ : std_logic;
SIGNAL \ULA|Add1~113_sumout\ : std_logic;
SIGNAL \ULA|saida[28]~30_combout\ : std_logic;
SIGNAL \ULA|Add0~110\ : std_logic;
SIGNAL \ULA|Add0~113_sumout\ : std_logic;
SIGNAL \ULA|Add1~114\ : std_logic;
SIGNAL \ULA|Add1~117_sumout\ : std_logic;
SIGNAL \ULA|saida[29]~31_combout\ : std_logic;
SIGNAL \ULA|Add0~114\ : std_logic;
SIGNAL \ULA|Add0~117_sumout\ : std_logic;
SIGNAL \ULA|Add1~118\ : std_logic;
SIGNAL \ULA|Add1~121_sumout\ : std_logic;
SIGNAL \ULA|saida[30]~32_combout\ : std_logic;
SIGNAL \ULA|Add0~118\ : std_logic;
SIGNAL \ULA|Add0~121_sumout\ : std_logic;
SIGNAL \ULA|Add1~122\ : std_logic;
SIGNAL \ULA|Add1~125_sumout\ : std_logic;
SIGNAL \ULA|saida[31]~33_combout\ : std_logic;
SIGNAL \bancoRegs|saidaA[0]~0_combout\ : std_logic;
SIGNAL \bancoRegs|saidaA[1]~1_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ULA|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~125_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~121_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~117_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~113_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~109_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~105_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~101_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~97_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~93_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~89_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~85_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~81_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~77_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[21]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[19]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[18]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[17]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[13]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registrador~1062_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_saidaA[1]~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(31 DOWNTO 2);
SIGNAL \PC|ALT_INV_DOUT[22]~DUPLICATE_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
Saida_ULA <= ww_Saida_ULA;
Rs_EntradaAULA <= ww_Rs_EntradaAULA;
Rt_EntradaBULA <= ww_Rt_EntradaBULA;
End_Rt <= ww_End_Rt;
End_Rs <= ww_End_Rs;
End_Rd <= ww_End_Rd;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ULA|ALT_INV_Add1~13_sumout\ <= NOT \ULA|Add1~13_sumout\;
\ULA|ALT_INV_Add0~9_sumout\ <= NOT \ULA|Add0~9_sumout\;
\ULA|ALT_INV_Add1~9_sumout\ <= NOT \ULA|Add1~9_sumout\;
\ULA|ALT_INV_Add0~5_sumout\ <= NOT \ULA|Add0~5_sumout\;
\ULA|ALT_INV_Add1~5_sumout\ <= NOT \ULA|Add1~5_sumout\;
\ULA|ALT_INV_Add0~1_sumout\ <= NOT \ULA|Add0~1_sumout\;
\ULA|ALT_INV_Add1~1_sumout\ <= NOT \ULA|Add1~1_sumout\;
\ULA|ALT_INV_Add1~125_sumout\ <= NOT \ULA|Add1~125_sumout\;
\ULA|ALT_INV_Add0~121_sumout\ <= NOT \ULA|Add0~121_sumout\;
\ULA|ALT_INV_Add1~121_sumout\ <= NOT \ULA|Add1~121_sumout\;
\ULA|ALT_INV_Add0~117_sumout\ <= NOT \ULA|Add0~117_sumout\;
\ULA|ALT_INV_Add1~117_sumout\ <= NOT \ULA|Add1~117_sumout\;
\ULA|ALT_INV_Add0~113_sumout\ <= NOT \ULA|Add0~113_sumout\;
\ULA|ALT_INV_Add1~113_sumout\ <= NOT \ULA|Add1~113_sumout\;
\ULA|ALT_INV_Add0~109_sumout\ <= NOT \ULA|Add0~109_sumout\;
\ULA|ALT_INV_Add1~109_sumout\ <= NOT \ULA|Add1~109_sumout\;
\ULA|ALT_INV_Add0~105_sumout\ <= NOT \ULA|Add0~105_sumout\;
\ULA|ALT_INV_Add1~105_sumout\ <= NOT \ULA|Add1~105_sumout\;
\ULA|ALT_INV_Add0~101_sumout\ <= NOT \ULA|Add0~101_sumout\;
\ULA|ALT_INV_Add1~101_sumout\ <= NOT \ULA|Add1~101_sumout\;
\ULA|ALT_INV_Add0~97_sumout\ <= NOT \ULA|Add0~97_sumout\;
\ULA|ALT_INV_Add1~97_sumout\ <= NOT \ULA|Add1~97_sumout\;
\ULA|ALT_INV_Add0~93_sumout\ <= NOT \ULA|Add0~93_sumout\;
\ULA|ALT_INV_Add1~93_sumout\ <= NOT \ULA|Add1~93_sumout\;
\ULA|ALT_INV_Add0~89_sumout\ <= NOT \ULA|Add0~89_sumout\;
\ULA|ALT_INV_Add1~89_sumout\ <= NOT \ULA|Add1~89_sumout\;
\ULA|ALT_INV_Add0~85_sumout\ <= NOT \ULA|Add0~85_sumout\;
\ULA|ALT_INV_Add1~85_sumout\ <= NOT \ULA|Add1~85_sumout\;
\ULA|ALT_INV_Add0~81_sumout\ <= NOT \ULA|Add0~81_sumout\;
\ULA|ALT_INV_Add1~81_sumout\ <= NOT \ULA|Add1~81_sumout\;
\ULA|ALT_INV_Add0~77_sumout\ <= NOT \ULA|Add0~77_sumout\;
\ULA|ALT_INV_Add1~77_sumout\ <= NOT \ULA|Add1~77_sumout\;
\ULA|ALT_INV_Add0~73_sumout\ <= NOT \ULA|Add0~73_sumout\;
\ULA|ALT_INV_Add1~73_sumout\ <= NOT \ULA|Add1~73_sumout\;
\ULA|ALT_INV_Add0~69_sumout\ <= NOT \ULA|Add0~69_sumout\;
\ULA|ALT_INV_Add1~69_sumout\ <= NOT \ULA|Add1~69_sumout\;
\ULA|ALT_INV_Add0~65_sumout\ <= NOT \ULA|Add0~65_sumout\;
\ULA|ALT_INV_Add1~65_sumout\ <= NOT \ULA|Add1~65_sumout\;
\ULA|ALT_INV_Add0~61_sumout\ <= NOT \ULA|Add0~61_sumout\;
\ULA|ALT_INV_Add1~61_sumout\ <= NOT \ULA|Add1~61_sumout\;
\ULA|ALT_INV_Add0~57_sumout\ <= NOT \ULA|Add0~57_sumout\;
\ULA|ALT_INV_Add1~57_sumout\ <= NOT \ULA|Add1~57_sumout\;
\ULA|ALT_INV_Add0~53_sumout\ <= NOT \ULA|Add0~53_sumout\;
\ULA|ALT_INV_Add1~53_sumout\ <= NOT \ULA|Add1~53_sumout\;
\ULA|ALT_INV_Add0~49_sumout\ <= NOT \ULA|Add0~49_sumout\;
\ULA|ALT_INV_Add1~49_sumout\ <= NOT \ULA|Add1~49_sumout\;
\ULA|ALT_INV_Add0~45_sumout\ <= NOT \ULA|Add0~45_sumout\;
\ULA|ALT_INV_Add1~45_sumout\ <= NOT \ULA|Add1~45_sumout\;
\ULA|ALT_INV_Add0~41_sumout\ <= NOT \ULA|Add0~41_sumout\;
\ULA|ALT_INV_Add1~41_sumout\ <= NOT \ULA|Add1~41_sumout\;
\ULA|ALT_INV_Add0~37_sumout\ <= NOT \ULA|Add0~37_sumout\;
\ULA|ALT_INV_Add1~37_sumout\ <= NOT \ULA|Add1~37_sumout\;
\ULA|ALT_INV_Add0~33_sumout\ <= NOT \ULA|Add0~33_sumout\;
\ULA|ALT_INV_Add1~33_sumout\ <= NOT \ULA|Add1~33_sumout\;
\ULA|ALT_INV_Add0~29_sumout\ <= NOT \ULA|Add0~29_sumout\;
\ULA|ALT_INV_Add1~29_sumout\ <= NOT \ULA|Add1~29_sumout\;
\ULA|ALT_INV_Add0~25_sumout\ <= NOT \ULA|Add0~25_sumout\;
\ULA|ALT_INV_Add1~25_sumout\ <= NOT \ULA|Add1~25_sumout\;
\ULA|ALT_INV_Add0~21_sumout\ <= NOT \ULA|Add0~21_sumout\;
\ULA|ALT_INV_Add1~21_sumout\ <= NOT \ULA|Add1~21_sumout\;
\ULA|ALT_INV_Add0~17_sumout\ <= NOT \ULA|Add0~17_sumout\;
\ULA|ALT_INV_Add1~17_sumout\ <= NOT \ULA|Add1~17_sumout\;
\ULA|ALT_INV_Add0~13_sumout\ <= NOT \ULA|Add0~13_sumout\;
\PC|ALT_INV_DOUT[21]~DUPLICATE_q\ <= NOT \PC|DOUT[21]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[19]~DUPLICATE_q\ <= NOT \PC|DOUT[19]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[18]~DUPLICATE_q\ <= NOT \PC|DOUT[18]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[17]~DUPLICATE_q\ <= NOT \PC|DOUT[17]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[13]~DUPLICATE_q\ <= NOT \PC|DOUT[13]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \PC|DOUT[7]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \PC|DOUT[5]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \PC|DOUT[3]~DUPLICATE_q\;
\bancoRegs|ALT_INV_registrador~1062_combout\ <= NOT \bancoRegs|registrador~1062_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\bancoRegs|ALT_INV_saidaA[1]~1_combout\ <= NOT \bancoRegs|saidaA[1]~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\PC|ALT_INV_DOUT\(31) <= NOT \PC|DOUT\(31);
\PC|ALT_INV_DOUT\(30) <= NOT \PC|DOUT\(30);
\PC|ALT_INV_DOUT\(29) <= NOT \PC|DOUT\(29);
\PC|ALT_INV_DOUT\(28) <= NOT \PC|DOUT\(28);
\PC|ALT_INV_DOUT\(27) <= NOT \PC|DOUT\(27);
\PC|ALT_INV_DOUT\(26) <= NOT \PC|DOUT\(26);
\PC|ALT_INV_DOUT\(25) <= NOT \PC|DOUT\(25);
\PC|ALT_INV_DOUT\(24) <= NOT \PC|DOUT\(24);
\PC|ALT_INV_DOUT\(23) <= NOT \PC|DOUT\(23);
\PC|ALT_INV_DOUT\(20) <= NOT \PC|DOUT\(20);
\PC|ALT_INV_DOUT\(16) <= NOT \PC|DOUT\(16);
\PC|ALT_INV_DOUT\(15) <= NOT \PC|DOUT\(15);
\PC|ALT_INV_DOUT\(14) <= NOT \PC|DOUT\(14);
\PC|ALT_INV_DOUT\(12) <= NOT \PC|DOUT\(12);
\PC|ALT_INV_DOUT\(11) <= NOT \PC|DOUT\(11);
\PC|ALT_INV_DOUT\(10) <= NOT \PC|DOUT\(10);
\PC|ALT_INV_DOUT\(9) <= NOT \PC|DOUT\(9);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT[22]~DUPLICATE_q\ <= NOT \PC|DOUT[22]~DUPLICATE_q\;

-- Location: IOOBUF_X54_Y19_N39
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X16_Y45_N93
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X25_Y0_N36
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X25_Y0_N53
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X44_Y0_N53
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X40_Y0_N93
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X43_Y0_N2
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X43_Y0_N36
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X43_Y0_N19
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X40_Y0_N76
\PC_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(9),
	devoe => ww_devoe,
	o => ww_PC_OUT(9));

-- Location: IOOBUF_X29_Y0_N2
\PC_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(10),
	devoe => ww_devoe,
	o => ww_PC_OUT(10));

-- Location: IOOBUF_X29_Y0_N19
\PC_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(11),
	devoe => ww_devoe,
	o => ww_PC_OUT(11));

-- Location: IOOBUF_X40_Y0_N42
\PC_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[12]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(12));

-- Location: IOOBUF_X34_Y0_N53
\PC_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(13),
	devoe => ww_devoe,
	o => ww_PC_OUT(13));

-- Location: IOOBUF_X33_Y0_N76
\PC_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(14),
	devoe => ww_devoe,
	o => ww_PC_OUT(14));

-- Location: IOOBUF_X36_Y0_N19
\PC_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(15),
	devoe => ww_devoe,
	o => ww_PC_OUT(15));

-- Location: IOOBUF_X34_Y0_N19
\PC_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(16),
	devoe => ww_devoe,
	o => ww_PC_OUT(16));

-- Location: IOOBUF_X34_Y0_N2
\PC_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(17),
	devoe => ww_devoe,
	o => ww_PC_OUT(17));

-- Location: IOOBUF_X38_Y0_N2
\PC_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(18),
	devoe => ww_devoe,
	o => ww_PC_OUT(18));

-- Location: IOOBUF_X38_Y0_N36
\PC_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(19),
	devoe => ww_devoe,
	o => ww_PC_OUT(19));

-- Location: IOOBUF_X34_Y0_N36
\PC_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(20),
	devoe => ww_devoe,
	o => ww_PC_OUT(20));

-- Location: IOOBUF_X38_Y0_N53
\PC_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(21),
	devoe => ww_devoe,
	o => ww_PC_OUT(21));

-- Location: IOOBUF_X40_Y0_N59
\PC_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(22),
	devoe => ww_devoe,
	o => ww_PC_OUT(22));

-- Location: IOOBUF_X36_Y0_N36
\PC_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(23),
	devoe => ww_devoe,
	o => ww_PC_OUT(23));

-- Location: IOOBUF_X36_Y0_N2
\PC_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(24),
	devoe => ww_devoe,
	o => ww_PC_OUT(24));

-- Location: IOOBUF_X29_Y0_N53
\PC_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(25),
	devoe => ww_devoe,
	o => ww_PC_OUT(25));

-- Location: IOOBUF_X33_Y0_N93
\PC_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(26),
	devoe => ww_devoe,
	o => ww_PC_OUT(26));

-- Location: IOOBUF_X36_Y0_N53
\PC_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(27),
	devoe => ww_devoe,
	o => ww_PC_OUT(27));

-- Location: IOOBUF_X29_Y0_N36
\PC_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(28),
	devoe => ww_devoe,
	o => ww_PC_OUT(28));

-- Location: IOOBUF_X33_Y0_N59
\PC_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(29),
	devoe => ww_devoe,
	o => ww_PC_OUT(29));

-- Location: IOOBUF_X38_Y0_N19
\PC_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(30),
	devoe => ww_devoe,
	o => ww_PC_OUT(30));

-- Location: IOOBUF_X33_Y0_N42
\PC_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(31),
	devoe => ww_devoe,
	o => ww_PC_OUT(31));

-- Location: IOOBUF_X23_Y0_N42
\Saida_ULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(0));

-- Location: IOOBUF_X14_Y0_N53
\Saida_ULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(1));

-- Location: IOOBUF_X12_Y0_N36
\Saida_ULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[2]~4_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(2));

-- Location: IOOBUF_X18_Y0_N19
\Saida_ULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[3]~5_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(3));

-- Location: IOOBUF_X18_Y0_N53
\Saida_ULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[4]~6_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(4));

-- Location: IOOBUF_X14_Y0_N36
\Saida_ULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[5]~7_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(5));

-- Location: IOOBUF_X12_Y0_N19
\Saida_ULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[6]~8_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(6));

-- Location: IOOBUF_X12_Y0_N53
\Saida_ULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[7]~9_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(7));

-- Location: IOOBUF_X24_Y0_N2
\Saida_ULA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[8]~10_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(8));

-- Location: IOOBUF_X12_Y0_N2
\Saida_ULA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[9]~11_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(9));

-- Location: IOOBUF_X23_Y0_N76
\Saida_ULA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[10]~12_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(10));

-- Location: IOOBUF_X24_Y0_N19
\Saida_ULA[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[11]~13_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(11));

-- Location: IOOBUF_X24_Y0_N36
\Saida_ULA[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[12]~14_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(12));

-- Location: IOOBUF_X22_Y0_N36
\Saida_ULA[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[13]~15_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(13));

-- Location: IOOBUF_X19_Y0_N19
\Saida_ULA[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[14]~16_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(14));

-- Location: IOOBUF_X11_Y0_N53
\Saida_ULA[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[15]~17_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(15));

-- Location: IOOBUF_X11_Y0_N19
\Saida_ULA[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[16]~18_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(16));

-- Location: IOOBUF_X18_Y0_N36
\Saida_ULA[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[17]~19_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(17));

-- Location: IOOBUF_X10_Y0_N42
\Saida_ULA[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[18]~20_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(18));

-- Location: IOOBUF_X11_Y0_N2
\Saida_ULA[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[19]~21_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(19));

-- Location: IOOBUF_X24_Y0_N53
\Saida_ULA[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[20]~22_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(20));

-- Location: IOOBUF_X22_Y0_N53
\Saida_ULA[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[21]~23_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(21));

-- Location: IOOBUF_X18_Y0_N2
\Saida_ULA[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[22]~24_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(22));

-- Location: IOOBUF_X19_Y0_N2
\Saida_ULA[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[23]~25_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(23));

-- Location: IOOBUF_X19_Y0_N36
\Saida_ULA[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[24]~26_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(24));

-- Location: IOOBUF_X16_Y0_N42
\Saida_ULA[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[25]~27_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(25));

-- Location: IOOBUF_X23_Y0_N59
\Saida_ULA[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[26]~28_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(26));

-- Location: IOOBUF_X16_Y0_N93
\Saida_ULA[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[27]~29_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(27));

-- Location: IOOBUF_X16_Y0_N76
\Saida_ULA[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[28]~30_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(28));

-- Location: IOOBUF_X23_Y0_N93
\Saida_ULA[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[29]~31_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(29));

-- Location: IOOBUF_X19_Y0_N53
\Saida_ULA[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[30]~32_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(30));

-- Location: IOOBUF_X22_Y0_N19
\Saida_ULA[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[31]~33_combout\,
	devoe => ww_devoe,
	o => ww_Saida_ULA(31));

-- Location: IOOBUF_X16_Y0_N59
\Rs_EntradaAULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|saidaA[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(0));

-- Location: IOOBUF_X44_Y0_N36
\Rs_EntradaAULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|ALT_INV_saidaA[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(1));

-- Location: IOOBUF_X48_Y0_N59
\Rs_EntradaAULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(2));

-- Location: IOOBUF_X43_Y0_N53
\Rs_EntradaAULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|ALT_INV_saidaA[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(3));

-- Location: IOOBUF_X48_Y0_N93
\Rs_EntradaAULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(4));

-- Location: IOOBUF_X22_Y45_N19
\Rs_EntradaAULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(5));

-- Location: IOOBUF_X43_Y45_N2
\Rs_EntradaAULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(6));

-- Location: IOOBUF_X34_Y45_N53
\Rs_EntradaAULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(7));

-- Location: IOOBUF_X50_Y45_N53
\Rs_EntradaAULA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(8));

-- Location: IOOBUF_X48_Y45_N53
\Rs_EntradaAULA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(9));

-- Location: IOOBUF_X10_Y45_N19
\Rs_EntradaAULA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(10));

-- Location: IOOBUF_X0_Y18_N79
\Rs_EntradaAULA[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(11));

-- Location: IOOBUF_X52_Y45_N2
\Rs_EntradaAULA[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(12));

-- Location: IOOBUF_X32_Y45_N59
\Rs_EntradaAULA[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(13));

-- Location: IOOBUF_X22_Y45_N53
\Rs_EntradaAULA[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(14));

-- Location: IOOBUF_X32_Y45_N93
\Rs_EntradaAULA[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(15));

-- Location: IOOBUF_X14_Y45_N53
\Rs_EntradaAULA[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(16));

-- Location: IOOBUF_X50_Y45_N19
\Rs_EntradaAULA[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(17));

-- Location: IOOBUF_X36_Y45_N36
\Rs_EntradaAULA[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(18));

-- Location: IOOBUF_X32_Y45_N42
\Rs_EntradaAULA[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(19));

-- Location: IOOBUF_X42_Y45_N53
\Rs_EntradaAULA[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(20));

-- Location: IOOBUF_X32_Y45_N76
\Rs_EntradaAULA[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(21));

-- Location: IOOBUF_X52_Y45_N19
\Rs_EntradaAULA[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(22));

-- Location: IOOBUF_X44_Y0_N2
\Rs_EntradaAULA[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(23));

-- Location: IOOBUF_X54_Y14_N62
\Rs_EntradaAULA[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(24));

-- Location: IOOBUF_X0_Y21_N39
\Rs_EntradaAULA[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(25));

-- Location: IOOBUF_X42_Y45_N2
\Rs_EntradaAULA[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(26));

-- Location: IOOBUF_X40_Y45_N59
\Rs_EntradaAULA[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(27));

-- Location: IOOBUF_X8_Y45_N42
\Rs_EntradaAULA[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(28));

-- Location: IOOBUF_X16_Y45_N42
\Rs_EntradaAULA[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(29));

-- Location: IOOBUF_X38_Y45_N2
\Rs_EntradaAULA[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(30));

-- Location: IOOBUF_X40_Y45_N76
\Rs_EntradaAULA[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_EntradaAULA(31));

-- Location: IOOBUF_X20_Y45_N36
\Rt_EntradaBULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(0));

-- Location: IOOBUF_X54_Y17_N56
\Rt_EntradaBULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(1));

-- Location: IOOBUF_X46_Y45_N76
\Rt_EntradaBULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(2));

-- Location: IOOBUF_X54_Y15_N56
\Rt_EntradaBULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(3));

-- Location: IOOBUF_X44_Y45_N36
\Rt_EntradaBULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(4));

-- Location: IOOBUF_X51_Y0_N36
\Rt_EntradaBULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(5));

-- Location: IOOBUF_X38_Y45_N36
\Rt_EntradaBULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(6));

-- Location: IOOBUF_X44_Y0_N19
\Rt_EntradaBULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(7));

-- Location: IOOBUF_X34_Y45_N36
\Rt_EntradaBULA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(8));

-- Location: IOOBUF_X50_Y0_N2
\Rt_EntradaBULA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(9));

-- Location: IOOBUF_X38_Y45_N53
\Rt_EntradaBULA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(10));

-- Location: IOOBUF_X52_Y0_N19
\Rt_EntradaBULA[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(11));

-- Location: IOOBUF_X43_Y45_N19
\Rt_EntradaBULA[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(12));

-- Location: IOOBUF_X43_Y45_N36
\Rt_EntradaBULA[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(13));

-- Location: IOOBUF_X14_Y45_N19
\Rt_EntradaBULA[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(14));

-- Location: IOOBUF_X8_Y45_N93
\Rt_EntradaBULA[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(15));

-- Location: IOOBUF_X0_Y21_N5
\Rt_EntradaBULA[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(16));

-- Location: IOOBUF_X40_Y45_N93
\Rt_EntradaBULA[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(17));

-- Location: IOOBUF_X48_Y0_N42
\Rt_EntradaBULA[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(18));

-- Location: IOOBUF_X46_Y45_N59
\Rt_EntradaBULA[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(19));

-- Location: IOOBUF_X52_Y45_N53
\Rt_EntradaBULA[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(20));

-- Location: IOOBUF_X48_Y45_N19
\Rt_EntradaBULA[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(21));

-- Location: IOOBUF_X8_Y45_N59
\Rt_EntradaBULA[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(22));

-- Location: IOOBUF_X0_Y19_N39
\Rt_EntradaBULA[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(23));

-- Location: IOOBUF_X10_Y45_N36
\Rt_EntradaBULA[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(24));

-- Location: IOOBUF_X51_Y0_N2
\Rt_EntradaBULA[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(25));

-- Location: IOOBUF_X42_Y45_N36
\Rt_EntradaBULA[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(26));

-- Location: IOOBUF_X54_Y20_N22
\Rt_EntradaBULA[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(27));

-- Location: IOOBUF_X25_Y0_N19
\Rt_EntradaBULA[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(28));

-- Location: IOOBUF_X54_Y15_N22
\Rt_EntradaBULA[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(29));

-- Location: IOOBUF_X51_Y0_N53
\Rt_EntradaBULA[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(30));

-- Location: IOOBUF_X0_Y20_N39
\Rt_EntradaBULA[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_EntradaBULA(31));

-- Location: IOOBUF_X54_Y17_N39
\End_Rt[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_End_Rt(0));

-- Location: IOOBUF_X52_Y45_N36
\End_Rt[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_End_Rt(1));

-- Location: IOOBUF_X14_Y45_N2
\End_Rt[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_End_Rt(2));

-- Location: IOOBUF_X54_Y14_N79
\End_Rt[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_End_Rt(3));

-- Location: IOOBUF_X0_Y20_N22
\End_Rt[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_End_Rt(4));

-- Location: IOOBUF_X18_Y45_N2
\End_Rs[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_End_Rs(0));

-- Location: IOOBUF_X25_Y0_N2
\End_Rs[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_End_Rs(1));

-- Location: IOOBUF_X54_Y16_N5
\End_Rs[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_End_Rs(2));

-- Location: IOOBUF_X54_Y15_N5
\End_Rs[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_End_Rs(3));

-- Location: IOOBUF_X51_Y0_N19
\End_Rs[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_End_Rs(4));

-- Location: IOOBUF_X44_Y45_N53
\End_Rd[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_End_Rd(0));

-- Location: IOOBUF_X54_Y15_N39
\End_Rd[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_End_Rd(1));

-- Location: IOOBUF_X0_Y19_N22
\End_Rd[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_End_Rd(2));

-- Location: IOOBUF_X20_Y45_N19
\End_Rd[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_End_Rd(3));

-- Location: IOOBUF_X54_Y20_N5
\End_Rd[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_End_Rd(4));

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G7
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: MLABCELL_X34_Y2_N36
\PC|DOUT[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[2]~0_combout\ = ( !\PC|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PC|ALT_INV_DOUT\(2),
	combout => \PC|DOUT[2]~0_combout\);

-- Location: FF_X34_Y2_N38
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \PC|DOUT[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: FF_X34_Y2_N2
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: MLABCELL_X34_Y2_N0
\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT\(2) ) + ( \PC|DOUT\(3) ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT\(2) ) + ( \PC|DOUT\(3) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(2),
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

-- Location: FF_X34_Y2_N1
\PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[3]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y2_N3
\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

-- Location: FF_X34_Y2_N5
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: FF_X34_Y2_N7
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: MLABCELL_X34_Y2_N6
\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

-- Location: FF_X34_Y2_N8
\PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[5]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y2_N9
\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(6),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

-- Location: FF_X34_Y2_N11
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: FF_X34_Y2_N14
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: MLABCELL_X34_Y2_N12
\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

-- Location: FF_X34_Y2_N13
\PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[7]~DUPLICATE_q\);

-- Location: FF_X34_Y2_N17
\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

-- Location: MLABCELL_X34_Y2_N15
\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(8),
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

-- Location: FF_X34_Y2_N16
\PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[8]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y2_N18
\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT\(9) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT\(9) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(9),
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

-- Location: FF_X34_Y2_N20
\PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(9));

-- Location: MLABCELL_X34_Y2_N21
\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT\(10) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))
-- \incrementaPC|Add0~30\ = CARRY(( \PC|DOUT\(10) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(10),
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~29_sumout\,
	cout => \incrementaPC|Add0~30\);

-- Location: FF_X34_Y2_N23
\PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(10));

-- Location: MLABCELL_X34_Y2_N24
\incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~33_sumout\ = SUM(( \PC|DOUT\(11) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))
-- \incrementaPC|Add0~34\ = CARRY(( \PC|DOUT\(11) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(11),
	cin => \incrementaPC|Add0~30\,
	sumout => \incrementaPC|Add0~33_sumout\,
	cout => \incrementaPC|Add0~34\);

-- Location: FF_X34_Y2_N26
\PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(11));

-- Location: FF_X34_Y2_N29
\PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(12));

-- Location: MLABCELL_X34_Y2_N27
\incrementaPC|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~37_sumout\ = SUM(( \PC|DOUT\(12) ) + ( GND ) + ( \incrementaPC|Add0~34\ ))
-- \incrementaPC|Add0~38\ = CARRY(( \PC|DOUT\(12) ) + ( GND ) + ( \incrementaPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(12),
	cin => \incrementaPC|Add0~34\,
	sumout => \incrementaPC|Add0~37_sumout\,
	cout => \incrementaPC|Add0~38\);

-- Location: FF_X34_Y2_N28
\PC|DOUT[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[12]~DUPLICATE_q\);

-- Location: FF_X34_Y1_N2
\PC|DOUT[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[13]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y1_N0
\incrementaPC|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~41_sumout\ = SUM(( \PC|DOUT[13]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~38\ ))
-- \incrementaPC|Add0~42\ = CARRY(( \PC|DOUT[13]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[13]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~38\,
	sumout => \incrementaPC|Add0~41_sumout\,
	cout => \incrementaPC|Add0~42\);

-- Location: FF_X34_Y1_N1
\PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(13));

-- Location: MLABCELL_X34_Y1_N3
\incrementaPC|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~45_sumout\ = SUM(( \PC|DOUT\(14) ) + ( GND ) + ( \incrementaPC|Add0~42\ ))
-- \incrementaPC|Add0~46\ = CARRY(( \PC|DOUT\(14) ) + ( GND ) + ( \incrementaPC|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(14),
	cin => \incrementaPC|Add0~42\,
	sumout => \incrementaPC|Add0~45_sumout\,
	cout => \incrementaPC|Add0~46\);

-- Location: FF_X34_Y1_N5
\PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(14));

-- Location: MLABCELL_X34_Y1_N6
\incrementaPC|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~49_sumout\ = SUM(( \PC|DOUT\(15) ) + ( GND ) + ( \incrementaPC|Add0~46\ ))
-- \incrementaPC|Add0~50\ = CARRY(( \PC|DOUT\(15) ) + ( GND ) + ( \incrementaPC|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(15),
	cin => \incrementaPC|Add0~46\,
	sumout => \incrementaPC|Add0~49_sumout\,
	cout => \incrementaPC|Add0~50\);

-- Location: FF_X34_Y1_N7
\PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(15));

-- Location: MLABCELL_X34_Y1_N9
\incrementaPC|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~53_sumout\ = SUM(( \PC|DOUT\(16) ) + ( GND ) + ( \incrementaPC|Add0~50\ ))
-- \incrementaPC|Add0~54\ = CARRY(( \PC|DOUT\(16) ) + ( GND ) + ( \incrementaPC|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(16),
	cin => \incrementaPC|Add0~50\,
	sumout => \incrementaPC|Add0~53_sumout\,
	cout => \incrementaPC|Add0~54\);

-- Location: FF_X34_Y1_N11
\PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(16));

-- Location: FF_X34_Y1_N14
\PC|DOUT[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[17]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y1_N12
\incrementaPC|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~57_sumout\ = SUM(( \PC|DOUT[17]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~54\ ))
-- \incrementaPC|Add0~58\ = CARRY(( \PC|DOUT[17]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[17]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~54\,
	sumout => \incrementaPC|Add0~57_sumout\,
	cout => \incrementaPC|Add0~58\);

-- Location: FF_X34_Y1_N13
\PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(17));

-- Location: FF_X34_Y1_N17
\PC|DOUT[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[18]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y1_N15
\incrementaPC|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~61_sumout\ = SUM(( \PC|DOUT[18]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~58\ ))
-- \incrementaPC|Add0~62\ = CARRY(( \PC|DOUT[18]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[18]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~58\,
	sumout => \incrementaPC|Add0~61_sumout\,
	cout => \incrementaPC|Add0~62\);

-- Location: FF_X34_Y1_N16
\PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(18));

-- Location: FF_X34_Y1_N20
\PC|DOUT[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[19]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y1_N18
\incrementaPC|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~65_sumout\ = SUM(( \PC|DOUT[19]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~62\ ))
-- \incrementaPC|Add0~66\ = CARRY(( \PC|DOUT[19]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[19]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~62\,
	sumout => \incrementaPC|Add0~65_sumout\,
	cout => \incrementaPC|Add0~66\);

-- Location: FF_X34_Y1_N19
\PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(19));

-- Location: MLABCELL_X34_Y1_N21
\incrementaPC|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~69_sumout\ = SUM(( \PC|DOUT\(20) ) + ( GND ) + ( \incrementaPC|Add0~66\ ))
-- \incrementaPC|Add0~70\ = CARRY(( \PC|DOUT\(20) ) + ( GND ) + ( \incrementaPC|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(20),
	cin => \incrementaPC|Add0~66\,
	sumout => \incrementaPC|Add0~69_sumout\,
	cout => \incrementaPC|Add0~70\);

-- Location: FF_X34_Y1_N23
\PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(20));

-- Location: FF_X34_Y1_N26
\PC|DOUT[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[21]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y1_N24
\incrementaPC|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~73_sumout\ = SUM(( \PC|DOUT[21]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~70\ ))
-- \incrementaPC|Add0~74\ = CARRY(( \PC|DOUT[21]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[21]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~70\,
	sumout => \incrementaPC|Add0~73_sumout\,
	cout => \incrementaPC|Add0~74\);

-- Location: FF_X34_Y1_N25
\PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(21));

-- Location: FF_X34_Y1_N29
\PC|DOUT[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[22]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y1_N27
\incrementaPC|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~77_sumout\ = SUM(( \PC|DOUT[22]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~74\ ))
-- \incrementaPC|Add0~78\ = CARRY(( \PC|DOUT[22]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[22]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~74\,
	sumout => \incrementaPC|Add0~77_sumout\,
	cout => \incrementaPC|Add0~78\);

-- Location: FF_X34_Y1_N28
\PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(22));

-- Location: MLABCELL_X34_Y1_N30
\incrementaPC|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~81_sumout\ = SUM(( \PC|DOUT\(23) ) + ( GND ) + ( \incrementaPC|Add0~78\ ))
-- \incrementaPC|Add0~82\ = CARRY(( \PC|DOUT\(23) ) + ( GND ) + ( \incrementaPC|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(23),
	cin => \incrementaPC|Add0~78\,
	sumout => \incrementaPC|Add0~81_sumout\,
	cout => \incrementaPC|Add0~82\);

-- Location: FF_X34_Y1_N31
\PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(23));

-- Location: MLABCELL_X34_Y1_N33
\incrementaPC|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~85_sumout\ = SUM(( \PC|DOUT\(24) ) + ( GND ) + ( \incrementaPC|Add0~82\ ))
-- \incrementaPC|Add0~86\ = CARRY(( \PC|DOUT\(24) ) + ( GND ) + ( \incrementaPC|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(24),
	cin => \incrementaPC|Add0~82\,
	sumout => \incrementaPC|Add0~85_sumout\,
	cout => \incrementaPC|Add0~86\);

-- Location: FF_X34_Y1_N35
\PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(24));

-- Location: MLABCELL_X34_Y1_N36
\incrementaPC|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~89_sumout\ = SUM(( \PC|DOUT\(25) ) + ( GND ) + ( \incrementaPC|Add0~86\ ))
-- \incrementaPC|Add0~90\ = CARRY(( \PC|DOUT\(25) ) + ( GND ) + ( \incrementaPC|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(25),
	cin => \incrementaPC|Add0~86\,
	sumout => \incrementaPC|Add0~89_sumout\,
	cout => \incrementaPC|Add0~90\);

-- Location: FF_X34_Y1_N38
\PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(25));

-- Location: MLABCELL_X34_Y1_N39
\incrementaPC|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~93_sumout\ = SUM(( \PC|DOUT\(26) ) + ( GND ) + ( \incrementaPC|Add0~90\ ))
-- \incrementaPC|Add0~94\ = CARRY(( \PC|DOUT\(26) ) + ( GND ) + ( \incrementaPC|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(26),
	cin => \incrementaPC|Add0~90\,
	sumout => \incrementaPC|Add0~93_sumout\,
	cout => \incrementaPC|Add0~94\);

-- Location: FF_X34_Y1_N41
\PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(26));

-- Location: MLABCELL_X34_Y1_N42
\incrementaPC|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~97_sumout\ = SUM(( \PC|DOUT\(27) ) + ( GND ) + ( \incrementaPC|Add0~94\ ))
-- \incrementaPC|Add0~98\ = CARRY(( \PC|DOUT\(27) ) + ( GND ) + ( \incrementaPC|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(27),
	cin => \incrementaPC|Add0~94\,
	sumout => \incrementaPC|Add0~97_sumout\,
	cout => \incrementaPC|Add0~98\);

-- Location: FF_X34_Y1_N43
\PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(27));

-- Location: MLABCELL_X34_Y1_N45
\incrementaPC|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~101_sumout\ = SUM(( \PC|DOUT\(28) ) + ( GND ) + ( \incrementaPC|Add0~98\ ))
-- \incrementaPC|Add0~102\ = CARRY(( \PC|DOUT\(28) ) + ( GND ) + ( \incrementaPC|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(28),
	cin => \incrementaPC|Add0~98\,
	sumout => \incrementaPC|Add0~101_sumout\,
	cout => \incrementaPC|Add0~102\);

-- Location: FF_X34_Y1_N47
\PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(28));

-- Location: MLABCELL_X34_Y1_N48
\incrementaPC|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~105_sumout\ = SUM(( \PC|DOUT\(29) ) + ( GND ) + ( \incrementaPC|Add0~102\ ))
-- \incrementaPC|Add0~106\ = CARRY(( \PC|DOUT\(29) ) + ( GND ) + ( \incrementaPC|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(29),
	cin => \incrementaPC|Add0~102\,
	sumout => \incrementaPC|Add0~105_sumout\,
	cout => \incrementaPC|Add0~106\);

-- Location: FF_X34_Y1_N50
\PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(29));

-- Location: MLABCELL_X34_Y1_N51
\incrementaPC|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~109_sumout\ = SUM(( \PC|DOUT\(30) ) + ( GND ) + ( \incrementaPC|Add0~106\ ))
-- \incrementaPC|Add0~110\ = CARRY(( \PC|DOUT\(30) ) + ( GND ) + ( \incrementaPC|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(30),
	cin => \incrementaPC|Add0~106\,
	sumout => \incrementaPC|Add0~109_sumout\,
	cout => \incrementaPC|Add0~110\);

-- Location: FF_X34_Y1_N52
\PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~109_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(30));

-- Location: MLABCELL_X34_Y1_N54
\incrementaPC|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~113_sumout\ = SUM(( \PC|DOUT\(31) ) + ( GND ) + ( \incrementaPC|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(31),
	cin => \incrementaPC|Add0~110\,
	sumout => \incrementaPC|Add0~113_sumout\);

-- Location: FF_X34_Y1_N56
\PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(31));

-- Location: MLABCELL_X34_Y2_N57
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\PC|DOUT\(4) & ( !\PC|DOUT\(6) & ( (!\PC|DOUT[5]~DUPLICATE_q\ & (!\PC|DOUT[7]~DUPLICATE_q\ & !\PC|DOUT[3]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~0_combout\);

-- Location: MLABCELL_X34_Y2_N30
\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( !\PC|DOUT\(4) & ( !\PC|DOUT\(6) & ( (\PC|DOUT\(2) & (!\PC|DOUT[7]~DUPLICATE_q\ & (!\PC|DOUT[5]~DUPLICATE_q\ & !\PC|DOUT[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~1_combout\);

-- Location: LABCELL_X19_Y2_N12
\ULA|Add1~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~130_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ULA|Add1~130_cout\);

-- Location: LABCELL_X19_Y2_N15
\ULA|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~1_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \ROM|memROM~1_combout\) ) + ( VCC ) + ( \ULA|Add1~130_cout\ ))
-- \ULA|Add1~2\ = CARRY(( (\ROM|memROM~0_combout\ & \ROM|memROM~1_combout\) ) + ( VCC ) + ( \ULA|Add1~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add1~130_cout\,
	sumout => \ULA|Add1~1_sumout\,
	cout => \ULA|Add1~2\);

-- Location: LABCELL_X20_Y2_N27
\ULA|saida[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~2_combout\ = ( \ROM|memROM~0_combout\ & ( (\ULA|Add1~1_sumout\ & \PC|DOUT\(2)) ) ) # ( !\ROM|memROM~0_combout\ & ( \ULA|Add1~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ALT_INV_Add1~1_sumout\,
	datac => \PC|ALT_INV_DOUT\(2),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ULA|saida[0]~2_combout\);

-- Location: MLABCELL_X34_Y2_N48
\bancoRegs|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|registrador~1062_combout\ = ( \PC|DOUT\(4) & ( \PC|DOUT\(6) ) ) # ( !\PC|DOUT\(4) & ( \PC|DOUT\(6) ) ) # ( \PC|DOUT\(4) & ( !\PC|DOUT\(6) ) ) # ( !\PC|DOUT\(4) & ( !\PC|DOUT\(6) & ( (((\PC|DOUT[3]~DUPLICATE_q\) # (\PC|DOUT[5]~DUPLICATE_q\)) # 
-- (\PC|DOUT[7]~DUPLICATE_q\)) # (\PC|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \bancoRegs|registrador~1062_combout\);

-- Location: LABCELL_X19_Y2_N18
\ULA|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~5_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \bancoRegs|registrador~1062_combout\) ) + ( !\ROM|memROM~0_combout\ ) + ( \ULA|Add1~2\ ))
-- \ULA|Add1~6\ = CARRY(( (\ROM|memROM~0_combout\ & \bancoRegs|registrador~1062_combout\) ) + ( !\ROM|memROM~0_combout\ ) + ( \ULA|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \bancoRegs|ALT_INV_registrador~1062_combout\,
	cin => \ULA|Add1~2\,
	sumout => \ULA|Add1~5_sumout\,
	cout => \ULA|Add1~6\);

-- Location: LABCELL_X17_Y2_N0
\ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~1_sumout\ = SUM(( (\bancoRegs|registrador~1062_combout\ & \ROM|memROM~0_combout\) ) + ( \ROM|memROM~0_combout\ ) + ( !VCC ))
-- \ULA|Add0~2\ = CARRY(( (\bancoRegs|registrador~1062_combout\ & \ROM|memROM~0_combout\) ) + ( \ROM|memROM~0_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bancoRegs|ALT_INV_registrador~1062_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	cin => GND,
	sumout => \ULA|Add0~1_sumout\,
	cout => \ULA|Add0~2\);

-- Location: MLABCELL_X18_Y2_N36
\ULA|saida[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[1]~3_combout\ = ( \ULA|Add0~1_sumout\ & ( ((\ROM|memROM~0_combout\ & !\PC|DOUT\(2))) # (\ULA|Add1~5_sumout\) ) ) # ( !\ULA|Add0~1_sumout\ & ( (\ULA|Add1~5_sumout\ & ((!\ROM|memROM~0_combout\) # (\PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001111000010100000111101011111000011110101111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ULA|ALT_INV_Add1~5_sumout\,
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \ULA|ALT_INV_Add0~1_sumout\,
	combout => \ULA|saida[1]~3_combout\);

-- Location: LABCELL_X17_Y2_N3
\ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~5_sumout\ = SUM(( GND ) + ( GND ) + ( \ULA|Add0~2\ ))
-- \ULA|Add0~6\ = CARRY(( GND ) + ( GND ) + ( \ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~2\,
	sumout => \ULA|Add0~5_sumout\,
	cout => \ULA|Add0~6\);

-- Location: LABCELL_X19_Y2_N21
\ULA|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~9_sumout\ = SUM(( GND ) + ( VCC ) + ( \ULA|Add1~6\ ))
-- \ULA|Add1~10\ = CARRY(( GND ) + ( VCC ) + ( \ULA|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add1~6\,
	sumout => \ULA|Add1~9_sumout\,
	cout => \ULA|Add1~10\);

-- Location: MLABCELL_X18_Y2_N42
\ULA|saida[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[2]~4_combout\ = ( \ROM|memROM~0_combout\ & ( (!\PC|DOUT\(2) & (\ULA|Add0~5_sumout\)) # (\PC|DOUT\(2) & ((\ULA|Add1~9_sumout\))) ) ) # ( !\ROM|memROM~0_combout\ & ( \ULA|Add1~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ULA|ALT_INV_Add0~5_sumout\,
	datac => \ULA|ALT_INV_Add1~9_sumout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ULA|saida[2]~4_combout\);

-- Location: LABCELL_X17_Y2_N6
\ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~9_sumout\ = SUM(( (\bancoRegs|registrador~1062_combout\ & \ROM|memROM~0_combout\) ) + ( \ROM|memROM~0_combout\ ) + ( \ULA|Add0~6\ ))
-- \ULA|Add0~10\ = CARRY(( (\bancoRegs|registrador~1062_combout\ & \ROM|memROM~0_combout\) ) + ( \ROM|memROM~0_combout\ ) + ( \ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bancoRegs|ALT_INV_registrador~1062_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	cin => \ULA|Add0~6\,
	sumout => \ULA|Add0~9_sumout\,
	cout => \ULA|Add0~10\);

-- Location: LABCELL_X19_Y2_N24
\ULA|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~13_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \bancoRegs|registrador~1062_combout\) ) + ( !\ROM|memROM~0_combout\ ) + ( \ULA|Add1~10\ ))
-- \ULA|Add1~14\ = CARRY(( (\ROM|memROM~0_combout\ & \bancoRegs|registrador~1062_combout\) ) + ( !\ROM|memROM~0_combout\ ) + ( \ULA|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \bancoRegs|ALT_INV_registrador~1062_combout\,
	cin => \ULA|Add1~10\,
	sumout => \ULA|Add1~13_sumout\,
	cout => \ULA|Add1~14\);

-- Location: MLABCELL_X18_Y2_N12
\ULA|saida[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[3]~5_combout\ = ( \ULA|Add1~13_sumout\ & ( (!\ROM|memROM~0_combout\) # ((\PC|DOUT\(2)) # (\ULA|Add0~9_sumout\)) ) ) # ( !\ULA|Add1~13_sumout\ & ( (\ROM|memROM~0_combout\ & (\ULA|Add0~9_sumout\ & !\PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ULA|ALT_INV_Add0~9_sumout\,
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \ULA|ALT_INV_Add1~13_sumout\,
	combout => \ULA|saida[3]~5_combout\);

-- Location: LABCELL_X17_Y2_N9
\ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~13_sumout\ = SUM(( GND ) + ( GND ) + ( \ULA|Add0~10\ ))
-- \ULA|Add0~14\ = CARRY(( GND ) + ( GND ) + ( \ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~10\,
	sumout => \ULA|Add0~13_sumout\,
	cout => \ULA|Add0~14\);

-- Location: LABCELL_X19_Y2_N27
\ULA|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~17_sumout\ = SUM(( GND ) + ( VCC ) + ( \ULA|Add1~14\ ))
-- \ULA|Add1~18\ = CARRY(( GND ) + ( VCC ) + ( \ULA|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add1~14\,
	sumout => \ULA|Add1~17_sumout\,
	cout => \ULA|Add1~18\);

-- Location: MLABCELL_X18_Y2_N45
\ULA|saida[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[4]~6_combout\ = ( \ROM|memROM~0_combout\ & ( (!\PC|DOUT\(2) & (\ULA|Add0~13_sumout\)) # (\PC|DOUT\(2) & ((\ULA|Add1~17_sumout\))) ) ) # ( !\ROM|memROM~0_combout\ & ( \ULA|Add1~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datac => \ULA|ALT_INV_Add0~13_sumout\,
	datad => \ULA|ALT_INV_Add1~17_sumout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ULA|saida[4]~6_combout\);

-- Location: LABCELL_X19_Y2_N30
\ULA|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~21_sumout\ = SUM(( GND ) + ( VCC ) + ( \ULA|Add1~18\ ))
-- \ULA|Add1~22\ = CARRY(( GND ) + ( VCC ) + ( \ULA|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add1~18\,
	sumout => \ULA|Add1~21_sumout\,
	cout => \ULA|Add1~22\);

-- Location: LABCELL_X17_Y2_N12
\ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~17_sumout\ = SUM(( GND ) + ( GND ) + ( \ULA|Add0~14\ ))
-- \ULA|Add0~18\ = CARRY(( GND ) + ( GND ) + ( \ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~14\,
	sumout => \ULA|Add0~17_sumout\,
	cout => \ULA|Add0~18\);

-- Location: MLABCELL_X18_Y2_N30
\ULA|saida[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[5]~7_combout\ = ( \ULA|Add0~17_sumout\ & ( \ROM|memROM~0_combout\ & ( (!\PC|DOUT\(2)) # (\ULA|Add1~21_sumout\) ) ) ) # ( !\ULA|Add0~17_sumout\ & ( \ROM|memROM~0_combout\ & ( (\PC|DOUT\(2) & \ULA|Add1~21_sumout\) ) ) ) # ( \ULA|Add0~17_sumout\ & 
-- ( !\ROM|memROM~0_combout\ & ( \ULA|Add1~21_sumout\ ) ) ) # ( !\ULA|Add0~17_sumout\ & ( !\ROM|memROM~0_combout\ & ( \ULA|Add1~21_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datac => \ULA|ALT_INV_Add1~21_sumout\,
	datae => \ULA|ALT_INV_Add0~17_sumout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ULA|saida[5]~7_combout\);

-- Location: LABCELL_X17_Y2_N15
\ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~21_sumout\ = SUM(( GND ) + ( GND ) + ( \ULA|Add0~18\ ))
-- \ULA|Add0~22\ = CARRY(( GND ) + ( GND ) + ( \ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~18\,
	sumout => \ULA|Add0~21_sumout\,
	cout => \ULA|Add0~22\);

-- Location: LABCELL_X19_Y2_N33
\ULA|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~25_sumout\ = SUM(( GND ) + ( VCC ) + ( \ULA|Add1~22\ ))
-- \ULA|Add1~26\ = CARRY(( GND ) + ( VCC ) + ( \ULA|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add1~22\,
	sumout => \ULA|Add1~25_sumout\,
	cout => \ULA|Add1~26\);

-- Location: MLABCELL_X18_Y2_N51
\ULA|saida[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[6]~8_combout\ = ( \ULA|Add1~25_sumout\ & ( (!\ROM|memROM~0_combout\) # ((\PC|DOUT\(2)) # (\ULA|Add0~21_sumout\)) ) ) # ( !\ULA|Add1~25_sumout\ & ( (\ROM|memROM~0_combout\ & (\ULA|Add0~21_sumout\ & !\PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ULA|ALT_INV_Add0~21_sumout\,
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \ULA|ALT_INV_Add1~25_sumout\,
	combout => \ULA|saida[6]~8_combout\);

-- Location: LABCELL_X19_Y2_N36
\ULA|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~29_sumout\ = SUM(( GND ) + ( VCC ) + ( \ULA|Add1~26\ ))
-- \ULA|Add1~30\ = CARRY(( GND ) + ( VCC ) + ( \ULA|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add1~26\,
	sumout => \ULA|Add1~29_sumout\,
	cout => \ULA|Add1~30\);

-- Location: LABCELL_X17_Y2_N18
\ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~25_sumout\ = SUM(( GND ) + ( GND ) + ( \ULA|Add0~22\ ))
-- \ULA|Add0~26\ = CARRY(( GND ) + ( GND ) + ( \ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~22\,
	sumout => \ULA|Add0~25_sumout\,
	cout => \ULA|Add0~26\);

-- Location: MLABCELL_X18_Y2_N15
\ULA|saida[7]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[7]~9_combout\ = ( \ULA|Add0~25_sumout\ & ( ((\ROM|memROM~0_combout\ & !\PC|DOUT\(2))) # (\ULA|Add1~29_sumout\) ) ) # ( !\ULA|Add0~25_sumout\ & ( (\ULA|Add1~29_sumout\ & ((!\ROM|memROM~0_combout\) # (\PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001111000010100000111101011111000011110101111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ULA|ALT_INV_Add1~29_sumout\,
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \ULA|ALT_INV_Add0~25_sumout\,
	combout => \ULA|saida[7]~9_combout\);

-- Location: LABCELL_X17_Y2_N21
\ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~29_sumout\ = SUM(( GND ) + ( GND ) + ( \ULA|Add0~26\ ))
-- \ULA|Add0~30\ = CARRY(( GND ) + ( GND ) + ( \ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~26\,
	sumout => \ULA|Add0~29_sumout\,
	cout => \ULA|Add0~30\);

-- Location: LABCELL_X19_Y2_N39
\ULA|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~33_sumout\ = SUM(( GND ) + ( VCC ) + ( \ULA|Add1~30\ ))
-- \ULA|Add1~34\ = CARRY(( GND ) + ( VCC ) + ( \ULA|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add1~30\,
	sumout => \ULA|Add1~33_sumout\,
	cout => \ULA|Add1~34\);

-- Location: MLABCELL_X18_Y2_N48
\ULA|saida[8]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[8]~10_combout\ = ( \ULA|Add1~33_sumout\ & ( (!\ROM|memROM~0_combout\) # ((\PC|DOUT\(2)) # (\ULA|Add0~29_sumout\)) ) ) # ( !\ULA|Add1~33_sumout\ & ( (\ROM|memROM~0_combout\ & (\ULA|Add0~29_sumout\ & !\PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ULA|ALT_INV_Add0~29_sumout\,
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \ULA|ALT_INV_Add1~33_sumout\,
	combout => \ULA|saida[8]~10_combout\);

-- Location: LABCELL_X19_Y2_N42
\ULA|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~37_sumout\ = SUM(( GND ) + ( VCC ) + ( \ULA|Add1~34\ ))
-- \ULA|Add1~38\ = CARRY(( GND ) + ( VCC ) + ( \ULA|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add1~34\,
	sumout => \ULA|Add1~37_sumout\,
	cout => \ULA|Add1~38\);

-- Location: LABCELL_X17_Y2_N24
\ULA|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~33_sumout\ = SUM(( GND ) + ( GND ) + ( \ULA|Add0~30\ ))
-- \ULA|Add0~34\ = CARRY(( GND ) + ( GND ) + ( \ULA|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~30\,
	sumout => \ULA|Add0~33_sumout\,
	cout => \ULA|Add0~34\);

-- Location: MLABCELL_X18_Y2_N39
\ULA|saida[9]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[9]~11_combout\ = ( \ULA|Add0~33_sumout\ & ( ((\ROM|memROM~0_combout\ & !\PC|DOUT\(2))) # (\ULA|Add1~37_sumout\) ) ) # ( !\ULA|Add0~33_sumout\ & ( (\ULA|Add1~37_sumout\ & ((!\ROM|memROM~0_combout\) # (\PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001111000010100000111101011111000011110101111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ULA|ALT_INV_Add1~37_sumout\,
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \ULA|ALT_INV_Add0~33_sumout\,
	combout => \ULA|saida[9]~11_combout\);

-- Location: LABCELL_X19_Y2_N45
\ULA|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~41_sumout\ = SUM(( GND ) + ( VCC ) + ( \ULA|Add1~38\ ))
-- \ULA|Add1~42\ = CARRY(( GND ) + ( VCC ) + ( \ULA|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add1~38\,
	sumout => \ULA|Add1~41_sumout\,
	cout => \ULA|Add1~42\);

-- Location: LABCELL_X17_Y2_N27
\ULA|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~37_sumout\ = SUM(( GND ) + ( GND ) + ( \ULA|Add0~34\ ))
-- \ULA|Add0~38\ = CARRY(( GND ) + ( GND ) + ( \ULA|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~34\,
	sumout => \ULA|Add0~37_sumout\,
	cout => \ULA|Add0~38\);

-- Location: MLABCELL_X18_Y2_N21
\ULA|saida[10]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[10]~12_combout\ = ( \ULA|Add0~37_sumout\ & ( \ROM|memROM~0_combout\ & ( (!\PC|DOUT\(2)) # (\ULA|Add1~41_sumout\) ) ) ) # ( !\ULA|Add0~37_sumout\ & ( \ROM|memROM~0_combout\ & ( (\ULA|Add1~41_sumout\ & \PC|DOUT\(2)) ) ) ) # ( \ULA|Add0~37_sumout\ 
-- & ( !\ROM|memROM~0_combout\ & ( \ULA|Add1~41_sumout\ ) ) ) # ( !\ULA|Add0~37_sumout\ & ( !\ROM|memROM~0_combout\ & ( \ULA|Add1~41_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add1~41_sumout\,
	datad => \PC|ALT_INV_DOUT\(2),
	datae => \ULA|ALT_INV_Add0~37_sumout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ULA|saida[10]~12_combout\);

-- Location: LABCELL_X19_Y2_N48
\ULA|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~45_sumout\ = SUM(( GND ) + ( VCC ) + ( \ULA|Add1~42\ ))
-- \ULA|Add1~46\ = CARRY(( GND ) + ( VCC ) + ( \ULA|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add1~42\,
	sumout => \ULA|Add1~45_sumout\,
	cout => \ULA|Add1~46\);

-- Location: LABCELL_X17_Y2_N30
\ULA|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~41_sumout\ = SUM(( GND ) + ( GND ) + ( \ULA|Add0~38\ ))
-- \ULA|Add0~42\ = CARRY(( GND ) + ( GND ) + ( \ULA|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~38\,
	sumout => \ULA|Add0~41_sumout\,
	cout => \ULA|Add0~42\);

-- Location: LABCELL_X19_Y2_N3
\ULA|saida[11]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[11]~13_combout\ = ( \ULA|Add0~41_sumout\ & ( ((\ROM|memROM~0_combout\ & !\PC|DOUT\(2))) # (\ULA|Add1~45_sumout\) ) ) # ( !\ULA|Add0~41_sumout\ & ( (\ULA|Add1~45_sumout\ & ((!\ROM|memROM~0_combout\) # (\PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001011000010110000101101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \ULA|ALT_INV_Add1~45_sumout\,
	dataf => \ULA|ALT_INV_Add0~41_sumout\,
	combout => \ULA|saida[11]~13_combout\);

-- Location: LABCELL_X17_Y2_N33
\ULA|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~45_sumout\ = SUM(( GND ) + ( GND ) + ( \ULA|Add0~42\ ))
-- \ULA|Add0~46\ = CARRY(( GND ) + ( GND ) + ( \ULA|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~42\,
	sumout => \ULA|Add0~45_sumout\,
	cout => \ULA|Add0~46\);

-- Location: LABCELL_X19_Y2_N51
\ULA|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~49_sumout\ = SUM(( GND ) + ( VCC ) + ( \ULA|Add1~46\ ))
-- \ULA|Add1~50\ = CARRY(( GND ) + ( VCC ) + ( \ULA|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add1~46\,
	sumout => \ULA|Add1~49_sumout\,
	cout => \ULA|Add1~50\);

-- Location: LABCELL_X19_Y2_N6
\ULA|saida[12]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[12]~14_combout\ = ( \ULA|Add1~49_sumout\ & ( (!\ROM|memROM~0_combout\) # ((\ULA|Add0~45_sumout\) # (\PC|DOUT\(2))) ) ) # ( !\ULA|Add1~49_sumout\ & ( (\ROM|memROM~0_combout\ & (!\PC|DOUT\(2) & \ULA|Add0~45_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \ULA|ALT_INV_Add0~45_sumout\,
	dataf => \ULA|ALT_INV_Add1~49_sumout\,
	combout => \ULA|saida[12]~14_combout\);

-- Location: LABCELL_X17_Y2_N36
\ULA|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~49_sumout\ = SUM(( GND ) + ( GND ) + ( \ULA|Add0~46\ ))
-- \ULA|Add0~50\ = CARRY(( GND ) + ( GND ) + ( \ULA|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~46\,
	sumout => \ULA|Add0~49_sumout\,
	cout => \ULA|Add0~50\);

-- Location: LABCELL_X19_Y2_N54
\ULA|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~53_sumout\ = SUM(( GND ) + ( VCC ) + ( \ULA|Add1~50\ ))
-- \ULA|Add1~54\ = CARRY(( GND ) + ( VCC ) + ( \ULA|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add1~50\,
	sumout => \ULA|Add1~53_sumout\,
	cout => \ULA|Add1~54\);

-- Location: LABCELL_X19_Y2_N9
\ULA|saida[13]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[13]~15_combout\ = (!\ROM|memROM~0_combout\ & (((\ULA|Add1~53_sumout\)))) # (\ROM|memROM~0_combout\ & ((!\PC|DOUT\(2) & (\ULA|Add0~49_sumout\)) # (\PC|DOUT\(2) & ((\ULA|Add1~53_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010111111000001001011111100000100101111110000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \ULA|ALT_INV_Add0~49_sumout\,
	datad => \ULA|ALT_INV_Add1~53_sumout\,
	combout => \ULA|saida[13]~15_combout\);

-- Location: LABCELL_X17_Y2_N39
\ULA|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~53_sumout\ = SUM(( GND ) + ( GND ) + ( \ULA|Add0~50\ ))
-- \ULA|Add0~54\ = CARRY(( GND ) + ( GND ) + ( \ULA|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~50\,
	sumout => \ULA|Add0~53_sumout\,
	cout => \ULA|Add0~54\);

-- Location: LABCELL_X19_Y2_N57
\ULA|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~57_sumout\ = SUM(( GND ) + ( VCC ) + ( \ULA|Add1~54\ ))
-- \ULA|Add1~58\ = CARRY(( GND ) + ( VCC ) + ( \ULA|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add1~54\,
	sumout => \ULA|Add1~57_sumout\,
	cout => \ULA|Add1~58\);

-- Location: LABCELL_X19_Y2_N0
\ULA|saida[14]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[14]~16_combout\ = ( \ULA|Add1~57_sumout\ & ( (!\ROM|memROM~0_combout\) # ((\ULA|Add0~53_sumout\) # (\PC|DOUT\(2))) ) ) # ( !\ULA|Add1~57_sumout\ & ( (\ROM|memROM~0_combout\ & (!\PC|DOUT\(2) & \ULA|Add0~53_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \ULA|ALT_INV_Add0~53_sumout\,
	dataf => \ULA|ALT_INV_Add1~57_sumout\,
	combout => \ULA|saida[14]~16_combout\);

-- Location: LABCELL_X19_Y1_N0
\ULA|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~61_sumout\ = SUM(( GND ) + ( VCC ) + ( \ULA|Add1~58\ ))
-- \ULA|Add1~62\ = CARRY(( GND ) + ( VCC ) + ( \ULA|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add1~58\,
	sumout => \ULA|Add1~61_sumout\,
	cout => \ULA|Add1~62\);

-- Location: LABCELL_X17_Y2_N42
\ULA|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~57_sumout\ = SUM(( GND ) + ( GND ) + ( \ULA|Add0~54\ ))
-- \ULA|Add0~58\ = CARRY(( GND ) + ( GND ) + ( \ULA|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~54\,
	sumout => \ULA|Add0~57_sumout\,
	cout => \ULA|Add0~58\);

-- Location: MLABCELL_X18_Y2_N3
\ULA|saida[15]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[15]~17_combout\ = ( \ULA|Add0~57_sumout\ & ( \ROM|memROM~0_combout\ & ( (!\PC|DOUT\(2)) # (\ULA|Add1~61_sumout\) ) ) ) # ( !\ULA|Add0~57_sumout\ & ( \ROM|memROM~0_combout\ & ( (\PC|DOUT\(2) & \ULA|Add1~61_sumout\) ) ) ) # ( \ULA|Add0~57_sumout\ 
-- & ( !\ROM|memROM~0_combout\ & ( \ULA|Add1~61_sumout\ ) ) ) # ( !\ULA|Add0~57_sumout\ & ( !\ROM|memROM~0_combout\ & ( \ULA|Add1~61_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datac => \ULA|ALT_INV_Add1~61_sumout\,
	datae => \ULA|ALT_INV_Add0~57_sumout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ULA|saida[15]~17_combout\);

-- Location: LABCELL_X19_Y1_N3
\ULA|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~65_sumout\ = SUM(( GND ) + ( VCC ) + ( \ULA|Add1~62\ ))
-- \ULA|Add1~66\ = CARRY(( GND ) + ( VCC ) + ( \ULA|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add1~62\,
	sumout => \ULA|Add1~65_sumout\,
	cout => \ULA|Add1~66\);

-- Location: LABCELL_X17_Y2_N45
\ULA|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~61_sumout\ = SUM(( GND ) + ( GND ) + ( \ULA|Add0~58\ ))
-- \ULA|Add0~62\ = CARRY(( GND ) + ( GND ) + ( \ULA|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~58\,
	sumout => \ULA|Add0~61_sumout\,
	cout => \ULA|Add0~62\);

-- Location: MLABCELL_X18_Y2_N54
\ULA|saida[16]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[16]~18_combout\ = ( \ULA|Add0~61_sumout\ & ( ((\ROM|memROM~0_combout\ & !\PC|DOUT\(2))) # (\ULA|Add1~65_sumout\) ) ) # ( !\ULA|Add0~61_sumout\ & ( (\ULA|Add1~65_sumout\ & ((!\ROM|memROM~0_combout\) # (\PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101111000000001010111101010000111111110101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \ULA|ALT_INV_Add1~65_sumout\,
	dataf => \ULA|ALT_INV_Add0~61_sumout\,
	combout => \ULA|saida[16]~18_combout\);

-- Location: LABCELL_X17_Y2_N48
\ULA|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~65_sumout\ = SUM(( GND ) + ( GND ) + ( \ULA|Add0~62\ ))
-- \ULA|Add0~66\ = CARRY(( GND ) + ( GND ) + ( \ULA|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~62\,
	sumout => \ULA|Add0~65_sumout\,
	cout => \ULA|Add0~66\);

-- Location: LABCELL_X19_Y1_N6
\ULA|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~69_sumout\ = SUM(( GND ) + ( VCC ) + ( \ULA|Add1~66\ ))
-- \ULA|Add1~70\ = CARRY(( GND ) + ( VCC ) + ( \ULA|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add1~66\,
	sumout => \ULA|Add1~69_sumout\,
	cout => \ULA|Add1~70\);

-- Location: MLABCELL_X18_Y2_N57
\ULA|saida[17]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[17]~19_combout\ = ( \ULA|Add1~69_sumout\ & ( (!\ROM|memROM~0_combout\) # ((\PC|DOUT\(2)) # (\ULA|Add0~65_sumout\)) ) ) # ( !\ULA|Add1~69_sumout\ & ( (\ROM|memROM~0_combout\ & (\ULA|Add0~65_sumout\ & !\PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ULA|ALT_INV_Add0~65_sumout\,
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \ULA|ALT_INV_Add1~69_sumout\,
	combout => \ULA|saida[17]~19_combout\);

-- Location: LABCELL_X19_Y1_N9
\ULA|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~73_sumout\ = SUM(( GND ) + ( VCC ) + ( \ULA|Add1~70\ ))
-- \ULA|Add1~74\ = CARRY(( GND ) + ( VCC ) + ( \ULA|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add1~70\,
	sumout => \ULA|Add1~73_sumout\,
	cout => \ULA|Add1~74\);

-- Location: LABCELL_X17_Y2_N51
\ULA|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~69_sumout\ = SUM(( GND ) + ( GND ) + ( \ULA|Add0~66\ ))
-- \ULA|Add0~70\ = CARRY(( GND ) + ( GND ) + ( \ULA|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~66\,
	sumout => \ULA|Add0~69_sumout\,
	cout => \ULA|Add0~70\);

-- Location: MLABCELL_X18_Y2_N24
\ULA|saida[18]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[18]~20_combout\ = ( \ULA|Add0~69_sumout\ & ( ((\ROM|memROM~0_combout\ & !\PC|DOUT\(2))) # (\ULA|Add1~73_sumout\) ) ) # ( !\ULA|Add0~69_sumout\ & ( (\ULA|Add1~73_sumout\ & ((!\ROM|memROM~0_combout\) # (\PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101111000000001010111101010000111111110101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \ULA|ALT_INV_Add1~73_sumout\,
	dataf => \ULA|ALT_INV_Add0~69_sumout\,
	combout => \ULA|saida[18]~20_combout\);

-- Location: LABCELL_X19_Y1_N12
\ULA|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~77_sumout\ = SUM(( GND ) + ( VCC ) + ( \ULA|Add1~74\ ))
-- \ULA|Add1~78\ = CARRY(( GND ) + ( VCC ) + ( \ULA|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add1~74\,
	sumout => \ULA|Add1~77_sumout\,
	cout => \ULA|Add1~78\);

-- Location: LABCELL_X17_Y2_N54
\ULA|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~73_sumout\ = SUM(( GND ) + ( GND ) + ( \ULA|Add0~70\ ))
-- \ULA|Add0~74\ = CARRY(( GND ) + ( GND ) + ( \ULA|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~70\,
	sumout => \ULA|Add0~73_sumout\,
	cout => \ULA|Add0~74\);

-- Location: MLABCELL_X18_Y2_N27
\ULA|saida[19]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[19]~21_combout\ = ( \ULA|Add0~73_sumout\ & ( ((\ROM|memROM~0_combout\ & !\PC|DOUT\(2))) # (\ULA|Add1~77_sumout\) ) ) # ( !\ULA|Add0~73_sumout\ & ( (\ULA|Add1~77_sumout\ & ((!\ROM|memROM~0_combout\) # (\PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001111000010100000111101011111000011110101111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \ULA|ALT_INV_Add0~73_sumout\,
	combout => \ULA|saida[19]~21_combout\);

-- Location: LABCELL_X17_Y2_N57
\ULA|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~77_sumout\ = SUM(( GND ) + ( GND ) + ( \ULA|Add0~74\ ))
-- \ULA|Add0~78\ = CARRY(( GND ) + ( GND ) + ( \ULA|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~74\,
	sumout => \ULA|Add0~77_sumout\,
	cout => \ULA|Add0~78\);

-- Location: LABCELL_X19_Y1_N15
\ULA|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~81_sumout\ = SUM(( GND ) + ( VCC ) + ( \ULA|Add1~78\ ))
-- \ULA|Add1~82\ = CARRY(( GND ) + ( VCC ) + ( \ULA|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add1~78\,
	sumout => \ULA|Add1~81_sumout\,
	cout => \ULA|Add1~82\);

-- Location: MLABCELL_X18_Y1_N27
\ULA|saida[20]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[20]~22_combout\ = (!\PC|DOUT\(2) & ((!\ROM|memROM~0_combout\ & ((\ULA|Add1~81_sumout\))) # (\ROM|memROM~0_combout\ & (\ULA|Add0~77_sumout\)))) # (\PC|DOUT\(2) & (((\ULA|Add1~81_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011011111000000101101111100000010110111110000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ULA|ALT_INV_Add0~77_sumout\,
	datad => \ULA|ALT_INV_Add1~81_sumout\,
	combout => \ULA|saida[20]~22_combout\);

-- Location: LABCELL_X19_Y1_N18
\ULA|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~85_sumout\ = SUM(( GND ) + ( VCC ) + ( \ULA|Add1~82\ ))
-- \ULA|Add1~86\ = CARRY(( GND ) + ( VCC ) + ( \ULA|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add1~82\,
	sumout => \ULA|Add1~85_sumout\,
	cout => \ULA|Add1~86\);

-- Location: LABCELL_X17_Y1_N0
\ULA|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~81_sumout\ = SUM(( GND ) + ( GND ) + ( \ULA|Add0~78\ ))
-- \ULA|Add0~82\ = CARRY(( GND ) + ( GND ) + ( \ULA|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~78\,
	sumout => \ULA|Add0~81_sumout\,
	cout => \ULA|Add0~82\);

-- Location: MLABCELL_X18_Y1_N24
\ULA|saida[21]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[21]~23_combout\ = ( \ULA|Add0~81_sumout\ & ( ((!\PC|DOUT\(2) & \ROM|memROM~0_combout\)) # (\ULA|Add1~85_sumout\) ) ) # ( !\ULA|Add0~81_sumout\ & ( (\ULA|Add1~85_sumout\ & ((!\ROM|memROM~0_combout\) # (\PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110101000000001111010100001010111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ULA|ALT_INV_Add1~85_sumout\,
	dataf => \ULA|ALT_INV_Add0~81_sumout\,
	combout => \ULA|saida[21]~23_combout\);

-- Location: LABCELL_X17_Y1_N3
\ULA|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~85_sumout\ = SUM(( GND ) + ( GND ) + ( \ULA|Add0~82\ ))
-- \ULA|Add0~86\ = CARRY(( GND ) + ( GND ) + ( \ULA|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~82\,
	sumout => \ULA|Add0~85_sumout\,
	cout => \ULA|Add0~86\);

-- Location: LABCELL_X19_Y1_N21
\ULA|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~89_sumout\ = SUM(( GND ) + ( VCC ) + ( \ULA|Add1~86\ ))
-- \ULA|Add1~90\ = CARRY(( GND ) + ( VCC ) + ( \ULA|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add1~86\,
	sumout => \ULA|Add1~89_sumout\,
	cout => \ULA|Add1~90\);

-- Location: MLABCELL_X18_Y1_N42
\ULA|saida[22]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[22]~24_combout\ = ( \ULA|Add1~89_sumout\ & ( (!\ROM|memROM~0_combout\) # ((\PC|DOUT\(2)) # (\ULA|Add0~85_sumout\)) ) ) # ( !\ULA|Add1~89_sumout\ & ( (\ROM|memROM~0_combout\ & (\ULA|Add0~85_sumout\ & !\PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000101111111011111100010000000100001011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ULA|ALT_INV_Add0~85_sumout\,
	datac => \PC|ALT_INV_DOUT\(2),
	datae => \ULA|ALT_INV_Add1~89_sumout\,
	combout => \ULA|saida[22]~24_combout\);

-- Location: LABCELL_X19_Y1_N24
\ULA|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~93_sumout\ = SUM(( GND ) + ( VCC ) + ( \ULA|Add1~90\ ))
-- \ULA|Add1~94\ = CARRY(( GND ) + ( VCC ) + ( \ULA|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add1~90\,
	sumout => \ULA|Add1~93_sumout\,
	cout => \ULA|Add1~94\);

-- Location: LABCELL_X17_Y1_N6
\ULA|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~89_sumout\ = SUM(( GND ) + ( GND ) + ( \ULA|Add0~86\ ))
-- \ULA|Add0~90\ = CARRY(( GND ) + ( GND ) + ( \ULA|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~86\,
	sumout => \ULA|Add0~89_sumout\,
	cout => \ULA|Add0~90\);

-- Location: MLABCELL_X18_Y1_N0
\ULA|saida[23]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[23]~25_combout\ = ( \PC|DOUT\(2) & ( \ULA|Add1~93_sumout\ ) ) # ( !\PC|DOUT\(2) & ( (!\ROM|memROM~0_combout\ & (\ULA|Add1~93_sumout\)) # (\ROM|memROM~0_combout\ & ((\ULA|Add0~89_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001100110011001100100111001001110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ULA|ALT_INV_Add1~93_sumout\,
	datac => \ULA|ALT_INV_Add0~89_sumout\,
	datae => \PC|ALT_INV_DOUT\(2),
	combout => \ULA|saida[23]~25_combout\);

-- Location: LABCELL_X17_Y1_N9
\ULA|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~93_sumout\ = SUM(( GND ) + ( GND ) + ( \ULA|Add0~90\ ))
-- \ULA|Add0~94\ = CARRY(( GND ) + ( GND ) + ( \ULA|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~90\,
	sumout => \ULA|Add0~93_sumout\,
	cout => \ULA|Add0~94\);

-- Location: LABCELL_X19_Y1_N27
\ULA|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~97_sumout\ = SUM(( GND ) + ( VCC ) + ( \ULA|Add1~94\ ))
-- \ULA|Add1~98\ = CARRY(( GND ) + ( VCC ) + ( \ULA|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add1~94\,
	sumout => \ULA|Add1~97_sumout\,
	cout => \ULA|Add1~98\);

-- Location: LABCELL_X19_Y1_N57
\ULA|saida[24]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[24]~26_combout\ = (!\ROM|memROM~0_combout\ & (((\ULA|Add1~97_sumout\)))) # (\ROM|memROM~0_combout\ & ((!\PC|DOUT\(2) & (\ULA|Add0~93_sumout\)) # (\PC|DOUT\(2) & ((\ULA|Add1~97_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010111111000001001011111100000100101111110000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \ULA|ALT_INV_Add0~93_sumout\,
	datad => \ULA|ALT_INV_Add1~97_sumout\,
	combout => \ULA|saida[24]~26_combout\);

-- Location: LABCELL_X17_Y1_N12
\ULA|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~97_sumout\ = SUM(( GND ) + ( GND ) + ( \ULA|Add0~94\ ))
-- \ULA|Add0~98\ = CARRY(( GND ) + ( GND ) + ( \ULA|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~94\,
	sumout => \ULA|Add0~97_sumout\,
	cout => \ULA|Add0~98\);

-- Location: LABCELL_X19_Y1_N30
\ULA|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~101_sumout\ = SUM(( GND ) + ( VCC ) + ( \ULA|Add1~98\ ))
-- \ULA|Add1~102\ = CARRY(( GND ) + ( VCC ) + ( \ULA|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add1~98\,
	sumout => \ULA|Add1~101_sumout\,
	cout => \ULA|Add1~102\);

-- Location: MLABCELL_X18_Y1_N33
\ULA|saida[25]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[25]~27_combout\ = ( \ROM|memROM~0_combout\ & ( \ULA|Add1~101_sumout\ & ( (\ULA|Add0~97_sumout\) # (\PC|DOUT\(2)) ) ) ) # ( !\ROM|memROM~0_combout\ & ( \ULA|Add1~101_sumout\ ) ) # ( \ROM|memROM~0_combout\ & ( !\ULA|Add1~101_sumout\ & ( 
-- (!\PC|DOUT\(2) & \ULA|Add0~97_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101011111111111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datad => \ULA|ALT_INV_Add0~97_sumout\,
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ULA|ALT_INV_Add1~101_sumout\,
	combout => \ULA|saida[25]~27_combout\);

-- Location: LABCELL_X19_Y1_N33
\ULA|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~105_sumout\ = SUM(( GND ) + ( VCC ) + ( \ULA|Add1~102\ ))
-- \ULA|Add1~106\ = CARRY(( GND ) + ( VCC ) + ( \ULA|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add1~102\,
	sumout => \ULA|Add1~105_sumout\,
	cout => \ULA|Add1~106\);

-- Location: LABCELL_X17_Y1_N15
\ULA|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~101_sumout\ = SUM(( GND ) + ( GND ) + ( \ULA|Add0~98\ ))
-- \ULA|Add0~102\ = CARRY(( GND ) + ( GND ) + ( \ULA|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~98\,
	sumout => \ULA|Add0~101_sumout\,
	cout => \ULA|Add0~102\);

-- Location: MLABCELL_X18_Y1_N51
\ULA|saida[26]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[26]~28_combout\ = ( \ROM|memROM~0_combout\ & ( (!\PC|DOUT\(2) & ((\ULA|Add0~101_sumout\))) # (\PC|DOUT\(2) & (\ULA|Add1~105_sumout\)) ) ) # ( !\ROM|memROM~0_combout\ & ( \ULA|Add1~105_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110101010101010101010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add1~105_sumout\,
	datac => \ULA|ALT_INV_Add0~101_sumout\,
	datad => \PC|ALT_INV_DOUT\(2),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ULA|saida[26]~28_combout\);

-- Location: LABCELL_X17_Y1_N18
\ULA|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~105_sumout\ = SUM(( GND ) + ( GND ) + ( \ULA|Add0~102\ ))
-- \ULA|Add0~106\ = CARRY(( GND ) + ( GND ) + ( \ULA|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~102\,
	sumout => \ULA|Add0~105_sumout\,
	cout => \ULA|Add0~106\);

-- Location: LABCELL_X19_Y1_N36
\ULA|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~109_sumout\ = SUM(( GND ) + ( VCC ) + ( \ULA|Add1~106\ ))
-- \ULA|Add1~110\ = CARRY(( GND ) + ( VCC ) + ( \ULA|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add1~106\,
	sumout => \ULA|Add1~109_sumout\,
	cout => \ULA|Add1~110\);

-- Location: MLABCELL_X18_Y1_N18
\ULA|saida[27]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[27]~29_combout\ = ( \ULA|Add1~109_sumout\ & ( ((!\ROM|memROM~0_combout\) # (\ULA|Add0~105_sumout\)) # (\PC|DOUT\(2)) ) ) # ( !\ULA|Add1~109_sumout\ & ( (!\PC|DOUT\(2) & (\ULA|Add0~105_sumout\ & \ROM|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010111101111111011100000010000000101111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ULA|ALT_INV_Add0~105_sumout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ULA|ALT_INV_Add1~109_sumout\,
	combout => \ULA|saida[27]~29_combout\);

-- Location: LABCELL_X17_Y1_N21
\ULA|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~109_sumout\ = SUM(( GND ) + ( GND ) + ( \ULA|Add0~106\ ))
-- \ULA|Add0~110\ = CARRY(( GND ) + ( GND ) + ( \ULA|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~106\,
	sumout => \ULA|Add0~109_sumout\,
	cout => \ULA|Add0~110\);

-- Location: LABCELL_X19_Y1_N39
\ULA|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~113_sumout\ = SUM(( GND ) + ( VCC ) + ( \ULA|Add1~110\ ))
-- \ULA|Add1~114\ = CARRY(( GND ) + ( VCC ) + ( \ULA|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add1~110\,
	sumout => \ULA|Add1~113_sumout\,
	cout => \ULA|Add1~114\);

-- Location: MLABCELL_X18_Y1_N15
\ULA|saida[28]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[28]~30_combout\ = ( \ROM|memROM~0_combout\ & ( \ULA|Add1~113_sumout\ & ( (\PC|DOUT\(2)) # (\ULA|Add0~109_sumout\) ) ) ) # ( !\ROM|memROM~0_combout\ & ( \ULA|Add1~113_sumout\ ) ) # ( \ROM|memROM~0_combout\ & ( !\ULA|Add1~113_sumout\ & ( 
-- (\ULA|Add0~109_sumout\ & !\PC|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000011111111111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~109_sumout\,
	datad => \PC|ALT_INV_DOUT\(2),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ULA|ALT_INV_Add1~113_sumout\,
	combout => \ULA|saida[28]~30_combout\);

-- Location: LABCELL_X17_Y1_N24
\ULA|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~113_sumout\ = SUM(( GND ) + ( GND ) + ( \ULA|Add0~110\ ))
-- \ULA|Add0~114\ = CARRY(( GND ) + ( GND ) + ( \ULA|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~110\,
	sumout => \ULA|Add0~113_sumout\,
	cout => \ULA|Add0~114\);

-- Location: LABCELL_X19_Y1_N42
\ULA|Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~117_sumout\ = SUM(( GND ) + ( VCC ) + ( \ULA|Add1~114\ ))
-- \ULA|Add1~118\ = CARRY(( GND ) + ( VCC ) + ( \ULA|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add1~114\,
	sumout => \ULA|Add1~117_sumout\,
	cout => \ULA|Add1~118\);

-- Location: MLABCELL_X18_Y1_N54
\ULA|saida[29]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[29]~31_combout\ = ( \ULA|Add1~117_sumout\ & ( (!\ROM|memROM~0_combout\) # ((\PC|DOUT\(2)) # (\ULA|Add0~113_sumout\)) ) ) # ( !\ULA|Add1~117_sumout\ & ( (\ROM|memROM~0_combout\ & (\ULA|Add0~113_sumout\ & !\PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000101111111011111100010000000100001011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ULA|ALT_INV_Add0~113_sumout\,
	datac => \PC|ALT_INV_DOUT\(2),
	datae => \ULA|ALT_INV_Add1~117_sumout\,
	combout => \ULA|saida[29]~31_combout\);

-- Location: LABCELL_X17_Y1_N27
\ULA|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~117_sumout\ = SUM(( GND ) + ( GND ) + ( \ULA|Add0~114\ ))
-- \ULA|Add0~118\ = CARRY(( GND ) + ( GND ) + ( \ULA|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~114\,
	sumout => \ULA|Add0~117_sumout\,
	cout => \ULA|Add0~118\);

-- Location: LABCELL_X19_Y1_N45
\ULA|Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~121_sumout\ = SUM(( GND ) + ( VCC ) + ( \ULA|Add1~118\ ))
-- \ULA|Add1~122\ = CARRY(( GND ) + ( VCC ) + ( \ULA|Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add1~118\,
	sumout => \ULA|Add1~121_sumout\,
	cout => \ULA|Add1~122\);

-- Location: MLABCELL_X18_Y1_N39
\ULA|saida[30]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[30]~32_combout\ = ( \ROM|memROM~0_combout\ & ( \ULA|Add1~121_sumout\ & ( (\PC|DOUT\(2)) # (\ULA|Add0~117_sumout\) ) ) ) # ( !\ROM|memROM~0_combout\ & ( \ULA|Add1~121_sumout\ ) ) # ( \ROM|memROM~0_combout\ & ( !\ULA|Add1~121_sumout\ & ( 
-- (\ULA|Add0~117_sumout\ & !\PC|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000011111111111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~117_sumout\,
	datad => \PC|ALT_INV_DOUT\(2),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ULA|ALT_INV_Add1~121_sumout\,
	combout => \ULA|saida[30]~32_combout\);

-- Location: LABCELL_X17_Y1_N30
\ULA|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~121_sumout\ = SUM(( GND ) + ( GND ) + ( \ULA|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~118\,
	sumout => \ULA|Add0~121_sumout\);

-- Location: LABCELL_X19_Y1_N48
\ULA|Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~125_sumout\ = SUM(( GND ) + ( VCC ) + ( \ULA|Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add1~122\,
	sumout => \ULA|Add1~125_sumout\);

-- Location: LABCELL_X19_Y1_N54
\ULA|saida[31]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[31]~33_combout\ = ( \ULA|Add1~125_sumout\ & ( (!\ROM|memROM~0_combout\) # ((\ULA|Add0~121_sumout\) # (\PC|DOUT\(2))) ) ) # ( !\ULA|Add1~125_sumout\ & ( (\ROM|memROM~0_combout\ & (!\PC|DOUT\(2) & \ULA|Add0~121_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \ULA|ALT_INV_Add0~121_sumout\,
	dataf => \ULA|ALT_INV_Add1~125_sumout\,
	combout => \ULA|saida[31]~33_combout\);

-- Location: MLABCELL_X18_Y2_N6
\bancoRegs|saidaA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|saidaA[0]~0_combout\ = ( \ROM|memROM~0_combout\ & ( \PC|DOUT\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(2),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \bancoRegs|saidaA[0]~0_combout\);

-- Location: MLABCELL_X18_Y2_N9
\bancoRegs|saidaA[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|saidaA[1]~1_combout\ = ( \ROM|memROM~0_combout\ & ( !\PC|DOUT\(2) ) ) # ( !\ROM|memROM~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \bancoRegs|saidaA[1]~1_combout\);

-- Location: IOIBUF_X22_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X16_Y15_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


