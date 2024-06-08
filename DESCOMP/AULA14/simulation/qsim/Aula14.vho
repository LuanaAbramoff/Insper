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

-- DATE "05/07/2024 17:26:30"

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

ENTITY 	Aula14 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(31 DOWNTO 0);
	BranchAdress : OUT std_logic_vector(31 DOWNTO 0);
	selMuxBEQ : OUT std_logic
	);
END Aula14;

ARCHITECTURE structure OF Aula14 IS
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
SIGNAL ww_BranchAdress : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_selMuxBEQ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \PC_OUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[8]~output_o\ : std_logic;
SIGNAL \PC_OUT[9]~output_o\ : std_logic;
SIGNAL \PC_OUT[10]~output_o\ : std_logic;
SIGNAL \PC_OUT[11]~output_o\ : std_logic;
SIGNAL \PC_OUT[12]~output_o\ : std_logic;
SIGNAL \PC_OUT[13]~output_o\ : std_logic;
SIGNAL \PC_OUT[14]~output_o\ : std_logic;
SIGNAL \PC_OUT[15]~output_o\ : std_logic;
SIGNAL \PC_OUT[16]~output_o\ : std_logic;
SIGNAL \PC_OUT[17]~output_o\ : std_logic;
SIGNAL \PC_OUT[18]~output_o\ : std_logic;
SIGNAL \PC_OUT[19]~output_o\ : std_logic;
SIGNAL \PC_OUT[20]~output_o\ : std_logic;
SIGNAL \PC_OUT[21]~output_o\ : std_logic;
SIGNAL \PC_OUT[22]~output_o\ : std_logic;
SIGNAL \PC_OUT[23]~output_o\ : std_logic;
SIGNAL \PC_OUT[24]~output_o\ : std_logic;
SIGNAL \PC_OUT[25]~output_o\ : std_logic;
SIGNAL \PC_OUT[26]~output_o\ : std_logic;
SIGNAL \PC_OUT[27]~output_o\ : std_logic;
SIGNAL \PC_OUT[28]~output_o\ : std_logic;
SIGNAL \PC_OUT[29]~output_o\ : std_logic;
SIGNAL \PC_OUT[30]~output_o\ : std_logic;
SIGNAL \PC_OUT[31]~output_o\ : std_logic;
SIGNAL \BranchAdress[0]~output_o\ : std_logic;
SIGNAL \BranchAdress[1]~output_o\ : std_logic;
SIGNAL \BranchAdress[2]~output_o\ : std_logic;
SIGNAL \BranchAdress[3]~output_o\ : std_logic;
SIGNAL \BranchAdress[4]~output_o\ : std_logic;
SIGNAL \BranchAdress[5]~output_o\ : std_logic;
SIGNAL \BranchAdress[6]~output_o\ : std_logic;
SIGNAL \BranchAdress[7]~output_o\ : std_logic;
SIGNAL \BranchAdress[8]~output_o\ : std_logic;
SIGNAL \BranchAdress[9]~output_o\ : std_logic;
SIGNAL \BranchAdress[10]~output_o\ : std_logic;
SIGNAL \BranchAdress[11]~output_o\ : std_logic;
SIGNAL \BranchAdress[12]~output_o\ : std_logic;
SIGNAL \BranchAdress[13]~output_o\ : std_logic;
SIGNAL \BranchAdress[14]~output_o\ : std_logic;
SIGNAL \BranchAdress[15]~output_o\ : std_logic;
SIGNAL \BranchAdress[16]~output_o\ : std_logic;
SIGNAL \BranchAdress[17]~output_o\ : std_logic;
SIGNAL \BranchAdress[18]~output_o\ : std_logic;
SIGNAL \BranchAdress[19]~output_o\ : std_logic;
SIGNAL \BranchAdress[20]~output_o\ : std_logic;
SIGNAL \BranchAdress[21]~output_o\ : std_logic;
SIGNAL \BranchAdress[22]~output_o\ : std_logic;
SIGNAL \BranchAdress[23]~output_o\ : std_logic;
SIGNAL \BranchAdress[24]~output_o\ : std_logic;
SIGNAL \BranchAdress[25]~output_o\ : std_logic;
SIGNAL \BranchAdress[26]~output_o\ : std_logic;
SIGNAL \BranchAdress[27]~output_o\ : std_logic;
SIGNAL \BranchAdress[28]~output_o\ : std_logic;
SIGNAL \BranchAdress[29]~output_o\ : std_logic;
SIGNAL \BranchAdress[30]~output_o\ : std_logic;
SIGNAL \BranchAdress[31]~output_o\ : std_logic;
SIGNAL \selMuxBEQ~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~2\ : std_logic;
SIGNAL \somadorBrAdd|Add0~6\ : std_logic;
SIGNAL \somadorBrAdd|Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~10\ : std_logic;
SIGNAL \somadorBrAdd|Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~14\ : std_logic;
SIGNAL \somadorBrAdd|Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~18\ : std_logic;
SIGNAL \somadorBrAdd|Add0~21_sumout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ULA|Add0~22\ : std_logic;
SIGNAL \ULA|Add0~1_sumout\ : std_logic;
SIGNAL \ULA|Add0~2\ : std_logic;
SIGNAL \ULA|Add0~5_sumout\ : std_logic;
SIGNAL \ULA|Add0~6\ : std_logic;
SIGNAL \ULA|Add0~9_sumout\ : std_logic;
SIGNAL \ULA|Add0~10\ : std_logic;
SIGNAL \ULA|Add0~13_sumout\ : std_logic;
SIGNAL \ULA|Add0~14\ : std_logic;
SIGNAL \ULA|Add0~17_sumout\ : std_logic;
SIGNAL \ULA|Add0~21_sumout\ : std_logic;
SIGNAL \opANDBEQ|saida~0_combout\ : std_logic;
SIGNAL \opANDBEQ|saida~combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~5_sumout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~1_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~22\ : std_logic;
SIGNAL \somadorBrAdd|Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~26\ : std_logic;
SIGNAL \somadorBrAdd|Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~30\ : std_logic;
SIGNAL \incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~30\ : std_logic;
SIGNAL \somadorBrAdd|Add0~33_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~34\ : std_logic;
SIGNAL \incrementaPC|Add0~37_sumout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~34\ : std_logic;
SIGNAL \somadorBrAdd|Add0~37_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~38\ : std_logic;
SIGNAL \incrementaPC|Add0~41_sumout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~38\ : std_logic;
SIGNAL \somadorBrAdd|Add0~41_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~42\ : std_logic;
SIGNAL \incrementaPC|Add0~45_sumout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~42\ : std_logic;
SIGNAL \somadorBrAdd|Add0~45_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~46\ : std_logic;
SIGNAL \incrementaPC|Add0~49_sumout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~46\ : std_logic;
SIGNAL \somadorBrAdd|Add0~49_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~50\ : std_logic;
SIGNAL \incrementaPC|Add0~53_sumout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~50\ : std_logic;
SIGNAL \somadorBrAdd|Add0~53_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~54\ : std_logic;
SIGNAL \incrementaPC|Add0~57_sumout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~54\ : std_logic;
SIGNAL \somadorBrAdd|Add0~57_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~58\ : std_logic;
SIGNAL \incrementaPC|Add0~61_sumout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~58\ : std_logic;
SIGNAL \somadorBrAdd|Add0~61_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~62\ : std_logic;
SIGNAL \incrementaPC|Add0~65_sumout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~62\ : std_logic;
SIGNAL \somadorBrAdd|Add0~65_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~66\ : std_logic;
SIGNAL \incrementaPC|Add0~69_sumout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~66\ : std_logic;
SIGNAL \somadorBrAdd|Add0~69_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~70\ : std_logic;
SIGNAL \incrementaPC|Add0~73_sumout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~70\ : std_logic;
SIGNAL \somadorBrAdd|Add0~73_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~74\ : std_logic;
SIGNAL \incrementaPC|Add0~77_sumout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~74\ : std_logic;
SIGNAL \somadorBrAdd|Add0~77_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~78\ : std_logic;
SIGNAL \incrementaPC|Add0~81_sumout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~78\ : std_logic;
SIGNAL \somadorBrAdd|Add0~81_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~82\ : std_logic;
SIGNAL \incrementaPC|Add0~85_sumout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~82\ : std_logic;
SIGNAL \somadorBrAdd|Add0~85_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~86\ : std_logic;
SIGNAL \incrementaPC|Add0~89_sumout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~86\ : std_logic;
SIGNAL \somadorBrAdd|Add0~89_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~90\ : std_logic;
SIGNAL \incrementaPC|Add0~93_sumout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~90\ : std_logic;
SIGNAL \somadorBrAdd|Add0~93_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~94\ : std_logic;
SIGNAL \incrementaPC|Add0~97_sumout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~94\ : std_logic;
SIGNAL \somadorBrAdd|Add0~97_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~98\ : std_logic;
SIGNAL \incrementaPC|Add0~101_sumout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~98\ : std_logic;
SIGNAL \somadorBrAdd|Add0~101_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~102\ : std_logic;
SIGNAL \incrementaPC|Add0~105_sumout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~102\ : std_logic;
SIGNAL \somadorBrAdd|Add0~105_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~106\ : std_logic;
SIGNAL \incrementaPC|Add0~109_sumout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~106\ : std_logic;
SIGNAL \somadorBrAdd|Add0~109_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~110\ : std_logic;
SIGNAL \incrementaPC|Add0~113_sumout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~110\ : std_logic;
SIGNAL \somadorBrAdd|Add0~113_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~114\ : std_logic;
SIGNAL \incrementaPC|Add0~117_sumout\ : std_logic;
SIGNAL \somadorBrAdd|Add0~114\ : std_logic;
SIGNAL \somadorBrAdd|Add0~117_sumout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \incrementaPC|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(31 DOWNTO 2);
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \opANDBEQ|ALT_INV_saida~combout\ : std_logic;
SIGNAL \opANDBEQ|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~73_sumout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
BranchAdress <= ww_BranchAdress;
selMuxBEQ <= ww_selMuxBEQ;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\incrementaPC|ALT_INV_Add0~69_sumout\ <= NOT \incrementaPC|Add0~69_sumout\;
\incrementaPC|ALT_INV_Add0~65_sumout\ <= NOT \incrementaPC|Add0~65_sumout\;
\incrementaPC|ALT_INV_Add0~61_sumout\ <= NOT \incrementaPC|Add0~61_sumout\;
\incrementaPC|ALT_INV_Add0~57_sumout\ <= NOT \incrementaPC|Add0~57_sumout\;
\incrementaPC|ALT_INV_Add0~53_sumout\ <= NOT \incrementaPC|Add0~53_sumout\;
\incrementaPC|ALT_INV_Add0~49_sumout\ <= NOT \incrementaPC|Add0~49_sumout\;
\incrementaPC|ALT_INV_Add0~45_sumout\ <= NOT \incrementaPC|Add0~45_sumout\;
\incrementaPC|ALT_INV_Add0~41_sumout\ <= NOT \incrementaPC|Add0~41_sumout\;
\incrementaPC|ALT_INV_Add0~37_sumout\ <= NOT \incrementaPC|Add0~37_sumout\;
\incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \incrementaPC|Add0~33_sumout\;
\incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \incrementaPC|Add0~29_sumout\;
\incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \incrementaPC|Add0~25_sumout\;
\incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \incrementaPC|Add0~21_sumout\;
\incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \incrementaPC|Add0~17_sumout\;
\incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \incrementaPC|Add0~13_sumout\;
\incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \incrementaPC|Add0~9_sumout\;
\incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \incrementaPC|Add0~5_sumout\;
\incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \incrementaPC|Add0~1_sumout\;
\ULA|ALT_INV_Add0~21_sumout\ <= NOT \ULA|Add0~21_sumout\;
\ULA|ALT_INV_Add0~17_sumout\ <= NOT \ULA|Add0~17_sumout\;
\ULA|ALT_INV_Add0~13_sumout\ <= NOT \ULA|Add0~13_sumout\;
\ULA|ALT_INV_Add0~9_sumout\ <= NOT \ULA|Add0~9_sumout\;
\ULA|ALT_INV_Add0~5_sumout\ <= NOT \ULA|Add0~5_sumout\;
\ULA|ALT_INV_Add0~1_sumout\ <= NOT \ULA|Add0~1_sumout\;
\PC|ALT_INV_DOUT\(31) <= NOT \PC|DOUT\(31);
\PC|ALT_INV_DOUT\(30) <= NOT \PC|DOUT\(30);
\PC|ALT_INV_DOUT\(29) <= NOT \PC|DOUT\(29);
\PC|ALT_INV_DOUT\(28) <= NOT \PC|DOUT\(28);
\PC|ALT_INV_DOUT\(27) <= NOT \PC|DOUT\(27);
\PC|ALT_INV_DOUT\(26) <= NOT \PC|DOUT\(26);
\PC|ALT_INV_DOUT\(25) <= NOT \PC|DOUT\(25);
\PC|ALT_INV_DOUT\(24) <= NOT \PC|DOUT\(24);
\PC|ALT_INV_DOUT\(23) <= NOT \PC|DOUT\(23);
\PC|ALT_INV_DOUT\(22) <= NOT \PC|DOUT\(22);
\PC|ALT_INV_DOUT\(21) <= NOT \PC|DOUT\(21);
\PC|ALT_INV_DOUT\(20) <= NOT \PC|DOUT\(20);
\PC|ALT_INV_DOUT\(19) <= NOT \PC|DOUT\(19);
\PC|ALT_INV_DOUT\(18) <= NOT \PC|DOUT\(18);
\PC|ALT_INV_DOUT\(17) <= NOT \PC|DOUT\(17);
\PC|ALT_INV_DOUT\(16) <= NOT \PC|DOUT\(16);
\PC|ALT_INV_DOUT\(15) <= NOT \PC|DOUT\(15);
\PC|ALT_INV_DOUT\(14) <= NOT \PC|DOUT\(14);
\PC|ALT_INV_DOUT\(13) <= NOT \PC|DOUT\(13);
\PC|ALT_INV_DOUT\(12) <= NOT \PC|DOUT\(12);
\PC|ALT_INV_DOUT\(11) <= NOT \PC|DOUT\(11);
\PC|ALT_INV_DOUT\(10) <= NOT \PC|DOUT\(10);
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\opANDBEQ|ALT_INV_saida~combout\ <= NOT \opANDBEQ|saida~combout\;
\opANDBEQ|ALT_INV_saida~0_combout\ <= NOT \opANDBEQ|saida~0_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\incrementaPC|ALT_INV_Add0~117_sumout\ <= NOT \incrementaPC|Add0~117_sumout\;
\incrementaPC|ALT_INV_Add0~113_sumout\ <= NOT \incrementaPC|Add0~113_sumout\;
\incrementaPC|ALT_INV_Add0~109_sumout\ <= NOT \incrementaPC|Add0~109_sumout\;
\incrementaPC|ALT_INV_Add0~105_sumout\ <= NOT \incrementaPC|Add0~105_sumout\;
\incrementaPC|ALT_INV_Add0~101_sumout\ <= NOT \incrementaPC|Add0~101_sumout\;
\incrementaPC|ALT_INV_Add0~97_sumout\ <= NOT \incrementaPC|Add0~97_sumout\;
\incrementaPC|ALT_INV_Add0~93_sumout\ <= NOT \incrementaPC|Add0~93_sumout\;
\incrementaPC|ALT_INV_Add0~89_sumout\ <= NOT \incrementaPC|Add0~89_sumout\;
\incrementaPC|ALT_INV_Add0~85_sumout\ <= NOT \incrementaPC|Add0~85_sumout\;
\incrementaPC|ALT_INV_Add0~81_sumout\ <= NOT \incrementaPC|Add0~81_sumout\;
\incrementaPC|ALT_INV_Add0~77_sumout\ <= NOT \incrementaPC|Add0~77_sumout\;
\incrementaPC|ALT_INV_Add0~73_sumout\ <= NOT \incrementaPC|Add0~73_sumout\;
\PC|ALT_INV_DOUT\(9) <= NOT \PC|DOUT\(9);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);

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
	o => \PC_OUT[0]~output_o\);

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
	o => \PC_OUT[1]~output_o\);

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
	o => \PC_OUT[2]~output_o\);

