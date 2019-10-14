-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/14/2019 15:48:24"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	control : IN std_logic_vector(5 DOWNTO 0);
	clock : IN std_logic;
	led : OUT std_logic;
	dec : OUT std_logic_vector(6 DOWNTO 0);
	seg : OUT std_logic_vector(1 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- control[0]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[1]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[3]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[4]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[5]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[0]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[1]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[2]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[3]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[4]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[5]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[0]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_control : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL ww_dec : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg : std_logic_vector(1 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \control[0]~input_o\ : std_logic;
SIGNAL \control[1]~input_o\ : std_logic;
SIGNAL \control[2]~input_o\ : std_logic;
SIGNAL \control[3]~input_o\ : std_logic;
SIGNAL \control[4]~input_o\ : std_logic;
SIGNAL \control[5]~input_o\ : std_logic;
SIGNAL \led~output_o\ : std_logic;
SIGNAL \dec[0]~output_o\ : std_logic;
SIGNAL \dec[1]~output_o\ : std_logic;
SIGNAL \dec[2]~output_o\ : std_logic;
SIGNAL \dec[3]~output_o\ : std_logic;
SIGNAL \dec[4]~output_o\ : std_logic;
SIGNAL \dec[5]~output_o\ : std_logic;
SIGNAL \dec[6]~output_o\ : std_logic;
SIGNAL \seg[0]~output_o\ : std_logic;
SIGNAL \seg[1]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \c|ctr[1]~6\ : std_logic;
SIGNAL \c|ctr[2]~7_combout\ : std_logic;
SIGNAL \c|Equal0~0_combout\ : std_logic;
SIGNAL \c|Equal0~1_combout\ : std_logic;
SIGNAL \c|ctr[2]~8\ : std_logic;
SIGNAL \c|ctr[3]~9_combout\ : std_logic;
SIGNAL \c|ctr[3]~10\ : std_logic;
SIGNAL \c|ctr[4]~11_combout\ : std_logic;
SIGNAL \c|ctr[4]~12\ : std_logic;
SIGNAL \c|ctr[5]~13_combout\ : std_logic;
SIGNAL \c|ctr[0]~15_combout\ : std_logic;
SIGNAL \c|ctr[1]~5_combout\ : std_logic;
SIGNAL \gd|disp1[0]~0_combout\ : std_logic;
SIGNAL \gd|disp1[0]~1_combout\ : std_logic;
SIGNAL \gd|disp1[0]~2_combout\ : std_logic;
SIGNAL \gd|disp1[1]~3_combout\ : std_logic;
SIGNAL \gd|disp1[2]~4_combout\ : std_logic;
SIGNAL \c|ctr\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_clock~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_control <= control;
ww_clock <= clock;
led <= ww_led;
dec <= ww_dec;
seg <= ww_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_clock~inputclkctrl_outclk\ <= NOT \clock~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X5_Y0_N16
\led~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\dec[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gd|disp1[0]~2_combout\,
	devoe => ww_devoe,
	o => \dec[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\dec[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gd|disp1[1]~3_combout\,
	devoe => ww_devoe,
	o => \dec[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\dec[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gd|disp1[2]~4_combout\,
	devoe => ww_devoe,
	o => \dec[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\dec[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dec[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\dec[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dec[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\dec[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dec[5]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\dec[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dec[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg[1]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y6_N14
\c|ctr[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[1]~5_combout\ = (\c|ctr\(0) & (\c|ctr\(1) $ (VCC))) # (!\c|ctr\(0) & (\c|ctr\(1) & VCC))
-- \c|ctr[1]~6\ = CARRY((\c|ctr\(0) & \c|ctr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(0),
	datab => \c|ctr\(1),
	datad => VCC,
	combout => \c|ctr[1]~5_combout\,
	cout => \c|ctr[1]~6\);

-- Location: LCCOMB_X1_Y6_N16
\c|ctr[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[2]~7_combout\ = (\c|ctr\(2) & (!\c|ctr[1]~6\)) # (!\c|ctr\(2) & ((\c|ctr[1]~6\) # (GND)))
-- \c|ctr[2]~8\ = CARRY((!\c|ctr[1]~6\) # (!\c|ctr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c|ctr\(2),
	datad => VCC,
	cin => \c|ctr[1]~6\,
	combout => \c|ctr[2]~7_combout\,
	cout => \c|ctr[2]~8\);

-- Location: LCCOMB_X1_Y6_N12
\c|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|Equal0~0_combout\ = (\c|ctr\(0) & (\c|ctr\(4) & (\c|ctr\(1) & \c|ctr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(0),
	datab => \c|ctr\(4),
	datac => \c|ctr\(1),
	datad => \c|ctr\(3),
	combout => \c|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y6_N4
\c|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|Equal0~1_combout\ = ((!\c|Equal0~0_combout\) # (!\c|ctr\(5))) # (!\c|ctr\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c|ctr\(2),
	datac => \c|ctr\(5),
	datad => \c|Equal0~0_combout\,
	combout => \c|Equal0~1_combout\);

-- Location: FF_X1_Y6_N17
\c|ctr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \c|ctr[2]~7_combout\,
	ena => \c|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c|ctr\(2));

-- Location: LCCOMB_X1_Y6_N18
\c|ctr[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[3]~9_combout\ = (\c|ctr\(3) & (\c|ctr[2]~8\ $ (GND))) # (!\c|ctr\(3) & (!\c|ctr[2]~8\ & VCC))
-- \c|ctr[3]~10\ = CARRY((\c|ctr\(3) & !\c|ctr[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c|ctr\(3),
	datad => VCC,
	cin => \c|ctr[2]~8\,
	combout => \c|ctr[3]~9_combout\,
	cout => \c|ctr[3]~10\);

-- Location: FF_X1_Y6_N19
\c|ctr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \c|ctr[3]~9_combout\,
	ena => \c|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c|ctr\(3));

-- Location: LCCOMB_X1_Y6_N20
\c|ctr[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[4]~11_combout\ = (\c|ctr\(4) & (!\c|ctr[3]~10\)) # (!\c|ctr\(4) & ((\c|ctr[3]~10\) # (GND)))
-- \c|ctr[4]~12\ = CARRY((!\c|ctr[3]~10\) # (!\c|ctr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c|ctr\(4),
	datad => VCC,
	cin => \c|ctr[3]~10\,
	combout => \c|ctr[4]~11_combout\,
	cout => \c|ctr[4]~12\);

-- Location: FF_X1_Y6_N21
\c|ctr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \c|ctr[4]~11_combout\,
	ena => \c|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c|ctr\(4));

-- Location: LCCOMB_X1_Y6_N22
\c|ctr[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[5]~13_combout\ = \c|ctr\(5) $ (!\c|ctr[4]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(5),
	cin => \c|ctr[4]~12\,
	combout => \c|ctr[5]~13_combout\);

-- Location: FF_X1_Y6_N23
\c|ctr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \c|ctr[5]~13_combout\,
	ena => \c|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c|ctr\(5));

-- Location: LCCOMB_X1_Y6_N26
\c|ctr[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[0]~15_combout\ = ((\c|ctr\(5) & (\c|ctr\(2) & \c|Equal0~0_combout\))) # (!\c|ctr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(5),
	datab => \c|ctr\(2),
	datac => \c|ctr\(0),
	datad => \c|Equal0~0_combout\,
	combout => \c|ctr[0]~15_combout\);

-- Location: FF_X1_Y6_N27
\c|ctr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \c|ctr[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c|ctr\(0));

-- Location: FF_X1_Y6_N15
\c|ctr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \c|ctr[1]~5_combout\,
	ena => \c|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c|ctr\(1));

-- Location: LCCOMB_X1_Y6_N24
\gd|disp1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gd|disp1[0]~0_combout\ = (\c|ctr\(4) & (\c|ctr\(3) & ((\c|ctr\(2)) # (\c|ctr\(5))))) # (!\c|ctr\(4) & (\c|ctr\(5) $ (((!\c|ctr\(2) & \c|ctr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(2),
	datab => \c|ctr\(3),
	datac => \c|ctr\(5),
	datad => \c|ctr\(4),
	combout => \gd|disp1[0]~0_combout\);

-- Location: LCCOMB_X1_Y6_N6
\gd|disp1[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gd|disp1[0]~1_combout\ = (\c|ctr\(2) & (!\c|ctr\(5) & (\c|ctr\(3) $ (\c|ctr\(4))))) # (!\c|ctr\(2) & (!\c|ctr\(3) & (\c|ctr\(5) & !\c|ctr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(2),
	datab => \c|ctr\(3),
	datac => \c|ctr\(5),
	datad => \c|ctr\(4),
	combout => \gd|disp1[0]~1_combout\);

-- Location: LCCOMB_X1_Y6_N0
\gd|disp1[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gd|disp1[0]~2_combout\ = \gd|disp1[0]~0_combout\ $ (((!\c|ctr\(1) & \gd|disp1[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(1),
	datab => \gd|disp1[0]~0_combout\,
	datad => \gd|disp1[0]~1_combout\,
	combout => \gd|disp1[0]~2_combout\);

-- Location: LCCOMB_X1_Y6_N10
\gd|disp1[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \gd|disp1[1]~3_combout\ = (\c|ctr\(2) & (\c|ctr\(4) & (\c|ctr\(3) $ (!\c|ctr\(5))))) # (!\c|ctr\(2) & ((\c|ctr\(5) & (\c|ctr\(3))) # (!\c|ctr\(5) & ((\c|ctr\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(2),
	datab => \c|ctr\(3),
	datac => \c|ctr\(5),
	datad => \c|ctr\(4),
	combout => \gd|disp1[1]~3_combout\);

-- Location: LCCOMB_X1_Y6_N28
\gd|disp1[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \gd|disp1[2]~4_combout\ = (\c|ctr\(5) & ((!\c|ctr\(4)) # (!\c|ctr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c|ctr\(3),
	datac => \c|ctr\(5),
	datad => \c|ctr\(4),
	combout => \gd|disp1[2]~4_combout\);

-- Location: IOIBUF_X0_Y11_N15
\control[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(0),
	o => \control[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\control[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(1),
	o => \control[1]~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\control[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(2),
	o => \control[2]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\control[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(3),
	o => \control[3]~input_o\);

-- Location: IOIBUF_X30_Y24_N22
\control[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(4),
	o => \control[4]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\control[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(5),
	o => \control[5]~input_o\);

ww_led <= \led~output_o\;

ww_dec(0) <= \dec[0]~output_o\;

ww_dec(1) <= \dec[1]~output_o\;

ww_dec(2) <= \dec[2]~output_o\;

ww_dec(3) <= \dec[3]~output_o\;

ww_dec(4) <= \dec[4]~output_o\;

ww_dec(5) <= \dec[5]~output_o\;

ww_dec(6) <= \dec[6]~output_o\;

ww_seg(0) <= \seg[0]~output_o\;

ww_seg(1) <= \seg[1]~output_o\;
END structure;


