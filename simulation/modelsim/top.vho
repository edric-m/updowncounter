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

-- DATE "10/14/2019 18:08:35"

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
	seg : OUT std_logic_vector(3 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- control[0]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[1]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[2]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[3]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[4]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[5]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[0]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[1]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[2]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[4]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[5]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[6]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[0]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_seg : std_logic_vector(3 DOWNTO 0);
SIGNAL \s|sclk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \f|sclk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \seg[2]~output_o\ : std_logic;
SIGNAL \seg[3]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \s|Add0~0_combout\ : std_logic;
SIGNAL \s|Add0~1\ : std_logic;
SIGNAL \s|Add0~2_combout\ : std_logic;
SIGNAL \s|Add0~3\ : std_logic;
SIGNAL \s|Add0~4_combout\ : std_logic;
SIGNAL \s|Add0~5\ : std_logic;
SIGNAL \s|Add0~6_combout\ : std_logic;
SIGNAL \s|Equal0~0_combout\ : std_logic;
SIGNAL \s|Add0~7\ : std_logic;
SIGNAL \s|Add0~8_combout\ : std_logic;
SIGNAL \s|Add0~9\ : std_logic;
SIGNAL \s|Add0~10_combout\ : std_logic;
SIGNAL \s|cctr~2_combout\ : std_logic;
SIGNAL \s|Add0~11\ : std_logic;
SIGNAL \s|Add0~12_combout\ : std_logic;
SIGNAL \s|Add0~13\ : std_logic;
SIGNAL \s|Add0~14_combout\ : std_logic;
SIGNAL \s|cctr~1_combout\ : std_logic;
SIGNAL \s|Equal0~1_combout\ : std_logic;
SIGNAL \s|Add0~15\ : std_logic;
SIGNAL \s|Add0~16_combout\ : std_logic;
SIGNAL \s|Add0~17\ : std_logic;
SIGNAL \s|Add0~18_combout\ : std_logic;
SIGNAL \s|cctr~3_combout\ : std_logic;
SIGNAL \s|Add0~19\ : std_logic;
SIGNAL \s|Add0~20_combout\ : std_logic;
SIGNAL \s|cctr~4_combout\ : std_logic;
SIGNAL \s|Add0~21\ : std_logic;
SIGNAL \s|Add0~22_combout\ : std_logic;
SIGNAL \s|Equal0~2_combout\ : std_logic;
SIGNAL \s|Add0~23\ : std_logic;
SIGNAL \s|Add0~24_combout\ : std_logic;
SIGNAL \s|Add0~25\ : std_logic;
SIGNAL \s|Add0~26_combout\ : std_logic;
SIGNAL \s|Add0~27\ : std_logic;
SIGNAL \s|Add0~28_combout\ : std_logic;
SIGNAL \s|Add0~29\ : std_logic;
SIGNAL \s|Add0~30_combout\ : std_logic;
SIGNAL \s|cctr~5_combout\ : std_logic;
SIGNAL \s|Equal0~3_combout\ : std_logic;
SIGNAL \s|Equal0~4_combout\ : std_logic;
SIGNAL \s|Add0~31\ : std_logic;
SIGNAL \s|Add0~32_combout\ : std_logic;
SIGNAL \s|cctr~0_combout\ : std_logic;
SIGNAL \s|sclk~0_combout\ : std_logic;
SIGNAL \s|sclk~feeder_combout\ : std_logic;
SIGNAL \s|sclk~q\ : std_logic;
SIGNAL \s|sclk~clkctrl_outclk\ : std_logic;
SIGNAL \s|ctr~0_combout\ : std_logic;
SIGNAL \s|ctr~q\ : std_logic;
SIGNAL \f|Add0~0_combout\ : std_logic;
SIGNAL \f|Add0~1\ : std_logic;
SIGNAL \f|Add0~2_combout\ : std_logic;
SIGNAL \f|Add0~3\ : std_logic;
SIGNAL \f|Add0~4_combout\ : std_logic;
SIGNAL \f|Add0~5\ : std_logic;
SIGNAL \f|Add0~6_combout\ : std_logic;
SIGNAL \f|Add0~7\ : std_logic;
SIGNAL \f|Add0~8_combout\ : std_logic;
SIGNAL \f|Equal0~6_combout\ : std_logic;
SIGNAL \f|Add0~15\ : std_logic;
SIGNAL \f|Add0~16_combout\ : std_logic;
SIGNAL \f|Add0~17\ : std_logic;
SIGNAL \f|Add0~18_combout\ : std_logic;
SIGNAL \f|Add0~19\ : std_logic;
SIGNAL \f|Add0~20_combout\ : std_logic;
SIGNAL \f|Add0~21\ : std_logic;
SIGNAL \f|Add0~22_combout\ : std_logic;
SIGNAL \f|ctr~14_combout\ : std_logic;
SIGNAL \f|Add0~23\ : std_logic;
SIGNAL \f|Add0~24_combout\ : std_logic;
SIGNAL \f|ctr~13_combout\ : std_logic;
SIGNAL \f|Add0~25\ : std_logic;
SIGNAL \f|Add0~26_combout\ : std_logic;
SIGNAL \f|ctr~12_combout\ : std_logic;
SIGNAL \f|Add0~27\ : std_logic;
SIGNAL \f|Add0~28_combout\ : std_logic;
SIGNAL \f|ctr~11_combout\ : std_logic;
SIGNAL \f|Add0~29\ : std_logic;
SIGNAL \f|Add0~30_combout\ : std_logic;
SIGNAL \f|Add0~31\ : std_logic;
SIGNAL \f|Add0~32_combout\ : std_logic;
SIGNAL \f|ctr~10_combout\ : std_logic;
SIGNAL \f|Equal0~2_combout\ : std_logic;
SIGNAL \f|Add0~33\ : std_logic;
SIGNAL \f|Add0~34_combout\ : std_logic;
SIGNAL \f|Add0~35\ : std_logic;
SIGNAL \f|Add0~36_combout\ : std_logic;
SIGNAL \f|ctr~9_combout\ : std_logic;
SIGNAL \f|Add0~37\ : std_logic;
SIGNAL \f|Add0~38_combout\ : std_logic;
SIGNAL \f|ctr~8_combout\ : std_logic;
SIGNAL \f|Add0~39\ : std_logic;
SIGNAL \f|Add0~40_combout\ : std_logic;
SIGNAL \f|ctr~19_combout\ : std_logic;
SIGNAL \f|Equal0~1_combout\ : std_logic;
SIGNAL \f|Equal0~3_combout\ : std_logic;
SIGNAL \f|Add0~41\ : std_logic;
SIGNAL \f|Add0~42_combout\ : std_logic;
SIGNAL \f|ctr~18_combout\ : std_logic;
SIGNAL \f|Add0~43\ : std_logic;
SIGNAL \f|Add0~44_combout\ : std_logic;
SIGNAL \f|ctr~17_combout\ : std_logic;
SIGNAL \f|Add0~45\ : std_logic;
SIGNAL \f|Add0~46_combout\ : std_logic;
SIGNAL \f|Add0~47\ : std_logic;
SIGNAL \f|Add0~48_combout\ : std_logic;
SIGNAL \f|ctr~16_combout\ : std_logic;
SIGNAL \f|Equal0~0_combout\ : std_logic;
SIGNAL \f|Equal0~4_combout\ : std_logic;
SIGNAL \f|Add0~9\ : std_logic;
SIGNAL \f|Add0~10_combout\ : std_logic;
SIGNAL \f|Add0~11\ : std_logic;
SIGNAL \f|Add0~12_combout\ : std_logic;
SIGNAL \f|ctr~15_combout\ : std_logic;
SIGNAL \f|Add0~13\ : std_logic;
SIGNAL \f|Add0~14_combout\ : std_logic;
SIGNAL \f|Equal0~5_combout\ : std_logic;
SIGNAL \f|Equal0~7_combout\ : std_logic;
SIGNAL \f|sclk~0_combout\ : std_logic;
SIGNAL \f|sclk~feeder_combout\ : std_logic;
SIGNAL \f|sclk~q\ : std_logic;
SIGNAL \f|sclk~clkctrl_outclk\ : std_logic;
SIGNAL \c|ctr[3]~2_combout\ : std_logic;
SIGNAL \c|Equal0~0_combout\ : std_logic;
SIGNAL \c|ctr[4]~3_combout\ : std_logic;
SIGNAL \c|ctr[5]~5_combout\ : std_logic;
SIGNAL \c|ctr[0]~1_combout\ : std_logic;
SIGNAL \c|Equal0~1_combout\ : std_logic;
SIGNAL \c|ctr[1]~0_combout\ : std_logic;
SIGNAL \c|ctr[2]~4_combout\ : std_logic;
SIGNAL \s|o~13_combout\ : std_logic;
SIGNAL \s|o~12_combout\ : std_logic;
SIGNAL \s|o~14_combout\ : std_logic;
SIGNAL \s|o~8_combout\ : std_logic;
SIGNAL \s|o~7_combout\ : std_logic;
SIGNAL \s|o~9_combout\ : std_logic;
SIGNAL \s|o~10_combout\ : std_logic;
SIGNAL \s|o~11_combout\ : std_logic;
SIGNAL \s|o~4_combout\ : std_logic;
SIGNAL \s|o~5_combout\ : std_logic;
SIGNAL \s|o~6_combout\ : std_logic;
SIGNAL \s|o~15_combout\ : std_logic;
SIGNAL \s|o~16_combout\ : std_logic;
SIGNAL \s|o~2_combout\ : std_logic;
SIGNAL \s|o~0_combout\ : std_logic;
SIGNAL \s|o~1_combout\ : std_logic;
SIGNAL \s|o~3_combout\ : std_logic;
SIGNAL \dd|Mux6~0_combout\ : std_logic;
SIGNAL \dd|Mux5~0_combout\ : std_logic;
SIGNAL \dd|Mux4~0_combout\ : std_logic;
SIGNAL \dd|Mux3~0_combout\ : std_logic;
SIGNAL \dd|Mux2~0_combout\ : std_logic;
SIGNAL \dd|Mux1~0_combout\ : std_logic;
SIGNAL \dd|Mux0~0_combout\ : std_logic;
SIGNAL \s|di[0]~0_combout\ : std_logic;
SIGNAL \s|o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s|di\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \f|ctr\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \c|ctr\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \s|cctr\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \dd|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \f|ALT_INV_sclk~clkctrl_outclk\ : std_logic;
SIGNAL \s|ALT_INV_sclk~clkctrl_outclk\ : std_logic;

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

\s|sclk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \s|sclk~q\);

