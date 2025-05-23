-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.2 Build 153 07/15/2015 SJ Web Edition"

-- DATE "10/09/2024 12:56:26"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	game IS
    PORT (
	clk : IN std_logic;
	N : IN std_logic;
	S : IN std_logic;
	E : IN std_logic;
	W : IN std_logic;
	reset : IN std_logic;
	s6 : BUFFER std_logic;
	s5 : BUFFER std_logic;
	s4 : BUFFER std_logic;
	s3 : BUFFER std_logic;
	s2 : BUFFER std_logic;
	s1 : BUFFER std_logic;
	s0 : BUFFER std_logic;
	v : BUFFER std_logic;
	win : BUFFER std_logic;
	death : BUFFER std_logic;
	sw : BUFFER std_logic
	);
END game;

-- Design Ports Information
-- s6	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s5	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s4	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s3	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- win	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- death	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF game IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_N : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_W : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_s6 : std_logic;
SIGNAL ww_s5 : std_logic;
SIGNAL ww_s4 : std_logic;
SIGNAL ww_s3 : std_logic;
SIGNAL ww_s2 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s0 : std_logic;
SIGNAL ww_v : std_logic;
SIGNAL ww_win : std_logic;
SIGNAL ww_death : std_logic;
SIGNAL ww_sw : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s6~output_o\ : std_logic;
SIGNAL \s5~output_o\ : std_logic;
SIGNAL \s4~output_o\ : std_logic;
SIGNAL \s3~output_o\ : std_logic;
SIGNAL \s2~output_o\ : std_logic;
SIGNAL \s1~output_o\ : std_logic;
SIGNAL \s0~output_o\ : std_logic;
SIGNAL \v~output_o\ : std_logic;
SIGNAL \win~output_o\ : std_logic;
SIGNAL \death~output_o\ : std_logic;
SIGNAL \sw~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \N~input_o\ : std_logic;
SIGNAL \E~input_o\ : std_logic;
SIGNAL \W~input_o\ : std_logic;
SIGNAL \S~input_o\ : std_logic;
SIGNAL \roomFSM|s1Next~1_combout\ : std_logic;
SIGNAL \roomFSM|dff_1|q~q\ : std_logic;
SIGNAL \roomFSM|s0Next~1_combout\ : std_logic;
SIGNAL \roomFSM|s0Next~2_combout\ : std_logic;
SIGNAL \roomFSM|dff_0|q~q\ : std_logic;
SIGNAL \roomFSM|s0Next~0_combout\ : std_logic;
SIGNAL \roomFSM|s0Next~3_combout\ : std_logic;
SIGNAL \roomFSM|s1Next~2_combout\ : std_logic;
SIGNAL \roomFSM|s1Next~3_combout\ : std_logic;
SIGNAL \roomFSM|s1Next~4_combout\ : std_logic;
SIGNAL \roomFSM|dff_3|q~q\ : std_logic;
SIGNAL \roomFSM|s3Next~1_combout\ : std_logic;
SIGNAL \roomFSM|s3Next~2_combout\ : std_logic;
SIGNAL \roomFSM|s2Next~1_combout\ : std_logic;
SIGNAL \roomFSM|s2Next~2_combout\ : std_logic;
SIGNAL \roomFSM|s4Next~2_combout\ : std_logic;
SIGNAL \roomFSM|s2Next~3_combout\ : std_logic;
SIGNAL \roomFSM|s2Next~4_combout\ : std_logic;
SIGNAL \roomFSM|dff_2|q~q\ : std_logic;
SIGNAL \roomFSM|s4Next~0_combout\ : std_logic;
SIGNAL \roomFSM|s4Next~1_combout\ : std_logic;
SIGNAL \roomFSM|dff_4|q~q\ : std_logic;
SIGNAL \swordFSM|s0Next~0_combout\ : std_logic;
SIGNAL \swordFSM|dff_0|q~q\ : std_logic;
SIGNAL \swordFSM|dff_1|q~q\ : std_logic;
SIGNAL \swordFSM|s1Next~0_combout\ : std_logic;
SIGNAL \roomFSM|s6Next~0_combout\ : std_logic;
SIGNAL \roomFSM|dff_6|q~q\ : std_logic;
SIGNAL \roomFSM|s5Next~0_combout\ : std_logic;
SIGNAL \roomFSM|dff_5|q~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_N <= N;
ww_S <= S;
ww_E <= E;
ww_W <= W;
ww_reset <= reset;
s6 <= ww_s6;
s5 <= ww_s5;
s4 <= ww_s4;
s3 <= ww_s3;
s2 <= ww_s2;
s1 <= ww_s1;
s0 <= ww_s0;
v <= ww_v;
win <= ww_win;
death <= ww_death;
sw <= ww_sw;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X72_Y73_N9
\s6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \roomFSM|dff_6|q~q\,
	devoe => ww_devoe,
	o => \s6~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\s5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \roomFSM|dff_5|q~q\,
	devoe => ww_devoe,
	o => \s5~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\s4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \roomFSM|dff_4|q~q\,
	devoe => ww_devoe,
	o => \s4~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\s3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \roomFSM|dff_3|q~q\,
	devoe => ww_devoe,
	o => \s3~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\s2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \roomFSM|dff_2|q~q\,
	devoe => ww_devoe,
	o => \s2~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\s1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \roomFSM|dff_1|q~q\,
	devoe => ww_devoe,
	o => \s1~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\s0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \roomFSM|dff_0|q~q\,
	devoe => ww_devoe,
	o => \s0~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\v~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \swordFSM|s1Next~0_combout\,
	devoe => ww_devoe,
	o => \v~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\win~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \roomFSM|dff_6|q~q\,
	devoe => ww_devoe,
	o => \win~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\death~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \roomFSM|dff_5|q~q\,
	devoe => ww_devoe,
	o => \death~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\sw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \roomFSM|dff_3|q~q\,
	devoe => ww_devoe,
	o => \sw~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y17_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N,
	o => \N~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\E~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E,
	o => \E~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\W~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W,
	o => \W~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\S~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S,
	o => \S~input_o\);

