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

-- DATE "05/10/2024 12:11:34"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Aula16 IS
    PORT (
	resultado_soma : OUT std_logic_vector(31 DOWNTO 0);
	resultado_and : OUT std_logic_vector(31 DOWNTO 0);
	resultado_or : OUT std_logic_vector(31 DOWNTO 0);
	resultado_sub : OUT std_logic_vector(31 DOWNTO 0);
	resultado_slt_v : OUT std_logic_vector(31 DOWNTO 0);
	resultado_slt_f : OUT std_logic_vector(31 DOWNTO 0);
	zero : OUT std_logic
	);
END Aula16;

ARCHITECTURE structure OF Aula16 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_resultado_soma : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_resultado_and : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_resultado_or : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_resultado_sub : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_resultado_slt_v : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_resultado_slt_f : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_zero : std_logic;
SIGNAL \resultado_soma[0]~output_o\ : std_logic;
SIGNAL \resultado_soma[1]~output_o\ : std_logic;
SIGNAL \resultado_soma[2]~output_o\ : std_logic;
SIGNAL \resultado_soma[3]~output_o\ : std_logic;
SIGNAL \resultado_soma[4]~output_o\ : std_logic;
SIGNAL \resultado_soma[5]~output_o\ : std_logic;
SIGNAL \resultado_soma[6]~output_o\ : std_logic;
SIGNAL \resultado_soma[7]~output_o\ : std_logic;
SIGNAL \resultado_soma[8]~output_o\ : std_logic;
SIGNAL \resultado_soma[9]~output_o\ : std_logic;
SIGNAL \resultado_soma[10]~output_o\ : std_logic;
SIGNAL \resultado_soma[11]~output_o\ : std_logic;
SIGNAL \resultado_soma[12]~output_o\ : std_logic;
SIGNAL \resultado_soma[13]~output_o\ : std_logic;
SIGNAL \resultado_soma[14]~output_o\ : std_logic;
SIGNAL \resultado_soma[15]~output_o\ : std_logic;
SIGNAL \resultado_soma[16]~output_o\ : std_logic;
SIGNAL \resultado_soma[17]~output_o\ : std_logic;
SIGNAL \resultado_soma[18]~output_o\ : std_logic;
SIGNAL \resultado_soma[19]~output_o\ : std_logic;
SIGNAL \resultado_soma[20]~output_o\ : std_logic;
SIGNAL \resultado_soma[21]~output_o\ : std_logic;
SIGNAL \resultado_soma[22]~output_o\ : std_logic;
SIGNAL \resultado_soma[23]~output_o\ : std_logic;
SIGNAL \resultado_soma[24]~output_o\ : std_logic;
SIGNAL \resultado_soma[25]~output_o\ : std_logic;
SIGNAL \resultado_soma[26]~output_o\ : std_logic;
SIGNAL \resultado_soma[27]~output_o\ : std_logic;
SIGNAL \resultado_soma[28]~output_o\ : std_logic;
SIGNAL \resultado_soma[29]~output_o\ : std_logic;
SIGNAL \resultado_soma[30]~output_o\ : std_logic;
SIGNAL \resultado_soma[31]~output_o\ : std_logic;
SIGNAL \resultado_and[0]~output_o\ : std_logic;
SIGNAL \resultado_and[1]~output_o\ : std_logic;
SIGNAL \resultado_and[2]~output_o\ : std_logic;
SIGNAL \resultado_and[3]~output_o\ : std_logic;
SIGNAL \resultado_and[4]~output_o\ : std_logic;
SIGNAL \resultado_and[5]~output_o\ : std_logic;
SIGNAL \resultado_and[6]~output_o\ : std_logic;
SIGNAL \resultado_and[7]~output_o\ : std_logic;
SIGNAL \resultado_and[8]~output_o\ : std_logic;
SIGNAL \resultado_and[9]~output_o\ : std_logic;
SIGNAL \resultado_and[10]~output_o\ : std_logic;
SIGNAL \resultado_and[11]~output_o\ : std_logic;
SIGNAL \resultado_and[12]~output_o\ : std_logic;
SIGNAL \resultado_and[13]~output_o\ : std_logic;
SIGNAL \resultado_and[14]~output_o\ : std_logic;
SIGNAL \resultado_and[15]~output_o\ : std_logic;
SIGNAL \resultado_and[16]~output_o\ : std_logic;
SIGNAL \resultado_and[17]~output_o\ : std_logic;
SIGNAL \resultado_and[18]~output_o\ : std_logic;
SIGNAL \resultado_and[19]~output_o\ : std_logic;
SIGNAL \resultado_and[20]~output_o\ : std_logic;
SIGNAL \resultado_and[21]~output_o\ : std_logic;
SIGNAL \resultado_and[22]~output_o\ : std_logic;
SIGNAL \resultado_and[23]~output_o\ : std_logic;
SIGNAL \resultado_and[24]~output_o\ : std_logic;
SIGNAL \resultado_and[25]~output_o\ : std_logic;
SIGNAL \resultado_and[26]~output_o\ : std_logic;
SIGNAL \resultado_and[27]~output_o\ : std_logic;
SIGNAL \resultado_and[28]~output_o\ : std_logic;
SIGNAL \resultado_and[29]~output_o\ : std_logic;
SIGNAL \resultado_and[30]~output_o\ : std_logic;
SIGNAL \resultado_and[31]~output_o\ : std_logic;
SIGNAL \resultado_or[0]~output_o\ : std_logic;
SIGNAL \resultado_or[1]~output_o\ : std_logic;
SIGNAL \resultado_or[2]~output_o\ : std_logic;
SIGNAL \resultado_or[3]~output_o\ : std_logic;
SIGNAL \resultado_or[4]~output_o\ : std_logic;
SIGNAL \resultado_or[5]~output_o\ : std_logic;
SIGNAL \resultado_or[6]~output_o\ : std_logic;
SIGNAL \resultado_or[7]~output_o\ : std_logic;
SIGNAL \resultado_or[8]~output_o\ : std_logic;
SIGNAL \resultado_or[9]~output_o\ : std_logic;
SIGNAL \resultado_or[10]~output_o\ : std_logic;
SIGNAL \resultado_or[11]~output_o\ : std_logic;
SIGNAL \resultado_or[12]~output_o\ : std_logic;
SIGNAL \resultado_or[13]~output_o\ : std_logic;
SIGNAL \resultado_or[14]~output_o\ : std_logic;
SIGNAL \resultado_or[15]~output_o\ : std_logic;
SIGNAL \resultado_or[16]~output_o\ : std_logic;
SIGNAL \resultado_or[17]~output_o\ : std_logic;
SIGNAL \resultado_or[18]~output_o\ : std_logic;
SIGNAL \resultado_or[19]~output_o\ : std_logic;
SIGNAL \resultado_or[20]~output_o\ : std_logic;
SIGNAL \resultado_or[21]~output_o\ : std_logic;
SIGNAL \resultado_or[22]~output_o\ : std_logic;
SIGNAL \resultado_or[23]~output_o\ : std_logic;
SIGNAL \resultado_or[24]~output_o\ : std_logic;
SIGNAL \resultado_or[25]~output_o\ : std_logic;
SIGNAL \resultado_or[26]~output_o\ : std_logic;
SIGNAL \resultado_or[27]~output_o\ : std_logic;
SIGNAL \resultado_or[28]~output_o\ : std_logic;
SIGNAL \resultado_or[29]~output_o\ : std_logic;
SIGNAL \resultado_or[30]~output_o\ : std_logic;
SIGNAL \resultado_or[31]~output_o\ : std_logic;
SIGNAL \resultado_sub[0]~output_o\ : std_logic;
SIGNAL \resultado_sub[1]~output_o\ : std_logic;
SIGNAL \resultado_sub[2]~output_o\ : std_logic;
SIGNAL \resultado_sub[3]~output_o\ : std_logic;
SIGNAL \resultado_sub[4]~output_o\ : std_logic;
SIGNAL \resultado_sub[5]~output_o\ : std_logic;
SIGNAL \resultado_sub[6]~output_o\ : std_logic;
SIGNAL \resultado_sub[7]~output_o\ : std_logic;
SIGNAL \resultado_sub[8]~output_o\ : std_logic;
SIGNAL \resultado_sub[9]~output_o\ : std_logic;
SIGNAL \resultado_sub[10]~output_o\ : std_logic;
SIGNAL \resultado_sub[11]~output_o\ : std_logic;
SIGNAL \resultado_sub[12]~output_o\ : std_logic;
SIGNAL \resultado_sub[13]~output_o\ : std_logic;
SIGNAL \resultado_sub[14]~output_o\ : std_logic;
SIGNAL \resultado_sub[15]~output_o\ : std_logic;
SIGNAL \resultado_sub[16]~output_o\ : std_logic;
SIGNAL \resultado_sub[17]~output_o\ : std_logic;
SIGNAL \resultado_sub[18]~output_o\ : std_logic;
SIGNAL \resultado_sub[19]~output_o\ : std_logic;
SIGNAL \resultado_sub[20]~output_o\ : std_logic;
SIGNAL \resultado_sub[21]~output_o\ : std_logic;
SIGNAL \resultado_sub[22]~output_o\ : std_logic;
SIGNAL \resultado_sub[23]~output_o\ : std_logic;
SIGNAL \resultado_sub[24]~output_o\ : std_logic;
SIGNAL \resultado_sub[25]~output_o\ : std_logic;
SIGNAL \resultado_sub[26]~output_o\ : std_logic;
SIGNAL \resultado_sub[27]~output_o\ : std_logic;
SIGNAL \resultado_sub[28]~output_o\ : std_logic;
SIGNAL \resultado_sub[29]~output_o\ : std_logic;
SIGNAL \resultado_sub[30]~output_o\ : std_logic;
SIGNAL \resultado_sub[31]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[0]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[1]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[2]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[3]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[4]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[5]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[6]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[7]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[8]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[9]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[10]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[11]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[12]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[13]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[14]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[15]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[16]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[17]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[18]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[19]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[20]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[21]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[22]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[23]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[24]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[25]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[26]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[27]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[28]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[29]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[30]~output_o\ : std_logic;
SIGNAL \resultado_slt_v[31]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[0]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[1]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[2]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[3]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[4]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[5]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[6]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[7]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[8]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[9]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[10]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[11]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[12]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[13]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[14]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[15]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[16]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[17]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[18]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[19]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[20]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[21]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[22]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[23]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[24]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[25]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[26]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[27]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[28]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[29]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[30]~output_o\ : std_logic;
SIGNAL \resultado_slt_f[31]~output_o\ : std_logic;
SIGNAL \zero~output_o\ : std_logic;

