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

-- DATE "10/14/2019 11:54:46"

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
-- control[2]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[0]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[1]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[2]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[3]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[4]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[5]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[6]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[0]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[4]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[3]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[5]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \f|sclk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \control[0]~input_o\ : std_logic;
SIGNAL \control[1]~input_o\ : std_logic;
SIGNAL \control[2]~input_o\ : std_logic;
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
SIGNAL \control[5]~input_o\ : std_logic;
SIGNAL \f|Add0~0_combout\ : std_logic;
SIGNAL \f|Add0~1\ : std_logic;
SIGNAL \f|Add0~2_combout\ : std_logic;
SIGNAL \f|Add0~3\ : std_logic;
SIGNAL \f|Add0~4_combout\ : std_logic;
SIGNAL \f|Add0~5\ : std_logic;
SIGNAL \f|Add0~6_combout\ : std_logic;
SIGNAL \f|Add0~7\ : std_logic;
SIGNAL \f|Add0~8_combout\ : std_logic;
SIGNAL \f|Add0~9\ : std_logic;
SIGNAL \f|Add0~10_combout\ : std_logic;
SIGNAL \f|Add0~11\ : std_logic;
SIGNAL \f|Add0~12_combout\ : std_logic;
SIGNAL \f|ctr~11_combout\ : std_logic;
SIGNAL \f|Add0~13\ : std_logic;
SIGNAL \f|Add0~14_combout\ : std_logic;
SIGNAL \f|Add0~15\ : std_logic;
SIGNAL \f|Add0~16_combout\ : std_logic;
SIGNAL \f|Equal0~5_combout\ : std_logic;
SIGNAL \f|Add0~17\ : std_logic;
SIGNAL \f|Add0~18_combout\ : std_logic;
SIGNAL \f|Add0~19\ : std_logic;
SIGNAL \f|Add0~20_combout\ : std_logic;
SIGNAL \f|Add0~21\ : std_logic;
SIGNAL \f|Add0~22_combout\ : std_logic;
SIGNAL \f|ctr~10_combout\ : std_logic;
SIGNAL \f|Add0~23\ : std_logic;
SIGNAL \f|Add0~24_combout\ : std_logic;
SIGNAL \f|ctr~9_combout\ : std_logic;
SIGNAL \f|Add0~25\ : std_logic;
SIGNAL \f|Add0~26_combout\ : std_logic;
SIGNAL \f|ctr~8_combout\ : std_logic;
SIGNAL \f|Add0~27\ : std_logic;
SIGNAL \f|Add0~28_combout\ : std_logic;
SIGNAL \f|ctr~7_combout\ : std_logic;
SIGNAL \f|Add0~29\ : std_logic;
SIGNAL \f|Add0~30_combout\ : std_logic;
SIGNAL \f|Add0~31\ : std_logic;
SIGNAL \f|Add0~32_combout\ : std_logic;
SIGNAL \f|ctr~6_combout\ : std_logic;
SIGNAL \f|Equal0~2_combout\ : std_logic;
SIGNAL \f|Add0~33\ : std_logic;
SIGNAL \f|Add0~34_combout\ : std_logic;
SIGNAL \f|Add0~35\ : std_logic;
SIGNAL \f|Add0~36_combout\ : std_logic;
SIGNAL \f|ctr~5_combout\ : std_logic;
SIGNAL \f|Add0~37\ : std_logic;
SIGNAL \f|Add0~38_combout\ : std_logic;
SIGNAL \f|ctr~4_combout\ : std_logic;
SIGNAL \f|Add0~39\ : std_logic;
SIGNAL \f|Add0~40_combout\ : std_logic;
SIGNAL \f|ctr~3_combout\ : std_logic;
SIGNAL \f|Add0~41\ : std_logic;
SIGNAL \f|Add0~42_combout\ : std_logic;
SIGNAL \f|ctr~2_combout\ : std_logic;
SIGNAL \f|Add0~43\ : std_logic;
SIGNAL \f|Add0~44_combout\ : std_logic;
SIGNAL \f|ctr~1_combout\ : std_logic;
SIGNAL \f|Add0~45\ : std_logic;
SIGNAL \f|Add0~46_combout\ : std_logic;
SIGNAL \f|Add0~47\ : std_logic;
SIGNAL \f|Add0~48_combout\ : std_logic;
SIGNAL \f|ctr~0_combout\ : std_logic;
SIGNAL \f|Equal0~0_combout\ : std_logic;
SIGNAL \f|Equal0~1_combout\ : std_logic;
SIGNAL \f|Equal0~3_combout\ : std_logic;
SIGNAL \f|Equal0~4_combout\ : std_logic;
SIGNAL \f|Equal0~6_combout\ : std_logic;
SIGNAL \f|Equal0~7_combout\ : std_logic;
SIGNAL \f|sclk~0_combout\ : std_logic;
SIGNAL \f|sclk~feeder_combout\ : std_logic;
SIGNAL \f|sclk~q\ : std_logic;
SIGNAL \f|sclk~clkctrl_outclk\ : std_logic;
SIGNAL \control[3]~input_o\ : std_logic;
SIGNAL \control[4]~input_o\ : std_logic;
SIGNAL \c|ctr[3]~1_combout\ : std_logic;
SIGNAL \c|Add0~0_combout\ : std_logic;
SIGNAL \c|ctr[0]~13_combout\ : std_logic;
SIGNAL \c|ctr~21_combout\ : std_logic;
SIGNAL \c|ctr~20_combout\ : std_logic;
SIGNAL \c|ctr~22_combout\ : std_logic;
SIGNAL \c|ctr[0]~_emulated_q\ : std_logic;
SIGNAL \c|ctr[0]~12_combout\ : std_logic;
SIGNAL \c|Add0~1\ : std_logic;
SIGNAL \c|Add0~2_combout\ : std_logic;
SIGNAL \c|ctr[1]~9_combout\ : std_logic;
SIGNAL \c|ctr[1]~_emulated_q\ : std_logic;
SIGNAL \c|ctr[1]~8_combout\ : std_logic;
SIGNAL \c|Add0~3\ : std_logic;
SIGNAL \c|Add0~4_combout\ : std_logic;
SIGNAL \c|ctr[2]~5_combout\ : std_logic;
SIGNAL \c|ctr[2]~_emulated_q\ : std_logic;
SIGNAL \c|ctr[2]~4_combout\ : std_logic;
SIGNAL \c|Add0~5\ : std_logic;
SIGNAL \c|Add0~6_combout\ : std_logic;
SIGNAL \c|ctr[3]~3_combout\ : std_logic;
SIGNAL \c|ctr[3]~_emulated_q\ : std_logic;
SIGNAL \c|ctr[3]~2_combout\ : std_logic;
SIGNAL \c|Add0~7\ : std_logic;
SIGNAL \c|Add0~8_combout\ : std_logic;
SIGNAL \c|ctr[4]~7_combout\ : std_logic;
SIGNAL \c|ctr[4]~_emulated_q\ : std_logic;
SIGNAL \c|ctr[4]~6_combout\ : std_logic;
SIGNAL \c|Add0~9\ : std_logic;
SIGNAL \c|Add0~10_combout\ : std_logic;
SIGNAL \c|ctr[5]~11_combout\ : std_logic;
SIGNAL \c|ctr[5]~_emulated_q\ : std_logic;
SIGNAL \c|ctr[5]~10_combout\ : std_logic;
SIGNAL \s|o~0_combout\ : std_logic;
SIGNAL \s|ctr~0_combout\ : std_logic;
SIGNAL \s|ctr~q\ : std_logic;
SIGNAL \s|o~2_combout\ : std_logic;
SIGNAL \s|o~1_combout\ : std_logic;
SIGNAL \s|o~3_combout\ : std_logic;
SIGNAL \s|o~4_combout\ : std_logic;
SIGNAL \s|o~6_combout\ : std_logic;
SIGNAL \s|o~5_combout\ : std_logic;
SIGNAL \s|o~14_combout\ : std_logic;
SIGNAL \s|o~15_combout\ : std_logic;
SIGNAL \s|o~11_combout\ : std_logic;
SIGNAL \s|o~12_combout\ : std_logic;
SIGNAL \s|o~13_combout\ : std_logic;
SIGNAL \s|o~8_combout\ : std_logic;
SIGNAL \s|o~9_combout\ : std_logic;
SIGNAL \s|o~7_combout\ : std_logic;
SIGNAL \s|o~10_combout\ : std_logic;
SIGNAL \dd|Mux6~0_combout\ : std_logic;
SIGNAL \dd|Mux5~0_combout\ : std_logic;
SIGNAL \dd|Mux4~0_combout\ : std_logic;
SIGNAL \dd|Mux3~0_combout\ : std_logic;
SIGNAL \dd|Mux2~0_combout\ : std_logic;
SIGNAL \dd|Mux1~0_combout\ : std_logic;
SIGNAL \dd|Mux0~0_combout\ : std_logic;
SIGNAL \s|di[1]~0_combout\ : std_logic;
SIGNAL \f|ctr\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \s|o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s|di\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \dd|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \dd|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \dd|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \dd|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \dd|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \dd|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \f|ALT_INV_sclk~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_control[4]~input_o\ : std_logic;

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