-- Location: LCCOMB_X96_Y72_N14
\roomFSM|s1Next~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \roomFSM|s1Next~1_combout\ = (!\reset~input_o\ & \roomFSM|s1Next~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \roomFSM|s1Next~4_combout\,
	combout => \roomFSM|s1Next~1_combout\);

-- Location: FF_X96_Y72_N15
\roomFSM|dff_1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \roomFSM|s1Next~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \roomFSM|dff_1|q~q\);

-- Location: LCCOMB_X97_Y72_N24
\roomFSM|s0Next~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \roomFSM|s0Next~1_combout\ = (!\S~input_o\ & \W~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S~input_o\,
	datad => \W~input_o\,
	combout => \roomFSM|s0Next~1_combout\);

-- Location: LCCOMB_X96_Y72_N16
\roomFSM|s0Next~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \roomFSM|s0Next~2_combout\ = (\reset~input_o\) # ((\roomFSM|s0Next~0_combout\) # ((\roomFSM|s0Next~1_combout\ & \roomFSM|dff_1|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \roomFSM|s0Next~1_combout\,
	datac => \roomFSM|dff_1|q~q\,
	datad => \roomFSM|s0Next~0_combout\,
	combout => \roomFSM|s0Next~2_combout\);

-- Location: FF_X96_Y72_N17
\roomFSM|dff_0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \roomFSM|s0Next~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \roomFSM|dff_0|q~q\);

-- Location: LCCOMB_X96_Y72_N6
\roomFSM|s0Next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \roomFSM|s0Next~0_combout\ = (\roomFSM|dff_0|q~q\ & ((\reset~input_o\) # (!\roomFSM|s1Next~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \roomFSM|s1Next~4_combout\,
	datac => \reset~input_o\,
	datad => \roomFSM|dff_0|q~q\,
	combout => \roomFSM|s0Next~0_combout\);

-- Location: LCCOMB_X96_Y72_N28
\roomFSM|s0Next~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \roomFSM|s0Next~3_combout\ = (\roomFSM|s0Next~0_combout\) # ((\W~input_o\ & (!\S~input_o\ & \roomFSM|dff_1|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~input_o\,
	datab => \S~input_o\,
	datac => \roomFSM|dff_1|q~q\,
	datad => \roomFSM|s0Next~0_combout\,
	combout => \roomFSM|s0Next~3_combout\);

-- Location: LCCOMB_X96_Y72_N12
\roomFSM|s1Next~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \roomFSM|s1Next~2_combout\ = (!\W~input_o\ & \roomFSM|dff_2|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \W~input_o\,
	datad => \roomFSM|dff_2|q~q\,
	combout => \roomFSM|s1Next~2_combout\);