BEGIN

resultado_soma <= ww_resultado_soma;
resultado_and <= ww_resultado_and;
resultado_or <= ww_resultado_or;
resultado_sub <= ww_resultado_sub;
resultado_slt_v <= ww_resultado_slt_v;
resultado_slt_f <= ww_resultado_slt_f;
zero <= ww_zero;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\resultado_soma[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \resultado_soma[0]~output_o\);

\resultado_soma[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \resultado_soma[1]~output_o\);

\resultado_soma[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \resultado_soma[2]~output_o\);

\resultado_soma[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_soma[3]~output_o\);

\resultado_soma[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_soma[4]~output_o\);

\resultado_soma[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_soma[5]~output_o\);

\resultado_soma[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_soma[6]~output_o\);

\resultado_soma[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_soma[7]~output_o\);

\resultado_soma[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_soma[8]~output_o\);

\resultado_soma[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_soma[9]~output_o\);

\resultado_soma[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_soma[10]~output_o\);

\resultado_soma[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_soma[11]~output_o\);

\resultado_soma[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_soma[12]~output_o\);

\resultado_soma[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_soma[13]~output_o\);

\resultado_soma[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_soma[14]~output_o\);

\resultado_soma[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_soma[15]~output_o\);

\resultado_soma[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_soma[16]~output_o\);