\f|sclk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \f|sclk~q\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\dd|ALT_INV_Mux0~0_combout\ <= NOT \dd|Mux0~0_combout\;
\dd|ALT_INV_Mux1~0_combout\ <= NOT \dd|Mux1~0_combout\;
\dd|ALT_INV_Mux2~0_combout\ <= NOT \dd|Mux2~0_combout\;
\dd|ALT_INV_Mux3~0_combout\ <= NOT \dd|Mux3~0_combout\;
\dd|ALT_INV_Mux4~0_combout\ <= NOT \dd|Mux4~0_combout\;
\dd|ALT_INV_Mux5~0_combout\ <= NOT \dd|Mux5~0_combout\;
\ALT_INV_clock~inputclkctrl_outclk\ <= NOT \clock~inputclkctrl_outclk\;
\f|ALT_INV_sclk~clkctrl_outclk\ <= NOT \f|sclk~clkctrl_outclk\;
\ALT_INV_control[4]~input_o\ <= NOT \control[4]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y17_N2
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

-- Location: IOOBUF_X34_Y18_N16
\dec[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dd|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \dec[0]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\dec[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dd|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \dec[1]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\dec[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dd|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \dec[2]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\dec[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dd|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \dec[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\dec[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dd|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \dec[4]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\dec[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dd|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \dec[5]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\dec[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dd|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \dec[6]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s|di\(0),
	devoe => ww_devoe,
	o => \seg[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s|di\(1),
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

-- Location: IOIBUF_X0_Y18_N22
\control[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(5),
	o => \control[5]~input_o\);

-- Location: LCCOMB_X5_Y19_N8
\f|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~0_combout\ = \f|ctr\(0) $ (VCC)
-- \f|Add0~1\ = CARRY(\f|ctr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|ctr\(0),
	datad => VCC,
	combout => \f|Add0~0_combout\,
	cout => \f|Add0~1\);

-- Location: FF_X5_Y19_N9
\f|ctr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~0_combout\,
	ena => \control[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(0));

-- Location: LCCOMB_X5_Y19_N10
\f|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~2_combout\ = (\f|ctr\(1) & (!\f|Add0~1\)) # (!\f|ctr\(1) & ((\f|Add0~1\) # (GND)))
-- \f|Add0~3\ = CARRY((!\f|Add0~1\) # (!\f|ctr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(1),
	datad => VCC,
	cin => \f|Add0~1\,
	combout => \f|Add0~2_combout\,
	cout => \f|Add0~3\);

-- Location: FF_X5_Y19_N11
\f|ctr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~2_combout\,
	ena => \control[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(1));

-- Location: LCCOMB_X5_Y19_N12
\f|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~4_combout\ = (\f|ctr\(2) & (\f|Add0~3\ $ (GND))) # (!\f|ctr\(2) & (!\f|Add0~3\ & VCC))
-- \f|Add0~5\ = CARRY((\f|ctr\(2) & !\f|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(2),
	datad => VCC,
	cin => \f|Add0~3\,
	combout => \f|Add0~4_combout\,
	cout => \f|Add0~5\);

-- Location: FF_X5_Y19_N13
\f|ctr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~4_combout\,
	ena => \control[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(2));

-- Location: LCCOMB_X5_Y19_N14
\f|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~6_combout\ = (\f|ctr\(3) & (!\f|Add0~5\)) # (!\f|ctr\(3) & ((\f|Add0~5\) # (GND)))
-- \f|Add0~7\ = CARRY((!\f|Add0~5\) # (!\f|ctr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f|ctr\(3),
	datad => VCC,
	cin => \f|Add0~5\,
	combout => \f|Add0~6_combout\,
	cout => \f|Add0~7\);

-- Location: FF_X5_Y19_N15
\f|ctr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~6_combout\,
	ena => \control[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(3));

-- Location: LCCOMB_X5_Y19_N16
\f|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~8_combout\ = (\f|ctr\(4) & (\f|Add0~7\ $ (GND))) # (!\f|ctr\(4) & (!\f|Add0~7\ & VCC))
-- \f|Add0~9\ = CARRY((\f|ctr\(4) & !\f|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f|ctr\(4),
	datad => VCC,
	cin => \f|Add0~7\,
	combout => \f|Add0~8_combout\,
	cout => \f|Add0~9\);

-- Location: FF_X5_Y19_N17
\f|ctr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~8_combout\,
	ena => \control[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(4));

-- Location: LCCOMB_X5_Y19_N18
\f|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~10_combout\ = (\f|ctr\(5) & (!\f|Add0~9\)) # (!\f|ctr\(5) & ((\f|Add0~9\) # (GND)))
-- \f|Add0~11\ = CARRY((!\f|Add0~9\) # (!\f|ctr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f|ctr\(5),
	datad => VCC,
	cin => \f|Add0~9\,
	combout => \f|Add0~10_combout\,
	cout => \f|Add0~11\);

-- Location: FF_X5_Y19_N19
\f|ctr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~10_combout\,
	ena => \control[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(5));

-- Location: LCCOMB_X5_Y19_N20
\f|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~12_combout\ = (\f|ctr\(6) & (\f|Add0~11\ $ (GND))) # (!\f|ctr\(6) & (!\f|Add0~11\ & VCC))
-- \f|Add0~13\ = CARRY((\f|ctr\(6) & !\f|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f|ctr\(6),
	datad => VCC,
	cin => \f|Add0~11\,
	combout => \f|Add0~12_combout\,
	cout => \f|Add0~13\);

-- Location: LCCOMB_X5_Y19_N2
\f|ctr~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~11_combout\ = (\f|Add0~12_combout\ & !\f|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|Add0~12_combout\,
	datad => \f|Equal0~7_combout\,
	combout => \f|ctr~11_combout\);

-- Location: FF_X5_Y19_N3
\f|ctr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~11_combout\,
	ena => \control[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(6));

-- Location: LCCOMB_X5_Y19_N22
\f|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~14_combout\ = (\f|ctr\(7) & (!\f|Add0~13\)) # (!\f|ctr\(7) & ((\f|Add0~13\) # (GND)))
-- \f|Add0~15\ = CARRY((!\f|Add0~13\) # (!\f|ctr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(7),
	datad => VCC,
	cin => \f|Add0~13\,
	combout => \f|Add0~14_combout\,
	cout => \f|Add0~15\);

-- Location: FF_X5_Y19_N23
\f|ctr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~14_combout\,
	ena => \control[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(7));

-- Location: LCCOMB_X5_Y19_N24
\f|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~16_combout\ = (\f|ctr\(8) & (\f|Add0~15\ $ (GND))) # (!\f|ctr\(8) & (!\f|Add0~15\ & VCC))
-- \f|Add0~17\ = CARRY((\f|ctr\(8) & !\f|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f|ctr\(8),
	datad => VCC,
	cin => \f|Add0~15\,
	combout => \f|Add0~16_combout\,
	cout => \f|Add0~17\);

-- Location: FF_X5_Y19_N25
\f|ctr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~16_combout\,
	ena => \control[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(8));

-- Location: LCCOMB_X5_Y19_N4
\f|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Equal0~5_combout\ = (!\f|ctr\(8) & (!\f|ctr\(6) & (!\f|ctr\(7) & \f|ctr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(8),
	datab => \f|ctr\(6),
	datac => \f|ctr\(7),
	datad => \f|ctr\(5),
	combout => \f|Equal0~5_combout\);

-- Location: LCCOMB_X5_Y19_N26
\f|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~18_combout\ = (\f|ctr\(9) & (!\f|Add0~17\)) # (!\f|ctr\(9) & ((\f|Add0~17\) # (GND)))
-- \f|Add0~19\ = CARRY((!\f|Add0~17\) # (!\f|ctr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(9),
	datad => VCC,
	cin => \f|Add0~17\,
	combout => \f|Add0~18_combout\,
	cout => \f|Add0~19\);

-- Location: FF_X5_Y19_N27
\f|ctr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~18_combout\,
	ena => \control[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(9));

-- Location: LCCOMB_X5_Y19_N28
\f|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~20_combout\ = (\f|ctr\(10) & (\f|Add0~19\ $ (GND))) # (!\f|ctr\(10) & (!\f|Add0~19\ & VCC))
-- \f|Add0~21\ = CARRY((\f|ctr\(10) & !\f|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f|ctr\(10),
	datad => VCC,
	cin => \f|Add0~19\,
	combout => \f|Add0~20_combout\,
	cout => \f|Add0~21\);

-- Location: FF_X5_Y19_N29
\f|ctr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~20_combout\,
	ena => \control[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(10));

-- Location: LCCOMB_X5_Y19_N30
\f|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~22_combout\ = (\f|ctr\(11) & (!\f|Add0~21\)) # (!\f|ctr\(11) & ((\f|Add0~21\) # (GND)))
-- \f|Add0~23\ = CARRY((!\f|Add0~21\) # (!\f|ctr\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f|ctr\(11),
	datad => VCC,
	cin => \f|Add0~21\,
	combout => \f|Add0~22_combout\,
	cout => \f|Add0~23\);

-- Location: LCCOMB_X5_Y19_N0
\f|ctr~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~10_combout\ = (\f|Add0~22_combout\ & !\f|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f|Add0~22_combout\,
	datad => \f|Equal0~7_combout\,
	combout => \f|ctr~10_combout\);

-- Location: FF_X5_Y19_N1
\f|ctr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~10_combout\,
	ena => \control[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(11));

-- Location: LCCOMB_X5_Y18_N0
\f|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~24_combout\ = (\f|ctr\(12) & (\f|Add0~23\ $ (GND))) # (!\f|ctr\(12) & (!\f|Add0~23\ & VCC))
-- \f|Add0~25\ = CARRY((\f|ctr\(12) & !\f|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f|ctr\(12),
	datad => VCC,
	cin => \f|Add0~23\,
	combout => \f|Add0~24_combout\,
	cout => \f|Add0~25\);

-- Location: LCCOMB_X4_Y18_N6
\f|ctr~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~9_combout\ = (\f|Add0~24_combout\ & !\f|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f|Add0~24_combout\,
	datad => \f|Equal0~7_combout\,
	combout => \f|ctr~9_combout\);

-- Location: FF_X4_Y18_N7
\f|ctr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~9_combout\,
	ena => \control[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(12));

-- Location: LCCOMB_X5_Y18_N2
\f|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~26_combout\ = (\f|ctr\(13) & (!\f|Add0~25\)) # (!\f|ctr\(13) & ((\f|Add0~25\) # (GND)))
-- \f|Add0~27\ = CARRY((!\f|Add0~25\) # (!\f|ctr\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(13),
	datad => VCC,
	cin => \f|Add0~25\,
	combout => \f|Add0~26_combout\,
	cout => \f|Add0~27\);

-- Location: LCCOMB_X4_Y18_N16
\f|ctr~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~8_combout\ = (!\f|Equal0~7_combout\ & \f|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|Equal0~7_combout\,
	datad => \f|Add0~26_combout\,
	combout => \f|ctr~8_combout\);

-- Location: FF_X4_Y18_N17
\f|ctr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~8_combout\,
	ena => \control[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(13));

-- Location: LCCOMB_X5_Y18_N4
\f|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~28_combout\ = (\f|ctr\(14) & (\f|Add0~27\ $ (GND))) # (!\f|ctr\(14) & (!\f|Add0~27\ & VCC))
-- \f|Add0~29\ = CARRY((\f|ctr\(14) & !\f|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(14),
	datad => VCC,
	cin => \f|Add0~27\,
	combout => \f|Add0~28_combout\,
	cout => \f|Add0~29\);

-- Location: LCCOMB_X4_Y18_N0
\f|ctr~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~7_combout\ = (!\f|Equal0~7_combout\ & \f|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|Equal0~7_combout\,
	datad => \f|Add0~28_combout\,
	combout => \f|ctr~7_combout\);

-- Location: FF_X4_Y18_N1
\f|ctr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~7_combout\,
	ena => \control[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(14));

-- Location: LCCOMB_X5_Y18_N6
\f|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~30_combout\ = (\f|ctr\(15) & (!\f|Add0~29\)) # (!\f|ctr\(15) & ((\f|Add0~29\) # (GND)))
-- \f|Add0~31\ = CARRY((!\f|Add0~29\) # (!\f|ctr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(15),
	datad => VCC,
	cin => \f|Add0~29\,
	combout => \f|Add0~30_combout\,
	cout => \f|Add0~31\);

-- Location: FF_X5_Y18_N7
\f|ctr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~30_combout\,
	ena => \control[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(15));

-- Location: LCCOMB_X5_Y18_N8
\f|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~32_combout\ = (\f|ctr\(16) & (\f|Add0~31\ $ (GND))) # (!\f|ctr\(16) & (!\f|Add0~31\ & VCC))
-- \f|Add0~33\ = CARRY((\f|ctr\(16) & !\f|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f|ctr\(16),
	datad => VCC,
	cin => \f|Add0~31\,
	combout => \f|Add0~32_combout\,
	cout => \f|Add0~33\);

-- Location: LCCOMB_X4_Y18_N22
\f|ctr~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~6_combout\ = (\f|Add0~32_combout\ & !\f|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f|Add0~32_combout\,
	datad => \f|Equal0~7_combout\,
	combout => \f|ctr~6_combout\);

-- Location: FF_X4_Y18_N23
\f|ctr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~6_combout\,
	ena => \control[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(16));

-- Location: LCCOMB_X4_Y18_N10
\f|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Equal0~2_combout\ = (\f|ctr\(14) & (\f|ctr\(13) & (\f|ctr\(16) & !\f|ctr\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(14),
	datab => \f|ctr\(13),
	datac => \f|ctr\(16),
	datad => \f|ctr\(15),
	combout => \f|Equal0~2_combout\);

-- Location: LCCOMB_X5_Y18_N10
\f|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~34_combout\ = (\f|ctr\(17) & (!\f|Add0~33\)) # (!\f|ctr\(17) & ((\f|Add0~33\) # (GND)))
-- \f|Add0~35\ = CARRY((!\f|Add0~33\) # (!\f|ctr\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(17),
	datad => VCC,
	cin => \f|Add0~33\,
	combout => \f|Add0~34_combout\,
	cout => \f|Add0~35\);

-- Location: FF_X5_Y18_N11
\f|ctr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~34_combout\,
	ena => \control[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(17));

-- Location: LCCOMB_X5_Y18_N12
\f|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~36_combout\ = (\f|ctr\(18) & (\f|Add0~35\ $ (GND))) # (!\f|ctr\(18) & (!\f|Add0~35\ & VCC))
-- \f|Add0~37\ = CARRY((\f|ctr\(18) & !\f|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(18),
	datad => VCC,
	cin => \f|Add0~35\,
	combout => \f|Add0~36_combout\,
	cout => \f|Add0~37\);

-- Location: LCCOMB_X5_Y18_N30
\f|ctr~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~5_combout\ = (!\f|Equal0~7_combout\ & \f|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|Equal0~7_combout\,
	datad => \f|Add0~36_combout\,
	combout => \f|ctr~5_combout\);

-- Location: FF_X5_Y18_N31
\f|ctr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~5_combout\,
	ena => \control[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(18));

-- Location: LCCOMB_X5_Y18_N14
\f|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~38_combout\ = (\f|ctr\(19) & (!\f|Add0~37\)) # (!\f|ctr\(19) & ((\f|Add0~37\) # (GND)))
-- \f|Add0~39\ = CARRY((!\f|Add0~37\) # (!\f|ctr\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f|ctr\(19),
	datad => VCC,
	cin => \f|Add0~37\,
	combout => \f|Add0~38_combout\,
	cout => \f|Add0~39\);

-- Location: LCCOMB_X4_Y18_N20
\f|ctr~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~4_combout\ = (\f|Add0~38_combout\ & !\f|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f|Add0~38_combout\,
	datad => \f|Equal0~7_combout\,
	combout => \f|ctr~4_combout\);

-- Location: FF_X4_Y18_N21
\f|ctr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~4_combout\,
	ena => \control[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(19));

-- Location: LCCOMB_X5_Y18_N16
\f|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~40_combout\ = (\f|ctr\(20) & (\f|Add0~39\ $ (GND))) # (!\f|ctr\(20) & (!\f|Add0~39\ & VCC))
-- \f|Add0~41\ = CARRY((\f|ctr\(20) & !\f|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f|ctr\(20),
	datad => VCC,
	cin => \f|Add0~39\,
	combout => \f|Add0~40_combout\,
	cout => \f|Add0~41\);

-- Location: LCCOMB_X5_Y18_N28
\f|ctr~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~3_combout\ = (!\f|Equal0~7_combout\ & \f|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|Equal0~7_combout\,
	datad => \f|Add0~40_combout\,
	combout => \f|ctr~3_combout\);

-- Location: FF_X5_Y18_N29
\f|ctr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~3_combout\,
	ena => \control[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(20));

-- Location: LCCOMB_X5_Y18_N18
\f|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~42_combout\ = (\f|ctr\(21) & (!\f|Add0~41\)) # (!\f|ctr\(21) & ((\f|Add0~41\) # (GND)))
-- \f|Add0~43\ = CARRY((!\f|Add0~41\) # (!\f|ctr\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f|ctr\(21),
	datad => VCC,
	cin => \f|Add0~41\,
	combout => \f|Add0~42_combout\,
	cout => \f|Add0~43\);

-- Location: LCCOMB_X5_Y18_N26
\f|ctr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~2_combout\ = (!\f|Equal0~7_combout\ & \f|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|Equal0~7_combout\,
	datad => \f|Add0~42_combout\,
	combout => \f|ctr~2_combout\);

-- Location: FF_X5_Y18_N27
\f|ctr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~2_combout\,
	ena => \control[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(21));

-- Location: LCCOMB_X5_Y18_N20
\f|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~44_combout\ = (\f|ctr\(22) & (\f|Add0~43\ $ (GND))) # (!\f|ctr\(22) & (!\f|Add0~43\ & VCC))
-- \f|Add0~45\ = CARRY((\f|ctr\(22) & !\f|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(22),
	datad => VCC,
	cin => \f|Add0~43\,
	combout => \f|Add0~44_combout\,
	cout => \f|Add0~45\);

-- Location: LCCOMB_X4_Y18_N12
\f|ctr~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~1_combout\ = (\f|Add0~44_combout\ & !\f|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f|Add0~44_combout\,
	datad => \f|Equal0~7_combout\,
	combout => \f|ctr~1_combout\);

-- Location: FF_X4_Y18_N13
\f|ctr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~1_combout\,
	ena => \control[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(22));

-- Location: LCCOMB_X5_Y18_N22
\f|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~46_combout\ = (\f|ctr\(23) & (!\f|Add0~45\)) # (!\f|ctr\(23) & ((\f|Add0~45\) # (GND)))
-- \f|Add0~47\ = CARRY((!\f|Add0~45\) # (!\f|ctr\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(23),
	datad => VCC,
	cin => \f|Add0~45\,
	combout => \f|Add0~46_combout\,
	cout => \f|Add0~47\);

-- Location: FF_X5_Y18_N23
\f|ctr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~46_combout\,
	ena => \control[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(23));

-- Location: LCCOMB_X5_Y18_N24
\f|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~48_combout\ = \f|ctr\(24) $ (!\f|Add0~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f|ctr\(24),
	cin => \f|Add0~47\,
	combout => \f|Add0~48_combout\);

-- Location: LCCOMB_X4_Y18_N4
\f|ctr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~0_combout\ = (!\f|Equal0~7_combout\ & \f|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|Equal0~7_combout\,
	datad => \f|Add0~48_combout\,
	combout => \f|ctr~0_combout\);

-- Location: FF_X4_Y18_N5
\f|ctr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~0_combout\,
	ena => \control[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(24));

-- Location: LCCOMB_X4_Y18_N2
\f|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Equal0~0_combout\ = (\f|ctr\(22) & (\f|ctr\(24) & (!\f|ctr\(23) & \f|ctr\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(22),
	datab => \f|ctr\(24),
	datac => \f|ctr\(23),
	datad => \f|ctr\(21),
	combout => \f|Equal0~0_combout\);

-- Location: LCCOMB_X4_Y18_N8
\f|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Equal0~1_combout\ = (\f|ctr\(19) & (!\f|ctr\(17) & (\f|ctr\(18) & \f|ctr\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(19),
	datab => \f|ctr\(17),
	datac => \f|ctr\(18),
	datad => \f|ctr\(20),
	combout => \f|Equal0~1_combout\);

-- Location: LCCOMB_X4_Y18_N28
\f|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Equal0~3_combout\ = (\f|ctr\(12) & (!\f|ctr\(10) & (!\f|ctr\(9) & \f|ctr\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(12),
	datab => \f|ctr\(10),
	datac => \f|ctr\(9),
	datad => \f|ctr\(11),
	combout => \f|Equal0~3_combout\);

-- Location: LCCOMB_X4_Y18_N14
\f|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Equal0~4_combout\ = (\f|Equal0~2_combout\ & (\f|Equal0~0_combout\ & (\f|Equal0~1_combout\ & \f|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|Equal0~2_combout\,
	datab => \f|Equal0~0_combout\,
	datac => \f|Equal0~1_combout\,
	datad => \f|Equal0~3_combout\,
	combout => \f|Equal0~4_combout\);

-- Location: LCCOMB_X5_Y19_N6
\f|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Equal0~6_combout\ = (\f|ctr\(1) & (\f|ctr\(4) & (\f|ctr\(3) & \f|ctr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(1),
	datab => \f|ctr\(4),
	datac => \f|ctr\(3),
	datad => \f|ctr\(2),
	combout => \f|Equal0~6_combout\);

-- Location: LCCOMB_X4_Y18_N24
\f|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Equal0~7_combout\ = (\f|ctr\(0) & (\f|Equal0~5_combout\ & (\f|Equal0~4_combout\ & \f|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(0),
	datab => \f|Equal0~5_combout\,
	datac => \f|Equal0~4_combout\,
	datad => \f|Equal0~6_combout\,
	combout => \f|Equal0~7_combout\);

-- Location: LCCOMB_X4_Y18_N30
\f|sclk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|sclk~0_combout\ = \f|sclk~q\ $ (((\control[5]~input_o\ & \f|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|sclk~q\,
	datac => \control[5]~input_o\,
	datad => \f|Equal0~7_combout\,
	combout => \f|sclk~0_combout\);

-- Location: LCCOMB_X4_Y18_N26
\f|sclk~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|sclk~feeder_combout\ = \f|sclk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f|sclk~0_combout\,
	combout => \f|sclk~feeder_combout\);

-- Location: FF_X4_Y18_N27
\f|sclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|sclk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|sclk~q\);

-- Location: CLKCTRL_G1
\f|sclk~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \f|sclk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \f|sclk~clkctrl_outclk\);

-- Location: IOIBUF_X28_Y24_N15
\control[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(3),
	o => \control[3]~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\control[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(4),
	o => \control[4]~input_o\);

-- Location: LCCOMB_X29_Y21_N26
\c|ctr[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[3]~1_combout\ = (\control[4]~input_o\ & (!\control[3]~input_o\)) # (!\control[4]~input_o\ & ((\c|ctr[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control[3]~input_o\,
	datac => \control[4]~input_o\,
	datad => \c|ctr[3]~1_combout\,
	combout => \c|ctr[3]~1_combout\);

-- Location: LCCOMB_X28_Y21_N6
\c|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|Add0~0_combout\ = \c|ctr[0]~12_combout\ $ (VCC)
-- \c|Add0~1\ = CARRY(\c|ctr[0]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c|ctr[0]~12_combout\,
	datad => VCC,
	combout => \c|Add0~0_combout\,
	cout => \c|Add0~1\);

-- Location: LCCOMB_X28_Y21_N30
\c|ctr[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[0]~13_combout\ = \c|Add0~0_combout\ $ (\c|ctr[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|Add0~0_combout\,
	datac => \c|ctr[3]~1_combout\,
	combout => \c|ctr[0]~13_combout\);

-- Location: LCCOMB_X29_Y21_N10
\c|ctr~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr~21_combout\ = (\c|ctr[3]~2_combout\ & ((!\c|ctr[4]~6_combout\) # (!\c|ctr[5]~10_combout\))) # (!\c|ctr[3]~2_combout\ & ((\c|ctr[5]~10_combout\) # (\c|ctr[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c|ctr[3]~2_combout\,
	datac => \c|ctr[5]~10_combout\,
	datad => \c|ctr[4]~6_combout\,
	combout => \c|ctr~21_combout\);

-- Location: LCCOMB_X29_Y21_N20
\c|ctr~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr~20_combout\ = (\control[3]~input_o\ & (((!\c|ctr[4]~6_combout\) # (!\c|ctr[2]~4_combout\)) # (!\c|ctr[1]~8_combout\))) # (!\control[3]~input_o\ & ((\c|ctr[1]~8_combout\) # ((\c|ctr[2]~4_combout\) # (\c|ctr[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[3]~input_o\,
	datab => \c|ctr[1]~8_combout\,
	datac => \c|ctr[2]~4_combout\,
	datad => \c|ctr[4]~6_combout\,
	combout => \c|ctr~20_combout\);

-- Location: LCCOMB_X29_Y21_N28
\c|ctr~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr~22_combout\ = (\c|ctr~21_combout\) # ((\c|ctr~20_combout\) # (\c|ctr[4]~6_combout\ $ (\c|ctr[0]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr~21_combout\,
	datab => \c|ctr[4]~6_combout\,
	datac => \c|ctr[0]~12_combout\,
	datad => \c|ctr~20_combout\,
	combout => \c|ctr~22_combout\);

-- Location: FF_X28_Y21_N31
\c|ctr[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f|ALT_INV_sclk~clkctrl_outclk\,
	d => \c|ctr[0]~13_combout\,
	clrn => \ALT_INV_control[4]~input_o\,
	ena => \c|ctr~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c|ctr[0]~_emulated_q\);

-- Location: LCCOMB_X28_Y21_N4
\c|ctr[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[0]~12_combout\ = (\control[4]~input_o\ & (!\control[3]~input_o\)) # (!\control[4]~input_o\ & ((\c|ctr[0]~_emulated_q\ $ (\c|ctr[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[3]~input_o\,
	datab => \control[4]~input_o\,
	datac => \c|ctr[0]~_emulated_q\,
	datad => \c|ctr[3]~1_combout\,
	combout => \c|ctr[0]~12_combout\);

-- Location: LCCOMB_X28_Y21_N8
\c|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|Add0~2_combout\ = (\control[3]~input_o\ & ((\c|ctr[1]~8_combout\ & (!\c|Add0~1\)) # (!\c|ctr[1]~8_combout\ & ((\c|Add0~1\) # (GND))))) # (!\control[3]~input_o\ & ((\c|ctr[1]~8_combout\ & (\c|Add0~1\ & VCC)) # (!\c|ctr[1]~8_combout\ & (!\c|Add0~1\))))
-- \c|Add0~3\ = CARRY((\control[3]~input_o\ & ((!\c|Add0~1\) # (!\c|ctr[1]~8_combout\))) # (!\control[3]~input_o\ & (!\c|ctr[1]~8_combout\ & !\c|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control[3]~input_o\,
	datab => \c|ctr[1]~8_combout\,
	datad => VCC,
	cin => \c|Add0~1\,
	combout => \c|Add0~2_combout\,
	cout => \c|Add0~3\);

-- Location: LCCOMB_X28_Y21_N20
\c|ctr[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[1]~9_combout\ = \c|ctr[3]~1_combout\ $ (\c|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr[3]~1_combout\,
	datad => \c|Add0~2_combout\,
	combout => \c|ctr[1]~9_combout\);

-- Location: FF_X28_Y21_N21
\c|ctr[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f|ALT_INV_sclk~clkctrl_outclk\,
	d => \c|ctr[1]~9_combout\,
	clrn => \ALT_INV_control[4]~input_o\,
	ena => \c|ctr~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c|ctr[1]~_emulated_q\);

-- Location: LCCOMB_X29_Y21_N18
\c|ctr[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[1]~8_combout\ = (\control[4]~input_o\ & (!\control[3]~input_o\)) # (!\control[4]~input_o\ & ((\c|ctr[3]~1_combout\ $ (\c|ctr[1]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[4]~input_o\,
	datab => \control[3]~input_o\,
	datac => \c|ctr[3]~1_combout\,
	datad => \c|ctr[1]~_emulated_q\,
	combout => \c|ctr[1]~8_combout\);

-- Location: LCCOMB_X28_Y21_N10
\c|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|Add0~4_combout\ = ((\control[3]~input_o\ $ (\c|ctr[2]~4_combout\ $ (\c|Add0~3\)))) # (GND)
-- \c|Add0~5\ = CARRY((\control[3]~input_o\ & (\c|ctr[2]~4_combout\ & !\c|Add0~3\)) # (!\control[3]~input_o\ & ((\c|ctr[2]~4_combout\) # (!\c|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control[3]~input_o\,
	datab => \c|ctr[2]~4_combout\,
	datad => VCC,
	cin => \c|Add0~3\,
	combout => \c|Add0~4_combout\,
	cout => \c|Add0~5\);

-- Location: LCCOMB_X29_Y21_N30
\c|ctr[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[2]~5_combout\ = \c|Add0~4_combout\ $ (\c|ctr[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|Add0~4_combout\,
	datad => \c|ctr[3]~1_combout\,
	combout => \c|ctr[2]~5_combout\);

-- Location: FF_X29_Y21_N31
\c|ctr[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f|ALT_INV_sclk~clkctrl_outclk\,
	d => \c|ctr[2]~5_combout\,
	clrn => \ALT_INV_control[4]~input_o\,
	ena => \c|ctr~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c|ctr[2]~_emulated_q\);

-- Location: LCCOMB_X29_Y21_N12
\c|ctr[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[2]~4_combout\ = (\control[4]~input_o\ & (!\control[3]~input_o\)) # (!\control[4]~input_o\ & ((\c|ctr[3]~1_combout\ $ (\c|ctr[2]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[3]~input_o\,
	datab => \control[4]~input_o\,
	datac => \c|ctr[3]~1_combout\,
	datad => \c|ctr[2]~_emulated_q\,
	combout => \c|ctr[2]~4_combout\);

-- Location: LCCOMB_X28_Y21_N12
\c|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|Add0~6_combout\ = (\control[3]~input_o\ & ((\c|ctr[3]~2_combout\ & (!\c|Add0~5\)) # (!\c|ctr[3]~2_combout\ & ((\c|Add0~5\) # (GND))))) # (!\control[3]~input_o\ & ((\c|ctr[3]~2_combout\ & (\c|Add0~5\ & VCC)) # (!\c|ctr[3]~2_combout\ & (!\c|Add0~5\))))
-- \c|Add0~7\ = CARRY((\control[3]~input_o\ & ((!\c|Add0~5\) # (!\c|ctr[3]~2_combout\))) # (!\control[3]~input_o\ & (!\c|ctr[3]~2_combout\ & !\c|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control[3]~input_o\,
	datab => \c|ctr[3]~2_combout\,
	datad => VCC,
	cin => \c|Add0~5\,
	combout => \c|Add0~6_combout\,
	cout => \c|Add0~7\);

-- Location: LCCOMB_X29_Y21_N22
\c|ctr[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[3]~3_combout\ = \c|Add0~6_combout\ $ (\c|ctr[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|Add0~6_combout\,
	datad => \c|ctr[3]~1_combout\,
	combout => \c|ctr[3]~3_combout\);

-- Location: FF_X29_Y21_N23
\c|ctr[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f|ALT_INV_sclk~clkctrl_outclk\,
	d => \c|ctr[3]~3_combout\,
	clrn => \ALT_INV_control[4]~input_o\,
	ena => \c|ctr~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c|ctr[3]~_emulated_q\);

-- Location: LCCOMB_X29_Y21_N8
\c|ctr[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[3]~2_combout\ = (\control[4]~input_o\ & (((!\control[3]~input_o\)))) # (!\control[4]~input_o\ & (\c|ctr[3]~_emulated_q\ $ (((\c|ctr[3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr[3]~_emulated_q\,
	datab => \control[3]~input_o\,
	datac => \c|ctr[3]~1_combout\,
	datad => \control[4]~input_o\,
	combout => \c|ctr[3]~2_combout\);

-- Location: LCCOMB_X28_Y21_N14
\c|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|Add0~8_combout\ = ((\control[3]~input_o\ $ (\c|ctr[4]~6_combout\ $ (\c|Add0~7\)))) # (GND)
-- \c|Add0~9\ = CARRY((\control[3]~input_o\ & (\c|ctr[4]~6_combout\ & !\c|Add0~7\)) # (!\control[3]~input_o\ & ((\c|ctr[4]~6_combout\) # (!\c|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control[3]~input_o\,
	datab => \c|ctr[4]~6_combout\,
	datad => VCC,
	cin => \c|Add0~7\,
	combout => \c|Add0~8_combout\,
	cout => \c|Add0~9\);

-- Location: LCCOMB_X28_Y21_N18
\c|ctr[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[4]~7_combout\ = \c|Add0~8_combout\ $ (\c|ctr[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c|Add0~8_combout\,
	datac => \c|ctr[3]~1_combout\,
	combout => \c|ctr[4]~7_combout\);

-- Location: FF_X28_Y21_N19
\c|ctr[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f|ALT_INV_sclk~clkctrl_outclk\,
	d => \c|ctr[4]~7_combout\,
	clrn => \ALT_INV_control[4]~input_o\,
	ena => \c|ctr~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c|ctr[4]~_emulated_q\);

-- Location: LCCOMB_X29_Y21_N0
\c|ctr[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[4]~6_combout\ = (\control[4]~input_o\ & (!\control[3]~input_o\)) # (!\control[4]~input_o\ & ((\c|ctr[3]~1_combout\ $ (\c|ctr[4]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[3]~input_o\,
	datab => \control[4]~input_o\,
	datac => \c|ctr[3]~1_combout\,
	datad => \c|ctr[4]~_emulated_q\,
	combout => \c|ctr[4]~6_combout\);

-- Location: LCCOMB_X28_Y21_N16
\c|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|Add0~10_combout\ = \control[3]~input_o\ $ (\c|Add0~9\ $ (!\c|ctr[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control[3]~input_o\,
	datad => \c|ctr[5]~10_combout\,
	cin => \c|Add0~9\,
	combout => \c|Add0~10_combout\);

-- Location: LCCOMB_X29_Y21_N6
\c|ctr[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[5]~11_combout\ = \c|Add0~10_combout\ $ (\c|ctr[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c|Add0~10_combout\,
	datad => \c|ctr[3]~1_combout\,
	combout => \c|ctr[5]~11_combout\);

-- Location: FF_X29_Y21_N7
\c|ctr[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f|ALT_INV_sclk~clkctrl_outclk\,
	d => \c|ctr[5]~11_combout\,
	clrn => \ALT_INV_control[4]~input_o\,
	ena => \c|ctr~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c|ctr[5]~_emulated_q\);

-- Location: LCCOMB_X29_Y21_N4
\c|ctr[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[5]~10_combout\ = (\control[4]~input_o\ & (((!\control[3]~input_o\)))) # (!\control[4]~input_o\ & (\c|ctr[5]~_emulated_q\ $ (((\c|ctr[3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr[5]~_emulated_q\,
	datab => \control[3]~input_o\,
	datac => \c|ctr[3]~1_combout\,
	datad => \control[4]~input_o\,
	combout => \c|ctr[5]~10_combout\);

-- Location: LCCOMB_X28_Y21_N0
\s|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~0_combout\ = (\c|ctr[5]~10_combout\ & ((\c|ctr[4]~6_combout\ & (\c|ctr[3]~2_combout\)) # (!\c|ctr[4]~6_combout\ & ((\c|ctr[2]~4_combout\))))) # (!\c|ctr[5]~10_combout\ & ((\c|ctr[4]~6_combout\ & ((\c|ctr[2]~4_combout\))) # (!\c|ctr[4]~6_combout\ & 
-- (\c|ctr[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr[5]~10_combout\,
	datab => \c|ctr[3]~2_combout\,
	datac => \c|ctr[2]~4_combout\,
	datad => \c|ctr[4]~6_combout\,
	combout => \s|o~0_combout\);

-- Location: LCCOMB_X30_Y21_N30
\s|ctr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|ctr~0_combout\ = !\s|ctr~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s|ctr~q\,
	combout => \s|ctr~0_combout\);

-- Location: FF_X29_Y21_N15
\s|ctr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \s|ctr~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|ctr~q\);

-- Location: LCCOMB_X28_Y21_N28
\s|o~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~2_combout\ = \c|ctr[1]~8_combout\ $ (((\c|ctr[0]~12_combout\ & \s|ctr~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c|ctr[1]~8_combout\,
	datac => \c|ctr[0]~12_combout\,
	datad => \s|ctr~q\,
	combout => \s|o~2_combout\);

-- Location: LCCOMB_X28_Y21_N22
\s|o~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~1_combout\ = (\c|ctr[5]~10_combout\ & (!\c|ctr[3]~2_combout\ & (!\c|ctr[2]~4_combout\ & !\c|ctr[4]~6_combout\))) # (!\c|ctr[5]~10_combout\ & (\c|ctr[2]~4_combout\ & (\c|ctr[3]~2_combout\ $ (\c|ctr[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr[5]~10_combout\,
	datab => \c|ctr[3]~2_combout\,
	datac => \c|ctr[2]~4_combout\,
	datad => \c|ctr[4]~6_combout\,
	combout => \s|o~1_combout\);

-- Location: LCCOMB_X28_Y21_N24
\s|o~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~3_combout\ = (\s|ctr~q\ & (((\s|o~2_combout\)))) # (!\s|ctr~q\ & (\s|o~0_combout\ $ (((\s|o~2_combout\ & \s|o~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o~0_combout\,
	datab => \s|o~2_combout\,
	datac => \s|o~1_combout\,
	datad => \s|ctr~q\,
	combout => \s|o~3_combout\);

-- Location: FF_X28_Y21_N25
\s|o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \s|o~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|o\(0));

-- Location: LCCOMB_X30_Y21_N20
\s|o~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~4_combout\ = (\c|ctr[4]~6_combout\ & (\c|ctr[5]~10_combout\ & (\c|ctr[3]~2_combout\ $ (\c|ctr[2]~4_combout\)))) # (!\c|ctr[4]~6_combout\ & (\c|ctr[5]~10_combout\ $ (((\c|ctr[3]~2_combout\) # (\c|ctr[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr[3]~2_combout\,
	datab => \c|ctr[2]~4_combout\,
	datac => \c|ctr[5]~10_combout\,
	datad => \c|ctr[4]~6_combout\,
	combout => \s|o~4_combout\);

-- Location: LCCOMB_X30_Y21_N24
\s|o~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~6_combout\ = (\c|ctr[4]~6_combout\ & ((\c|ctr[3]~2_combout\ & (!\c|ctr[2]~4_combout\ & \c|ctr[5]~10_combout\)) # (!\c|ctr[3]~2_combout\ & (\c|ctr[2]~4_combout\ & !\c|ctr[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr[4]~6_combout\,
	datab => \c|ctr[3]~2_combout\,
	datac => \c|ctr[2]~4_combout\,
	datad => \c|ctr[5]~10_combout\,
	combout => \s|o~6_combout\);

-- Location: LCCOMB_X30_Y21_N10
\s|o~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~5_combout\ = (\c|ctr[2]~4_combout\ & (\c|ctr[3]~2_combout\ & (\c|ctr[4]~6_combout\ $ (!\c|ctr[5]~10_combout\)))) # (!\c|ctr[2]~4_combout\ & (\c|ctr[4]~6_combout\ $ (((\c|ctr[5]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr[4]~6_combout\,
	datab => \c|ctr[3]~2_combout\,
	datac => \c|ctr[2]~4_combout\,
	datad => \c|ctr[5]~10_combout\,
	combout => \s|o~5_combout\);

-- Location: LCCOMB_X30_Y21_N2
\s|o~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~14_combout\ = (\s|o~6_combout\ & (\s|o~5_combout\ $ (((\s|o~4_combout\) # (!\s|ctr~q\))))) # (!\s|o~6_combout\ & ((\s|o~5_combout\ & ((!\s|o~4_combout\))) # (!\s|o~5_combout\ & (\s|ctr~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o~6_combout\,
	datab => \s|o~5_combout\,
	datac => \s|ctr~q\,
	datad => \s|o~4_combout\,
	combout => \s|o~14_combout\);

-- Location: LCCOMB_X30_Y21_N28
\s|o~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~15_combout\ = (\s|o~14_combout\ & ((\s|o~4_combout\ $ (\c|ctr[1]~8_combout\)) # (!\s|ctr~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o~4_combout\,
	datab => \c|ctr[1]~8_combout\,
	datac => \s|o~14_combout\,
	datad => \s|ctr~q\,
	combout => \s|o~15_combout\);

-- Location: FF_X30_Y21_N29
\s|o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \s|o~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|o\(1));

-- Location: LCCOMB_X30_Y21_N26
\s|o~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~11_combout\ = (\c|ctr[5]~10_combout\ & (\c|ctr[4]~6_combout\ & (!\c|ctr[2]~4_combout\ & \c|ctr[3]~2_combout\))) # (!\c|ctr[5]~10_combout\ & (\c|ctr[2]~4_combout\ & (\c|ctr[4]~6_combout\ $ (\c|ctr[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr[5]~10_combout\,
	datab => \c|ctr[4]~6_combout\,
	datac => \c|ctr[2]~4_combout\,
	datad => \c|ctr[3]~2_combout\,
	combout => \s|o~11_combout\);

-- Location: LCCOMB_X30_Y21_N4
\s|o~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~12_combout\ = (\c|ctr[5]~10_combout\ & (!\c|ctr[4]~6_combout\ & (\c|ctr[2]~4_combout\ $ (!\c|ctr[3]~2_combout\)))) # (!\c|ctr[5]~10_combout\ & (\c|ctr[4]~6_combout\ & (\c|ctr[2]~4_combout\ & \c|ctr[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr[5]~10_combout\,
	datab => \c|ctr[4]~6_combout\,
	datac => \c|ctr[2]~4_combout\,
	datad => \c|ctr[3]~2_combout\,
	combout => \s|o~12_combout\);

-- Location: LCCOMB_X30_Y21_N22
\s|o~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~13_combout\ = (\s|ctr~q\ & ((\s|o~11_combout\ & (\c|ctr[1]~8_combout\ & !\s|o~12_combout\)) # (!\s|o~11_combout\ & (!\c|ctr[1]~8_combout\ & \s|o~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o~11_combout\,
	datab => \c|ctr[1]~8_combout\,
	datac => \s|o~12_combout\,
	datad => \s|ctr~q\,
	combout => \s|o~13_combout\);

-- Location: FF_X30_Y21_N23
\s|o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \s|o~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|o\(3));

-- Location: LCCOMB_X29_Y21_N24
\s|o~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~8_combout\ = (\s|ctr~q\ & ((\c|ctr[1]~8_combout\) # ((!\c|ctr[3]~2_combout\ & \c|ctr[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr[3]~2_combout\,
	datab => \c|ctr[1]~8_combout\,
	datac => \s|ctr~q\,
	datad => \c|ctr[4]~6_combout\,
	combout => \s|o~8_combout\);

-- Location: LCCOMB_X29_Y21_N2
\s|o~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~9_combout\ = (\c|ctr[2]~4_combout\ & ((\s|o~8_combout\) # (!\c|ctr[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr[2]~4_combout\,
	datab => \c|ctr[3]~2_combout\,
	datac => \s|o~8_combout\,
	combout => \s|o~9_combout\);

-- Location: LCCOMB_X29_Y21_N14
\s|o~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~7_combout\ = (\c|ctr[3]~2_combout\ & (\c|ctr[4]~6_combout\ $ (((!\c|ctr[1]~8_combout\ & \s|ctr~q\))))) # (!\c|ctr[3]~2_combout\ & (((\s|ctr~q\ & !\c|ctr[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr[1]~8_combout\,
	datab => \c|ctr[3]~2_combout\,
	datac => \s|ctr~q\,
	datad => \c|ctr[4]~6_combout\,
	combout => \s|o~7_combout\);

-- Location: LCCOMB_X29_Y21_N16
\s|o~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~10_combout\ = (\s|o~7_combout\ & (\s|o~9_combout\ & ((!\s|o~8_combout\) # (!\c|ctr[5]~10_combout\)))) # (!\s|o~7_combout\ & (\c|ctr[5]~10_combout\ $ (((!\s|o~9_combout\ & \s|o~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o~9_combout\,
	datab => \s|o~7_combout\,
	datac => \c|ctr[5]~10_combout\,
	datad => \s|o~8_combout\,
	combout => \s|o~10_combout\);

-- Location: FF_X29_Y21_N17
\s|o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \s|o~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|o\(2));

-- Location: LCCOMB_X30_Y21_N8
\dd|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd|Mux6~0_combout\ = (\s|o\(1) & (!\s|o\(3) & ((!\s|o\(2)) # (!\s|o\(0))))) # (!\s|o\(1) & ((\s|o\(3) $ (\s|o\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o\(0),
	datab => \s|o\(1),
	datac => \s|o\(3),
	datad => \s|o\(2),
	combout => \dd|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y21_N14
\dd|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd|Mux5~0_combout\ = (!\s|o\(3) & ((\s|o\(0) & ((\s|o\(1)) # (!\s|o\(2)))) # (!\s|o\(0) & (\s|o\(1) & !\s|o\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o\(0),
	datab => \s|o\(1),
	datac => \s|o\(3),
	datad => \s|o\(2),
	combout => \dd|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y21_N0
\dd|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd|Mux4~0_combout\ = (\s|o\(1) & (\s|o\(0) & (!\s|o\(3)))) # (!\s|o\(1) & ((\s|o\(2) & ((!\s|o\(3)))) # (!\s|o\(2) & (\s|o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o\(0),
	datab => \s|o\(1),
	datac => \s|o\(3),
	datad => \s|o\(2),
	combout => \dd|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y21_N18
\dd|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd|Mux3~0_combout\ = (!\s|o\(3) & ((\s|o\(0) & (\s|o\(1) $ (!\s|o\(2)))) # (!\s|o\(0) & (!\s|o\(1) & \s|o\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o\(0),
	datab => \s|o\(1),
	datac => \s|o\(3),
	datad => \s|o\(2),
	combout => \dd|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y21_N16
\dd|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd|Mux2~0_combout\ = (!\s|o\(0) & (\s|o\(1) & (!\s|o\(3) & !\s|o\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o\(0),
	datab => \s|o\(1),
	datac => \s|o\(3),
	datad => \s|o\(2),
	combout => \dd|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y21_N6
\dd|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd|Mux1~0_combout\ = (!\s|o\(3) & (\s|o\(2) & (\s|o\(0) $ (\s|o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o\(0),
	datab => \s|o\(1),
	datac => \s|o\(3),
	datad => \s|o\(2),
	combout => \dd|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y21_N12
\dd|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd|Mux0~0_combout\ = (\s|o\(1) & (((\s|o\(3))))) # (!\s|o\(1) & (\s|o\(2) $ (((\s|o\(0) & !\s|o\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o\(0),
	datab => \s|o\(1),
	datac => \s|o\(3),
	datad => \s|o\(2),
	combout => \dd|Mux0~0_combout\);

-- Location: FF_X30_Y21_N3
\s|di[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \s|ctr~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|di\(0));

-- Location: LCCOMB_X28_Y21_N26
\s|di[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|di[1]~0_combout\ = !\s|ctr~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s|ctr~q\,
	combout => \s|di[1]~0_combout\);

-- Location: FF_X28_Y21_N27
\s|di[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \s|di[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|di\(1));

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

-- Location: IOIBUF_X16_Y24_N22
\control[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(2),
	o => \control[2]~input_o\);

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