-- Location: LCCOMB_X96_Y72_N10
\roomFSM|s1Next~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \roomFSM|s1Next~3_combout\ = (\E~input_o\ & (((\roomFSM|dff_0|q~q\)))) # (!\E~input_o\ & (\N~input_o\ & ((\roomFSM|s1Next~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N~input_o\,
	datab => \E~input_o\,
	datac => \roomFSM|dff_0|q~q\,
	datad => \roomFSM|s1Next~2_combout\,
	combout => \roomFSM|s1Next~3_combout\);

-- Location: LCCOMB_X96_Y72_N30
\roomFSM|s1Next~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \roomFSM|s1Next~4_combout\ = (\roomFSM|s1Next~3_combout\) # ((!\roomFSM|s0Next~3_combout\ & (!\roomFSM|s2Next~4_combout\ & \roomFSM|dff_1|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \roomFSM|s0Next~3_combout\,
	datab => \roomFSM|s2Next~4_combout\,
	datac => \roomFSM|dff_1|q~q\,
	datad => \roomFSM|s1Next~3_combout\,
	combout => \roomFSM|s1Next~4_combout\);

-- Location: FF_X96_Y72_N19
\roomFSM|dff_3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \roomFSM|s3Next~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \roomFSM|dff_3|q~q\);