\resultado_soma[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_soma[17]~output_o\);

\resultado_soma[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_soma[18]~output_o\);

\resultado_soma[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_soma[19]~output_o\);

\resultado_soma[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_soma[20]~output_o\);

\resultado_soma[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_soma[21]~output_o\);

\resultado_soma[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_soma[22]~output_o\);

\resultado_soma[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_soma[23]~output_o\);

\resultado_soma[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_soma[24]~output_o\);

\resultado_soma[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_soma[25]~output_o\);

\resultado_soma[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_soma[26]~output_o\);

\resultado_soma[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_soma[27]~output_o\);

\resultado_soma[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_soma[28]~output_o\);

\resultado_soma[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_soma[29]~output_o\);

\resultado_soma[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_soma[30]~output_o\);

\resultado_soma[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_soma[31]~output_o\);

\resultado_and[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[0]~output_o\);

\resultado_and[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[1]~output_o\);

\resultado_and[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[2]~output_o\);

\resultado_and[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[3]~output_o\);

\resultado_and[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[4]~output_o\);

\resultado_and[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[5]~output_o\);

\resultado_and[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[6]~output_o\);

\resultado_and[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[7]~output_o\);

\resultado_and[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[8]~output_o\);

\resultado_and[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[9]~output_o\);

\resultado_and[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[10]~output_o\);

\resultado_and[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[11]~output_o\);

\resultado_and[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[12]~output_o\);

\resultado_and[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[13]~output_o\);

\resultado_and[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[14]~output_o\);