\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => \PC_OUT[3]~output_o\);

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
	o => \PC_OUT[4]~output_o\);

\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => \PC_OUT[5]~output_o\);

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
	o => \PC_OUT[6]~output_o\);

\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => \PC_OUT[7]~output_o\);

\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => \PC_OUT[8]~output_o\);

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
	o => \PC_OUT[9]~output_o\);

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
	o => \PC_OUT[10]~output_o\);

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
	o => \PC_OUT[11]~output_o\);

\PC_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(12),
	devoe => ww_devoe,
	o => \PC_OUT[12]~output_o\);

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
	o => \PC_OUT[13]~output_o\);

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
	o => \PC_OUT[14]~output_o\);

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
	o => \PC_OUT[15]~output_o\);

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
	o => \PC_OUT[16]~output_o\);

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
	o => \PC_OUT[17]~output_o\);

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
	o => \PC_OUT[18]~output_o\);

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
	o => \PC_OUT[19]~output_o\);

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
	o => \PC_OUT[20]~output_o\);

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
	o => \PC_OUT[21]~output_o\);

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
	o => \PC_OUT[22]~output_o\);

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
	o => \PC_OUT[23]~output_o\);

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
	o => \PC_OUT[24]~output_o\);

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
	o => \PC_OUT[25]~output_o\);

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
	o => \PC_OUT[26]~output_o\);

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
	o => \PC_OUT[27]~output_o\);

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
	o => \PC_OUT[28]~output_o\);

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
	o => \PC_OUT[29]~output_o\);

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
	o => \PC_OUT[30]~output_o\);

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
	o => \PC_OUT[31]~output_o\);

