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

-- DATE "03/20/2024 22:27:33"

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

ENTITY 	Contador IS
    PORT (
	CLOCK_50 : IN std_logic;
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	MEM : OUT std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0)
	);
END Contador;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[8]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[9]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- PC_OUT[0]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[0]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[1]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[3]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[4]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[5]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[6]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[7]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Contador IS
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
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_MEM : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Processador1|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \Processador1|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \Processador1|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \Processador1|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \Processador1|decoderInstru1|Equal10~0_combout\ : std_logic;
SIGNAL \Processador1|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_wirecell_combout\ : std_logic;
SIGNAL \Processador1|incrementaPC|Add0~2\ : std_logic;
SIGNAL \Processador1|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \Processador1|incrementaPC|Add0~6\ : std_logic;
SIGNAL \Processador1|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \Processador1|incrementaPC|Add0~10\ : std_logic;
SIGNAL \Processador1|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \Processador1|incrementaPC|Add0~14\ : std_logic;
SIGNAL \Processador1|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \Processador1|incrementaPC|Add0~18\ : std_logic;
SIGNAL \Processador1|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \Processador1|incrementaPC|Add0~22\ : std_logic;
SIGNAL \Processador1|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \Processador1|incrementaPC|Add0~26\ : std_logic;
SIGNAL \Processador1|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \Processador1|incrementaPC|Add0~30\ : std_logic;
SIGNAL \Processador1|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \Processador1|decoderInstru1|Equal10~1_combout\ : std_logic;
SIGNAL \RAM1|ram~542_combout\ : std_logic;
SIGNAL \RAM1|ram~15_q\ : std_logic;
SIGNAL \Processador1|MUX1|saida_MUX[0]~9_combout\ : std_logic;
SIGNAL \Processador1|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador1|decoderInstru1|saida[4]~0_combout\ : std_logic;
SIGNAL \Processador1|decoderInstru1|saida[6]~1_combout\ : std_logic;
SIGNAL \RAM1|ram~543_combout\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \Processador1|MUX1|saida_MUX[0]~8_combout\ : std_logic;
SIGNAL \Processador1|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \Processador1|decoderInstru1|saida[4]~3_combout\ : std_logic;
SIGNAL \Processador1|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \Processador1|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \Processador1|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \Processador1|decoderInstru1|saida~2_combout\ : std_logic;
SIGNAL \REG_LEDs_7_to_0|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \opAndLEDs_7_to_0|saida~1_combout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~568_combout\ : std_logic;
SIGNAL \RAM1|ram~16_q\ : std_logic;
SIGNAL \RAM1|ram~541_combout\ : std_logic;
SIGNAL \RAM1|ram~527_combout\ : std_logic;
SIGNAL \RAM1|ram~528_combout\ : std_logic;
SIGNAL \Processador1|MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \Processador1|ULA1|Add0~2\ : std_logic;
SIGNAL \Processador1|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~529_combout\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~564_combout\ : std_logic;
SIGNAL \RAM1|ram~530_combout\ : std_logic;
SIGNAL \Processador1|MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \Processador1|ULA1|Add0~6\ : std_logic;
SIGNAL \Processador1|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~531_combout\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~532_combout\ : std_logic;
SIGNAL \RAM1|ram~560_combout\ : std_logic;
SIGNAL \Processador1|MUX1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \Processador1|ULA1|Add0~10\ : std_logic;
SIGNAL \Processador1|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \Processador1|REGA|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_LEDs_7_to_0|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~533_combout\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~534_combout\ : std_logic;
SIGNAL \RAM1|ram~556_combout\ : std_logic;
SIGNAL \Processador1|MUX1|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \Processador1|ULA1|Add0~14\ : std_logic;
SIGNAL \Processador1|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~535_combout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~536_combout\ : std_logic;
SIGNAL \RAM1|ram~552_combout\ : std_logic;
SIGNAL \Processador1|MUX1|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \Processador1|ULA1|Add0~18\ : std_logic;
SIGNAL \Processador1|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~538_combout\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~537_combout\ : std_logic;
SIGNAL \RAM1|ram~548_combout\ : std_logic;
SIGNAL \Processador1|MUX1|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \Processador1|REGA|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador1|ULA1|Add0~22\ : std_logic;
SIGNAL \Processador1|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~539_combout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~540_combout\ : std_logic;
SIGNAL \RAM1|ram~544_combout\ : std_logic;
SIGNAL \Processador1|MUX1|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \Processador1|ULA1|Add0~26\ : std_logic;
SIGNAL \Processador1|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \RAM1|process_0~1_combout\ : std_logic;
SIGNAL \opAndLED8|saida~0_combout\ : std_logic;
SIGNAL \RAM1|process_0~0_combout\ : std_logic;
SIGNAL \FF_LED8|DOUT~0_combout\ : std_logic;
SIGNAL \FF_LED8|DOUT~q\ : std_logic;
SIGNAL \opAndLEDs_7_to_0|saida~0_combout\ : std_logic;
SIGNAL \FF_LED9|DOUT~0_combout\ : std_logic;
SIGNAL \FF_LED9|DOUT~q\ : std_logic;
SIGNAL \Processador1|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Processador1|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG_LEDs_7_to_0|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Processador1|REGA|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador1|REGA|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador1|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador1|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \Processador1|MUX1|ALT_INV_saida_MUX[0]~9_combout\ : std_logic;
SIGNAL \Processador1|MUX1|ALT_INV_saida_MUX[0]~8_combout\ : std_logic;
SIGNAL \Processador1|decoderInstru1|ALT_INV_saida[4]~3_combout\ : std_logic;
SIGNAL \Processador1|decoderInstru1|ALT_INV_Equal10~1_combout\ : std_logic;
SIGNAL \Processador1|MUX1|ALT_INV_saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \Processador1|MUX1|ALT_INV_saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \Processador1|MUX1|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \Processador1|MUX1|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \Processador1|MUX1|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \Processador1|MUX1|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \Processador1|MUX1|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \Processador1|MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \Processador1|decoderInstru1|ALT_INV_saida[6]~1_combout\ : std_logic;
SIGNAL \Processador1|decoderInstru1|ALT_INV_saida[4]~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \opAndLEDs_7_to_0|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \opAndLED8|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \FF_LED9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \FF_LED8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~568_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \Processador1|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Processador1|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
PC_OUT <= ww_PC_OUT;
MEM <= ww_MEM;
ww_KEY <= KEY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Processador1|REGA|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \Processador1|REGA|DOUT[6]~DUPLICATE_q\;
\Processador1|REGA|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \Processador1|REGA|DOUT[3]~DUPLICATE_q\;
\Processador1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \Processador1|PC|DOUT[8]~DUPLICATE_q\;
\Processador1|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \Processador1|PC|DOUT[5]~DUPLICATE_q\;
\Processador1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \Processador1|PC|DOUT[3]~DUPLICATE_q\;
\Processador1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \Processador1|PC|DOUT[2]~DUPLICATE_q\;
\Processador1|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \Processador1|PC|DOUT[0]~DUPLICATE_q\;
\RAM1|ALT_INV_process_0~1_combout\ <= NOT \RAM1|process_0~1_combout\;
\RAM1|ALT_INV_ram~541_combout\ <= NOT \RAM1|ram~541_combout\;
\Processador1|MUX1|ALT_INV_saida_MUX[0]~9_combout\ <= NOT \Processador1|MUX1|saida_MUX[0]~9_combout\;
\Processador1|MUX1|ALT_INV_saida_MUX[0]~8_combout\ <= NOT \Processador1|MUX1|saida_MUX[0]~8_combout\;
\Processador1|decoderInstru1|ALT_INV_saida[4]~3_combout\ <= NOT \Processador1|decoderInstru1|saida[4]~3_combout\;
\Processador1|decoderInstru1|ALT_INV_Equal10~1_combout\ <= NOT \Processador1|decoderInstru1|Equal10~1_combout\;
\Processador1|MUX1|ALT_INV_saida_MUX[7]~7_combout\ <= NOT \Processador1|MUX1|saida_MUX[7]~7_combout\;
\RAM1|ALT_INV_ram~540_combout\ <= NOT \RAM1|ram~540_combout\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\RAM1|ALT_INV_ram~539_combout\ <= NOT \RAM1|ram~539_combout\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\Processador1|MUX1|ALT_INV_saida_MUX[6]~6_combout\ <= NOT \Processador1|MUX1|saida_MUX[6]~6_combout\;
\RAM1|ALT_INV_ram~538_combout\ <= NOT \RAM1|ram~538_combout\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\RAM1|ALT_INV_ram~537_combout\ <= NOT \RAM1|ram~537_combout\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\Processador1|MUX1|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \Processador1|MUX1|saida_MUX[5]~5_combout\;
\RAM1|ALT_INV_ram~536_combout\ <= NOT \RAM1|ram~536_combout\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\RAM1|ALT_INV_ram~535_combout\ <= NOT \RAM1|ram~535_combout\;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\Processador1|MUX1|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \Processador1|MUX1|saida_MUX[4]~4_combout\;
\RAM1|ALT_INV_ram~534_combout\ <= NOT \RAM1|ram~534_combout\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\RAM1|ALT_INV_ram~533_combout\ <= NOT \RAM1|ram~533_combout\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\Processador1|MUX1|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \Processador1|MUX1|saida_MUX[3]~3_combout\;
\RAM1|ALT_INV_ram~532_combout\ <= NOT \RAM1|ram~532_combout\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\RAM1|ALT_INV_ram~531_combout\ <= NOT \RAM1|ram~531_combout\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\Processador1|MUX1|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \Processador1|MUX1|saida_MUX[2]~2_combout\;
\RAM1|ALT_INV_ram~530_combout\ <= NOT \RAM1|ram~530_combout\;
\RAM1|ALT_INV_ram~529_combout\ <= NOT \RAM1|ram~529_combout\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\Processador1|MUX1|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \Processador1|MUX1|saida_MUX[1]~1_combout\;
\RAM1|ALT_INV_ram~528_combout\ <= NOT \RAM1|ram~528_combout\;
\RAM1|ALT_INV_ram~527_combout\ <= NOT \RAM1|ram~527_combout\;
\RAM1|ALT_INV_ram~16_q\ <= NOT \RAM1|ram~16_q\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\Processador1|MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \Processador1|MUX1|saida_MUX[0]~0_combout\;
\Processador1|decoderInstru1|ALT_INV_saida[6]~1_combout\ <= NOT \Processador1|decoderInstru1|saida[6]~1_combout\;
\Processador1|decoderInstru1|ALT_INV_saida[4]~0_combout\ <= NOT \Processador1|decoderInstru1|saida[4]~0_combout\;
\RAM1|ALT_INV_ram~15_q\ <= NOT \RAM1|ram~15_q\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\opAndLEDs_7_to_0|ALT_INV_saida~0_combout\ <= NOT \opAndLEDs_7_to_0|saida~0_combout\;
\opAndLED8|ALT_INV_saida~0_combout\ <= NOT \opAndLED8|saida~0_combout\;
\RAM1|ALT_INV_process_0~0_combout\ <= NOT \RAM1|process_0~0_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\FF_LED9|ALT_INV_DOUT~q\ <= NOT \FF_LED9|DOUT~q\;
\FF_LED8|ALT_INV_DOUT~q\ <= NOT \FF_LED8|DOUT~q\;
\RAM1|ALT_INV_ram~568_combout\ <= NOT \RAM1|ram~568_combout\;
\RAM1|ALT_INV_ram~564_combout\ <= NOT \RAM1|ram~564_combout\;
\RAM1|ALT_INV_ram~560_combout\ <= NOT \RAM1|ram~560_combout\;
\RAM1|ALT_INV_ram~556_combout\ <= NOT \RAM1|ram~556_combout\;
\RAM1|ALT_INV_ram~552_combout\ <= NOT \RAM1|ram~552_combout\;
\RAM1|ALT_INV_ram~548_combout\ <= NOT \RAM1|ram~548_combout\;
\RAM1|ALT_INV_ram~544_combout\ <= NOT \RAM1|ram~544_combout\;
\Processador1|REGA|ALT_INV_DOUT\(7) <= NOT \Processador1|REGA|DOUT\(7);
\Processador1|REGA|ALT_INV_DOUT\(5) <= NOT \Processador1|REGA|DOUT\(5);
\Processador1|REGA|ALT_INV_DOUT\(4) <= NOT \Processador1|REGA|DOUT\(4);
\Processador1|REGA|ALT_INV_DOUT\(3) <= NOT \Processador1|REGA|DOUT\(3);
\Processador1|REGA|ALT_INV_DOUT\(2) <= NOT \Processador1|REGA|DOUT\(2);
\Processador1|REGA|ALT_INV_DOUT\(1) <= NOT \Processador1|REGA|DOUT\(1);
\Processador1|REGA|ALT_INV_DOUT\(0) <= NOT \Processador1|REGA|DOUT\(0);
\Processador1|PC|ALT_INV_DOUT\(8) <= NOT \Processador1|PC|DOUT\(8);
\Processador1|PC|ALT_INV_DOUT\(7) <= NOT \Processador1|PC|DOUT\(7);
\Processador1|PC|ALT_INV_DOUT\(6) <= NOT \Processador1|PC|DOUT\(6);
\Processador1|PC|ALT_INV_DOUT\(5) <= NOT \Processador1|PC|DOUT\(5);
\Processador1|PC|ALT_INV_DOUT\(4) <= NOT \Processador1|PC|DOUT\(4);
\Processador1|PC|ALT_INV_DOUT\(3) <= NOT \Processador1|PC|DOUT\(3);
\Processador1|PC|ALT_INV_DOUT\(2) <= NOT \Processador1|PC|DOUT\(2);
\Processador1|PC|ALT_INV_DOUT\(1) <= NOT \Processador1|PC|DOUT\(1);
\Processador1|PC|ALT_INV_DOUT\(0) <= NOT \Processador1|PC|DOUT\(0);