\resultado_and[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[15]~output_o\);

\resultado_and[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[16]~output_o\);

\resultado_and[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[17]~output_o\);

\resultado_and[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[18]~output_o\);

\resultado_and[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[19]~output_o\);

\resultado_and[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[20]~output_o\);

\resultado_and[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[21]~output_o\);

\resultado_and[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[22]~output_o\);

\resultado_and[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[23]~output_o\);

\resultado_and[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[24]~output_o\);

\resultado_and[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[25]~output_o\);

\resultado_and[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[26]~output_o\);

\resultado_and[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[27]~output_o\);

\resultado_and[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[28]~output_o\);

\resultado_and[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[29]~output_o\);

\resultado_and[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[30]~output_o\);

\resultado_and[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_and[31]~output_o\);

\resultado_or[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \resultado_or[0]~output_o\);

\resultado_or[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \resultado_or[1]~output_o\);

\resultado_or[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \resultado_or[2]~output_o\);

\resultado_or[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_or[3]~output_o\);

\resultado_or[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_or[4]~output_o\);

\resultado_or[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_or[5]~output_o\);

\resultado_or[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_or[6]~output_o\);

\resultado_or[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_or[7]~output_o\);

\resultado_or[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_or[8]~output_o\);

\resultado_or[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_or[9]~output_o\);

\resultado_or[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_or[10]~output_o\);

\resultado_or[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_or[11]~output_o\);

\resultado_or[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_or[12]~output_o\);

\resultado_or[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_or[13]~output_o\);

\resultado_or[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_or[14]~output_o\);

\resultado_or[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_or[15]~output_o\);

\resultado_or[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_or[16]~output_o\);

\resultado_or[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_or[17]~output_o\);

\resultado_or[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_or[18]~output_o\);

\resultado_or[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_or[19]~output_o\);

\resultado_or[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_or[20]~output_o\);

\resultado_or[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_or[21]~output_o\);

\resultado_or[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_or[22]~output_o\);

\resultado_or[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_or[23]~output_o\);

\resultado_or[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_or[24]~output_o\);

\resultado_or[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_or[25]~output_o\);

\resultado_or[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_or[26]~output_o\);

\resultado_or[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_or[27]~output_o\);

\resultado_or[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_or[28]~output_o\);

\resultado_or[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_or[29]~output_o\);

\resultado_or[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_or[30]~output_o\);

\resultado_or[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_or[31]~output_o\);

\resultado_sub[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \resultado_sub[0]~output_o\);

\resultado_sub[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[1]~output_o\);

\resultado_sub[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[2]~output_o\);

\resultado_sub[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[3]~output_o\);

\resultado_sub[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[4]~output_o\);

\resultado_sub[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[5]~output_o\);

\resultado_sub[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[6]~output_o\);

\resultado_sub[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[7]~output_o\);

\resultado_sub[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[8]~output_o\);

\resultado_sub[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[9]~output_o\);

\resultado_sub[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[10]~output_o\);

\resultado_sub[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[11]~output_o\);

\resultado_sub[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[12]~output_o\);

\resultado_sub[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[13]~output_o\);

\resultado_sub[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[14]~output_o\);

\resultado_sub[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[15]~output_o\);

\resultado_sub[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[16]~output_o\);

\resultado_sub[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[17]~output_o\);

\resultado_sub[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[18]~output_o\);

\resultado_sub[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[19]~output_o\);

\resultado_sub[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[20]~output_o\);

\resultado_sub[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[21]~output_o\);

\resultado_sub[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[22]~output_o\);

\resultado_sub[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[23]~output_o\);

\resultado_sub[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[24]~output_o\);

\resultado_sub[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[25]~output_o\);

\resultado_sub[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[26]~output_o\);

\resultado_sub[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[27]~output_o\);

\resultado_sub[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[28]~output_o\);

\resultado_sub[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[29]~output_o\);

\resultado_sub[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[30]~output_o\);

\resultado_sub[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_sub[31]~output_o\);

\resultado_slt_v[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \resultado_slt_v[0]~output_o\);

\resultado_slt_v[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[1]~output_o\);

\resultado_slt_v[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[2]~output_o\);

\resultado_slt_v[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[3]~output_o\);

\resultado_slt_v[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[4]~output_o\);

\resultado_slt_v[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[5]~output_o\);

\resultado_slt_v[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[6]~output_o\);

\resultado_slt_v[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[7]~output_o\);

\resultado_slt_v[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[8]~output_o\);

\resultado_slt_v[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[9]~output_o\);

\resultado_slt_v[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[10]~output_o\);