\BranchAdress[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BranchAdress[0]~output_o\);

\BranchAdress[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BranchAdress[1]~output_o\);

\BranchAdress[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~1_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[2]~output_o\);

\BranchAdress[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~5_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[3]~output_o\);

\BranchAdress[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~9_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[4]~output_o\);

\BranchAdress[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~13_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[5]~output_o\);

\BranchAdress[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~17_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[6]~output_o\);

\BranchAdress[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~21_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[7]~output_o\);

\BranchAdress[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~25_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[8]~output_o\);

\BranchAdress[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~29_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[9]~output_o\);

\BranchAdress[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~33_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[10]~output_o\);

\BranchAdress[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~37_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[11]~output_o\);

\BranchAdress[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~41_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[12]~output_o\);

\BranchAdress[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~45_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[13]~output_o\);

\BranchAdress[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~49_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[14]~output_o\);

\BranchAdress[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~53_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[15]~output_o\);

\BranchAdress[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~57_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[16]~output_o\);

\BranchAdress[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~61_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[17]~output_o\);

\BranchAdress[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~65_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[18]~output_o\);

\BranchAdress[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~69_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[19]~output_o\);

\BranchAdress[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~73_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[20]~output_o\);

\BranchAdress[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~77_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[21]~output_o\);

\BranchAdress[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~81_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[22]~output_o\);

\BranchAdress[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~85_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[23]~output_o\);

\BranchAdress[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~89_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[24]~output_o\);

\BranchAdress[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~93_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[25]~output_o\);

\BranchAdress[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~97_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[26]~output_o\);

\BranchAdress[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~101_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[27]~output_o\);

\BranchAdress[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~105_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[28]~output_o\);

\BranchAdress[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~109_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[29]~output_o\);

\BranchAdress[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~113_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[30]~output_o\);

\BranchAdress[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somadorBrAdd|Add0~117_sumout\,
	devoe => ww_devoe,
	o => \BranchAdress[31]~output_o\);