-- Location: LCCOMB_X96_Y72_N4
\roomFSM|s3Next~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \roomFSM|s3Next~1_combout\ = (!\reset~input_o\ & (!\E~input_o\ & (!\roomFSM|s2Next~3_combout\ & \roomFSM|dff_3|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \E~input_o\,
	datac => \roomFSM|s2Next~3_combout\,
	datad => \roomFSM|dff_3|q~q\,
	combout => \roomFSM|s3Next~1_combout\);

-- Location: LCCOMB_X96_Y72_N26
\roomFSM|s3Next~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \roomFSM|s3Next~2_combout\ = (\roomFSM|s3Next~1_combout\) # ((\W~input_o\ & (!\E~input_o\ & \roomFSM|s4Next~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~input_o\,
	datab => \roomFSM|s3Next~1_combout\,
	datac => \E~input_o\,
	datad => \roomFSM|s4Next~0_combout\,
	combout => \roomFSM|s3Next~2_combout\);

-- Location: LCCOMB_X96_Y72_N18
\roomFSM|s2Next~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \roomFSM|s2Next~1_combout\ = (!\roomFSM|s1Next~4_combout\ & (!\roomFSM|s3Next~2_combout\ & \roomFSM|dff_2|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \roomFSM|s1Next~4_combout\,
	datac => \roomFSM|s3Next~2_combout\,
	datad => \roomFSM|dff_2|q~q\,
	combout => \roomFSM|s2Next~1_combout\);

-- Location: LCCOMB_X96_Y72_N24
\roomFSM|s2Next~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \roomFSM|s2Next~2_combout\ = (!\W~input_o\ & \S~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~input_o\,
	datab => \S~input_o\,
	combout => \roomFSM|s2Next~2_combout\);

-- Location: LCCOMB_X96_Y72_N0
\roomFSM|s4Next~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \roomFSM|s4Next~2_combout\ = (!\reset~input_o\ & (\E~input_o\ & (!\N~input_o\ & \roomFSM|dff_2|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \E~input_o\,
	datac => \N~input_o\,
	datad => \roomFSM|dff_2|q~q\,
	combout => \roomFSM|s4Next~2_combout\);

-- Location: LCCOMB_X96_Y72_N22
\roomFSM|s2Next~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \roomFSM|s2Next~3_combout\ = (\roomFSM|s2Next~2_combout\ & ((\roomFSM|dff_1|q~q\) # ((\roomFSM|s2Next~1_combout\ & !\roomFSM|s4Next~2_combout\)))) # (!\roomFSM|s2Next~2_combout\ & (\roomFSM|s2Next~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \roomFSM|s2Next~1_combout\,
	datab => \roomFSM|dff_1|q~q\,
	datac => \roomFSM|s2Next~2_combout\,
	datad => \roomFSM|s4Next~2_combout\,
	combout => \roomFSM|s2Next~3_combout\);

-- Location: LCCOMB_X96_Y72_N8
\roomFSM|s2Next~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \roomFSM|s2Next~4_combout\ = (!\reset~input_o\ & ((\roomFSM|s2Next~3_combout\) # ((\E~input_o\ & \roomFSM|dff_3|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \E~input_o\,
	datac => \roomFSM|s2Next~3_combout\,
	datad => \roomFSM|dff_3|q~q\,
	combout => \roomFSM|s2Next~4_combout\);

-- Location: FF_X96_Y72_N25
\roomFSM|dff_2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \roomFSM|s2Next~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \roomFSM|dff_2|q~q\);

-- Location: LCCOMB_X96_Y72_N2
\roomFSM|s4Next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \roomFSM|s4Next~0_combout\ = (!\reset~input_o\ & (!\N~input_o\ & \roomFSM|dff_2|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \N~input_o\,
	datad => \roomFSM|dff_2|q~q\,
	combout => \roomFSM|s4Next~0_combout\);

-- Location: LCCOMB_X96_Y72_N20
\roomFSM|s4Next~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \roomFSM|s4Next~1_combout\ = (\roomFSM|s4Next~0_combout\ & (\E~input_o\ & (!\W~input_o\ & \S~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \roomFSM|s4Next~0_combout\,
	datab => \E~input_o\,
	datac => \W~input_o\,
	datad => \S~input_o\,
	combout => \roomFSM|s4Next~1_combout\);

-- Location: FF_X96_Y72_N21
\roomFSM|dff_4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \roomFSM|s4Next~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \roomFSM|dff_4|q~q\);

-- Location: LCCOMB_X95_Y72_N18
\swordFSM|s0Next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \swordFSM|s0Next~0_combout\ = (\reset~input_o\) # ((!\roomFSM|dff_3|q~q\ & \swordFSM|dff_0|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \roomFSM|dff_3|q~q\,
	datac => \swordFSM|dff_0|q~q\,
	datad => \reset~input_o\,
	combout => \swordFSM|s0Next~0_combout\);

-- Location: FF_X95_Y72_N19
\swordFSM|dff_0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \swordFSM|s0Next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swordFSM|dff_0|q~q\);

-- Location: FF_X95_Y72_N1
\swordFSM|dff_1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \swordFSM|s1Next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swordFSM|dff_1|q~q\);

-- Location: LCCOMB_X95_Y72_N0
\swordFSM|s1Next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \swordFSM|s1Next~0_combout\ = (!\reset~input_o\ & ((\swordFSM|dff_1|q~q\) # ((\swordFSM|dff_0|q~q\ & \roomFSM|dff_3|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \swordFSM|dff_0|q~q\,
	datac => \swordFSM|dff_1|q~q\,
	datad => \roomFSM|dff_3|q~q\,
	combout => \swordFSM|s1Next~0_combout\);

-- Location: LCCOMB_X95_Y72_N24
\roomFSM|s6Next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \roomFSM|s6Next~0_combout\ = (!\reset~input_o\ & ((\roomFSM|dff_6|q~q\) # ((\roomFSM|dff_4|q~q\ & \swordFSM|s1Next~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \roomFSM|dff_4|q~q\,
	datab => \swordFSM|s1Next~0_combout\,
	datac => \roomFSM|dff_6|q~q\,
	datad => \reset~input_o\,
	combout => \roomFSM|s6Next~0_combout\);

-- Location: FF_X95_Y72_N25
\roomFSM|dff_6|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \roomFSM|s6Next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \roomFSM|dff_6|q~q\);

-- Location: LCCOMB_X95_Y72_N14
\roomFSM|s5Next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \roomFSM|s5Next~0_combout\ = (!\reset~input_o\ & ((\roomFSM|dff_5|q~q\) # ((\roomFSM|dff_4|q~q\ & !\swordFSM|s1Next~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \roomFSM|dff_4|q~q\,
	datab => \swordFSM|s1Next~0_combout\,
	datac => \roomFSM|dff_5|q~q\,
	datad => \reset~input_o\,
	combout => \roomFSM|s5Next~0_combout\);

-- Location: FF_X95_Y72_N15
\roomFSM|dff_5|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \roomFSM|s5Next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \roomFSM|dff_5|q~q\);

ww_s6 <= \s6~output_o\;

ww_s5 <= \s5~output_o\;

ww_s4 <= \s4~output_o\;

ww_s3 <= \s3~output_o\;

ww_s2 <= \s2~output_o\;

ww_s1 <= \s1~output_o\;

ww_s0 <= \s0~output_o\;

ww_v <= \v~output_o\;

ww_win <= \win~output_o\;

ww_death <= \death~output_o\;

ww_sw <= \sw~output_o\;
END structure;