\resultado_slt_v[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[11]~output_o\);

\resultado_slt_v[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[12]~output_o\);

\resultado_slt_v[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[13]~output_o\);

\resultado_slt_v[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[14]~output_o\);

\resultado_slt_v[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[15]~output_o\);

\resultado_slt_v[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[16]~output_o\);

\resultado_slt_v[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[17]~output_o\);

\resultado_slt_v[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[18]~output_o\);

\resultado_slt_v[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[19]~output_o\);

\resultado_slt_v[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[20]~output_o\);

\resultado_slt_v[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[21]~output_o\);

\resultado_slt_v[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[22]~output_o\);

\resultado_slt_v[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[23]~output_o\);

\resultado_slt_v[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[24]~output_o\);

\resultado_slt_v[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[25]~output_o\);

\resultado_slt_v[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[26]~output_o\);

\resultado_slt_v[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[27]~output_o\);

\resultado_slt_v[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[28]~output_o\);

\resultado_slt_v[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[29]~output_o\);

\resultado_slt_v[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[30]~output_o\);

\resultado_slt_v[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_v[31]~output_o\);

\resultado_slt_f[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[0]~output_o\);

\resultado_slt_f[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[1]~output_o\);

\resultado_slt_f[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[2]~output_o\);

\resultado_slt_f[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[3]~output_o\);

\resultado_slt_f[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[4]~output_o\);

\resultado_slt_f[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[5]~output_o\);

\resultado_slt_f[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[6]~output_o\);

\resultado_slt_f[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[7]~output_o\);

\resultado_slt_f[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[8]~output_o\);

\resultado_slt_f[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[9]~output_o\);

\resultado_slt_f[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[10]~output_o\);

\resultado_slt_f[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[11]~output_o\);

\resultado_slt_f[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[12]~output_o\);

\resultado_slt_f[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[13]~output_o\);

\resultado_slt_f[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[14]~output_o\);

\resultado_slt_f[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[15]~output_o\);

\resultado_slt_f[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[16]~output_o\);

\resultado_slt_f[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[17]~output_o\);

\resultado_slt_f[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[18]~output_o\);

\resultado_slt_f[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[19]~output_o\);

\resultado_slt_f[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[20]~output_o\);

\resultado_slt_f[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[21]~output_o\);

\resultado_slt_f[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[22]~output_o\);

\resultado_slt_f[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[23]~output_o\);

\resultado_slt_f[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[24]~output_o\);

\resultado_slt_f[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[25]~output_o\);

\resultado_slt_f[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[26]~output_o\);

\resultado_slt_f[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[27]~output_o\);

\resultado_slt_f[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[28]~output_o\);

\resultado_slt_f[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[29]~output_o\);

\resultado_slt_f[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[30]~output_o\);

\resultado_slt_f[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \resultado_slt_f[31]~output_o\);

\zero~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \zero~output_o\);

ww_resultado_soma(0) <= \resultado_soma[0]~output_o\;

ww_resultado_soma(1) <= \resultado_soma[1]~output_o\;

ww_resultado_soma(2) <= \resultado_soma[2]~output_o\;

ww_resultado_soma(3) <= \resultado_soma[3]~output_o\;

ww_resultado_soma(4) <= \resultado_soma[4]~output_o\;

ww_resultado_soma(5) <= \resultado_soma[5]~output_o\;

ww_resultado_soma(6) <= \resultado_soma[6]~output_o\;

ww_resultado_soma(7) <= \resultado_soma[7]~output_o\;

ww_resultado_soma(8) <= \resultado_soma[8]~output_o\;

ww_resultado_soma(9) <= \resultado_soma[9]~output_o\;

ww_resultado_soma(10) <= \resultado_soma[10]~output_o\;

ww_resultado_soma(11) <= \resultado_soma[11]~output_o\;

ww_resultado_soma(12) <= \resultado_soma[12]~output_o\;

ww_resultado_soma(13) <= \resultado_soma[13]~output_o\;

ww_resultado_soma(14) <= \resultado_soma[14]~output_o\;

ww_resultado_soma(15) <= \resultado_soma[15]~output_o\;

ww_resultado_soma(16) <= \resultado_soma[16]~output_o\;

ww_resultado_soma(17) <= \resultado_soma[17]~output_o\;

ww_resultado_soma(18) <= \resultado_soma[18]~output_o\;

ww_resultado_soma(19) <= \resultado_soma[19]~output_o\;

ww_resultado_soma(20) <= \resultado_soma[20]~output_o\;

ww_resultado_soma(21) <= \resultado_soma[21]~output_o\;