\selMuxBEQ~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opANDBEQ|saida~combout\,
	devoe => ww_devoe,
	o => \selMuxBEQ~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT\(2) ) + ( VCC ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT\(2) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

\somadorBrAdd|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~1_sumout\ = SUM(( \ROM|memROM~1_combout\ ) + ( \incrementaPC|Add0~1_sumout\ ) + ( !VCC ))
-- \somadorBrAdd|Add0~2\ = CARRY(( \ROM|memROM~1_combout\ ) + ( \incrementaPC|Add0~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~1_sumout\,
	cin => GND,
	sumout => \somadorBrAdd|Add0~1_sumout\,
	cout => \somadorBrAdd|Add0~2\);

\somadorBrAdd|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~5_sumout\ = SUM(( \ROM|memROM~2_combout\ ) + ( \incrementaPC|Add0~5_sumout\ ) + ( \somadorBrAdd|Add0~2\ ))
-- \somadorBrAdd|Add0~6\ = CARRY(( \ROM|memROM~2_combout\ ) + ( \incrementaPC|Add0~5_sumout\ ) + ( \somadorBrAdd|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~5_sumout\,
	cin => \somadorBrAdd|Add0~2\,
	sumout => \somadorBrAdd|Add0~5_sumout\,
	cout => \somadorBrAdd|Add0~6\);

\somadorBrAdd|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~9_sumout\ = SUM(( GND ) + ( \incrementaPC|Add0~9_sumout\ ) + ( \somadorBrAdd|Add0~6\ ))
-- \somadorBrAdd|Add0~10\ = CARRY(( GND ) + ( \incrementaPC|Add0~9_sumout\ ) + ( \somadorBrAdd|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~9_sumout\,
	cin => \somadorBrAdd|Add0~6\,
	sumout => \somadorBrAdd|Add0~9_sumout\,
	cout => \somadorBrAdd|Add0~10\);

\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

\somadorBrAdd|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~13_sumout\ = SUM(( GND ) + ( \incrementaPC|Add0~13_sumout\ ) + ( \somadorBrAdd|Add0~10\ ))
-- \somadorBrAdd|Add0~14\ = CARRY(( GND ) + ( \incrementaPC|Add0~13_sumout\ ) + ( \somadorBrAdd|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~13_sumout\,
	cin => \somadorBrAdd|Add0~10\,
	sumout => \somadorBrAdd|Add0~13_sumout\,
	cout => \somadorBrAdd|Add0~14\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~13_sumout\,
	asdata => \incrementaPC|Add0~13_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

\somadorBrAdd|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~17_sumout\ = SUM(( GND ) + ( \incrementaPC|Add0~17_sumout\ ) + ( \somadorBrAdd|Add0~14\ ))
-- \somadorBrAdd|Add0~18\ = CARRY(( GND ) + ( \incrementaPC|Add0~17_sumout\ ) + ( \somadorBrAdd|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~17_sumout\,
	cin => \somadorBrAdd|Add0~14\,
	sumout => \somadorBrAdd|Add0~17_sumout\,
	cout => \somadorBrAdd|Add0~18\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~17_sumout\,
	asdata => \incrementaPC|Add0~17_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

\somadorBrAdd|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~21_sumout\ = SUM(( GND ) + ( \incrementaPC|Add0~21_sumout\ ) + ( \somadorBrAdd|Add0~18\ ))
-- \somadorBrAdd|Add0~22\ = CARRY(( GND ) + ( \incrementaPC|Add0~21_sumout\ ) + ( \somadorBrAdd|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~21_sumout\,
	cin => \somadorBrAdd|Add0~18\,
	sumout => \somadorBrAdd|Add0~21_sumout\,
	cout => \somadorBrAdd|Add0~22\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~21_sumout\,
	asdata => \incrementaPC|Add0~21_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\PC|DOUT\(7) & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(3) & (!\PC|DOUT\(5) & !\PC|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(6),
	datae => \PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~0_combout\);

\ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~21_sumout\ = SUM(( (!\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\) ) + ( VCC ) + ( !VCC ))
-- \ULA|Add0~22\ = CARRY(( (!\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	cin => GND,
	sumout => \ULA|Add0~21_sumout\,
	cout => \ULA|Add0~22\);

\ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~1_sumout\ = SUM(( !\ROM|memROM~2_combout\ ) + ( GND ) + ( \ULA|Add0~22\ ))
-- \ULA|Add0~2\ = CARRY(( !\ROM|memROM~2_combout\ ) + ( GND ) + ( \ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~2_combout\,
	cin => \ULA|Add0~22\,
	sumout => \ULA|Add0~1_sumout\,
	cout => \ULA|Add0~2\);

\ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~5_sumout\ = SUM(( VCC ) + ( GND ) + ( \ULA|Add0~2\ ))
-- \ULA|Add0~6\ = CARRY(( VCC ) + ( GND ) + ( \ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~2\,
	sumout => \ULA|Add0~5_sumout\,
	cout => \ULA|Add0~6\);

\ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~9_sumout\ = SUM(( (!\ROM|memROM~0_combout\) # (!\ROM|memROM~2_combout\) ) + ( GND ) + ( \ULA|Add0~6\ ))
-- \ULA|Add0~10\ = CARRY(( (!\ROM|memROM~0_combout\) # (!\ROM|memROM~2_combout\) ) + ( GND ) + ( \ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	cin => \ULA|Add0~6\,
	sumout => \ULA|Add0~9_sumout\,
	cout => \ULA|Add0~10\);

\ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~13_sumout\ = SUM(( VCC ) + ( GND ) + ( \ULA|Add0~10\ ))
-- \ULA|Add0~14\ = CARRY(( VCC ) + ( GND ) + ( \ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~10\,
	sumout => \ULA|Add0~13_sumout\,
	cout => \ULA|Add0~14\);

\ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~17_sumout\ = SUM(( VCC ) + ( GND ) + ( \ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \ULA|Add0~14\,
	sumout => \ULA|Add0~17_sumout\);

\opANDBEQ|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opANDBEQ|saida~0_combout\ = (\ROM|memROM~0_combout\ & !\ULA|Add0~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ULA|ALT_INV_Add0~21_sumout\,
	combout => \opANDBEQ|saida~0_combout\);

\opANDBEQ|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \opANDBEQ|saida~combout\ = ( !\ULA|Add0~17_sumout\ & ( \opANDBEQ|saida~0_combout\ & ( (!\ULA|Add0~1_sumout\ & (!\ULA|Add0~5_sumout\ & (!\ULA|Add0~9_sumout\ & !\ULA|Add0~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \ULA|ALT_INV_Add0~5_sumout\,
	datac => \ULA|ALT_INV_Add0~9_sumout\,
	datad => \ULA|ALT_INV_Add0~13_sumout\,
	datae => \ULA|ALT_INV_Add0~17_sumout\,
	dataf => \opANDBEQ|ALT_INV_saida~0_combout\,
	combout => \opANDBEQ|saida~combout\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~9_sumout\,
	asdata => \incrementaPC|Add0~9_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( !\PC|DOUT\(6) & ( !\PC|DOUT\(7) & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(3) & (\PC|DOUT\(4) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~2_combout\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~5_sumout\,
	asdata => \incrementaPC|Add0~5_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( !\PC|DOUT\(6) & ( !\PC|DOUT\(7) & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~1_combout\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~1_sumout\,
	asdata => \incrementaPC|Add0~1_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

\somadorBrAdd|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~25_sumout\ = SUM(( GND ) + ( \incrementaPC|Add0~25_sumout\ ) + ( \somadorBrAdd|Add0~22\ ))
-- \somadorBrAdd|Add0~26\ = CARRY(( GND ) + ( \incrementaPC|Add0~25_sumout\ ) + ( \somadorBrAdd|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~25_sumout\,
	cin => \somadorBrAdd|Add0~22\,
	sumout => \somadorBrAdd|Add0~25_sumout\,
	cout => \somadorBrAdd|Add0~26\);

\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~25_sumout\,
	asdata => \incrementaPC|Add0~25_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT\(9) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))
-- \incrementaPC|Add0~30\ = CARRY(( \PC|DOUT\(9) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(9),
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~29_sumout\,
	cout => \incrementaPC|Add0~30\);

\somadorBrAdd|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~29_sumout\ = SUM(( GND ) + ( \incrementaPC|Add0~29_sumout\ ) + ( \somadorBrAdd|Add0~26\ ))
-- \somadorBrAdd|Add0~30\ = CARRY(( GND ) + ( \incrementaPC|Add0~29_sumout\ ) + ( \somadorBrAdd|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~29_sumout\,
	cin => \somadorBrAdd|Add0~26\,
	sumout => \somadorBrAdd|Add0~29_sumout\,
	cout => \somadorBrAdd|Add0~30\);

\PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~29_sumout\,
	asdata => \incrementaPC|Add0~29_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(9));

\incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~33_sumout\ = SUM(( \PC|DOUT\(10) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))
-- \incrementaPC|Add0~34\ = CARRY(( \PC|DOUT\(10) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(10),
	cin => \incrementaPC|Add0~30\,
	sumout => \incrementaPC|Add0~33_sumout\,
	cout => \incrementaPC|Add0~34\);

\somadorBrAdd|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~33_sumout\ = SUM(( GND ) + ( \incrementaPC|Add0~33_sumout\ ) + ( \somadorBrAdd|Add0~30\ ))
-- \somadorBrAdd|Add0~34\ = CARRY(( GND ) + ( \incrementaPC|Add0~33_sumout\ ) + ( \somadorBrAdd|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~33_sumout\,
	cin => \somadorBrAdd|Add0~30\,
	sumout => \somadorBrAdd|Add0~33_sumout\,
	cout => \somadorBrAdd|Add0~34\);

\PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~33_sumout\,
	asdata => \incrementaPC|Add0~33_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(10));

\incrementaPC|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~37_sumout\ = SUM(( \PC|DOUT\(11) ) + ( GND ) + ( \incrementaPC|Add0~34\ ))
-- \incrementaPC|Add0~38\ = CARRY(( \PC|DOUT\(11) ) + ( GND ) + ( \incrementaPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(11),
	cin => \incrementaPC|Add0~34\,
	sumout => \incrementaPC|Add0~37_sumout\,
	cout => \incrementaPC|Add0~38\);

\somadorBrAdd|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~37_sumout\ = SUM(( GND ) + ( \incrementaPC|Add0~37_sumout\ ) + ( \somadorBrAdd|Add0~34\ ))
-- \somadorBrAdd|Add0~38\ = CARRY(( GND ) + ( \incrementaPC|Add0~37_sumout\ ) + ( \somadorBrAdd|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~37_sumout\,
	cin => \somadorBrAdd|Add0~34\,
	sumout => \somadorBrAdd|Add0~37_sumout\,
	cout => \somadorBrAdd|Add0~38\);

\PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~37_sumout\,
	asdata => \incrementaPC|Add0~37_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(11));

\incrementaPC|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~41_sumout\ = SUM(( \PC|DOUT\(12) ) + ( GND ) + ( \incrementaPC|Add0~38\ ))
-- \incrementaPC|Add0~42\ = CARRY(( \PC|DOUT\(12) ) + ( GND ) + ( \incrementaPC|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(12),
	cin => \incrementaPC|Add0~38\,
	sumout => \incrementaPC|Add0~41_sumout\,
	cout => \incrementaPC|Add0~42\);

\somadorBrAdd|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~41_sumout\ = SUM(( GND ) + ( \incrementaPC|Add0~41_sumout\ ) + ( \somadorBrAdd|Add0~38\ ))
-- \somadorBrAdd|Add0~42\ = CARRY(( GND ) + ( \incrementaPC|Add0~41_sumout\ ) + ( \somadorBrAdd|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~41_sumout\,
	cin => \somadorBrAdd|Add0~38\,
	sumout => \somadorBrAdd|Add0~41_sumout\,
	cout => \somadorBrAdd|Add0~42\);

\PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~41_sumout\,
	asdata => \incrementaPC|Add0~41_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(12));

\incrementaPC|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~45_sumout\ = SUM(( \PC|DOUT\(13) ) + ( GND ) + ( \incrementaPC|Add0~42\ ))
-- \incrementaPC|Add0~46\ = CARRY(( \PC|DOUT\(13) ) + ( GND ) + ( \incrementaPC|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(13),
	cin => \incrementaPC|Add0~42\,
	sumout => \incrementaPC|Add0~45_sumout\,
	cout => \incrementaPC|Add0~46\);

\somadorBrAdd|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~45_sumout\ = SUM(( GND ) + ( \incrementaPC|Add0~45_sumout\ ) + ( \somadorBrAdd|Add0~42\ ))
-- \somadorBrAdd|Add0~46\ = CARRY(( GND ) + ( \incrementaPC|Add0~45_sumout\ ) + ( \somadorBrAdd|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~45_sumout\,
	cin => \somadorBrAdd|Add0~42\,
	sumout => \somadorBrAdd|Add0~45_sumout\,
	cout => \somadorBrAdd|Add0~46\);

\PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~45_sumout\,
	asdata => \incrementaPC|Add0~45_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(13));

\incrementaPC|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~49_sumout\ = SUM(( \PC|DOUT\(14) ) + ( GND ) + ( \incrementaPC|Add0~46\ ))
-- \incrementaPC|Add0~50\ = CARRY(( \PC|DOUT\(14) ) + ( GND ) + ( \incrementaPC|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(14),
	cin => \incrementaPC|Add0~46\,
	sumout => \incrementaPC|Add0~49_sumout\,
	cout => \incrementaPC|Add0~50\);

\somadorBrAdd|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~49_sumout\ = SUM(( GND ) + ( \incrementaPC|Add0~49_sumout\ ) + ( \somadorBrAdd|Add0~46\ ))
-- \somadorBrAdd|Add0~50\ = CARRY(( GND ) + ( \incrementaPC|Add0~49_sumout\ ) + ( \somadorBrAdd|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~49_sumout\,
	cin => \somadorBrAdd|Add0~46\,
	sumout => \somadorBrAdd|Add0~49_sumout\,
	cout => \somadorBrAdd|Add0~50\);

\PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~49_sumout\,
	asdata => \incrementaPC|Add0~49_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(14));

\incrementaPC|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~53_sumout\ = SUM(( \PC|DOUT\(15) ) + ( GND ) + ( \incrementaPC|Add0~50\ ))
-- \incrementaPC|Add0~54\ = CARRY(( \PC|DOUT\(15) ) + ( GND ) + ( \incrementaPC|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(15),
	cin => \incrementaPC|Add0~50\,
	sumout => \incrementaPC|Add0~53_sumout\,
	cout => \incrementaPC|Add0~54\);

\somadorBrAdd|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~53_sumout\ = SUM(( GND ) + ( \incrementaPC|Add0~53_sumout\ ) + ( \somadorBrAdd|Add0~50\ ))
-- \somadorBrAdd|Add0~54\ = CARRY(( GND ) + ( \incrementaPC|Add0~53_sumout\ ) + ( \somadorBrAdd|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~53_sumout\,
	cin => \somadorBrAdd|Add0~50\,
	sumout => \somadorBrAdd|Add0~53_sumout\,
	cout => \somadorBrAdd|Add0~54\);

\PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~53_sumout\,
	asdata => \incrementaPC|Add0~53_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(15));

\incrementaPC|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~57_sumout\ = SUM(( \PC|DOUT\(16) ) + ( GND ) + ( \incrementaPC|Add0~54\ ))
-- \incrementaPC|Add0~58\ = CARRY(( \PC|DOUT\(16) ) + ( GND ) + ( \incrementaPC|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(16),
	cin => \incrementaPC|Add0~54\,
	sumout => \incrementaPC|Add0~57_sumout\,
	cout => \incrementaPC|Add0~58\);

\somadorBrAdd|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~57_sumout\ = SUM(( GND ) + ( \incrementaPC|Add0~57_sumout\ ) + ( \somadorBrAdd|Add0~54\ ))
-- \somadorBrAdd|Add0~58\ = CARRY(( GND ) + ( \incrementaPC|Add0~57_sumout\ ) + ( \somadorBrAdd|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~57_sumout\,
	cin => \somadorBrAdd|Add0~54\,
	sumout => \somadorBrAdd|Add0~57_sumout\,
	cout => \somadorBrAdd|Add0~58\);

\PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~57_sumout\,
	asdata => \incrementaPC|Add0~57_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(16));

\incrementaPC|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~61_sumout\ = SUM(( \PC|DOUT\(17) ) + ( GND ) + ( \incrementaPC|Add0~58\ ))
-- \incrementaPC|Add0~62\ = CARRY(( \PC|DOUT\(17) ) + ( GND ) + ( \incrementaPC|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(17),
	cin => \incrementaPC|Add0~58\,
	sumout => \incrementaPC|Add0~61_sumout\,
	cout => \incrementaPC|Add0~62\);

\somadorBrAdd|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~61_sumout\ = SUM(( GND ) + ( \incrementaPC|Add0~61_sumout\ ) + ( \somadorBrAdd|Add0~58\ ))
-- \somadorBrAdd|Add0~62\ = CARRY(( GND ) + ( \incrementaPC|Add0~61_sumout\ ) + ( \somadorBrAdd|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~61_sumout\,
	cin => \somadorBrAdd|Add0~58\,
	sumout => \somadorBrAdd|Add0~61_sumout\,
	cout => \somadorBrAdd|Add0~62\);

\PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~61_sumout\,
	asdata => \incrementaPC|Add0~61_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(17));

\incrementaPC|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~65_sumout\ = SUM(( \PC|DOUT\(18) ) + ( GND ) + ( \incrementaPC|Add0~62\ ))
-- \incrementaPC|Add0~66\ = CARRY(( \PC|DOUT\(18) ) + ( GND ) + ( \incrementaPC|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(18),
	cin => \incrementaPC|Add0~62\,
	sumout => \incrementaPC|Add0~65_sumout\,
	cout => \incrementaPC|Add0~66\);

\somadorBrAdd|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~65_sumout\ = SUM(( GND ) + ( \incrementaPC|Add0~65_sumout\ ) + ( \somadorBrAdd|Add0~62\ ))
-- \somadorBrAdd|Add0~66\ = CARRY(( GND ) + ( \incrementaPC|Add0~65_sumout\ ) + ( \somadorBrAdd|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~65_sumout\,
	cin => \somadorBrAdd|Add0~62\,
	sumout => \somadorBrAdd|Add0~65_sumout\,
	cout => \somadorBrAdd|Add0~66\);

\PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~65_sumout\,
	asdata => \incrementaPC|Add0~65_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(18));

\incrementaPC|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~69_sumout\ = SUM(( \PC|DOUT\(19) ) + ( GND ) + ( \incrementaPC|Add0~66\ ))
-- \incrementaPC|Add0~70\ = CARRY(( \PC|DOUT\(19) ) + ( GND ) + ( \incrementaPC|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(19),
	cin => \incrementaPC|Add0~66\,
	sumout => \incrementaPC|Add0~69_sumout\,
	cout => \incrementaPC|Add0~70\);

\somadorBrAdd|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~69_sumout\ = SUM(( GND ) + ( \incrementaPC|Add0~69_sumout\ ) + ( \somadorBrAdd|Add0~66\ ))
-- \somadorBrAdd|Add0~70\ = CARRY(( GND ) + ( \incrementaPC|Add0~69_sumout\ ) + ( \somadorBrAdd|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~69_sumout\,
	cin => \somadorBrAdd|Add0~66\,
	sumout => \somadorBrAdd|Add0~69_sumout\,
	cout => \somadorBrAdd|Add0~70\);

\PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~69_sumout\,
	asdata => \incrementaPC|Add0~69_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(19));

\incrementaPC|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~73_sumout\ = SUM(( \PC|DOUT\(20) ) + ( GND ) + ( \incrementaPC|Add0~70\ ))
-- \incrementaPC|Add0~74\ = CARRY(( \PC|DOUT\(20) ) + ( GND ) + ( \incrementaPC|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(20),
	cin => \incrementaPC|Add0~70\,
	sumout => \incrementaPC|Add0~73_sumout\,
	cout => \incrementaPC|Add0~74\);

\somadorBrAdd|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~73_sumout\ = SUM(( GND ) + ( \incrementaPC|Add0~73_sumout\ ) + ( \somadorBrAdd|Add0~70\ ))
-- \somadorBrAdd|Add0~74\ = CARRY(( GND ) + ( \incrementaPC|Add0~73_sumout\ ) + ( \somadorBrAdd|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~73_sumout\,
	cin => \somadorBrAdd|Add0~70\,
	sumout => \somadorBrAdd|Add0~73_sumout\,
	cout => \somadorBrAdd|Add0~74\);

\PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~73_sumout\,
	asdata => \incrementaPC|Add0~73_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(20));

\incrementaPC|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~77_sumout\ = SUM(( \PC|DOUT\(21) ) + ( GND ) + ( \incrementaPC|Add0~74\ ))
-- \incrementaPC|Add0~78\ = CARRY(( \PC|DOUT\(21) ) + ( GND ) + ( \incrementaPC|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(21),
	cin => \incrementaPC|Add0~74\,
	sumout => \incrementaPC|Add0~77_sumout\,
	cout => \incrementaPC|Add0~78\);

\somadorBrAdd|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~77_sumout\ = SUM(( GND ) + ( \incrementaPC|Add0~77_sumout\ ) + ( \somadorBrAdd|Add0~74\ ))
-- \somadorBrAdd|Add0~78\ = CARRY(( GND ) + ( \incrementaPC|Add0~77_sumout\ ) + ( \somadorBrAdd|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~77_sumout\,
	cin => \somadorBrAdd|Add0~74\,
	sumout => \somadorBrAdd|Add0~77_sumout\,
	cout => \somadorBrAdd|Add0~78\);

\PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~77_sumout\,
	asdata => \incrementaPC|Add0~77_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(21));

\incrementaPC|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~81_sumout\ = SUM(( \PC|DOUT\(22) ) + ( GND ) + ( \incrementaPC|Add0~78\ ))
-- \incrementaPC|Add0~82\ = CARRY(( \PC|DOUT\(22) ) + ( GND ) + ( \incrementaPC|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(22),
	cin => \incrementaPC|Add0~78\,
	sumout => \incrementaPC|Add0~81_sumout\,
	cout => \incrementaPC|Add0~82\);

\somadorBrAdd|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~81_sumout\ = SUM(( GND ) + ( \incrementaPC|Add0~81_sumout\ ) + ( \somadorBrAdd|Add0~78\ ))
-- \somadorBrAdd|Add0~82\ = CARRY(( GND ) + ( \incrementaPC|Add0~81_sumout\ ) + ( \somadorBrAdd|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~81_sumout\,
	cin => \somadorBrAdd|Add0~78\,
	sumout => \somadorBrAdd|Add0~81_sumout\,
	cout => \somadorBrAdd|Add0~82\);

\PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~81_sumout\,
	asdata => \incrementaPC|Add0~81_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(22));

\incrementaPC|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~85_sumout\ = SUM(( \PC|DOUT\(23) ) + ( GND ) + ( \incrementaPC|Add0~82\ ))
-- \incrementaPC|Add0~86\ = CARRY(( \PC|DOUT\(23) ) + ( GND ) + ( \incrementaPC|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(23),
	cin => \incrementaPC|Add0~82\,
	sumout => \incrementaPC|Add0~85_sumout\,
	cout => \incrementaPC|Add0~86\);

\somadorBrAdd|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~85_sumout\ = SUM(( GND ) + ( \incrementaPC|Add0~85_sumout\ ) + ( \somadorBrAdd|Add0~82\ ))
-- \somadorBrAdd|Add0~86\ = CARRY(( GND ) + ( \incrementaPC|Add0~85_sumout\ ) + ( \somadorBrAdd|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~85_sumout\,
	cin => \somadorBrAdd|Add0~82\,
	sumout => \somadorBrAdd|Add0~85_sumout\,
	cout => \somadorBrAdd|Add0~86\);

\PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~85_sumout\,
	asdata => \incrementaPC|Add0~85_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(23));

\incrementaPC|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~89_sumout\ = SUM(( \PC|DOUT\(24) ) + ( GND ) + ( \incrementaPC|Add0~86\ ))
-- \incrementaPC|Add0~90\ = CARRY(( \PC|DOUT\(24) ) + ( GND ) + ( \incrementaPC|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(24),
	cin => \incrementaPC|Add0~86\,
	sumout => \incrementaPC|Add0~89_sumout\,
	cout => \incrementaPC|Add0~90\);

\somadorBrAdd|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~89_sumout\ = SUM(( GND ) + ( \incrementaPC|Add0~89_sumout\ ) + ( \somadorBrAdd|Add0~86\ ))
-- \somadorBrAdd|Add0~90\ = CARRY(( GND ) + ( \incrementaPC|Add0~89_sumout\ ) + ( \somadorBrAdd|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~89_sumout\,
	cin => \somadorBrAdd|Add0~86\,
	sumout => \somadorBrAdd|Add0~89_sumout\,
	cout => \somadorBrAdd|Add0~90\);

\PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~89_sumout\,
	asdata => \incrementaPC|Add0~89_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(24));

\incrementaPC|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~93_sumout\ = SUM(( \PC|DOUT\(25) ) + ( GND ) + ( \incrementaPC|Add0~90\ ))
-- \incrementaPC|Add0~94\ = CARRY(( \PC|DOUT\(25) ) + ( GND ) + ( \incrementaPC|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(25),
	cin => \incrementaPC|Add0~90\,
	sumout => \incrementaPC|Add0~93_sumout\,
	cout => \incrementaPC|Add0~94\);

\somadorBrAdd|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~93_sumout\ = SUM(( GND ) + ( \incrementaPC|Add0~93_sumout\ ) + ( \somadorBrAdd|Add0~90\ ))
-- \somadorBrAdd|Add0~94\ = CARRY(( GND ) + ( \incrementaPC|Add0~93_sumout\ ) + ( \somadorBrAdd|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~93_sumout\,
	cin => \somadorBrAdd|Add0~90\,
	sumout => \somadorBrAdd|Add0~93_sumout\,
	cout => \somadorBrAdd|Add0~94\);

\PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~93_sumout\,
	asdata => \incrementaPC|Add0~93_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(25));

\incrementaPC|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~97_sumout\ = SUM(( \PC|DOUT\(26) ) + ( GND ) + ( \incrementaPC|Add0~94\ ))
-- \incrementaPC|Add0~98\ = CARRY(( \PC|DOUT\(26) ) + ( GND ) + ( \incrementaPC|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(26),
	cin => \incrementaPC|Add0~94\,
	sumout => \incrementaPC|Add0~97_sumout\,
	cout => \incrementaPC|Add0~98\);

\somadorBrAdd|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~97_sumout\ = SUM(( GND ) + ( \incrementaPC|Add0~97_sumout\ ) + ( \somadorBrAdd|Add0~94\ ))
-- \somadorBrAdd|Add0~98\ = CARRY(( GND ) + ( \incrementaPC|Add0~97_sumout\ ) + ( \somadorBrAdd|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~97_sumout\,
	cin => \somadorBrAdd|Add0~94\,
	sumout => \somadorBrAdd|Add0~97_sumout\,
	cout => \somadorBrAdd|Add0~98\);

\PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~97_sumout\,
	asdata => \incrementaPC|Add0~97_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(26));

\incrementaPC|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~101_sumout\ = SUM(( \PC|DOUT\(27) ) + ( GND ) + ( \incrementaPC|Add0~98\ ))
-- \incrementaPC|Add0~102\ = CARRY(( \PC|DOUT\(27) ) + ( GND ) + ( \incrementaPC|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(27),
	cin => \incrementaPC|Add0~98\,
	sumout => \incrementaPC|Add0~101_sumout\,
	cout => \incrementaPC|Add0~102\);

\somadorBrAdd|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~101_sumout\ = SUM(( GND ) + ( \incrementaPC|Add0~101_sumout\ ) + ( \somadorBrAdd|Add0~98\ ))
-- \somadorBrAdd|Add0~102\ = CARRY(( GND ) + ( \incrementaPC|Add0~101_sumout\ ) + ( \somadorBrAdd|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~101_sumout\,
	cin => \somadorBrAdd|Add0~98\,
	sumout => \somadorBrAdd|Add0~101_sumout\,
	cout => \somadorBrAdd|Add0~102\);

\PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~101_sumout\,
	asdata => \incrementaPC|Add0~101_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(27));

\incrementaPC|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~105_sumout\ = SUM(( \PC|DOUT\(28) ) + ( GND ) + ( \incrementaPC|Add0~102\ ))
-- \incrementaPC|Add0~106\ = CARRY(( \PC|DOUT\(28) ) + ( GND ) + ( \incrementaPC|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(28),
	cin => \incrementaPC|Add0~102\,
	sumout => \incrementaPC|Add0~105_sumout\,
	cout => \incrementaPC|Add0~106\);

\somadorBrAdd|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~105_sumout\ = SUM(( GND ) + ( \incrementaPC|Add0~105_sumout\ ) + ( \somadorBrAdd|Add0~102\ ))
-- \somadorBrAdd|Add0~106\ = CARRY(( GND ) + ( \incrementaPC|Add0~105_sumout\ ) + ( \somadorBrAdd|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~105_sumout\,
	cin => \somadorBrAdd|Add0~102\,
	sumout => \somadorBrAdd|Add0~105_sumout\,
	cout => \somadorBrAdd|Add0~106\);

\PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~105_sumout\,
	asdata => \incrementaPC|Add0~105_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(28));

\incrementaPC|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~109_sumout\ = SUM(( \PC|DOUT\(29) ) + ( GND ) + ( \incrementaPC|Add0~106\ ))
-- \incrementaPC|Add0~110\ = CARRY(( \PC|DOUT\(29) ) + ( GND ) + ( \incrementaPC|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(29),
	cin => \incrementaPC|Add0~106\,
	sumout => \incrementaPC|Add0~109_sumout\,
	cout => \incrementaPC|Add0~110\);

\somadorBrAdd|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~109_sumout\ = SUM(( GND ) + ( \incrementaPC|Add0~109_sumout\ ) + ( \somadorBrAdd|Add0~106\ ))
-- \somadorBrAdd|Add0~110\ = CARRY(( GND ) + ( \incrementaPC|Add0~109_sumout\ ) + ( \somadorBrAdd|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~109_sumout\,
	cin => \somadorBrAdd|Add0~106\,
	sumout => \somadorBrAdd|Add0~109_sumout\,
	cout => \somadorBrAdd|Add0~110\);

\PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~109_sumout\,
	asdata => \incrementaPC|Add0~109_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(29));

\incrementaPC|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~113_sumout\ = SUM(( \PC|DOUT\(30) ) + ( GND ) + ( \incrementaPC|Add0~110\ ))
-- \incrementaPC|Add0~114\ = CARRY(( \PC|DOUT\(30) ) + ( GND ) + ( \incrementaPC|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(30),
	cin => \incrementaPC|Add0~110\,
	sumout => \incrementaPC|Add0~113_sumout\,
	cout => \incrementaPC|Add0~114\);

\somadorBrAdd|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~113_sumout\ = SUM(( GND ) + ( \incrementaPC|Add0~113_sumout\ ) + ( \somadorBrAdd|Add0~110\ ))
-- \somadorBrAdd|Add0~114\ = CARRY(( GND ) + ( \incrementaPC|Add0~113_sumout\ ) + ( \somadorBrAdd|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~113_sumout\,
	cin => \somadorBrAdd|Add0~110\,
	sumout => \somadorBrAdd|Add0~113_sumout\,
	cout => \somadorBrAdd|Add0~114\);

\PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~113_sumout\,
	asdata => \incrementaPC|Add0~113_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(30));

\incrementaPC|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~117_sumout\ = SUM(( \PC|DOUT\(31) ) + ( GND ) + ( \incrementaPC|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(31),
	cin => \incrementaPC|Add0~114\,
	sumout => \incrementaPC|Add0~117_sumout\);

\somadorBrAdd|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorBrAdd|Add0~117_sumout\ = SUM(( GND ) + ( \incrementaPC|Add0~117_sumout\ ) + ( \somadorBrAdd|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~117_sumout\,
	cin => \somadorBrAdd|Add0~114\,
	sumout => \somadorBrAdd|Add0~117_sumout\);

\PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somadorBrAdd|Add0~117_sumout\,
	asdata => \incrementaPC|Add0~117_sumout\,
	sload => \opANDBEQ|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(31));

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

ww_PC_OUT(0) <= \PC_OUT[0]~output_o\;

ww_PC_OUT(1) <= \PC_OUT[1]~output_o\;

ww_PC_OUT(2) <= \PC_OUT[2]~output_o\;

ww_PC_OUT(3) <= \PC_OUT[3]~output_o\;

ww_PC_OUT(4) <= \PC_OUT[4]~output_o\;

ww_PC_OUT(5) <= \PC_OUT[5]~output_o\;

ww_PC_OUT(6) <= \PC_OUT[6]~output_o\;

ww_PC_OUT(7) <= \PC_OUT[7]~output_o\;

ww_PC_OUT(8) <= \PC_OUT[8]~output_o\;

ww_PC_OUT(9) <= \PC_OUT[9]~output_o\;

ww_PC_OUT(10) <= \PC_OUT[10]~output_o\;

ww_PC_OUT(11) <= \PC_OUT[11]~output_o\;

ww_PC_OUT(12) <= \PC_OUT[12]~output_o\;

ww_PC_OUT(13) <= \PC_OUT[13]~output_o\;

ww_PC_OUT(14) <= \PC_OUT[14]~output_o\;

ww_PC_OUT(15) <= \PC_OUT[15]~output_o\;

ww_PC_OUT(16) <= \PC_OUT[16]~output_o\;

ww_PC_OUT(17) <= \PC_OUT[17]~output_o\;

ww_PC_OUT(18) <= \PC_OUT[18]~output_o\;

ww_PC_OUT(19) <= \PC_OUT[19]~output_o\;

ww_PC_OUT(20) <= \PC_OUT[20]~output_o\;

ww_PC_OUT(21) <= \PC_OUT[21]~output_o\;

ww_PC_OUT(22) <= \PC_OUT[22]~output_o\;

ww_PC_OUT(23) <= \PC_OUT[23]~output_o\;

ww_PC_OUT(24) <= \PC_OUT[24]~output_o\;

ww_PC_OUT(25) <= \PC_OUT[25]~output_o\;

ww_PC_OUT(26) <= \PC_OUT[26]~output_o\;

ww_PC_OUT(27) <= \PC_OUT[27]~output_o\;

ww_PC_OUT(28) <= \PC_OUT[28]~output_o\;

ww_PC_OUT(29) <= \PC_OUT[29]~output_o\;

ww_PC_OUT(30) <= \PC_OUT[30]~output_o\;

ww_PC_OUT(31) <= \PC_OUT[31]~output_o\;

ww_BranchAdress(0) <= \BranchAdress[0]~output_o\;

ww_BranchAdress(1) <= \BranchAdress[1]~output_o\;

ww_BranchAdress(2) <= \BranchAdress[2]~output_o\;

ww_BranchAdress(3) <= \BranchAdress[3]~output_o\;

ww_BranchAdress(4) <= \BranchAdress[4]~output_o\;

ww_BranchAdress(5) <= \BranchAdress[5]~output_o\;

ww_BranchAdress(6) <= \BranchAdress[6]~output_o\;

ww_BranchAdress(7) <= \BranchAdress[7]~output_o\;

ww_BranchAdress(8) <= \BranchAdress[8]~output_o\;

ww_BranchAdress(9) <= \BranchAdress[9]~output_o\;

ww_BranchAdress(10) <= \BranchAdress[10]~output_o\;

ww_BranchAdress(11) <= \BranchAdress[11]~output_o\;

ww_BranchAdress(12) <= \BranchAdress[12]~output_o\;

ww_BranchAdress(13) <= \BranchAdress[13]~output_o\;

ww_BranchAdress(14) <= \BranchAdress[14]~output_o\;

ww_BranchAdress(15) <= \BranchAdress[15]~output_o\;

ww_BranchAdress(16) <= \BranchAdress[16]~output_o\;

ww_BranchAdress(17) <= \BranchAdress[17]~output_o\;

ww_BranchAdress(18) <= \BranchAdress[18]~output_o\;

ww_BranchAdress(19) <= \BranchAdress[19]~output_o\;

ww_BranchAdress(20) <= \BranchAdress[20]~output_o\;

ww_BranchAdress(21) <= \BranchAdress[21]~output_o\;

ww_BranchAdress(22) <= \BranchAdress[22]~output_o\;

ww_BranchAdress(23) <= \BranchAdress[23]~output_o\;

ww_BranchAdress(24) <= \BranchAdress[24]~output_o\;

ww_BranchAdress(25) <= \BranchAdress[25]~output_o\;

ww_BranchAdress(26) <= \BranchAdress[26]~output_o\;

ww_BranchAdress(27) <= \BranchAdress[27]~output_o\;

ww_BranchAdress(28) <= \BranchAdress[28]~output_o\;

ww_BranchAdress(29) <= \BranchAdress[29]~output_o\;

ww_BranchAdress(30) <= \BranchAdress[30]~output_o\;

ww_BranchAdress(31) <= \BranchAdress[31]~output_o\;

ww_selMuxBEQ <= \selMuxBEQ~output_o\;
END structure;