-- Location: IOOBUF_X0_Y18_N79
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDs_7_to_0|DOUT\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X0_Y18_N96
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDs_7_to_0|DOUT\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X0_Y18_N62
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDs_7_to_0|DOUT\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X0_Y18_N45
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDs_7_to_0|DOUT\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X0_Y19_N39
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDs_7_to_0|DOUT\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X0_Y19_N56
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDs_7_to_0|DOUT\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X0_Y19_N5
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDs_7_to_0|DOUT\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X0_Y19_N22
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDs_7_to_0|DOUT\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X0_Y20_N39
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FF_LED8|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X0_Y20_N56
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FF_LED9|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X54_Y17_N22
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador1|PC|DOUT\(0),
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X10_Y0_N76
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador1|PC|DOUT\(1),
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X8_Y45_N76
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador1|PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X8_Y45_N93
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador1|PC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X12_Y0_N36
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador1|PC|DOUT\(4),
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X11_Y0_N19
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador1|PC|DOUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X10_Y0_N42
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador1|PC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X12_Y0_N2
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador1|PC|DOUT\(7),
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X10_Y0_N59
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador1|PC|DOUT[8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X54_Y17_N56
\MEM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador1|REGA|DOUT\(0),
	devoe => ww_devoe,
	o => ww_MEM(0));

-- Location: IOOBUF_X12_Y0_N53
\MEM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador1|REGA|DOUT\(1),
	devoe => ww_devoe,
	o => ww_MEM(1));

-- Location: IOOBUF_X8_Y45_N59
\MEM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador1|REGA|DOUT\(2),
	devoe => ww_devoe,
	o => ww_MEM(2));

-- Location: IOOBUF_X54_Y17_N39
\MEM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador1|REGA|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_MEM(3));

-- Location: IOOBUF_X54_Y17_N5
\MEM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador1|REGA|DOUT\(4),
	devoe => ww_devoe,
	o => ww_MEM(4));

-- Location: IOOBUF_X8_Y45_N42
\MEM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador1|REGA|DOUT\(5),
	devoe => ww_devoe,
	o => ww_MEM(5));

-- Location: IOOBUF_X11_Y0_N2
\MEM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador1|REGA|DOUT\(6),
	devoe => ww_devoe,
	o => ww_MEM(6));

-- Location: IOOBUF_X11_Y0_N53
\MEM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador1|REGA|DOUT\(7),
	devoe => ww_devoe,
	o => ww_MEM(7));

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

-- Location: CLKCTRL_G5
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