ww_resultado_soma(22) <= \resultado_soma[22]~output_o\;

ww_resultado_soma(23) <= \resultado_soma[23]~output_o\;

ww_resultado_soma(24) <= \resultado_soma[24]~output_o\;

ww_resultado_soma(25) <= \resultado_soma[25]~output_o\;

ww_resultado_soma(26) <= \resultado_soma[26]~output_o\;

ww_resultado_soma(27) <= \resultado_soma[27]~output_o\;

ww_resultado_soma(28) <= \resultado_soma[28]~output_o\;

ww_resultado_soma(29) <= \resultado_soma[29]~output_o\;

ww_resultado_soma(30) <= \resultado_soma[30]~output_o\;

ww_resultado_soma(31) <= \resultado_soma[31]~output_o\;

ww_resultado_and(0) <= \resultado_and[0]~output_o\;

ww_resultado_and(1) <= \resultado_and[1]~output_o\;

ww_resultado_and(2) <= \resultado_and[2]~output_o\;

ww_resultado_and(3) <= \resultado_and[3]~output_o\;

ww_resultado_and(4) <= \resultado_and[4]~output_o\;

ww_resultado_and(5) <= \resultado_and[5]~output_o\;

ww_resultado_and(6) <= \resultado_and[6]~output_o\;

ww_resultado_and(7) <= \resultado_and[7]~output_o\;

ww_resultado_and(8) <= \resultado_and[8]~output_o\;

ww_resultado_and(9) <= \resultado_and[9]~output_o\;

ww_resultado_and(10) <= \resultado_and[10]~output_o\;

ww_resultado_and(11) <= \resultado_and[11]~output_o\;

ww_resultado_and(12) <= \resultado_and[12]~output_o\;

ww_resultado_and(13) <= \resultado_and[13]~output_o\;

ww_resultado_and(14) <= \resultado_and[14]~output_o\;

ww_resultado_and(15) <= \resultado_and[15]~output_o\;

ww_resultado_and(16) <= \resultado_and[16]~output_o\;

ww_resultado_and(17) <= \resultado_and[17]~output_o\;

ww_resultado_and(18) <= \resultado_and[18]~output_o\;

ww_resultado_and(19) <= \resultado_and[19]~output_o\;

ww_resultado_and(20) <= \resultado_and[20]~output_o\;

ww_resultado_and(21) <= \resultado_and[21]~output_o\;

ww_resultado_and(22) <= \resultado_and[22]~output_o\;

ww_resultado_and(23) <= \resultado_and[23]~output_o\;

ww_resultado_and(24) <= \resultado_and[24]~output_o\;

ww_resultado_and(25) <= \resultado_and[25]~output_o\;

ww_resultado_and(26) <= \resultado_and[26]~output_o\;

ww_resultado_and(27) <= \resultado_and[27]~output_o\;

ww_resultado_and(28) <= \resultado_and[28]~output_o\;

ww_resultado_and(29) <= \resultado_and[29]~output_o\;

ww_resultado_and(30) <= \resultado_and[30]~output_o\;

ww_resultado_and(31) <= \resultado_and[31]~output_o\;

ww_resultado_or(0) <= \resultado_or[0]~output_o\;

ww_resultado_or(1) <= \resultado_or[1]~output_o\;

ww_resultado_or(2) <= \resultado_or[2]~output_o\;

ww_resultado_or(3) <= \resultado_or[3]~output_o\;

ww_resultado_or(4) <= \resultado_or[4]~output_o\;

ww_resultado_or(5) <= \resultado_or[5]~output_o\;

ww_resultado_or(6) <= \resultado_or[6]~output_o\;

ww_resultado_or(7) <= \resultado_or[7]~output_o\;

ww_resultado_or(8) <= \resultado_or[8]~output_o\;

ww_resultado_or(9) <= \resultado_or[9]~output_o\;

ww_resultado_or(10) <= \resultado_or[10]~output_o\;

ww_resultado_or(11) <= \resultado_or[11]~output_o\;

ww_resultado_or(12) <= \resultado_or[12]~output_o\;

ww_resultado_or(13) <= \resultado_or[13]~output_o\;

ww_resultado_or(14) <= \resultado_or[14]~output_o\;

ww_resultado_or(15) <= \resultado_or[15]~output_o\;

ww_resultado_or(16) <= \resultado_or[16]~output_o\;

ww_resultado_or(17) <= \resultado_or[17]~output_o\;

ww_resultado_or(18) <= \resultado_or[18]~output_o\;