\f|sclk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \f|sclk~q\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\dd|ALT_INV_Mux6~0_combout\ <= NOT \dd|Mux6~0_combout\;
\ALT_INV_clock~inputclkctrl_outclk\ <= NOT \clock~inputclkctrl_outclk\;
\f|ALT_INV_sclk~clkctrl_outclk\ <= NOT \f|sclk~clkctrl_outclk\;
\s|ALT_INV_sclk~clkctrl_outclk\ <= NOT \s|sclk~clkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X28_Y24_N9
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

-- Location: IOOBUF_X18_Y24_N16
\dec[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dd|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \dec[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\dec[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dd|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \dec[1]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\dec[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dd|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \dec[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\dec[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dd|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \dec[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\dec[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dd|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \dec[4]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\dec[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dd|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \dec[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\dec[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dd|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \dec[6]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
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

-- Location: IOOBUF_X11_Y24_N16
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

-- Location: IOOBUF_X9_Y24_N9
\seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \seg[2]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \seg[3]~output_o\);

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

-- Location: LCCOMB_X3_Y11_N16
\s|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|Add0~0_combout\ = \s|cctr\(0) $ (VCC)
-- \s|Add0~1\ = CARRY(\s|cctr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s|cctr\(0),
	datad => VCC,
	combout => \s|Add0~0_combout\,
	cout => \s|Add0~1\);

-- Location: FF_X3_Y11_N17
\s|cctr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \s|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|cctr\(0));

-- Location: LCCOMB_X3_Y11_N18
\s|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|Add0~2_combout\ = (\s|cctr\(1) & (!\s|Add0~1\)) # (!\s|cctr\(1) & ((\s|Add0~1\) # (GND)))
-- \s|Add0~3\ = CARRY((!\s|Add0~1\) # (!\s|cctr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s|cctr\(1),
	datad => VCC,
	cin => \s|Add0~1\,
	combout => \s|Add0~2_combout\,
	cout => \s|Add0~3\);

-- Location: FF_X3_Y11_N19
\s|cctr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \s|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|cctr\(1));

-- Location: LCCOMB_X3_Y11_N20
\s|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|Add0~4_combout\ = (\s|cctr\(2) & (\s|Add0~3\ $ (GND))) # (!\s|cctr\(2) & (!\s|Add0~3\ & VCC))
-- \s|Add0~5\ = CARRY((\s|cctr\(2) & !\s|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s|cctr\(2),
	datad => VCC,
	cin => \s|Add0~3\,
	combout => \s|Add0~4_combout\,
	cout => \s|Add0~5\);

-- Location: FF_X3_Y11_N21
\s|cctr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \s|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|cctr\(2));

-- Location: LCCOMB_X3_Y11_N22
\s|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|Add0~6_combout\ = (\s|cctr\(3) & (!\s|Add0~5\)) # (!\s|cctr\(3) & ((\s|Add0~5\) # (GND)))
-- \s|Add0~7\ = CARRY((!\s|Add0~5\) # (!\s|cctr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s|cctr\(3),
	datad => VCC,
	cin => \s|Add0~5\,
	combout => \s|Add0~6_combout\,
	cout => \s|Add0~7\);

-- Location: FF_X3_Y11_N23
\s|cctr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \s|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|cctr\(3));

-- Location: LCCOMB_X3_Y11_N10
\s|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|Equal0~0_combout\ = (\s|cctr\(2) & (\s|cctr\(1) & (\s|cctr\(3) & \s|cctr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|cctr\(2),
	datab => \s|cctr\(1),
	datac => \s|cctr\(3),
	datad => \s|cctr\(0),
	combout => \s|Equal0~0_combout\);

-- Location: LCCOMB_X3_Y11_N24
\s|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|Add0~8_combout\ = (\s|cctr\(4) & (\s|Add0~7\ $ (GND))) # (!\s|cctr\(4) & (!\s|Add0~7\ & VCC))
-- \s|Add0~9\ = CARRY((\s|cctr\(4) & !\s|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s|cctr\(4),
	datad => VCC,
	cin => \s|Add0~7\,
	combout => \s|Add0~8_combout\,
	cout => \s|Add0~9\);

-- Location: FF_X3_Y11_N25
\s|cctr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \s|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|cctr\(4));

-- Location: LCCOMB_X3_Y11_N26
\s|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|Add0~10_combout\ = (\s|cctr\(5) & (!\s|Add0~9\)) # (!\s|cctr\(5) & ((\s|Add0~9\) # (GND)))
-- \s|Add0~11\ = CARRY((!\s|Add0~9\) # (!\s|cctr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s|cctr\(5),
	datad => VCC,
	cin => \s|Add0~9\,
	combout => \s|Add0~10_combout\,
	cout => \s|Add0~11\);

-- Location: LCCOMB_X3_Y11_N6
\s|cctr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|cctr~2_combout\ = (\s|Add0~10_combout\ & ((!\s|Equal0~4_combout\) # (!\s|cctr\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|Add0~10_combout\,
	datab => \s|cctr\(16),
	datac => \s|Equal0~4_combout\,
	combout => \s|cctr~2_combout\);

-- Location: FF_X3_Y11_N7
\s|cctr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \s|cctr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|cctr\(5));

-- Location: LCCOMB_X3_Y11_N28
\s|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|Add0~12_combout\ = (\s|cctr\(6) & (\s|Add0~11\ $ (GND))) # (!\s|cctr\(6) & (!\s|Add0~11\ & VCC))
-- \s|Add0~13\ = CARRY((\s|cctr\(6) & !\s|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s|cctr\(6),
	datad => VCC,
	cin => \s|Add0~11\,
	combout => \s|Add0~12_combout\,
	cout => \s|Add0~13\);

-- Location: FF_X3_Y11_N29
\s|cctr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \s|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|cctr\(6));

-- Location: LCCOMB_X3_Y11_N30
\s|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|Add0~14_combout\ = (\s|cctr\(7) & (!\s|Add0~13\)) # (!\s|cctr\(7) & ((\s|Add0~13\) # (GND)))
-- \s|Add0~15\ = CARRY((!\s|Add0~13\) # (!\s|cctr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s|cctr\(7),
	datad => VCC,
	cin => \s|Add0~13\,
	combout => \s|Add0~14_combout\,
	cout => \s|Add0~15\);

-- Location: LCCOMB_X3_Y11_N12
\s|cctr~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|cctr~1_combout\ = (\s|Add0~14_combout\ & ((!\s|Equal0~4_combout\) # (!\s|cctr\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|Add0~14_combout\,
	datab => \s|cctr\(16),
	datac => \s|Equal0~4_combout\,
	combout => \s|cctr~1_combout\);

-- Location: FF_X3_Y11_N13
\s|cctr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \s|cctr~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|cctr\(7));

-- Location: LCCOMB_X3_Y11_N2
\s|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|Equal0~1_combout\ = (\s|cctr\(7) & (!\s|cctr\(6) & (!\s|cctr\(5) & \s|cctr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|cctr\(7),
	datab => \s|cctr\(6),
	datac => \s|cctr\(5),
	datad => \s|cctr\(4),
	combout => \s|Equal0~1_combout\);

-- Location: LCCOMB_X3_Y10_N0
\s|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|Add0~16_combout\ = (\s|cctr\(8) & (\s|Add0~15\ $ (GND))) # (!\s|cctr\(8) & (!\s|Add0~15\ & VCC))
-- \s|Add0~17\ = CARRY((\s|cctr\(8) & !\s|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s|cctr\(8),
	datad => VCC,
	cin => \s|Add0~15\,
	combout => \s|Add0~16_combout\,
	cout => \s|Add0~17\);

-- Location: FF_X3_Y10_N1
\s|cctr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \s|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|cctr\(8));

-- Location: LCCOMB_X3_Y10_N2
\s|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|Add0~18_combout\ = (\s|cctr\(9) & (!\s|Add0~17\)) # (!\s|cctr\(9) & ((\s|Add0~17\) # (GND)))
-- \s|Add0~19\ = CARRY((!\s|Add0~17\) # (!\s|cctr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s|cctr\(9),
	datad => VCC,
	cin => \s|Add0~17\,
	combout => \s|Add0~18_combout\,
	cout => \s|Add0~19\);

-- Location: LCCOMB_X3_Y10_N20
\s|cctr~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|cctr~3_combout\ = (\s|Add0~18_combout\ & ((!\s|Equal0~4_combout\) # (!\s|cctr\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|cctr\(16),
	datac => \s|Equal0~4_combout\,
	datad => \s|Add0~18_combout\,
	combout => \s|cctr~3_combout\);

-- Location: FF_X3_Y10_N21
\s|cctr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \s|cctr~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|cctr\(9));

-- Location: LCCOMB_X3_Y10_N4
\s|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|Add0~20_combout\ = (\s|cctr\(10) & (\s|Add0~19\ $ (GND))) # (!\s|cctr\(10) & (!\s|Add0~19\ & VCC))
-- \s|Add0~21\ = CARRY((\s|cctr\(10) & !\s|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s|cctr\(10),
	datad => VCC,
	cin => \s|Add0~19\,
	combout => \s|Add0~20_combout\,
	cout => \s|Add0~21\);

-- Location: LCCOMB_X3_Y10_N22
\s|cctr~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|cctr~4_combout\ = (\s|Add0~20_combout\ & ((!\s|Equal0~4_combout\) # (!\s|cctr\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|cctr\(16),
	datab => \s|Add0~20_combout\,
	datac => \s|Equal0~4_combout\,
	combout => \s|cctr~4_combout\);

-- Location: FF_X3_Y10_N23
\s|cctr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \s|cctr~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|cctr\(10));

-- Location: LCCOMB_X3_Y10_N6
\s|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|Add0~22_combout\ = (\s|cctr\(11) & (!\s|Add0~21\)) # (!\s|cctr\(11) & ((\s|Add0~21\) # (GND)))
-- \s|Add0~23\ = CARRY((!\s|Add0~21\) # (!\s|cctr\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s|cctr\(11),
	datad => VCC,
	cin => \s|Add0~21\,
	combout => \s|Add0~22_combout\,
	cout => \s|Add0~23\);

-- Location: FF_X3_Y10_N7
\s|cctr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \s|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|cctr\(11));

-- Location: LCCOMB_X3_Y10_N28
\s|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|Equal0~2_combout\ = (!\s|cctr\(11) & (\s|cctr\(9) & (\s|cctr\(10) & !\s|cctr\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|cctr\(11),
	datab => \s|cctr\(9),
	datac => \s|cctr\(10),
	datad => \s|cctr\(8),
	combout => \s|Equal0~2_combout\);

-- Location: LCCOMB_X3_Y10_N8
\s|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|Add0~24_combout\ = (\s|cctr\(12) & (\s|Add0~23\ $ (GND))) # (!\s|cctr\(12) & (!\s|Add0~23\ & VCC))
-- \s|Add0~25\ = CARRY((\s|cctr\(12) & !\s|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s|cctr\(12),
	datad => VCC,
	cin => \s|Add0~23\,
	combout => \s|Add0~24_combout\,
	cout => \s|Add0~25\);

-- Location: FF_X3_Y10_N9
\s|cctr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \s|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|cctr\(12));

-- Location: LCCOMB_X3_Y10_N10
\s|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|Add0~26_combout\ = (\s|cctr\(13) & (!\s|Add0~25\)) # (!\s|cctr\(13) & ((\s|Add0~25\) # (GND)))
-- \s|Add0~27\ = CARRY((!\s|Add0~25\) # (!\s|cctr\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s|cctr\(13),
	datad => VCC,
	cin => \s|Add0~25\,
	combout => \s|Add0~26_combout\,
	cout => \s|Add0~27\);

-- Location: FF_X3_Y10_N11
\s|cctr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \s|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|cctr\(13));

-- Location: LCCOMB_X3_Y10_N12
\s|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|Add0~28_combout\ = (\s|cctr\(14) & (\s|Add0~27\ $ (GND))) # (!\s|cctr\(14) & (!\s|Add0~27\ & VCC))
-- \s|Add0~29\ = CARRY((\s|cctr\(14) & !\s|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s|cctr\(14),
	datad => VCC,
	cin => \s|Add0~27\,
	combout => \s|Add0~28_combout\,
	cout => \s|Add0~29\);

-- Location: FF_X3_Y10_N13
\s|cctr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \s|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|cctr\(14));

-- Location: LCCOMB_X3_Y10_N14
\s|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|Add0~30_combout\ = (\s|cctr\(15) & (!\s|Add0~29\)) # (!\s|cctr\(15) & ((\s|Add0~29\) # (GND)))
-- \s|Add0~31\ = CARRY((!\s|Add0~29\) # (!\s|cctr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s|cctr\(15),
	datad => VCC,
	cin => \s|Add0~29\,
	combout => \s|Add0~30_combout\,
	cout => \s|Add0~31\);

-- Location: LCCOMB_X3_Y10_N18
\s|cctr~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|cctr~5_combout\ = (\s|Add0~30_combout\ & ((!\s|cctr\(16)) # (!\s|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|Equal0~4_combout\,
	datac => \s|Add0~30_combout\,
	datad => \s|cctr\(16),
	combout => \s|cctr~5_combout\);

-- Location: FF_X3_Y10_N19
\s|cctr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \s|cctr~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|cctr\(15));

-- Location: LCCOMB_X3_Y10_N24
\s|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|Equal0~3_combout\ = (!\s|cctr\(13) & (\s|cctr\(15) & (!\s|cctr\(12) & !\s|cctr\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|cctr\(13),
	datab => \s|cctr\(15),
	datac => \s|cctr\(12),
	datad => \s|cctr\(14),
	combout => \s|Equal0~3_combout\);

-- Location: LCCOMB_X3_Y11_N14
\s|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|Equal0~4_combout\ = (\s|Equal0~0_combout\ & (\s|Equal0~1_combout\ & (\s|Equal0~2_combout\ & \s|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|Equal0~0_combout\,
	datab => \s|Equal0~1_combout\,
	datac => \s|Equal0~2_combout\,
	datad => \s|Equal0~3_combout\,
	combout => \s|Equal0~4_combout\);

-- Location: LCCOMB_X3_Y10_N16
\s|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|Add0~32_combout\ = \s|cctr\(16) $ (!\s|Add0~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s|cctr\(16),
	cin => \s|Add0~31\,
	combout => \s|Add0~32_combout\);

-- Location: LCCOMB_X3_Y10_N26
\s|cctr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|cctr~0_combout\ = (\s|Add0~32_combout\ & ((!\s|cctr\(16)) # (!\s|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|Equal0~4_combout\,
	datac => \s|cctr\(16),
	datad => \s|Add0~32_combout\,
	combout => \s|cctr~0_combout\);

-- Location: FF_X3_Y10_N27
\s|cctr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \s|cctr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|cctr\(16));

-- Location: LCCOMB_X3_Y11_N8
\s|sclk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|sclk~0_combout\ = \s|sclk~q\ $ (((\s|cctr\(16) & \s|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s|cctr\(16),
	datac => \s|sclk~q\,
	datad => \s|Equal0~4_combout\,
	combout => \s|sclk~0_combout\);

-- Location: LCCOMB_X3_Y11_N4
\s|sclk~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|sclk~feeder_combout\ = \s|sclk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s|sclk~0_combout\,
	combout => \s|sclk~feeder_combout\);

-- Location: FF_X3_Y11_N5
\s|sclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \s|sclk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|sclk~q\);

-- Location: CLKCTRL_G3
\s|sclk~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \s|sclk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \s|sclk~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y23_N26
\s|ctr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|ctr~0_combout\ = !\s|ctr~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s|ctr~q\,
	combout => \s|ctr~0_combout\);

-- Location: FF_X17_Y23_N27
\s|ctr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s|ALT_INV_sclk~clkctrl_outclk\,
	d => \s|ctr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|ctr~q\);

-- Location: LCCOMB_X2_Y11_N8
\f|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~0_combout\ = (\f|ctr\(1) & (\s|cctr\(0) $ (VCC))) # (!\f|ctr\(1) & (\s|cctr\(0) & VCC))
-- \f|Add0~1\ = CARRY((\f|ctr\(1) & \s|cctr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(1),
	datab => \s|cctr\(0),
	datad => VCC,
	combout => \f|Add0~0_combout\,
	cout => \f|Add0~1\);

-- Location: FF_X2_Y11_N9
\f|ctr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(1));

-- Location: LCCOMB_X2_Y11_N10
\f|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~2_combout\ = (\f|ctr\(2) & (!\f|Add0~1\)) # (!\f|ctr\(2) & ((\f|Add0~1\) # (GND)))
-- \f|Add0~3\ = CARRY((!\f|Add0~1\) # (!\f|ctr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(2),
	datad => VCC,
	cin => \f|Add0~1\,
	combout => \f|Add0~2_combout\,
	cout => \f|Add0~3\);

-- Location: FF_X2_Y11_N11
\f|ctr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(2));

-- Location: LCCOMB_X2_Y11_N12
\f|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~4_combout\ = (\f|ctr\(3) & (\f|Add0~3\ $ (GND))) # (!\f|ctr\(3) & (!\f|Add0~3\ & VCC))
-- \f|Add0~5\ = CARRY((\f|ctr\(3) & !\f|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(3),
	datad => VCC,
	cin => \f|Add0~3\,
	combout => \f|Add0~4_combout\,
	cout => \f|Add0~5\);

-- Location: FF_X2_Y11_N13
\f|ctr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(3));

-- Location: LCCOMB_X2_Y11_N14
\f|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~6_combout\ = (\f|ctr\(4) & (!\f|Add0~5\)) # (!\f|ctr\(4) & ((\f|Add0~5\) # (GND)))
-- \f|Add0~7\ = CARRY((!\f|Add0~5\) # (!\f|ctr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f|ctr\(4),
	datad => VCC,
	cin => \f|Add0~5\,
	combout => \f|Add0~6_combout\,
	cout => \f|Add0~7\);

-- Location: FF_X2_Y11_N15
\f|ctr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(4));

-- Location: LCCOMB_X2_Y11_N16
\f|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~8_combout\ = (\f|ctr\(5) & (\f|Add0~7\ $ (GND))) # (!\f|ctr\(5) & (!\f|Add0~7\ & VCC))
-- \f|Add0~9\ = CARRY((\f|ctr\(5) & !\f|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f|ctr\(5),
	datad => VCC,
	cin => \f|Add0~7\,
	combout => \f|Add0~8_combout\,
	cout => \f|Add0~9\);

-- Location: FF_X2_Y11_N17
\f|ctr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(5));

-- Location: LCCOMB_X2_Y11_N4
\f|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Equal0~6_combout\ = (\f|ctr\(3) & (\f|ctr\(5) & (\f|ctr\(4) & \f|ctr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(3),
	datab => \f|ctr\(5),
	datac => \f|ctr\(4),
	datad => \f|ctr\(2),
	combout => \f|Equal0~6_combout\);

-- Location: LCCOMB_X2_Y11_N22
\f|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~14_combout\ = (\f|ctr\(8) & (!\f|Add0~13\)) # (!\f|ctr\(8) & ((\f|Add0~13\) # (GND)))
-- \f|Add0~15\ = CARRY((!\f|Add0~13\) # (!\f|ctr\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(8),
	datad => VCC,
	cin => \f|Add0~13\,
	combout => \f|Add0~14_combout\,
	cout => \f|Add0~15\);

-- Location: LCCOMB_X2_Y11_N24
\f|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~16_combout\ = (\f|ctr\(9) & (\f|Add0~15\ $ (GND))) # (!\f|ctr\(9) & (!\f|Add0~15\ & VCC))
-- \f|Add0~17\ = CARRY((\f|ctr\(9) & !\f|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f|ctr\(9),
	datad => VCC,
	cin => \f|Add0~15\,
	combout => \f|Add0~16_combout\,
	cout => \f|Add0~17\);

-- Location: FF_X2_Y11_N25
\f|ctr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(9));

-- Location: LCCOMB_X2_Y11_N26
\f|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~18_combout\ = (\f|ctr\(10) & (!\f|Add0~17\)) # (!\f|ctr\(10) & ((\f|Add0~17\) # (GND)))
-- \f|Add0~19\ = CARRY((!\f|Add0~17\) # (!\f|ctr\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(10),
	datad => VCC,
	cin => \f|Add0~17\,
	combout => \f|Add0~18_combout\,
	cout => \f|Add0~19\);

-- Location: FF_X2_Y11_N27
\f|ctr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(10));

-- Location: LCCOMB_X2_Y11_N28
\f|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~20_combout\ = (\f|ctr\(11) & (\f|Add0~19\ $ (GND))) # (!\f|ctr\(11) & (!\f|Add0~19\ & VCC))
-- \f|Add0~21\ = CARRY((\f|ctr\(11) & !\f|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f|ctr\(11),
	datad => VCC,
	cin => \f|Add0~19\,
	combout => \f|Add0~20_combout\,
	cout => \f|Add0~21\);

-- Location: FF_X2_Y11_N29
\f|ctr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(11));

-- Location: LCCOMB_X2_Y11_N30
\f|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~22_combout\ = (\f|ctr\(12) & (!\f|Add0~21\)) # (!\f|ctr\(12) & ((\f|Add0~21\) # (GND)))
-- \f|Add0~23\ = CARRY((!\f|Add0~21\) # (!\f|ctr\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(12),
	datad => VCC,
	cin => \f|Add0~21\,
	combout => \f|Add0~22_combout\,
	cout => \f|Add0~23\);

-- Location: LCCOMB_X1_Y10_N8
\f|ctr~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~14_combout\ = (\f|Add0~22_combout\ & ((!\f|Equal0~4_combout\) # (!\f|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|Equal0~7_combout\,
	datac => \f|Add0~22_combout\,
	datad => \f|Equal0~4_combout\,
	combout => \f|ctr~14_combout\);

-- Location: FF_X1_Y10_N9
\f|ctr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(12));

-- Location: LCCOMB_X2_Y10_N0
\f|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~24_combout\ = (\f|ctr\(13) & (\f|Add0~23\ $ (GND))) # (!\f|ctr\(13) & (!\f|Add0~23\ & VCC))
-- \f|Add0~25\ = CARRY((\f|ctr\(13) & !\f|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(13),
	datad => VCC,
	cin => \f|Add0~23\,
	combout => \f|Add0~24_combout\,
	cout => \f|Add0~25\);

-- Location: LCCOMB_X1_Y10_N10
\f|ctr~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~13_combout\ = (\f|Add0~24_combout\ & ((!\f|Equal0~4_combout\) # (!\f|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|Equal0~7_combout\,
	datac => \f|Add0~24_combout\,
	datad => \f|Equal0~4_combout\,
	combout => \f|ctr~13_combout\);

-- Location: FF_X1_Y10_N11
\f|ctr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(13));

-- Location: LCCOMB_X2_Y10_N2
\f|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~26_combout\ = (\f|ctr\(14) & (!\f|Add0~25\)) # (!\f|ctr\(14) & ((\f|Add0~25\) # (GND)))
-- \f|Add0~27\ = CARRY((!\f|Add0~25\) # (!\f|ctr\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(14),
	datad => VCC,
	cin => \f|Add0~25\,
	combout => \f|Add0~26_combout\,
	cout => \f|Add0~27\);

-- Location: LCCOMB_X1_Y10_N16
\f|ctr~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~12_combout\ = (\f|Add0~26_combout\ & ((!\f|Equal0~7_combout\) # (!\f|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|Equal0~4_combout\,
	datac => \f|Equal0~7_combout\,
	datad => \f|Add0~26_combout\,
	combout => \f|ctr~12_combout\);

-- Location: FF_X1_Y10_N17
\f|ctr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(14));

-- Location: LCCOMB_X2_Y10_N4
\f|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~28_combout\ = (\f|ctr\(15) & (\f|Add0~27\ $ (GND))) # (!\f|ctr\(15) & (!\f|Add0~27\ & VCC))
-- \f|Add0~29\ = CARRY((\f|ctr\(15) & !\f|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f|ctr\(15),
	datad => VCC,
	cin => \f|Add0~27\,
	combout => \f|Add0~28_combout\,
	cout => \f|Add0~29\);

-- Location: LCCOMB_X1_Y10_N24
\f|ctr~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~11_combout\ = (\f|Add0~28_combout\ & ((!\f|Equal0~7_combout\) # (!\f|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|Equal0~4_combout\,
	datac => \f|Equal0~7_combout\,
	datad => \f|Add0~28_combout\,
	combout => \f|ctr~11_combout\);

-- Location: FF_X1_Y10_N25
\f|ctr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(15));

-- Location: LCCOMB_X2_Y10_N6
\f|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~30_combout\ = (\f|ctr\(16) & (!\f|Add0~29\)) # (!\f|ctr\(16) & ((\f|Add0~29\) # (GND)))
-- \f|Add0~31\ = CARRY((!\f|Add0~29\) # (!\f|ctr\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(16),
	datad => VCC,
	cin => \f|Add0~29\,
	combout => \f|Add0~30_combout\,
	cout => \f|Add0~31\);

-- Location: FF_X2_Y10_N7
\f|ctr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(16));

-- Location: LCCOMB_X2_Y10_N8
\f|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~32_combout\ = (\f|ctr\(17) & (\f|Add0~31\ $ (GND))) # (!\f|ctr\(17) & (!\f|Add0~31\ & VCC))
-- \f|Add0~33\ = CARRY((\f|ctr\(17) & !\f|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(17),
	datad => VCC,
	cin => \f|Add0~31\,
	combout => \f|Add0~32_combout\,
	cout => \f|Add0~33\);

-- Location: LCCOMB_X2_Y10_N30
\f|ctr~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~10_combout\ = (\f|Add0~32_combout\ & ((!\f|Equal0~4_combout\) # (!\f|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|Equal0~7_combout\,
	datac => \f|Add0~32_combout\,
	datad => \f|Equal0~4_combout\,
	combout => \f|ctr~10_combout\);

-- Location: FF_X2_Y10_N31
\f|ctr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(17));

-- Location: LCCOMB_X1_Y10_N28
\f|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Equal0~2_combout\ = (!\f|ctr\(16) & (\f|ctr\(15) & (\f|ctr\(17) & \f|ctr\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(16),
	datab => \f|ctr\(15),
	datac => \f|ctr\(17),
	datad => \f|ctr\(14),
	combout => \f|Equal0~2_combout\);

-- Location: LCCOMB_X2_Y10_N10
\f|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~34_combout\ = (\f|ctr\(18) & (!\f|Add0~33\)) # (!\f|ctr\(18) & ((\f|Add0~33\) # (GND)))
-- \f|Add0~35\ = CARRY((!\f|Add0~33\) # (!\f|ctr\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(18),
	datad => VCC,
	cin => \f|Add0~33\,
	combout => \f|Add0~34_combout\,
	cout => \f|Add0~35\);

-- Location: FF_X2_Y10_N11
\f|ctr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(18));

-- Location: LCCOMB_X2_Y10_N12
\f|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~36_combout\ = (\f|ctr\(19) & (\f|Add0~35\ $ (GND))) # (!\f|ctr\(19) & (!\f|Add0~35\ & VCC))
-- \f|Add0~37\ = CARRY((\f|ctr\(19) & !\f|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f|ctr\(19),
	datad => VCC,
	cin => \f|Add0~35\,
	combout => \f|Add0~36_combout\,
	cout => \f|Add0~37\);

-- Location: LCCOMB_X1_Y10_N18
\f|ctr~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~9_combout\ = (\f|Add0~36_combout\ & ((!\f|Equal0~4_combout\) # (!\f|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|Equal0~7_combout\,
	datac => \f|Add0~36_combout\,
	datad => \f|Equal0~4_combout\,
	combout => \f|ctr~9_combout\);

-- Location: FF_X1_Y10_N19
\f|ctr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(19));

-- Location: LCCOMB_X2_Y10_N14
\f|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~38_combout\ = (\f|ctr\(20) & (!\f|Add0~37\)) # (!\f|ctr\(20) & ((\f|Add0~37\) # (GND)))
-- \f|Add0~39\ = CARRY((!\f|Add0~37\) # (!\f|ctr\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(20),
	datad => VCC,
	cin => \f|Add0~37\,
	combout => \f|Add0~38_combout\,
	cout => \f|Add0~39\);

-- Location: LCCOMB_X1_Y10_N12
\f|ctr~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~8_combout\ = (\f|Add0~38_combout\ & ((!\f|Equal0~4_combout\) # (!\f|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|Equal0~7_combout\,
	datac => \f|Add0~38_combout\,
	datad => \f|Equal0~4_combout\,
	combout => \f|ctr~8_combout\);

-- Location: FF_X1_Y10_N13
\f|ctr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(20));

-- Location: LCCOMB_X2_Y10_N16
\f|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~40_combout\ = (\f|ctr\(21) & (\f|Add0~39\ $ (GND))) # (!\f|ctr\(21) & (!\f|Add0~39\ & VCC))
-- \f|Add0~41\ = CARRY((\f|ctr\(21) & !\f|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f|ctr\(21),
	datad => VCC,
	cin => \f|Add0~39\,
	combout => \f|Add0~40_combout\,
	cout => \f|Add0~41\);

-- Location: LCCOMB_X1_Y10_N6
\f|ctr~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~19_combout\ = (\f|Add0~40_combout\ & ((!\f|Equal0~7_combout\) # (!\f|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|Equal0~4_combout\,
	datac => \f|Equal0~7_combout\,
	datad => \f|Add0~40_combout\,
	combout => \f|ctr~19_combout\);

-- Location: FF_X1_Y10_N7
\f|ctr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(21));

-- Location: LCCOMB_X1_Y10_N4
\f|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Equal0~1_combout\ = (\f|ctr\(21) & (\f|ctr\(19) & (!\f|ctr\(18) & \f|ctr\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(21),
	datab => \f|ctr\(19),
	datac => \f|ctr\(18),
	datad => \f|ctr\(20),
	combout => \f|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y10_N22
\f|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Equal0~3_combout\ = (\f|ctr\(13) & (!\f|ctr\(11) & (\f|ctr\(12) & !\f|ctr\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(13),
	datab => \f|ctr\(11),
	datac => \f|ctr\(12),
	datad => \f|ctr\(10),
	combout => \f|Equal0~3_combout\);

-- Location: LCCOMB_X2_Y10_N18
\f|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~42_combout\ = (\f|ctr\(22) & (!\f|Add0~41\)) # (!\f|ctr\(22) & ((\f|Add0~41\) # (GND)))
-- \f|Add0~43\ = CARRY((!\f|Add0~41\) # (!\f|ctr\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f|ctr\(22),
	datad => VCC,
	cin => \f|Add0~41\,
	combout => \f|Add0~42_combout\,
	cout => \f|Add0~43\);

-- Location: LCCOMB_X2_Y10_N28
\f|ctr~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~18_combout\ = (\f|Add0~42_combout\ & ((!\f|Equal0~7_combout\) # (!\f|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|Equal0~4_combout\,
	datac => \f|Equal0~7_combout\,
	datad => \f|Add0~42_combout\,
	combout => \f|ctr~18_combout\);

-- Location: FF_X2_Y10_N29
\f|ctr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(22));

-- Location: LCCOMB_X2_Y10_N20
\f|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~44_combout\ = (\f|ctr\(23) & (\f|Add0~43\ $ (GND))) # (!\f|ctr\(23) & (!\f|Add0~43\ & VCC))
-- \f|Add0~45\ = CARRY((\f|ctr\(23) & !\f|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(23),
	datad => VCC,
	cin => \f|Add0~43\,
	combout => \f|Add0~44_combout\,
	cout => \f|Add0~45\);

-- Location: LCCOMB_X2_Y10_N26
\f|ctr~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~17_combout\ = (\f|Add0~44_combout\ & ((!\f|Equal0~7_combout\) # (!\f|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|Equal0~4_combout\,
	datac => \f|Equal0~7_combout\,
	datad => \f|Add0~44_combout\,
	combout => \f|ctr~17_combout\);

-- Location: FF_X2_Y10_N27
\f|ctr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(23));

-- Location: LCCOMB_X2_Y10_N22
\f|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~46_combout\ = (\f|ctr\(24) & (!\f|Add0~45\)) # (!\f|ctr\(24) & ((\f|Add0~45\) # (GND)))
-- \f|Add0~47\ = CARRY((!\f|Add0~45\) # (!\f|ctr\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(24),
	datad => VCC,
	cin => \f|Add0~45\,
	combout => \f|Add0~46_combout\,
	cout => \f|Add0~47\);

-- Location: FF_X2_Y10_N23
\f|ctr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(24));

-- Location: LCCOMB_X2_Y10_N24
\f|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~48_combout\ = \f|Add0~47\ $ (!\f|ctr\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \f|ctr\(25),
	cin => \f|Add0~47\,
	combout => \f|Add0~48_combout\);

-- Location: LCCOMB_X1_Y10_N14
\f|ctr~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~16_combout\ = (\f|Add0~48_combout\ & ((!\f|Equal0~7_combout\) # (!\f|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|Equal0~4_combout\,
	datac => \f|Equal0~7_combout\,
	datad => \f|Add0~48_combout\,
	combout => \f|ctr~16_combout\);

-- Location: FF_X1_Y10_N15
\f|ctr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(25));

-- Location: LCCOMB_X1_Y10_N20
\f|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Equal0~0_combout\ = (\f|ctr\(23) & (\f|ctr\(25) & (!\f|ctr\(24) & \f|ctr\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(23),
	datab => \f|ctr\(25),
	datac => \f|ctr\(24),
	datad => \f|ctr\(22),
	combout => \f|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y10_N0
\f|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Equal0~4_combout\ = (\f|Equal0~2_combout\ & (\f|Equal0~1_combout\ & (\f|Equal0~3_combout\ & \f|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|Equal0~2_combout\,
	datab => \f|Equal0~1_combout\,
	datac => \f|Equal0~3_combout\,
	datad => \f|Equal0~0_combout\,
	combout => \f|Equal0~4_combout\);

-- Location: LCCOMB_X2_Y11_N18
\f|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~10_combout\ = (\f|ctr\(6) & (!\f|Add0~9\)) # (!\f|ctr\(6) & ((\f|Add0~9\) # (GND)))
-- \f|Add0~11\ = CARRY((!\f|Add0~9\) # (!\f|ctr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f|ctr\(6),
	datad => VCC,
	cin => \f|Add0~9\,
	combout => \f|Add0~10_combout\,
	cout => \f|Add0~11\);

-- Location: FF_X2_Y11_N19
\f|ctr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(6));

-- Location: LCCOMB_X2_Y11_N20
\f|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~12_combout\ = (\f|ctr\(7) & (\f|Add0~11\ $ (GND))) # (!\f|ctr\(7) & (!\f|Add0~11\ & VCC))
-- \f|Add0~13\ = CARRY((\f|ctr\(7) & !\f|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f|ctr\(7),
	datad => VCC,
	cin => \f|Add0~11\,
	combout => \f|Add0~12_combout\,
	cout => \f|Add0~13\);

-- Location: LCCOMB_X2_Y11_N0
\f|ctr~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~15_combout\ = (\f|Add0~12_combout\ & ((!\f|Equal0~4_combout\) # (!\f|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|Equal0~7_combout\,
	datac => \f|Equal0~4_combout\,
	datad => \f|Add0~12_combout\,
	combout => \f|ctr~15_combout\);

-- Location: FF_X2_Y11_N1
\f|ctr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(7));

-- Location: FF_X2_Y11_N23
\f|ctr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(8));

-- Location: LCCOMB_X2_Y11_N2
\f|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Equal0~5_combout\ = (!\f|ctr\(8) & (!\f|ctr\(7) & (\f|ctr\(6) & !\f|ctr\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(8),
	datab => \f|ctr\(7),
	datac => \f|ctr\(6),
	datad => \f|ctr\(9),
	combout => \f|Equal0~5_combout\);

-- Location: LCCOMB_X2_Y11_N6
\f|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Equal0~7_combout\ = (\f|ctr\(1) & (\s|cctr\(0) & (\f|Equal0~6_combout\ & \f|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(1),
	datab => \s|cctr\(0),
	datac => \f|Equal0~6_combout\,
	datad => \f|Equal0~5_combout\,
	combout => \f|Equal0~7_combout\);

-- Location: LCCOMB_X1_Y10_N26
\f|sclk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|sclk~0_combout\ = \f|sclk~q\ $ (((\f|Equal0~7_combout\ & \f|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|sclk~q\,
	datac => \f|Equal0~7_combout\,
	datad => \f|Equal0~4_combout\,
	combout => \f|sclk~0_combout\);

-- Location: LCCOMB_X1_Y10_N30
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

-- Location: FF_X1_Y10_N31
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

-- Location: LCCOMB_X16_Y23_N22
\c|ctr[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[3]~2_combout\ = \c|ctr\(3) $ (((\c|ctr\(2) & (\c|ctr\(1) & !\c|ctr[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(2),
	datab => \c|ctr\(1),
	datac => \c|ctr\(3),
	datad => \c|ctr[0]~1_combout\,
	combout => \c|ctr[3]~2_combout\);

-- Location: FF_X16_Y23_N23
\c|ctr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f|ALT_INV_sclk~clkctrl_outclk\,
	d => \c|ctr[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c|ctr\(3));

-- Location: LCCOMB_X16_Y23_N18
\c|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|Equal0~0_combout\ = (\c|ctr\(3) & (\c|ctr\(0) & (\c|ctr\(1) & \c|ctr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(3),
	datab => \c|ctr\(0),
	datac => \c|ctr\(1),
	datad => \c|ctr\(2),
	combout => \c|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y23_N4
\c|ctr[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[4]~3_combout\ = (\c|ctr\(4) & ((\c|ctr\(5)) # (!\c|Equal0~0_combout\))) # (!\c|ctr\(4) & ((\c|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(5),
	datac => \c|ctr\(4),
	datad => \c|Equal0~0_combout\,
	combout => \c|ctr[4]~3_combout\);

-- Location: FF_X16_Y23_N5
\c|ctr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f|ALT_INV_sclk~clkctrl_outclk\,
	d => \c|ctr[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c|ctr\(4));

-- Location: LCCOMB_X16_Y23_N28
\c|ctr[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[5]~5_combout\ = (\c|ctr\(5)) # ((\c|ctr\(4) & \c|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c|ctr\(4),
	datac => \c|ctr\(5),
	datad => \c|Equal0~0_combout\,
	combout => \c|ctr[5]~5_combout\);

-- Location: FF_X16_Y23_N29
\c|ctr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f|ALT_INV_sclk~clkctrl_outclk\,
	d => \c|ctr[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c|ctr\(5));

-- Location: LCCOMB_X16_Y23_N8
\c|ctr[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[0]~1_combout\ = ((\c|ctr\(5) & (\c|ctr\(4) & \c|Equal0~0_combout\))) # (!\c|ctr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(5),
	datab => \c|ctr\(4),
	datac => \c|ctr\(0),
	datad => \c|Equal0~0_combout\,
	combout => \c|ctr[0]~1_combout\);

-- Location: FF_X16_Y23_N9
\c|ctr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f|ALT_INV_sclk~clkctrl_outclk\,
	d => \c|ctr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c|ctr\(0));

-- Location: LCCOMB_X16_Y23_N24
\c|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|Equal0~1_combout\ = (\c|ctr\(5) & (\c|ctr\(4) & \c|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c|ctr\(5),
	datac => \c|ctr\(4),
	datad => \c|Equal0~0_combout\,
	combout => \c|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y23_N14
\c|ctr[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[1]~0_combout\ = \c|ctr\(1) $ (((\c|ctr\(0) & !\c|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(0),
	datac => \c|ctr\(1),
	datad => \c|Equal0~1_combout\,
	combout => \c|ctr[1]~0_combout\);

-- Location: FF_X16_Y23_N15
\c|ctr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f|ALT_INV_sclk~clkctrl_outclk\,
	d => \c|ctr[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c|ctr\(1));

-- Location: LCCOMB_X16_Y23_N2
\c|ctr[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[2]~4_combout\ = \c|ctr\(2) $ (((\c|ctr\(1) & !\c|ctr[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c|ctr\(1),
	datac => \c|ctr\(2),
	datad => \c|ctr[0]~1_combout\,
	combout => \c|ctr[2]~4_combout\);

-- Location: FF_X16_Y23_N3
\c|ctr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f|ALT_INV_sclk~clkctrl_outclk\,
	d => \c|ctr[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c|ctr\(2));

-- Location: LCCOMB_X17_Y23_N0
\s|o~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~13_combout\ = (\c|ctr\(2) & (\c|ctr\(3) & (\c|ctr\(4) $ (\c|ctr\(5))))) # (!\c|ctr\(2) & (!\c|ctr\(3) & (!\c|ctr\(4) & \c|ctr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(2),
	datab => \c|ctr\(3),
	datac => \c|ctr\(4),
	datad => \c|ctr\(5),
	combout => \s|o~13_combout\);

-- Location: LCCOMB_X16_Y23_N20
\s|o~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~12_combout\ = (\c|ctr\(2) & (!\c|ctr\(5) & (\c|ctr\(3) $ (\c|ctr\(4))))) # (!\c|ctr\(2) & (\c|ctr\(3) & (\c|ctr\(4) & \c|ctr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(3),
	datab => \c|ctr\(4),
	datac => \c|ctr\(2),
	datad => \c|ctr\(5),
	combout => \s|o~12_combout\);

-- Location: LCCOMB_X17_Y23_N12
\s|o~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~14_combout\ = (\s|ctr~q\ & ((\s|o~13_combout\ & (!\c|ctr\(1) & !\s|o~12_combout\)) # (!\s|o~13_combout\ & (\c|ctr\(1) & \s|o~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|ctr~q\,
	datab => \s|o~13_combout\,
	datac => \c|ctr\(1),
	datad => \s|o~12_combout\,
	combout => \s|o~14_combout\);

-- Location: FF_X17_Y23_N13
\s|o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s|ALT_INV_sclk~clkctrl_outclk\,
	d => \s|o~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|o\(3));

-- Location: LCCOMB_X17_Y23_N14
\s|o~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~8_combout\ = (\s|ctr~q\ & ((\c|ctr\(3) & ((\c|ctr\(1)))) # (!\c|ctr\(3) & (\c|ctr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(2),
	datab => \c|ctr\(3),
	datac => \s|ctr~q\,
	datad => \c|ctr\(1),
	combout => \s|o~8_combout\);

-- Location: LCCOMB_X17_Y23_N24
\s|o~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~7_combout\ = (\s|ctr~q\ & ((\c|ctr\(2) & ((\c|ctr\(3)) # (\c|ctr\(1)))) # (!\c|ctr\(2) & ((!\c|ctr\(1)) # (!\c|ctr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(2),
	datab => \c|ctr\(3),
	datac => \s|ctr~q\,
	datad => \c|ctr\(1),
	combout => \s|o~7_combout\);

-- Location: LCCOMB_X17_Y23_N8
\s|o~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~9_combout\ = (\s|o~7_combout\ & (\c|ctr\(5) $ (\c|ctr\(3) $ (!\s|o~8_combout\)))) # (!\s|o~7_combout\ & (\c|ctr\(5) & (!\c|ctr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(5),
	datab => \c|ctr\(3),
	datac => \s|o~8_combout\,
	datad => \s|o~7_combout\,
	combout => \s|o~9_combout\);

-- Location: LCCOMB_X17_Y23_N18
\s|o~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~10_combout\ = (\c|ctr\(5) & ((\s|o~8_combout\ & ((\s|o~7_combout\))) # (!\s|o~8_combout\ & (\c|ctr\(3))))) # (!\c|ctr\(5) & ((\s|o~8_combout\) # ((!\c|ctr\(3) & \s|o~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(5),
	datab => \c|ctr\(3),
	datac => \s|o~8_combout\,
	datad => \s|o~7_combout\,
	combout => \s|o~10_combout\);

-- Location: LCCOMB_X17_Y23_N30
\s|o~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~11_combout\ = \s|o~9_combout\ $ (((!\c|ctr\(4) & \s|o~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c|ctr\(4),
	datac => \s|o~9_combout\,
	datad => \s|o~10_combout\,
	combout => \s|o~11_combout\);

-- Location: FF_X17_Y23_N31
\s|o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s|ALT_INV_sclk~clkctrl_outclk\,
	d => \s|o~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|o\(2));

-- Location: LCCOMB_X16_Y23_N6
\s|o~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~4_combout\ = (\c|ctr\(4) & (\c|ctr\(5) & (\c|ctr\(3) $ (\c|ctr\(2))))) # (!\c|ctr\(4) & (\c|ctr\(5) $ (((\c|ctr\(3)) # (\c|ctr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(3),
	datab => \c|ctr\(2),
	datac => \c|ctr\(4),
	datad => \c|ctr\(5),
	combout => \s|o~4_combout\);

-- Location: LCCOMB_X16_Y23_N12
\s|o~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~5_combout\ = (\c|ctr\(2) & (\c|ctr\(3) & (\c|ctr\(4) $ (!\c|ctr\(5))))) # (!\c|ctr\(2) & ((\c|ctr\(4) $ (\c|ctr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(3),
	datab => \c|ctr\(2),
	datac => \c|ctr\(4),
	datad => \c|ctr\(5),
	combout => \s|o~5_combout\);

-- Location: LCCOMB_X16_Y23_N26
\s|o~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~6_combout\ = (\c|ctr\(4) & ((\c|ctr\(3) & (!\c|ctr\(2) & \c|ctr\(5))) # (!\c|ctr\(3) & (\c|ctr\(2) & !\c|ctr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(3),
	datab => \c|ctr\(2),
	datac => \c|ctr\(4),
	datad => \c|ctr\(5),
	combout => \s|o~6_combout\);

-- Location: LCCOMB_X16_Y23_N30
\s|o~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~15_combout\ = (\s|o~6_combout\ & (\s|o~5_combout\ $ (((\s|o~4_combout\) # (!\s|ctr~q\))))) # (!\s|o~6_combout\ & ((\s|o~5_combout\ & ((!\s|o~4_combout\))) # (!\s|o~5_combout\ & (\s|ctr~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o~5_combout\,
	datab => \s|ctr~q\,
	datac => \s|o~6_combout\,
	datad => \s|o~4_combout\,
	combout => \s|o~15_combout\);

-- Location: LCCOMB_X16_Y23_N0
\s|o~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~16_combout\ = (\s|o~15_combout\ & ((\s|o~4_combout\ $ (\c|ctr\(1))) # (!\s|ctr~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o~4_combout\,
	datab => \s|ctr~q\,
	datac => \s|o~15_combout\,
	datad => \c|ctr\(1),
	combout => \s|o~16_combout\);

-- Location: FF_X16_Y23_N1
\s|o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s|ALT_INV_sclk~clkctrl_outclk\,
	d => \s|o~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|o\(1));

-- Location: LCCOMB_X16_Y23_N16
\s|o~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~2_combout\ = (\c|ctr\(2) & (!\c|ctr\(5) & (\c|ctr\(3) $ (\c|ctr\(4))))) # (!\c|ctr\(2) & (!\c|ctr\(3) & (!\c|ctr\(4) & \c|ctr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(3),
	datab => \c|ctr\(4),
	datac => \c|ctr\(2),
	datad => \c|ctr\(5),
	combout => \s|o~2_combout\);

-- Location: LCCOMB_X17_Y23_N4
\s|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~0_combout\ = \c|ctr\(1) $ (((\s|ctr~q\ & \c|ctr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(1),
	datac => \s|ctr~q\,
	datad => \c|ctr\(0),
	combout => \s|o~0_combout\);

-- Location: LCCOMB_X16_Y23_N10
\s|o~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~1_combout\ = (\c|ctr\(4) & (\c|ctr\(3) & ((\c|ctr\(2)) # (\c|ctr\(5))))) # (!\c|ctr\(4) & (\c|ctr\(5) $ (((!\c|ctr\(2) & \c|ctr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(2),
	datab => \c|ctr\(4),
	datac => \c|ctr\(3),
	datad => \c|ctr\(5),
	combout => \s|o~1_combout\);

-- Location: LCCOMB_X17_Y23_N28
\s|o~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~3_combout\ = (\s|ctr~q\ & (((\s|o~0_combout\)))) # (!\s|ctr~q\ & (\s|o~1_combout\ $ (((\s|o~2_combout\ & !\s|o~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o~2_combout\,
	datab => \s|ctr~q\,
	datac => \s|o~0_combout\,
	datad => \s|o~1_combout\,
	combout => \s|o~3_combout\);

-- Location: FF_X17_Y23_N29
\s|o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s|ALT_INV_sclk~clkctrl_outclk\,
	d => \s|o~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|o\(0));

-- Location: LCCOMB_X18_Y23_N0
\dd|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd|Mux6~0_combout\ = (\s|o\(2) & (!\s|o\(3) & ((!\s|o\(0)) # (!\s|o\(1))))) # (!\s|o\(2) & (\s|o\(3) $ ((\s|o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o\(3),
	datab => \s|o\(2),
	datac => \s|o\(1),
	datad => \s|o\(0),
	combout => \dd|Mux6~0_combout\);

-- Location: LCCOMB_X17_Y23_N6
\dd|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd|Mux5~0_combout\ = (!\s|o\(3) & ((\s|o\(2) & (\s|o\(1) & \s|o\(0))) # (!\s|o\(2) & ((\s|o\(1)) # (\s|o\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o\(2),
	datab => \s|o\(3),
	datac => \s|o\(1),
	datad => \s|o\(0),
	combout => \dd|Mux5~0_combout\);

-- Location: LCCOMB_X17_Y23_N16
\dd|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd|Mux4~0_combout\ = (\s|o\(1) & (((!\s|o\(3) & \s|o\(0))))) # (!\s|o\(1) & ((\s|o\(2) & (!\s|o\(3))) # (!\s|o\(2) & ((\s|o\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o\(2),
	datab => \s|o\(3),
	datac => \s|o\(1),
	datad => \s|o\(0),
	combout => \dd|Mux4~0_combout\);

-- Location: LCCOMB_X17_Y23_N10
\dd|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd|Mux3~0_combout\ = (!\s|o\(3) & ((\s|o\(2) & (\s|o\(1) $ (!\s|o\(0)))) # (!\s|o\(2) & (!\s|o\(1) & \s|o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o\(2),
	datab => \s|o\(3),
	datac => \s|o\(1),
	datad => \s|o\(0),
	combout => \dd|Mux3~0_combout\);

-- Location: LCCOMB_X18_Y23_N2
\dd|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd|Mux2~0_combout\ = (!\s|o\(3) & (!\s|o\(2) & (\s|o\(1) & !\s|o\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o\(3),
	datab => \s|o\(2),
	datac => \s|o\(1),
	datad => \s|o\(0),
	combout => \dd|Mux2~0_combout\);

-- Location: LCCOMB_X18_Y23_N20
\dd|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd|Mux1~0_combout\ = (!\s|o\(3) & (\s|o\(2) & (\s|o\(1) $ (\s|o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o\(3),
	datab => \s|o\(2),
	datac => \s|o\(1),
	datad => \s|o\(0),
	combout => \dd|Mux1~0_combout\);

-- Location: LCCOMB_X17_Y23_N20
\dd|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd|Mux0~0_combout\ = (\s|o\(1) & (((\s|o\(3))))) # (!\s|o\(1) & (\s|o\(2) $ (((!\s|o\(3) & \s|o\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o\(2),
	datab => \s|o\(3),
	datac => \s|o\(1),
	datad => \s|o\(0),
	combout => \dd|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y23_N22
\s|di[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|di[0]~0_combout\ = !\s|ctr~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s|ctr~q\,
	combout => \s|di[0]~0_combout\);

-- Location: FF_X17_Y23_N23
\s|di[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s|ALT_INV_sclk~clkctrl_outclk\,
	d => \s|di[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|di\(0));

-- Location: FF_X17_Y23_N25
\s|di[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s|ALT_INV_sclk~clkctrl_outclk\,
	asdata => \s|ctr~q\,
	sload => VCC,
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

-- Location: IOIBUF_X18_Y0_N15
\control[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(2),
	o => \control[2]~input_o\);

-- Location: IOIBUF_X1_Y24_N1
\control[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(3),
	o => \control[3]~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\control[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(4),
	o => \control[4]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
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

ww_seg(2) <= \seg[2]~output_o\;

ww_seg(3) <= \seg[3]~output_o\;
END structure;