-- Location: LABCELL_X5_Y17_N30
\Processador1|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|incrementaPC|Add0~1_sumout\ = SUM(( \Processador1|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \Processador1|incrementaPC|Add0~2\ = CARRY(( \Processador1|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador1|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \Processador1|incrementaPC|Add0~1_sumout\,
	cout => \Processador1|incrementaPC|Add0~2\);

-- Location: LABCELL_X7_Y17_N57
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \Processador1|PC|DOUT\(3) & ( (!\Processador1|PC|DOUT[0]~DUPLICATE_q\ & (\ROM1|memROM~1_combout\ & !\Processador1|PC|DOUT\(2))) ) ) # ( !\Processador1|PC|DOUT\(3) & ( (\ROM1|memROM~1_combout\ & (\Processador1|PC|DOUT\(2) & 
-- (!\Processador1|PC|DOUT\(1) $ (!\Processador1|PC|DOUT[0]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador1|PC|ALT_INV_DOUT\(1),
	datab => \Processador1|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \Processador1|PC|ALT_INV_DOUT\(2),
	dataf => \Processador1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~5_combout\);

-- Location: FF_X5_Y17_N56
\Processador1|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador1|incrementaPC|Add0~33_sumout\,
	asdata => \ROM1|memROM~5_combout\,
	sload => \Processador1|decoderInstru1|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador1|PC|DOUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y17_N24
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\Processador1|PC|DOUT\(5) & ( (!\Processador1|PC|DOUT\(6) & (!\Processador1|PC|DOUT\(4) & (!\Processador1|PC|DOUT\(7) & !\Processador1|PC|DOUT[8]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador1|PC|ALT_INV_DOUT\(6),
	datab => \Processador1|PC|ALT_INV_DOUT\(4),
	datac => \Processador1|PC|ALT_INV_DOUT\(7),
	datad => \Processador1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \Processador1|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~1_combout\);

-- Location: MLABCELL_X4_Y17_N30
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \ROM1|memROM~1_combout\ & ( (\Processador1|PC|DOUT[0]~DUPLICATE_q\ & (\Processador1|PC|DOUT[2]~DUPLICATE_q\ & (\Processador1|PC|DOUT\(1) & !\Processador1|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador1|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \Processador1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \Processador1|PC|ALT_INV_DOUT\(1),
	datad => \Processador1|PC|ALT_INV_DOUT\(3),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~9_combout\);

-- Location: FF_X5_Y17_N38
\Processador1|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador1|incrementaPC|Add0~9_sumout\,
	asdata => \ROM1|memROM~9_combout\,
	sload => \Processador1|decoderInstru1|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador1|PC|DOUT[2]~DUPLICATE_q\);

-- Location: MLABCELL_X4_Y17_N42
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \Processador1|PC|DOUT\(1) & ( (!\Processador1|PC|DOUT[2]~DUPLICATE_q\ & (!\Processador1|PC|DOUT[0]~DUPLICATE_q\ & !\Processador1|PC|DOUT\(3))) # (\Processador1|PC|DOUT[2]~DUPLICATE_q\ & ((\Processador1|PC|DOUT\(3)))) ) ) # ( 
-- !\Processador1|PC|DOUT\(1) & ( (\Processador1|PC|DOUT[2]~DUPLICATE_q\ & ((!\Processador1|PC|DOUT[0]~DUPLICATE_q\) # (\Processador1|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110011001100000011001111000000001100111100000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \Processador1|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \Processador1|PC|ALT_INV_DOUT\(3),
	dataf => \Processador1|PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~8_combout\);

-- Location: LABCELL_X5_Y17_N12
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \ROM1|memROM~1_combout\ & ( (\Processador1|PC|DOUT[3]~DUPLICATE_q\ & (\Processador1|PC|DOUT\(0) & !\Processador1|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \Processador1|PC|ALT_INV_DOUT\(0),
	datad => \Processador1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~10_combout\);

-- Location: FF_X5_Y17_N41
\Processador1|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador1|incrementaPC|Add0~13_sumout\,
	asdata => \ROM1|memROM~10_combout\,
	sload => \Processador1|decoderInstru1|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador1|PC|DOUT[3]~DUPLICATE_q\);

-- Location: MLABCELL_X4_Y17_N54
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \Processador1|PC|DOUT\(1) & ( (!\Processador1|PC|DOUT[3]~DUPLICATE_q\ & (!\Processador1|PC|DOUT[2]~DUPLICATE_q\ $ (!\Processador1|PC|DOUT[0]~DUPLICATE_q\))) # (\Processador1|PC|DOUT[3]~DUPLICATE_q\ & 
-- (!\Processador1|PC|DOUT[2]~DUPLICATE_q\ & !\Processador1|PC|DOUT[0]~DUPLICATE_q\)) ) ) # ( !\Processador1|PC|DOUT\(1) & ( !\Processador1|PC|DOUT[3]~DUPLICATE_q\ $ (((!\Processador1|PC|DOUT[2]~DUPLICATE_q\ & !\Processador1|PC|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101001101010011010100110101001101000011010000110100001101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \Processador1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \Processador1|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \Processador1|PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~6_combout\);

-- Location: MLABCELL_X4_Y17_N18
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \Processador1|PC|DOUT[3]~DUPLICATE_q\ & ( (\Processador1|PC|DOUT[0]~DUPLICATE_q\ & (\Processador1|PC|DOUT\(1) & !\Processador1|PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\Processador1|PC|DOUT[3]~DUPLICATE_q\ & ( 
-- (!\Processador1|PC|DOUT[0]~DUPLICATE_q\ & (\Processador1|PC|DOUT\(1) & !\Processador1|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador1|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \Processador1|PC|ALT_INV_DOUT\(1),
	datad => \Processador1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \Processador1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~7_combout\);

-- Location: LABCELL_X7_Y17_N27
\Processador1|decoderInstru1|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|decoderInstru1|Equal10~0_combout\ = ( \ROM1|memROM~7_combout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~8_combout\ & !\ROM1|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \Processador1|decoderInstru1|Equal10~0_combout\);

-- Location: FF_X5_Y17_N32
\Processador1|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador1|incrementaPC|Add0~1_sumout\,
	asdata => \ROM1|memROM~4_wirecell_combout\,
	sload => \Processador1|decoderInstru1|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador1|PC|DOUT[0]~DUPLICATE_q\);

-- Location: MLABCELL_X4_Y17_N39
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \Processador1|PC|DOUT[3]~DUPLICATE_q\ & ( (\Processador1|PC|DOUT[0]~DUPLICATE_q\ & (!\Processador1|PC|DOUT[2]~DUPLICATE_q\ & \Processador1|PC|DOUT\(1))) ) ) # ( !\Processador1|PC|DOUT[3]~DUPLICATE_q\ & ( 
-- !\Processador1|PC|DOUT[0]~DUPLICATE_q\ $ (((\Processador1|PC|DOUT\(1)) # (\Processador1|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010101010101101001010101010100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador1|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \Processador1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \Processador1|PC|ALT_INV_DOUT\(1),
	dataf => \Processador1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~3_combout\);

-- Location: MLABCELL_X4_Y17_N0
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~3_combout\ ) ) # ( !\ROM1|memROM~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X2_Y17_N33
\ROM1|memROM~4_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_wirecell_combout\ = ( !\ROM1|memROM~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~4_wirecell_combout\);

-- Location: FF_X5_Y17_N31
\Processador1|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador1|incrementaPC|Add0~1_sumout\,
	asdata => \ROM1|memROM~4_wirecell_combout\,
	sload => \Processador1|decoderInstru1|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador1|PC|DOUT\(0));

-- Location: LABCELL_X5_Y17_N33
\Processador1|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|incrementaPC|Add0~5_sumout\ = SUM(( \Processador1|PC|DOUT\(1) ) + ( GND ) + ( \Processador1|incrementaPC|Add0~2\ ))
-- \Processador1|incrementaPC|Add0~6\ = CARRY(( \Processador1|PC|DOUT\(1) ) + ( GND ) + ( \Processador1|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador1|PC|ALT_INV_DOUT\(1),
	cin => \Processador1|incrementaPC|Add0~2\,
	sumout => \Processador1|incrementaPC|Add0~5_sumout\,
	cout => \Processador1|incrementaPC|Add0~6\);

-- Location: LABCELL_X5_Y17_N9
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \Processador1|PC|DOUT\(1) & ( (!\Processador1|PC|DOUT[2]~DUPLICATE_q\ & (\Processador1|PC|DOUT[0]~DUPLICATE_q\ & \Processador1|PC|DOUT\(3))) # (\Processador1|PC|DOUT[2]~DUPLICATE_q\ & (!\Processador1|PC|DOUT[0]~DUPLICATE_q\ & 
-- !\Processador1|PC|DOUT\(3))) ) ) # ( !\Processador1|PC|DOUT\(1) & ( (!\Processador1|PC|DOUT[2]~DUPLICATE_q\ & (\Processador1|PC|DOUT[0]~DUPLICATE_q\ & \Processador1|PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101001010000000010100101000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \Processador1|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \Processador1|PC|ALT_INV_DOUT\(3),
	dataf => \Processador1|PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X5_Y17_N27
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~2_combout\);

-- Location: FF_X5_Y17_N35
\Processador1|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador1|incrementaPC|Add0~5_sumout\,
	asdata => \ROM1|memROM~2_combout\,
	sload => \Processador1|decoderInstru1|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador1|PC|DOUT\(1));

-- Location: LABCELL_X5_Y17_N36
\Processador1|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|incrementaPC|Add0~9_sumout\ = SUM(( \Processador1|PC|DOUT\(2) ) + ( GND ) + ( \Processador1|incrementaPC|Add0~6\ ))
-- \Processador1|incrementaPC|Add0~10\ = CARRY(( \Processador1|PC|DOUT\(2) ) + ( GND ) + ( \Processador1|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador1|PC|ALT_INV_DOUT\(2),
	cin => \Processador1|incrementaPC|Add0~6\,
	sumout => \Processador1|incrementaPC|Add0~9_sumout\,
	cout => \Processador1|incrementaPC|Add0~10\);

-- Location: FF_X5_Y17_N37
\Processador1|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador1|incrementaPC|Add0~9_sumout\,
	asdata => \ROM1|memROM~9_combout\,
	sload => \Processador1|decoderInstru1|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador1|PC|DOUT\(2));

-- Location: LABCELL_X5_Y17_N39
\Processador1|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|incrementaPC|Add0~13_sumout\ = SUM(( \Processador1|PC|DOUT\(3) ) + ( GND ) + ( \Processador1|incrementaPC|Add0~10\ ))
-- \Processador1|incrementaPC|Add0~14\ = CARRY(( \Processador1|PC|DOUT\(3) ) + ( GND ) + ( \Processador1|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador1|PC|ALT_INV_DOUT\(3),
	cin => \Processador1|incrementaPC|Add0~10\,
	sumout => \Processador1|incrementaPC|Add0~13_sumout\,
	cout => \Processador1|incrementaPC|Add0~14\);

-- Location: FF_X5_Y17_N40
\Processador1|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador1|incrementaPC|Add0~13_sumout\,
	asdata => \ROM1|memROM~10_combout\,
	sload => \Processador1|decoderInstru1|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador1|PC|DOUT\(3));

-- Location: LABCELL_X5_Y17_N42
\Processador1|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|incrementaPC|Add0~17_sumout\ = SUM(( \Processador1|PC|DOUT\(4) ) + ( GND ) + ( \Processador1|incrementaPC|Add0~14\ ))
-- \Processador1|incrementaPC|Add0~18\ = CARRY(( \Processador1|PC|DOUT\(4) ) + ( GND ) + ( \Processador1|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador1|PC|ALT_INV_DOUT\(4),
	cin => \Processador1|incrementaPC|Add0~14\,
	sumout => \Processador1|incrementaPC|Add0~17_sumout\,
	cout => \Processador1|incrementaPC|Add0~18\);

-- Location: FF_X5_Y17_N44
\Processador1|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador1|incrementaPC|Add0~17_sumout\,
	asdata => \ROM1|memROM~9_combout\,
	sload => \Processador1|decoderInstru1|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador1|PC|DOUT\(4));

-- Location: LABCELL_X5_Y17_N45
\Processador1|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|incrementaPC|Add0~21_sumout\ = SUM(( \Processador1|PC|DOUT\(5) ) + ( GND ) + ( \Processador1|incrementaPC|Add0~18\ ))
-- \Processador1|incrementaPC|Add0~22\ = CARRY(( \Processador1|PC|DOUT\(5) ) + ( GND ) + ( \Processador1|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador1|PC|ALT_INV_DOUT\(5),
	cin => \Processador1|incrementaPC|Add0~18\,
	sumout => \Processador1|incrementaPC|Add0~21_sumout\,
	cout => \Processador1|incrementaPC|Add0~22\);

-- Location: LABCELL_X5_Y17_N0
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \ROM1|memROM~1_combout\ & ( (\Processador1|PC|DOUT\(0) & (\Processador1|PC|DOUT[3]~DUPLICATE_q\ & (!\Processador1|PC|DOUT\(1) & !\Processador1|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador1|PC|ALT_INV_DOUT\(0),
	datab => \Processador1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \Processador1|PC|ALT_INV_DOUT\(1),
	datad => \Processador1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~11_combout\);

-- Location: FF_X5_Y17_N46
\Processador1|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador1|incrementaPC|Add0~21_sumout\,
	asdata => \ROM1|memROM~11_combout\,
	sload => \Processador1|decoderInstru1|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador1|PC|DOUT\(5));

-- Location: LABCELL_X5_Y17_N48
\Processador1|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|incrementaPC|Add0~25_sumout\ = SUM(( \Processador1|PC|DOUT\(6) ) + ( GND ) + ( \Processador1|incrementaPC|Add0~22\ ))
-- \Processador1|incrementaPC|Add0~26\ = CARRY(( \Processador1|PC|DOUT\(6) ) + ( GND ) + ( \Processador1|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador1|PC|ALT_INV_DOUT\(6),
	cin => \Processador1|incrementaPC|Add0~22\,
	sumout => \Processador1|incrementaPC|Add0~25_sumout\,
	cout => \Processador1|incrementaPC|Add0~26\);

-- Location: FF_X5_Y17_N50
\Processador1|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador1|incrementaPC|Add0~25_sumout\,
	asdata => \ROM1|memROM~9_combout\,
	sload => \Processador1|decoderInstru1|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador1|PC|DOUT\(6));

-- Location: LABCELL_X5_Y17_N51
\Processador1|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|incrementaPC|Add0~29_sumout\ = SUM(( \Processador1|PC|DOUT\(7) ) + ( GND ) + ( \Processador1|incrementaPC|Add0~26\ ))
-- \Processador1|incrementaPC|Add0~30\ = CARRY(( \Processador1|PC|DOUT\(7) ) + ( GND ) + ( \Processador1|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador1|PC|ALT_INV_DOUT\(7),
	cin => \Processador1|incrementaPC|Add0~26\,
	sumout => \Processador1|incrementaPC|Add0~29_sumout\,
	cout => \Processador1|incrementaPC|Add0~30\);

-- Location: FF_X5_Y17_N53
\Processador1|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador1|incrementaPC|Add0~29_sumout\,
	asdata => \ROM1|memROM~11_combout\,
	sload => \Processador1|decoderInstru1|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador1|PC|DOUT\(7));

-- Location: LABCELL_X5_Y17_N54
\Processador1|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|incrementaPC|Add0~33_sumout\ = SUM(( \Processador1|PC|DOUT\(8) ) + ( GND ) + ( \Processador1|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador1|PC|ALT_INV_DOUT\(8),
	cin => \Processador1|incrementaPC|Add0~30\,
	sumout => \Processador1|incrementaPC|Add0~33_sumout\);

-- Location: FF_X5_Y17_N55
\Processador1|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador1|incrementaPC|Add0~33_sumout\,
	asdata => \ROM1|memROM~5_combout\,
	sload => \Processador1|decoderInstru1|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador1|PC|DOUT\(8));

-- Location: MLABCELL_X4_Y17_N12
\Processador1|decoderInstru1|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|decoderInstru1|Equal10~1_combout\ = ( \ROM1|memROM~7_combout\ & ( (\ROM1|memROM~8_combout\ & (!\ROM1|memROM~6_combout\ & \ROM1|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \Processador1|decoderInstru1|Equal10~1_combout\);

-- Location: LABCELL_X7_Y17_N48
\RAM1|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~542_combout\ = ( !\Processador1|PC|DOUT\(3) & ( (\Processador1|PC|DOUT\(0) & (\ROM1|memROM~1_combout\ & (!\Processador1|PC|DOUT\(1) & !\Processador1|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador1|PC|ALT_INV_DOUT\(0),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Processador1|PC|ALT_INV_DOUT\(1),
	datad => \Processador1|PC|ALT_INV_DOUT\(2),
	dataf => \Processador1|PC|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~542_combout\);

-- Location: FF_X5_Y17_N22
\RAM1|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~15_q\);

-- Location: LABCELL_X5_Y17_N15
\Processador1|MUX1|saida_MUX[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|MUX1|saida_MUX[0]~9_combout\ = ( !\ROM1|memROM~10_combout\ & ( (!\ROM1|memROM~11_combout\ & (\RAM1|ram~15_q\ & !\ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \RAM1|ALT_INV_ram~15_q\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \Processador1|MUX1|saida_MUX[0]~9_combout\);

-- Location: FF_X5_Y17_N47
\Processador1|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador1|incrementaPC|Add0~21_sumout\,
	asdata => \ROM1|memROM~11_combout\,
	sload => \Processador1|decoderInstru1|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador1|PC|DOUT[5]~DUPLICATE_q\);

-- Location: MLABCELL_X4_Y17_N45
\Processador1|decoderInstru1|saida[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|decoderInstru1|saida[4]~0_combout\ = ( !\Processador1|PC|DOUT\(7) & ( (!\Processador1|PC|DOUT[5]~DUPLICATE_q\ & (!\Processador1|PC|DOUT\(4) & !\Processador1|PC|DOUT\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador1|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \Processador1|PC|ALT_INV_DOUT\(4),
	datad => \Processador1|PC|ALT_INV_DOUT\(6),
	dataf => \Processador1|PC|ALT_INV_DOUT\(7),
	combout => \Processador1|decoderInstru1|saida[4]~0_combout\);

-- Location: MLABCELL_X4_Y17_N27
\Processador1|decoderInstru1|saida[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|decoderInstru1|saida[6]~1_combout\ = ( !\ROM1|memROM~7_combout\ & ( (!\Processador1|PC|DOUT[8]~DUPLICATE_q\ & (\Processador1|decoderInstru1|saida[4]~0_combout\ & (!\ROM1|memROM~8_combout\ & !\ROM1|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \Processador1|decoderInstru1|ALT_INV_saida[4]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \Processador1|decoderInstru1|saida[6]~1_combout\);

-- Location: LABCELL_X7_Y17_N33
\RAM1|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~543_combout\ = ( !\Processador1|PC|DOUT\(3) & ( (\Processador1|PC|DOUT\(1) & (\ROM1|memROM~1_combout\ & (!\Processador1|PC|DOUT\(2) & \Processador1|PC|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador1|PC|ALT_INV_DOUT\(1),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Processador1|PC|ALT_INV_DOUT\(2),
	datad => \Processador1|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \Processador1|PC|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~543_combout\);

-- Location: FF_X5_Y17_N8
\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

-- Location: LABCELL_X5_Y17_N6
\Processador1|MUX1|saida_MUX[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|MUX1|saida_MUX[0]~8_combout\ = ( !\ROM1|memROM~9_combout\ & ( (!\ROM1|memROM~10_combout\ & (!\ROM1|memROM~2_combout\ & \RAM1|ram~23_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \RAM1|ALT_INV_ram~23_q\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Processador1|MUX1|saida_MUX[0]~8_combout\);

-- Location: LABCELL_X5_Y17_N18
\Processador1|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|MUX1|saida_MUX[0]~0_combout\ = ( \Processador1|decoderInstru1|saida[6]~1_combout\ & ( \Processador1|MUX1|saida_MUX[0]~8_combout\ & ( !\ROM1|memROM~4_combout\ ) ) ) # ( !\Processador1|decoderInstru1|saida[6]~1_combout\ & ( 
-- \Processador1|MUX1|saida_MUX[0]~8_combout\ & ( (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~11_combout\)) # (\ROM1|memROM~4_combout\ & (((!\ROM1|memROM~9_combout\ & \Processador1|MUX1|saida_MUX[0]~9_combout\)))) ) ) ) # ( 
-- \Processador1|decoderInstru1|saida[6]~1_combout\ & ( !\Processador1|MUX1|saida_MUX[0]~8_combout\ & ( !\ROM1|memROM~4_combout\ ) ) ) # ( !\Processador1|decoderInstru1|saida[6]~1_combout\ & ( !\Processador1|MUX1|saida_MUX[0]~8_combout\ & ( 
-- (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~9_combout\ & \Processador1|MUX1|saida_MUX[0]~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000110011001100110010001000101110001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \Processador1|MUX1|ALT_INV_saida_MUX[0]~9_combout\,
	datae => \Processador1|decoderInstru1|ALT_INV_saida[6]~1_combout\,
	dataf => \Processador1|MUX1|ALT_INV_saida_MUX[0]~8_combout\,
	combout => \Processador1|MUX1|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X7_Y17_N30
\Processador1|decoderInstru1|saida[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|decoderInstru1|saida[4]~3_combout\ = ( \ROM1|memROM~7_combout\ & ( \Processador1|decoderInstru1|saida[4]~0_combout\ ) ) # ( !\ROM1|memROM~7_combout\ & ( (\Processador1|decoderInstru1|saida[4]~0_combout\ & !\ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador1|decoderInstru1|ALT_INV_saida[4]~0_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \Processador1|decoderInstru1|saida[4]~3_combout\);

-- Location: LABCELL_X6_Y17_N30
\Processador1|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|ULA1|Add0~34_cout\ = CARRY(( ((!\Processador1|decoderInstru1|Equal10~1_combout\) # (!\Processador1|decoderInstru1|saida[4]~3_combout\)) # (\Processador1|PC|DOUT\(8)) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador1|PC|ALT_INV_DOUT\(8),
	datab => \Processador1|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datac => \Processador1|decoderInstru1|ALT_INV_saida[4]~3_combout\,
	cin => GND,
	cout => \Processador1|ULA1|Add0~34_cout\);

-- Location: LABCELL_X6_Y17_N33
\Processador1|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|ULA1|Add0~1_sumout\ = SUM(( \Processador1|REGA|DOUT\(0) ) + ( !\Processador1|MUX1|saida_MUX[0]~0_combout\ $ (((!\Processador1|PC|DOUT\(8) & (\Processador1|decoderInstru1|Equal10~1_combout\ & 
-- \Processador1|decoderInstru1|saida[4]~3_combout\)))) ) + ( \Processador1|ULA1|Add0~34_cout\ ))
-- \Processador1|ULA1|Add0~2\ = CARRY(( \Processador1|REGA|DOUT\(0) ) + ( !\Processador1|MUX1|saida_MUX[0]~0_combout\ $ (((!\Processador1|PC|DOUT\(8) & (\Processador1|decoderInstru1|Equal10~1_combout\ & \Processador1|decoderInstru1|saida[4]~3_combout\)))) ) 
-- + ( \Processador1|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110010110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador1|PC|ALT_INV_DOUT\(8),
	datab => \Processador1|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datac => \Processador1|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \Processador1|REGA|ALT_INV_DOUT\(0),
	dataf => \Processador1|decoderInstru1|ALT_INV_saida[4]~3_combout\,
	cin => \Processador1|ULA1|Add0~34_cout\,
	sumout => \Processador1|ULA1|Add0~1_sumout\,
	cout => \Processador1|ULA1|Add0~2\);

-- Location: LABCELL_X7_Y17_N3
\Processador1|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|ULA1|saida[0]~0_combout\ = ( \ROM1|memROM~6_combout\ & ( !\ROM1|memROM~7_combout\ & ( (\Processador1|decoderInstru1|saida[4]~0_combout\ & (\ROM1|memROM~8_combout\ & !\Processador1|PC|DOUT[8]~DUPLICATE_q\)) ) ) ) # ( !\ROM1|memROM~6_combout\ 
-- & ( !\ROM1|memROM~7_combout\ & ( (\Processador1|decoderInstru1|saida[4]~0_combout\ & (!\ROM1|memROM~8_combout\ & !\Processador1|PC|DOUT[8]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000000100010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador1|decoderInstru1|ALT_INV_saida[4]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \Processador1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \Processador1|ULA1|saida[0]~0_combout\);

-- Location: LABCELL_X7_Y17_N6
\Processador1|decoderInstru1|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|decoderInstru1|saida~2_combout\ = (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~8_combout\ $ (((\ROM1|memROM~6_combout\) # (\ROM1|memROM~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100000101000010010000010100001001000001010000100100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \Processador1|decoderInstru1|saida~2_combout\);

-- Location: FF_X6_Y17_N34
\Processador1|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador1|ULA1|Add0~1_sumout\,
	asdata => \Processador1|MUX1|saida_MUX[0]~0_combout\,
	sload => \Processador1|ULA1|saida[0]~0_combout\,
	ena => \Processador1|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador1|REGA|DOUT\(0));

-- Location: LABCELL_X2_Y17_N48
\REG_LEDs_7_to_0|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_LEDs_7_to_0|DOUT[0]~feeder_combout\ = ( \Processador1|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador1|REGA|ALT_INV_DOUT\(0),
	combout => \REG_LEDs_7_to_0|DOUT[0]~feeder_combout\);

-- Location: LABCELL_X7_Y17_N36
\opAndLEDs_7_to_0|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \opAndLEDs_7_to_0|saida~1_combout\ = (!\Processador1|PC|DOUT\(0) & (\ROM1|memROM~1_combout\ & (\Processador1|PC|DOUT\(3) & !\Processador1|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador1|PC|ALT_INV_DOUT\(0),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \Processador1|PC|ALT_INV_DOUT\(3),
	datad => \Processador1|PC|ALT_INV_DOUT\(2),
	combout => \opAndLEDs_7_to_0|saida~1_combout\);

-- Location: FF_X2_Y17_N49
\REG_LEDs_7_to_0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \REG_LEDs_7_to_0|DOUT[0]~feeder_combout\,
	ena => \opAndLEDs_7_to_0|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDs_7_to_0|DOUT\(0));

-- Location: FF_X7_Y17_N20
\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

-- Location: LABCELL_X7_Y17_N18
\RAM1|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~568_combout\ = ( \RAM1|ram~24_q\ & ( \ROM1|memROM~1_combout\ & ( (!\Processador1|PC|DOUT\(2) & (((!\Processador1|PC|DOUT\(3)) # (!\Processador1|PC|DOUT[0]~DUPLICATE_q\)))) # (\Processador1|PC|DOUT\(2) & ((!\Processador1|PC|DOUT\(1)) # 
-- ((\Processador1|PC|DOUT[0]~DUPLICATE_q\) # (\Processador1|PC|DOUT\(3))))) ) ) ) # ( \RAM1|ram~24_q\ & ( !\ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001110111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador1|PC|ALT_INV_DOUT\(1),
	datab => \Processador1|PC|ALT_INV_DOUT\(2),
	datac => \Processador1|PC|ALT_INV_DOUT\(3),
	datad => \Processador1|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \RAM1|ALT_INV_ram~24_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~568_combout\);

-- Location: FF_X7_Y17_N14
\RAM1|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~16_q\);

-- Location: MLABCELL_X4_Y17_N57
\RAM1|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~541_combout\ = ( \Processador1|PC|DOUT[3]~DUPLICATE_q\ & ( !\Processador1|PC|DOUT[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \Processador1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \RAM1|ram~541_combout\);

-- Location: LABCELL_X7_Y17_N51
\RAM1|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~527_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~1_combout\ & \RAM1|ram~16_q\) ) ) # ( !\ROM1|memROM~0_combout\ & ( (\RAM1|ram~16_q\ & ((!\Processador1|PC|DOUT\(0)) # ((!\ROM1|memROM~1_combout\) # (!\RAM1|ram~541_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001110000011110000111000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador1|PC|ALT_INV_DOUT\(0),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \RAM1|ALT_INV_ram~16_q\,
	datad => \RAM1|ALT_INV_ram~541_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~527_combout\);

-- Location: LABCELL_X7_Y17_N24
\RAM1|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~528_combout\ = ( \RAM1|ram~527_combout\ & ( (!\ROM1|memROM~11_combout\ & ((\ROM1|memROM~4_combout\) # (\RAM1|ram~568_combout\))) ) ) # ( !\RAM1|ram~527_combout\ & ( (!\ROM1|memROM~11_combout\ & (\RAM1|ram~568_combout\ & 
-- !\ROM1|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \RAM1|ALT_INV_ram~568_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM1|ALT_INV_ram~527_combout\,
	combout => \RAM1|ram~528_combout\);

-- Location: LABCELL_X6_Y17_N3
\Processador1|MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|MUX1|saida_MUX[1]~1_combout\ = ( \RAM1|ram~528_combout\ & ( (!\Processador1|decoderInstru1|saida[6]~1_combout\ & ((!\ROM1|memROM~9_combout\))) # (\Processador1|decoderInstru1|saida[6]~1_combout\ & (\ROM1|memROM~2_combout\)) ) ) # ( 
-- !\RAM1|ram~528_combout\ & ( (\ROM1|memROM~2_combout\ & \Processador1|decoderInstru1|saida[6]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111110000010101011111000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \Processador1|decoderInstru1|ALT_INV_saida[6]~1_combout\,
	dataf => \RAM1|ALT_INV_ram~528_combout\,
	combout => \Processador1|MUX1|saida_MUX[1]~1_combout\);

-- Location: LABCELL_X6_Y17_N36
\Processador1|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|ULA1|Add0~5_sumout\ = SUM(( !\Processador1|MUX1|saida_MUX[1]~1_combout\ $ (((\Processador1|decoderInstru1|saida[4]~3_combout\ & (\Processador1|decoderInstru1|Equal10~1_combout\ & !\Processador1|PC|DOUT\(8))))) ) + ( 
-- \Processador1|REGA|DOUT\(1) ) + ( \Processador1|ULA1|Add0~2\ ))
-- \Processador1|ULA1|Add0~6\ = CARRY(( !\Processador1|MUX1|saida_MUX[1]~1_combout\ $ (((\Processador1|decoderInstru1|saida[4]~3_combout\ & (\Processador1|decoderInstru1|Equal10~1_combout\ & !\Processador1|PC|DOUT\(8))))) ) + ( \Processador1|REGA|DOUT\(1) ) 
-- + ( \Processador1|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador1|decoderInstru1|ALT_INV_saida[4]~3_combout\,
	datab => \Processador1|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datac => \Processador1|PC|ALT_INV_DOUT\(8),
	datad => \Processador1|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \Processador1|REGA|ALT_INV_DOUT\(1),
	cin => \Processador1|ULA1|Add0~2\,
	sumout => \Processador1|ULA1|Add0~5_sumout\,
	cout => \Processador1|ULA1|Add0~6\);

-- Location: FF_X6_Y17_N37
\Processador1|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador1|ULA1|Add0~5_sumout\,
	asdata => \Processador1|MUX1|saida_MUX[1]~1_combout\,
	sload => \Processador1|ULA1|saida[0]~0_combout\,
	ena => \Processador1|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador1|REGA|DOUT\(1));

-- Location: FF_X7_Y17_N2
\REG_LEDs_7_to_0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador1|REGA|DOUT\(1),
	sload => VCC,
	ena => \opAndLEDs_7_to_0|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDs_7_to_0|DOUT\(1));

-- Location: FF_X4_Y17_N23
\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

-- Location: MLABCELL_X4_Y17_N21
\RAM1|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~529_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~1_combout\ & \RAM1|ram~17_q\) ) ) # ( !\ROM1|memROM~0_combout\ & ( (\RAM1|ram~17_q\ & ((!\Processador1|PC|DOUT[0]~DUPLICATE_q\) # ((!\RAM1|ram~541_combout\) # 
-- (!\ROM1|memROM~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000001111111000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador1|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \RAM1|ALT_INV_ram~541_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \RAM1|ALT_INV_ram~17_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~529_combout\);

-- Location: FF_X4_Y17_N8
\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

-- Location: MLABCELL_X4_Y17_N9
\RAM1|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~564_combout\ = ( \Processador1|PC|DOUT\(0) & ( \ROM1|memROM~1_combout\ & ( (\RAM1|ram~25_q\ & ((!\Processador1|PC|DOUT[3]~DUPLICATE_q\) # (\Processador1|PC|DOUT[2]~DUPLICATE_q\))) ) ) ) # ( !\Processador1|PC|DOUT\(0) & ( \ROM1|memROM~1_combout\ 
-- & ( (\RAM1|ram~25_q\ & ((!\Processador1|PC|DOUT\(1)) # ((!\Processador1|PC|DOUT[2]~DUPLICATE_q\) # (\Processador1|PC|DOUT[3]~DUPLICATE_q\)))) ) ) ) # ( \Processador1|PC|DOUT\(0) & ( !\ROM1|memROM~1_combout\ & ( \RAM1|ram~25_q\ ) ) ) # ( 
-- !\Processador1|PC|DOUT\(0) & ( !\ROM1|memROM~1_combout\ & ( \RAM1|ram~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110010001100110011001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador1|PC|ALT_INV_DOUT\(1),
	datab => \RAM1|ALT_INV_ram~25_q\,
	datac => \Processador1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \Processador1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \Processador1|PC|ALT_INV_DOUT\(0),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~564_combout\);

-- Location: MLABCELL_X4_Y17_N3
\RAM1|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~530_combout\ = ( \RAM1|ram~564_combout\ & ( (!\ROM1|memROM~11_combout\ & ((!\ROM1|memROM~4_combout\) # (\RAM1|ram~529_combout\))) ) ) # ( !\RAM1|ram~564_combout\ & ( (\ROM1|memROM~4_combout\ & (\RAM1|ram~529_combout\ & 
-- !\ROM1|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000010110000101100001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \RAM1|ALT_INV_ram~529_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \RAM1|ALT_INV_ram~564_combout\,
	combout => \RAM1|ram~530_combout\);

-- Location: LABCELL_X6_Y17_N27
\Processador1|MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|MUX1|saida_MUX[2]~2_combout\ = ( \RAM1|ram~530_combout\ & ( !\ROM1|memROM~9_combout\ $ (\Processador1|decoderInstru1|saida[6]~1_combout\) ) ) # ( !\RAM1|ram~530_combout\ & ( (\ROM1|memROM~9_combout\ & 
-- \Processador1|decoderInstru1|saida[6]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \Processador1|decoderInstru1|ALT_INV_saida[6]~1_combout\,
	dataf => \RAM1|ALT_INV_ram~530_combout\,
	combout => \Processador1|MUX1|saida_MUX[2]~2_combout\);

-- Location: LABCELL_X6_Y17_N39
\Processador1|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|ULA1|Add0~9_sumout\ = SUM(( !\Processador1|MUX1|saida_MUX[2]~2_combout\ $ (((\Processador1|decoderInstru1|saida[4]~3_combout\ & (\Processador1|decoderInstru1|Equal10~1_combout\ & !\Processador1|PC|DOUT[8]~DUPLICATE_q\)))) ) + ( 
-- \Processador1|REGA|DOUT\(2) ) + ( \Processador1|ULA1|Add0~6\ ))
-- \Processador1|ULA1|Add0~10\ = CARRY(( !\Processador1|MUX1|saida_MUX[2]~2_combout\ $ (((\Processador1|decoderInstru1|saida[4]~3_combout\ & (\Processador1|decoderInstru1|Equal10~1_combout\ & !\Processador1|PC|DOUT[8]~DUPLICATE_q\)))) ) + ( 
-- \Processador1|REGA|DOUT\(2) ) + ( \Processador1|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador1|decoderInstru1|ALT_INV_saida[4]~3_combout\,
	datab => \Processador1|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datac => \Processador1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \Processador1|MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \Processador1|REGA|ALT_INV_DOUT\(2),
	cin => \Processador1|ULA1|Add0~6\,
	sumout => \Processador1|ULA1|Add0~9_sumout\,
	cout => \Processador1|ULA1|Add0~10\);

-- Location: FF_X6_Y17_N41
\Processador1|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador1|ULA1|Add0~9_sumout\,
	asdata => \Processador1|MUX1|saida_MUX[2]~2_combout\,
	sload => \Processador1|ULA1|saida[0]~0_combout\,
	ena => \Processador1|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador1|REGA|DOUT\(2));

-- Location: FF_X4_Y17_N59
\REG_LEDs_7_to_0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador1|REGA|DOUT\(2),
	sload => VCC,
	ena => \opAndLEDs_7_to_0|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDs_7_to_0|DOUT\(2));

-- Location: FF_X6_Y17_N2
\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador1|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

-- Location: LABCELL_X6_Y17_N0
\RAM1|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~531_combout\ = ( !\ROM1|memROM~10_combout\ & ( (!\ROM1|memROM~2_combout\ & \RAM1|ram~26_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \RAM1|ALT_INV_ram~26_q\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~531_combout\);

-- Location: FF_X6_Y17_N26
\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador1|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

-- Location: LABCELL_X6_Y17_N24
\RAM1|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~532_combout\ = ( !\ROM1|memROM~10_combout\ & ( (!\ROM1|memROM~2_combout\ & \RAM1|ram~18_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \RAM1|ALT_INV_ram~18_q\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~532_combout\);

-- Location: LABCELL_X6_Y17_N15
\RAM1|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~560_combout\ = ( \RAM1|ram~532_combout\ & ( (!\ROM1|memROM~11_combout\ & ((\RAM1|ram~531_combout\) # (\ROM1|memROM~4_combout\))) ) ) # ( !\RAM1|ram~532_combout\ & ( (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~11_combout\ & 
-- \RAM1|ram~531_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100001000100110011000100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \RAM1|ALT_INV_ram~531_combout\,
	dataf => \RAM1|ALT_INV_ram~532_combout\,
	combout => \RAM1|ram~560_combout\);

-- Location: LABCELL_X6_Y17_N18
\Processador1|MUX1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|MUX1|saida_MUX[3]~3_combout\ = ( \RAM1|ram~560_combout\ & ( (!\Processador1|decoderInstru1|saida[6]~1_combout\ & ((!\ROM1|memROM~9_combout\))) # (\Processador1|decoderInstru1|saida[6]~1_combout\ & (\ROM1|memROM~10_combout\)) ) ) # ( 
-- !\RAM1|ram~560_combout\ & ( (\ROM1|memROM~10_combout\ & \Processador1|decoderInstru1|saida[6]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111110000010101011111000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \Processador1|decoderInstru1|ALT_INV_saida[6]~1_combout\,
	dataf => \RAM1|ALT_INV_ram~560_combout\,
	combout => \Processador1|MUX1|saida_MUX[3]~3_combout\);

-- Location: FF_X6_Y17_N44
\Processador1|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador1|ULA1|Add0~13_sumout\,
	asdata => \Processador1|MUX1|saida_MUX[3]~3_combout\,
	sload => \Processador1|ULA1|saida[0]~0_combout\,
	ena => \Processador1|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador1|REGA|DOUT\(3));

-- Location: LABCELL_X6_Y17_N42
\Processador1|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|ULA1|Add0~13_sumout\ = SUM(( !\Processador1|MUX1|saida_MUX[3]~3_combout\ $ (((\Processador1|decoderInstru1|saida[4]~3_combout\ & (!\Processador1|PC|DOUT[8]~DUPLICATE_q\ & \Processador1|decoderInstru1|Equal10~1_combout\)))) ) + ( 
-- \Processador1|REGA|DOUT\(3) ) + ( \Processador1|ULA1|Add0~10\ ))
-- \Processador1|ULA1|Add0~14\ = CARRY(( !\Processador1|MUX1|saida_MUX[3]~3_combout\ $ (((\Processador1|decoderInstru1|saida[4]~3_combout\ & (!\Processador1|PC|DOUT[8]~DUPLICATE_q\ & \Processador1|decoderInstru1|Equal10~1_combout\)))) ) + ( 
-- \Processador1|REGA|DOUT\(3) ) + ( \Processador1|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador1|decoderInstru1|ALT_INV_saida[4]~3_combout\,
	datab => \Processador1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \Processador1|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datad => \Processador1|MUX1|ALT_INV_saida_MUX[3]~3_combout\,
	dataf => \Processador1|REGA|ALT_INV_DOUT\(3),
	cin => \Processador1|ULA1|Add0~10\,
	sumout => \Processador1|ULA1|Add0~13_sumout\,
	cout => \Processador1|ULA1|Add0~14\);

-- Location: FF_X6_Y17_N43
\Processador1|REGA|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador1|ULA1|Add0~13_sumout\,
	asdata => \Processador1|MUX1|saida_MUX[3]~3_combout\,
	sload => \Processador1|ULA1|saida[0]~0_combout\,
	ena => \Processador1|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador1|REGA|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y17_N3
\REG_LEDs_7_to_0|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_LEDs_7_to_0|DOUT[3]~feeder_combout\ = ( \Processador1|REGA|DOUT[3]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador1|REGA|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \REG_LEDs_7_to_0|DOUT[3]~feeder_combout\);

-- Location: FF_X1_Y17_N5
\REG_LEDs_7_to_0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \REG_LEDs_7_to_0|DOUT[3]~feeder_combout\,
	ena => \opAndLEDs_7_to_0|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDs_7_to_0|DOUT\(3));

-- Location: FF_X4_Y17_N17
\RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

-- Location: MLABCELL_X4_Y17_N15
\RAM1|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~533_combout\ = ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~10_combout\ & \RAM1|ram~27_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \RAM1|ALT_INV_ram~27_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~533_combout\);

-- Location: FF_X4_Y17_N50
\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

-- Location: MLABCELL_X4_Y17_N48
\RAM1|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~534_combout\ = ( !\ROM1|memROM~10_combout\ & ( (!\ROM1|memROM~2_combout\ & \RAM1|ram~19_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \RAM1|ALT_INV_ram~19_q\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~534_combout\);

-- Location: MLABCELL_X4_Y17_N51
\RAM1|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~556_combout\ = ( \RAM1|ram~534_combout\ & ( (!\ROM1|memROM~11_combout\ & ((\RAM1|ram~533_combout\) # (\ROM1|memROM~4_combout\))) ) ) # ( !\RAM1|ram~534_combout\ & ( (!\ROM1|memROM~4_combout\ & (\RAM1|ram~533_combout\ & 
-- !\ROM1|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \RAM1|ALT_INV_ram~533_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \RAM1|ALT_INV_ram~534_combout\,
	combout => \RAM1|ram~556_combout\);

-- Location: LABCELL_X5_Y17_N3
\Processador1|MUX1|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|MUX1|saida_MUX[4]~4_combout\ = ( \RAM1|ram~556_combout\ & ( !\ROM1|memROM~9_combout\ $ (\Processador1|decoderInstru1|saida[6]~1_combout\) ) ) # ( !\RAM1|ram~556_combout\ & ( (\ROM1|memROM~9_combout\ & 
-- \Processador1|decoderInstru1|saida[6]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \Processador1|decoderInstru1|ALT_INV_saida[6]~1_combout\,
	dataf => \RAM1|ALT_INV_ram~556_combout\,
	combout => \Processador1|MUX1|saida_MUX[4]~4_combout\);

-- Location: LABCELL_X6_Y17_N45
\Processador1|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|ULA1|Add0~17_sumout\ = SUM(( !\Processador1|MUX1|saida_MUX[4]~4_combout\ $ (((\Processador1|decoderInstru1|saida[4]~3_combout\ & (!\Processador1|PC|DOUT[8]~DUPLICATE_q\ & \Processador1|decoderInstru1|Equal10~1_combout\)))) ) + ( 
-- \Processador1|REGA|DOUT\(4) ) + ( \Processador1|ULA1|Add0~14\ ))
-- \Processador1|ULA1|Add0~18\ = CARRY(( !\Processador1|MUX1|saida_MUX[4]~4_combout\ $ (((\Processador1|decoderInstru1|saida[4]~3_combout\ & (!\Processador1|PC|DOUT[8]~DUPLICATE_q\ & \Processador1|decoderInstru1|Equal10~1_combout\)))) ) + ( 
-- \Processador1|REGA|DOUT\(4) ) + ( \Processador1|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador1|decoderInstru1|ALT_INV_saida[4]~3_combout\,
	datab => \Processador1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \Processador1|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datad => \Processador1|MUX1|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \Processador1|REGA|ALT_INV_DOUT\(4),
	cin => \Processador1|ULA1|Add0~14\,
	sumout => \Processador1|ULA1|Add0~17_sumout\,
	cout => \Processador1|ULA1|Add0~18\);

-- Location: FF_X6_Y17_N47
\Processador1|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador1|ULA1|Add0~17_sumout\,
	asdata => \Processador1|MUX1|saida_MUX[4]~4_combout\,
	sload => \Processador1|ULA1|saida[0]~0_combout\,
	ena => \Processador1|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador1|REGA|DOUT\(4));

-- Location: FF_X4_Y17_N4
\REG_LEDs_7_to_0|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador1|REGA|DOUT\(4),
	sload => VCC,
	ena => \opAndLEDs_7_to_0|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDs_7_to_0|DOUT\(4));

-- Location: FF_X6_Y17_N23
\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

-- Location: LABCELL_X6_Y17_N21
\RAM1|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~535_combout\ = ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~10_combout\ & \RAM1|ram~28_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \RAM1|ALT_INV_ram~28_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~535_combout\);

-- Location: FF_X6_Y17_N29
\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

-- Location: LABCELL_X7_Y17_N45
\RAM1|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~536_combout\ = ( !\ROM1|memROM~2_combout\ & ( (\RAM1|ram~20_q\ & !\ROM1|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~20_q\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~536_combout\);

-- Location: LABCELL_X6_Y17_N9
\RAM1|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~552_combout\ = ( \RAM1|ram~536_combout\ & ( (!\ROM1|memROM~11_combout\ & ((\RAM1|ram~535_combout\) # (\ROM1|memROM~4_combout\))) ) ) # ( !\RAM1|ram~536_combout\ & ( (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~11_combout\ & 
-- \RAM1|ram~535_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100001000100110011000100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \RAM1|ALT_INV_ram~535_combout\,
	dataf => \RAM1|ALT_INV_ram~536_combout\,
	combout => \RAM1|ram~552_combout\);

-- Location: LABCELL_X6_Y17_N6
\Processador1|MUX1|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|MUX1|saida_MUX[5]~5_combout\ = ( \RAM1|ram~552_combout\ & ( (!\Processador1|decoderInstru1|saida[6]~1_combout\ & ((!\ROM1|memROM~9_combout\))) # (\Processador1|decoderInstru1|saida[6]~1_combout\ & (\ROM1|memROM~11_combout\)) ) ) # ( 
-- !\RAM1|ram~552_combout\ & ( (\ROM1|memROM~11_combout\ & \Processador1|decoderInstru1|saida[6]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111110000001100111111000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \Processador1|decoderInstru1|ALT_INV_saida[6]~1_combout\,
	dataf => \RAM1|ALT_INV_ram~552_combout\,
	combout => \Processador1|MUX1|saida_MUX[5]~5_combout\);

-- Location: LABCELL_X6_Y17_N48
\Processador1|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|ULA1|Add0~21_sumout\ = SUM(( !\Processador1|MUX1|saida_MUX[5]~5_combout\ $ (((\Processador1|decoderInstru1|saida[4]~3_combout\ & (!\Processador1|PC|DOUT[8]~DUPLICATE_q\ & \Processador1|decoderInstru1|Equal10~1_combout\)))) ) + ( 
-- \Processador1|REGA|DOUT\(5) ) + ( \Processador1|ULA1|Add0~18\ ))
-- \Processador1|ULA1|Add0~22\ = CARRY(( !\Processador1|MUX1|saida_MUX[5]~5_combout\ $ (((\Processador1|decoderInstru1|saida[4]~3_combout\ & (!\Processador1|PC|DOUT[8]~DUPLICATE_q\ & \Processador1|decoderInstru1|Equal10~1_combout\)))) ) + ( 
-- \Processador1|REGA|DOUT\(5) ) + ( \Processador1|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador1|decoderInstru1|ALT_INV_saida[4]~3_combout\,
	datab => \Processador1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \Processador1|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datad => \Processador1|MUX1|ALT_INV_saida_MUX[5]~5_combout\,
	dataf => \Processador1|REGA|ALT_INV_DOUT\(5),
	cin => \Processador1|ULA1|Add0~18\,
	sumout => \Processador1|ULA1|Add0~21_sumout\,
	cout => \Processador1|ULA1|Add0~22\);

-- Location: FF_X6_Y17_N50
\Processador1|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador1|ULA1|Add0~21_sumout\,
	asdata => \Processador1|MUX1|saida_MUX[5]~5_combout\,
	sload => \Processador1|ULA1|saida[0]~0_combout\,
	ena => \Processador1|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador1|REGA|DOUT\(5));

-- Location: FF_X4_Y17_N55
\REG_LEDs_7_to_0|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador1|REGA|DOUT\(5),
	sload => VCC,
	ena => \opAndLEDs_7_to_0|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDs_7_to_0|DOUT\(5));

-- Location: FF_X7_Y17_N41
\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

-- Location: LABCELL_X7_Y17_N39
\RAM1|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~538_combout\ = ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~10_combout\ & \RAM1|ram~21_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \RAM1|ALT_INV_ram~21_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~538_combout\);

-- Location: FF_X7_Y17_N11
\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

-- Location: LABCELL_X7_Y17_N9
\RAM1|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~537_combout\ = ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~10_combout\ & \RAM1|ram~29_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \RAM1|ALT_INV_ram~29_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~537_combout\);

-- Location: LABCELL_X7_Y17_N15
\RAM1|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~548_combout\ = ( \ROM1|memROM~4_combout\ & ( \RAM1|ram~537_combout\ & ( (\RAM1|ram~538_combout\ & !\ROM1|memROM~11_combout\) ) ) ) # ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~537_combout\ & ( !\ROM1|memROM~11_combout\ ) ) ) # ( 
-- \ROM1|memROM~4_combout\ & ( !\RAM1|ram~537_combout\ & ( (\RAM1|ram~538_combout\ & !\ROM1|memROM~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000011111111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~538_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM1|ALT_INV_ram~537_combout\,
	combout => \RAM1|ram~548_combout\);

-- Location: LABCELL_X7_Y17_N54
\Processador1|MUX1|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|MUX1|saida_MUX[6]~6_combout\ = ( \RAM1|ram~548_combout\ & ( !\ROM1|memROM~9_combout\ $ (\Processador1|decoderInstru1|saida[6]~1_combout\) ) ) # ( !\RAM1|ram~548_combout\ & ( (\ROM1|memROM~9_combout\ & 
-- \Processador1|decoderInstru1|saida[6]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \Processador1|decoderInstru1|ALT_INV_saida[6]~1_combout\,
	dataf => \RAM1|ALT_INV_ram~548_combout\,
	combout => \Processador1|MUX1|saida_MUX[6]~6_combout\);

-- Location: FF_X6_Y17_N53
\Processador1|REGA|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador1|ULA1|Add0~25_sumout\,
	asdata => \Processador1|MUX1|saida_MUX[6]~6_combout\,
	sload => \Processador1|ULA1|saida[0]~0_combout\,
	ena => \Processador1|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador1|REGA|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X6_Y17_N51
\Processador1|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|ULA1|Add0~25_sumout\ = SUM(( !\Processador1|MUX1|saida_MUX[6]~6_combout\ $ (((\Processador1|decoderInstru1|saida[4]~3_combout\ & (!\Processador1|PC|DOUT[8]~DUPLICATE_q\ & \Processador1|decoderInstru1|Equal10~1_combout\)))) ) + ( 
-- \Processador1|REGA|DOUT[6]~DUPLICATE_q\ ) + ( \Processador1|ULA1|Add0~22\ ))
-- \Processador1|ULA1|Add0~26\ = CARRY(( !\Processador1|MUX1|saida_MUX[6]~6_combout\ $ (((\Processador1|decoderInstru1|saida[4]~3_combout\ & (!\Processador1|PC|DOUT[8]~DUPLICATE_q\ & \Processador1|decoderInstru1|Equal10~1_combout\)))) ) + ( 
-- \Processador1|REGA|DOUT[6]~DUPLICATE_q\ ) + ( \Processador1|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador1|decoderInstru1|ALT_INV_saida[4]~3_combout\,
	datab => \Processador1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \Processador1|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datad => \Processador1|MUX1|ALT_INV_saida_MUX[6]~6_combout\,
	dataf => \Processador1|REGA|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \Processador1|ULA1|Add0~22\,
	sumout => \Processador1|ULA1|Add0~25_sumout\,
	cout => \Processador1|ULA1|Add0~26\);

-- Location: FF_X6_Y17_N52
\Processador1|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador1|ULA1|Add0~25_sumout\,
	asdata => \Processador1|MUX1|saida_MUX[6]~6_combout\,
	sload => \Processador1|ULA1|saida[0]~0_combout\,
	ena => \Processador1|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador1|REGA|DOUT\(6));

-- Location: FF_X7_Y17_N5
\REG_LEDs_7_to_0|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador1|REGA|DOUT\(6),
	sload => VCC,
	ena => \opAndLEDs_7_to_0|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDs_7_to_0|DOUT\(6));

-- Location: FF_X4_Y17_N26
\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

-- Location: MLABCELL_X4_Y17_N24
\RAM1|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~539_combout\ = ( !\ROM1|memROM~10_combout\ & ( (!\ROM1|memROM~2_combout\ & \RAM1|ram~30_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \RAM1|ALT_INV_ram~30_q\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~539_combout\);

-- Location: FF_X4_Y17_N35
\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

-- Location: MLABCELL_X4_Y17_N33
\RAM1|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~540_combout\ = ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~10_combout\ & \RAM1|ram~22_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \RAM1|ALT_INV_ram~22_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~540_combout\);

-- Location: MLABCELL_X4_Y17_N36
\RAM1|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~544_combout\ = ( \RAM1|ram~540_combout\ & ( (!\ROM1|memROM~11_combout\ & ((\ROM1|memROM~4_combout\) # (\RAM1|ram~539_combout\))) ) ) # ( !\RAM1|ram~540_combout\ & ( (!\ROM1|memROM~11_combout\ & (\RAM1|ram~539_combout\ & 
-- !\ROM1|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \RAM1|ALT_INV_ram~539_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM1|ALT_INV_ram~540_combout\,
	combout => \RAM1|ram~544_combout\);

-- Location: LABCELL_X6_Y17_N12
\Processador1|MUX1|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|MUX1|saida_MUX[7]~7_combout\ = ( \RAM1|ram~544_combout\ & ( (!\Processador1|decoderInstru1|saida[6]~1_combout\ & ((!\ROM1|memROM~9_combout\))) # (\Processador1|decoderInstru1|saida[6]~1_combout\ & (\ROM1|memROM~11_combout\)) ) ) # ( 
-- !\RAM1|ram~544_combout\ & ( (\ROM1|memROM~11_combout\ & \Processador1|decoderInstru1|saida[6]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011000000111111001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \Processador1|decoderInstru1|ALT_INV_saida[6]~1_combout\,
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \RAM1|ALT_INV_ram~544_combout\,
	combout => \Processador1|MUX1|saida_MUX[7]~7_combout\);

-- Location: LABCELL_X6_Y17_N54
\Processador1|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador1|ULA1|Add0~29_sumout\ = SUM(( !\Processador1|MUX1|saida_MUX[7]~7_combout\ $ (((\Processador1|decoderInstru1|saida[4]~3_combout\ & (!\Processador1|PC|DOUT[8]~DUPLICATE_q\ & \Processador1|decoderInstru1|Equal10~1_combout\)))) ) + ( 
-- \Processador1|REGA|DOUT\(7) ) + ( \Processador1|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador1|decoderInstru1|ALT_INV_saida[4]~3_combout\,
	datab => \Processador1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \Processador1|decoderInstru1|ALT_INV_Equal10~1_combout\,
	datad => \Processador1|MUX1|ALT_INV_saida_MUX[7]~7_combout\,
	dataf => \Processador1|REGA|ALT_INV_DOUT\(7),
	cin => \Processador1|ULA1|Add0~26\,
	sumout => \Processador1|ULA1|Add0~29_sumout\);

-- Location: FF_X6_Y17_N55
\Processador1|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador1|ULA1|Add0~29_sumout\,
	asdata => \Processador1|MUX1|saida_MUX[7]~7_combout\,
	sload => \Processador1|ULA1|saida[0]~0_combout\,
	ena => \Processador1|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador1|REGA|DOUT\(7));

-- Location: FF_X4_Y17_N2
\REG_LEDs_7_to_0|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador1|REGA|DOUT\(7),
	sload => VCC,
	ena => \opAndLEDs_7_to_0|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDs_7_to_0|DOUT\(7));

-- Location: LABCELL_X7_Y17_N42
\RAM1|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|process_0~1_combout\ = ( \Processador1|PC|DOUT\(3) & ( (\ROM1|memROM~1_combout\ & (!\Processador1|PC|DOUT[0]~DUPLICATE_q\ & !\Processador1|PC|DOUT\(2))) ) ) # ( !\Processador1|PC|DOUT\(3) & ( (\ROM1|memROM~1_combout\ & 
-- ((!\Processador1|PC|DOUT[0]~DUPLICATE_q\ & ((\Processador1|PC|DOUT\(2)))) # (\Processador1|PC|DOUT[0]~DUPLICATE_q\ & ((!\Processador1|PC|DOUT\(1)) # (!\Processador1|PC|DOUT\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010100000100010101010001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \Processador1|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \Processador1|PC|ALT_INV_DOUT\(1),
	datad => \Processador1|PC|ALT_INV_DOUT\(2),
	dataf => \Processador1|PC|ALT_INV_DOUT\(3),
	combout => \RAM1|process_0~1_combout\);

-- Location: LABCELL_X2_Y17_N3
\opAndLED8|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opAndLED8|saida~0_combout\ = ( \ROM1|memROM~3_combout\ & ( (\ROM1|memROM~1_combout\ & !\ROM1|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \opAndLED8|saida~0_combout\);

-- Location: LABCELL_X2_Y17_N6
\RAM1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|process_0~0_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~8_combout\ & ( \ROM1|memROM~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|process_0~0_combout\);

-- Location: LABCELL_X2_Y17_N42
\FF_LED8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF_LED8|DOUT~0_combout\ = ( \FF_LED8|DOUT~q\ & ( \ROM1|memROM~5_combout\ & ( ((!\RAM1|process_0~1_combout\) # ((!\opAndLED8|saida~0_combout\) # (!\RAM1|process_0~0_combout\))) # (\Processador1|REGA|DOUT\(0)) ) ) ) # ( !\FF_LED8|DOUT~q\ & ( 
-- \ROM1|memROM~5_combout\ & ( (\Processador1|REGA|DOUT\(0) & (\RAM1|process_0~1_combout\ & (\opAndLED8|saida~0_combout\ & \RAM1|process_0~0_combout\))) ) ) ) # ( \FF_LED8|DOUT~q\ & ( !\ROM1|memROM~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador1|REGA|ALT_INV_DOUT\(0),
	datab => \RAM1|ALT_INV_process_0~1_combout\,
	datac => \opAndLED8|ALT_INV_saida~0_combout\,
	datad => \RAM1|ALT_INV_process_0~0_combout\,
	datae => \FF_LED8|ALT_INV_DOUT~q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \FF_LED8|DOUT~0_combout\);

-- Location: FF_X2_Y17_N43
\FF_LED8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \FF_LED8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF_LED8|DOUT~q\);

-- Location: LABCELL_X2_Y17_N39
\opAndLEDs_7_to_0|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opAndLEDs_7_to_0|saida~0_combout\ = ( \ROM1|memROM~5_combout\ & ( (\ROM1|memROM~4_combout\ & (\RAM1|process_0~0_combout\ & \RAM1|process_0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \RAM1|ALT_INV_process_0~0_combout\,
	datad => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \opAndLEDs_7_to_0|saida~0_combout\);

-- Location: LABCELL_X2_Y17_N36
\FF_LED9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF_LED9|DOUT~0_combout\ = ( \opAndLEDs_7_to_0|saida~0_combout\ & ( (!\ROM1|memROM~2_combout\ & ((\FF_LED9|DOUT~q\))) # (\ROM1|memROM~2_combout\ & (\Processador1|REGA|DOUT\(0))) ) ) # ( !\opAndLEDs_7_to_0|saida~0_combout\ & ( \FF_LED9|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador1|REGA|ALT_INV_DOUT\(0),
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \FF_LED9|ALT_INV_DOUT~q\,
	dataf => \opAndLEDs_7_to_0|ALT_INV_saida~0_combout\,
	combout => \FF_LED9|DOUT~0_combout\);

-- Location: FF_X2_Y17_N37
\FF_LED9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \FF_LED9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF_LED9|DOUT~q\);

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

-- Location: MLABCELL_X9_Y34_N0
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