ww_resultado_or(19) <= \resultado_or[19]~output_o\;

ww_resultado_or(20) <= \resultado_or[20]~output_o\;

ww_resultado_or(21) <= \resultado_or[21]~output_o\;

ww_resultado_or(22) <= \resultado_or[22]~output_o\;

ww_resultado_or(23) <= \resultado_or[23]~output_o\;

ww_resultado_or(24) <= \resultado_or[24]~output_o\;

ww_resultado_or(25) <= \resultado_or[25]~output_o\;

ww_resultado_or(26) <= \resultado_or[26]~output_o\;

ww_resultado_or(27) <= \resultado_or[27]~output_o\;

ww_resultado_or(28) <= \resultado_or[28]~output_o\;

ww_resultado_or(29) <= \resultado_or[29]~output_o\;

ww_resultado_or(30) <= \resultado_or[30]~output_o\;

ww_resultado_or(31) <= \resultado_or[31]~output_o\;

ww_resultado_sub(0) <= \resultado_sub[0]~output_o\;

ww_resultado_sub(1) <= \resultado_sub[1]~output_o\;

ww_resultado_sub(2) <= \resultado_sub[2]~output_o\;

ww_resultado_sub(3) <= \resultado_sub[3]~output_o\;

ww_resultado_sub(4) <= \resultado_sub[4]~output_o\;

ww_resultado_sub(5) <= \resultado_sub[5]~output_o\;

ww_resultado_sub(6) <= \resultado_sub[6]~output_o\;

ww_resultado_sub(7) <= \resultado_sub[7]~output_o\;

ww_resultado_sub(8) <= \resultado_sub[8]~output_o\;

ww_resultado_sub(9) <= \resultado_sub[9]~output_o\;

ww_resultado_sub(10) <= \resultado_sub[10]~output_o\;

ww_resultado_sub(11) <= \resultado_sub[11]~output_o\;

ww_resultado_sub(12) <= \resultado_sub[12]~output_o\;

ww_resultado_sub(13) <= \resultado_sub[13]~output_o\;

ww_resultado_sub(14) <= \resultado_sub[14]~output_o\;

ww_resultado_sub(15) <= \resultado_sub[15]~output_o\;

ww_resultado_sub(16) <= \resultado_sub[16]~output_o\;

ww_resultado_sub(17) <= \resultado_sub[17]~output_o\;

ww_resultado_sub(18) <= \resultado_sub[18]~output_o\;

ww_resultado_sub(19) <= \resultado_sub[19]~output_o\;

ww_resultado_sub(20) <= \resultado_sub[20]~output_o\;

ww_resultado_sub(21) <= \resultado_sub[21]~output_o\;

ww_resultado_sub(22) <= \resultado_sub[22]~output_o\;

ww_resultado_sub(23) <= \resultado_sub[23]~output_o\;

ww_resultado_sub(24) <= \resultado_sub[24]~output_o\;

ww_resultado_sub(25) <= \resultado_sub[25]~output_o\;

ww_resultado_sub(26) <= \resultado_sub[26]~output_o\;

ww_resultado_sub(27) <= \resultado_sub[27]~output_o\;

ww_resultado_sub(28) <= \resultado_sub[28]~output_o\;

ww_resultado_sub(29) <= \resultado_sub[29]~output_o\;

ww_resultado_sub(30) <= \resultado_sub[30]~output_o\;

ww_resultado_sub(31) <= \resultado_sub[31]~output_o\;

ww_resultado_slt_v(0) <= \resultado_slt_v[0]~output_o\;

ww_resultado_slt_v(1) <= \resultado_slt_v[1]~output_o\;

ww_resultado_slt_v(2) <= \resultado_slt_v[2]~output_o\;

ww_resultado_slt_v(3) <= \resultado_slt_v[3]~output_o\;

ww_resultado_slt_v(4) <= \resultado_slt_v[4]~output_o\;

ww_resultado_slt_v(5) <= \resultado_slt_v[5]~output_o\;

ww_resultado_slt_v(6) <= \resultado_slt_v[6]~output_o\;

ww_resultado_slt_v(7) <= \resultado_slt_v[7]~output_o\;

ww_resultado_slt_v(8) <= \resultado_slt_v[8]~output_o\;

ww_resultado_slt_v(9) <= \resultado_slt_v[9]~output_o\;

ww_resultado_slt_v(10) <= \resultado_slt_v[10]~output_o\;

ww_resultado_slt_v(11) <= \resultado_slt_v[11]~output_o\;

ww_resultado_slt_v(12) <= \resultado_slt_v[12]~output_o\;

ww_resultado_slt_v(13) <= \resultado_slt_v[13]~output_o\;

ww_resultado_slt_v(14) <= \resultado_slt_v[14]~output_o\;

ww_resultado_slt_v(15) <= \resultado_slt_v[15]~output_o\;

ww_resultado_slt_v(16) <= \resultado_slt_v[16]~output_o\;

ww_resultado_slt_v(17) <= \resultado_slt_v[17]~output_o\;

ww_resultado_slt_v(18) <= \resultado_slt_v[18]~output_o\;

ww_resultado_slt_v(19) <= \resultado_slt_v[19]~output_o\;

ww_resultado_slt_v(20) <= \resultado_slt_v[20]~output_o\;

ww_resultado_slt_v(21) <= \resultado_slt_v[21]~output_o\;

ww_resultado_slt_v(22) <= \resultado_slt_v[22]~output_o\;

ww_resultado_slt_v(23) <= \resultado_slt_v[23]~output_o\;

ww_resultado_slt_v(24) <= \resultado_slt_v[24]~output_o\;

ww_resultado_slt_v(25) <= \resultado_slt_v[25]~output_o\;

ww_resultado_slt_v(26) <= \resultado_slt_v[26]~output_o\;

ww_resultado_slt_v(27) <= \resultado_slt_v[27]~output_o\;

ww_resultado_slt_v(28) <= \resultado_slt_v[28]~output_o\;

ww_resultado_slt_v(29) <= \resultado_slt_v[29]~output_o\;

ww_resultado_slt_v(30) <= \resultado_slt_v[30]~output_o\;

ww_resultado_slt_v(31) <= \resultado_slt_v[31]~output_o\;

ww_resultado_slt_f(0) <= \resultado_slt_f[0]~output_o\;

ww_resultado_slt_f(1) <= \resultado_slt_f[1]~output_o\;

ww_resultado_slt_f(2) <= \resultado_slt_f[2]~output_o\;

ww_resultado_slt_f(3) <= \resultado_slt_f[3]~output_o\;

ww_resultado_slt_f(4) <= \resultado_slt_f[4]~output_o\;

ww_resultado_slt_f(5) <= \resultado_slt_f[5]~output_o\;

ww_resultado_slt_f(6) <= \resultado_slt_f[6]~output_o\;

ww_resultado_slt_f(7) <= \resultado_slt_f[7]~output_o\;

ww_resultado_slt_f(8) <= \resultado_slt_f[8]~output_o\;

ww_resultado_slt_f(9) <= \resultado_slt_f[9]~output_o\;

ww_resultado_slt_f(10) <= \resultado_slt_f[10]~output_o\;

ww_resultado_slt_f(11) <= \resultado_slt_f[11]~output_o\;

ww_resultado_slt_f(12) <= \resultado_slt_f[12]~output_o\;

ww_resultado_slt_f(13) <= \resultado_slt_f[13]~output_o\;

ww_resultado_slt_f(14) <= \resultado_slt_f[14]~output_o\;

ww_resultado_slt_f(15) <= \resultado_slt_f[15]~output_o\;

ww_resultado_slt_f(16) <= \resultado_slt_f[16]~output_o\;

ww_resultado_slt_f(17) <= \resultado_slt_f[17]~output_o\;

ww_resultado_slt_f(18) <= \resultado_slt_f[18]~output_o\;

ww_resultado_slt_f(19) <= \resultado_slt_f[19]~output_o\;

ww_resultado_slt_f(20) <= \resultado_slt_f[20]~output_o\;

ww_resultado_slt_f(21) <= \resultado_slt_f[21]~output_o\;

ww_resultado_slt_f(22) <= \resultado_slt_f[22]~output_o\;

ww_resultado_slt_f(23) <= \resultado_slt_f[23]~output_o\;

ww_resultado_slt_f(24) <= \resultado_slt_f[24]~output_o\;

ww_resultado_slt_f(25) <= \resultado_slt_f[25]~output_o\;

ww_resultado_slt_f(26) <= \resultado_slt_f[26]~output_o\;

ww_resultado_slt_f(27) <= \resultado_slt_f[27]~output_o\;

ww_resultado_slt_f(28) <= \resultado_slt_f[28]~output_o\;

ww_resultado_slt_f(29) <= \resultado_slt_f[29]~output_o\;

ww_resultado_slt_f(30) <= \resultado_slt_f[30]~output_o\;

ww_resultado_slt_f(31) <= \resultado_slt_f[31]~output_o\;

ww_zero <= \zero~output_o\;
END structure;


