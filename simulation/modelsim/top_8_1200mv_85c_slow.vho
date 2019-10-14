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

-- DATE "10/14/2019 20:49:15"

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
	control : IN std_logic_vector(3 DOWNTO 0);
	clock : IN std_logic;
	led : OUT std_logic;
	dec : OUT std_logic_vector(6 DOWNTO 0);
	seg : OUT std_logic_vector(3 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- control[3]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- control[2]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[1]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[0]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_control : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL ww_dec : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg : std_logic_vector(3 DOWNTO 0);
SIGNAL \s|sclk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ct|ctlBus[2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \f|sclk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \control[3]~input_o\ : std_logic;
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
SIGNAL \control[1]~input_o\ : std_logic;
SIGNAL \ct|Selector0~0_combout\ : std_logic;
SIGNAL \control[2]~input_o\ : std_logic;
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
SIGNAL \f|Add0~13\ : std_logic;
SIGNAL \f|Add0~14_combout\ : std_logic;
SIGNAL \f|ctr~16_combout\ : std_logic;
SIGNAL \f|Add0~15\ : std_logic;
SIGNAL \f|Add0~16_combout\ : std_logic;
SIGNAL \f|Add0~17\ : std_logic;
SIGNAL \f|Add0~18_combout\ : std_logic;
SIGNAL \f|Equal0~5_combout\ : std_logic;
SIGNAL \f|Equal0~6_combout\ : std_logic;
SIGNAL \f|Equal0~7_combout\ : std_logic;
SIGNAL \f|Add0~19\ : std_logic;
SIGNAL \f|Add0~20_combout\ : std_logic;
SIGNAL \f|Add0~21\ : std_logic;
SIGNAL \f|Add0~22_combout\ : std_logic;
SIGNAL \f|Add0~23\ : std_logic;
SIGNAL \f|Add0~24_combout\ : std_logic;
SIGNAL \f|ctr~15_combout\ : std_logic;
SIGNAL \f|Add0~25\ : std_logic;
SIGNAL \f|Add0~26_combout\ : std_logic;
SIGNAL \f|ctr~14_combout\ : std_logic;
SIGNAL \f|Equal0~3_combout\ : std_logic;
SIGNAL \f|Add0~27\ : std_logic;
SIGNAL \f|Add0~28_combout\ : std_logic;
SIGNAL \f|ctr~13_combout\ : std_logic;
SIGNAL \f|Add0~29\ : std_logic;
SIGNAL \f|Add0~30_combout\ : std_logic;
SIGNAL \f|ctr~12_combout\ : std_logic;
SIGNAL \f|Add0~31\ : std_logic;
SIGNAL \f|Add0~32_combout\ : std_logic;
SIGNAL \f|Add0~33\ : std_logic;
SIGNAL \f|Add0~34_combout\ : std_logic;
SIGNAL \f|ctr~11_combout\ : std_logic;
SIGNAL \f|Add0~35\ : std_logic;
SIGNAL \f|Add0~36_combout\ : std_logic;
SIGNAL \f|Add0~37\ : std_logic;
SIGNAL \f|Add0~38_combout\ : std_logic;
SIGNAL \f|ctr~10_combout\ : std_logic;
SIGNAL \f|Add0~39\ : std_logic;
SIGNAL \f|Add0~40_combout\ : std_logic;
SIGNAL \f|ctr~21_combout\ : std_logic;
SIGNAL \f|Add0~41\ : std_logic;
SIGNAL \f|Add0~42_combout\ : std_logic;
SIGNAL \f|ctr~20_combout\ : std_logic;
SIGNAL \f|Equal0~1_combout\ : std_logic;
SIGNAL \f|Equal0~2_combout\ : std_logic;
SIGNAL \f|Add0~43\ : std_logic;
SIGNAL \f|Add0~44_combout\ : std_logic;
SIGNAL \f|ctr~19_combout\ : std_logic;
SIGNAL \f|Add0~45\ : std_logic;
SIGNAL \f|Add0~46_combout\ : std_logic;
SIGNAL \f|ctr~18_combout\ : std_logic;
SIGNAL \f|Add0~47\ : std_logic;
SIGNAL \f|Add0~48_combout\ : std_logic;
SIGNAL \f|Add0~49\ : std_logic;
SIGNAL \f|Add0~50_combout\ : std_logic;
SIGNAL \f|ctr~17_combout\ : std_logic;
SIGNAL \f|Equal0~0_combout\ : std_logic;
SIGNAL \f|Equal0~4_combout\ : std_logic;
SIGNAL \f|sclk~0_combout\ : std_logic;
SIGNAL \f|sclk~feeder_combout\ : std_logic;
SIGNAL \f|sclk~q\ : std_logic;
SIGNAL \f|sclk~clkctrl_outclk\ : std_logic;
SIGNAL \control[0]~input_o\ : std_logic;
SIGNAL \ct|mode~0_combout\ : std_logic;
SIGNAL \ct|mode~q\ : std_logic;
SIGNAL \ct|ctlBus[0]~2_combout\ : std_logic;
SIGNAL \ct|ctlBus[0]~4_combout\ : std_logic;
SIGNAL \ct|ctlBus[0]~_emulated_q\ : std_logic;
SIGNAL \ct|ctlBus[0]~3_combout\ : std_logic;
SIGNAL \c|Add0~0_combout\ : std_logic;
SIGNAL \ct|ctlBus[2]~feeder_combout\ : std_logic;
SIGNAL \ct|ctlBus[2]~clkctrl_outclk\ : std_logic;
SIGNAL \c|ctr[4]~5_combout\ : std_logic;
SIGNAL \c|ctr[2]~1_combout\ : std_logic;
SIGNAL \c|Add0~3\ : std_logic;
SIGNAL \c|Add0~4_combout\ : std_logic;
SIGNAL \c|ctr[2]~3_combout\ : std_logic;
SIGNAL \c|ctr[2]~_emulated_q\ : std_logic;
SIGNAL \c|ctr[2]~2_combout\ : std_logic;
SIGNAL \c|Add0~5\ : std_logic;
SIGNAL \c|Add0~6_combout\ : std_logic;
SIGNAL \c|ctr[3]~16_combout\ : std_logic;
SIGNAL \c|Add0~7\ : std_logic;
SIGNAL \c|Add0~8_combout\ : std_logic;
SIGNAL \c|ctr[4]~7_combout\ : std_logic;
SIGNAL \c|ctr[4]~_emulated_q\ : std_logic;
SIGNAL \c|ctr[4]~6_combout\ : std_logic;
SIGNAL \c|Add0~9\ : std_logic;
SIGNAL \c|Add0~10_combout\ : std_logic;
SIGNAL \c|ctr[5]~9_combout\ : std_logic;
SIGNAL \c|ctr[5]~_emulated_q\ : std_logic;
SIGNAL \c|ctr[5]~8_combout\ : std_logic;
SIGNAL \c|ctr~14_combout\ : std_logic;
SIGNAL \c|ctr~13_combout\ : std_logic;
SIGNAL \c|ctr~15_combout\ : std_logic;
SIGNAL \c|Add0~1\ : std_logic;
SIGNAL \c|Add0~2_combout\ : std_logic;
SIGNAL \c|ctr[1]~17_combout\ : std_logic;
SIGNAL \s|o~10_combout\ : std_logic;
SIGNAL \s|ctr~0_combout\ : std_logic;
SIGNAL \s|ctr~q\ : std_logic;
SIGNAL \s|o~11_combout\ : std_logic;
SIGNAL \s|o~12_combout\ : std_logic;
SIGNAL \s|o~3_combout\ : std_logic;
SIGNAL \s|o~4_combout\ : std_logic;
SIGNAL \s|o~5_combout\ : std_logic;
SIGNAL \s|o~6_combout\ : std_logic;
SIGNAL \s|o~2_combout\ : std_logic;
SIGNAL \s|o~13_combout\ : std_logic;
SIGNAL \s|o~15_combout\ : std_logic;
SIGNAL \s|o~14_combout\ : std_logic;
SIGNAL \s|o~7_combout\ : std_logic;
SIGNAL \s|o~16_combout\ : std_logic;
SIGNAL \gd|disp2[2]~1_combout\ : std_logic;
SIGNAL \gd|disp2[2]~0_combout\ : std_logic;
SIGNAL \gd|disp2[2]~2_combout\ : std_logic;
SIGNAL \s|o~8_combout\ : std_logic;
SIGNAL \s|o~9_combout\ : std_logic;
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
SIGNAL \ct|ctlBus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \s|cctr\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \ALT_INV_clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \f|ALT_INV_sclk~clkctrl_outclk\ : std_logic;
SIGNAL \s|ALT_INV_sclk~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_control[0]~input_o\ : std_logic;
SIGNAL \dd|ALT_INV_Mux6~0_combout\ : std_logic;

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

\ct|ctlBus[2]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ct|ctlBus\(2));

\f|sclk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \f|sclk~q\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_clock~inputclkctrl_outclk\ <= NOT \clock~inputclkctrl_outclk\;
\f|ALT_INV_sclk~clkctrl_outclk\ <= NOT \f|sclk~clkctrl_outclk\;
\s|ALT_INV_sclk~clkctrl_outclk\ <= NOT \s|sclk~clkctrl_outclk\;
\ALT_INV_control[0]~input_o\ <= NOT \control[0]~input_o\;
\dd|ALT_INV_Mux6~0_combout\ <= NOT \dd|Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X5_Y0_N23
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

-- Location: LCCOMB_X33_Y13_N16
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

-- Location: FF_X33_Y13_N17
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

-- Location: LCCOMB_X33_Y13_N18
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

-- Location: FF_X33_Y13_N19
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

-- Location: LCCOMB_X33_Y13_N20
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

-- Location: FF_X33_Y13_N21
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

-- Location: LCCOMB_X33_Y13_N22
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

-- Location: FF_X33_Y13_N23
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

-- Location: LCCOMB_X33_Y13_N12
\s|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|Equal0~0_combout\ = (\s|cctr\(0) & (\s|cctr\(1) & (\s|cctr\(3) & \s|cctr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|cctr\(0),
	datab => \s|cctr\(1),
	datac => \s|cctr\(3),
	datad => \s|cctr\(2),
	combout => \s|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y13_N24
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

-- Location: FF_X33_Y13_N25
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

-- Location: LCCOMB_X33_Y13_N26
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

-- Location: LCCOMB_X33_Y13_N6
\s|cctr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|cctr~2_combout\ = (\s|Add0~10_combout\ & ((!\s|cctr\(16)) # (!\s|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s|Equal0~4_combout\,
	datac => \s|Add0~10_combout\,
	datad => \s|cctr\(16),
	combout => \s|cctr~2_combout\);

-- Location: FF_X33_Y13_N7
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

-- Location: LCCOMB_X33_Y13_N28
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

-- Location: FF_X33_Y13_N29
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

-- Location: LCCOMB_X33_Y13_N30
\s|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|Add0~14_combout\ = (\s|cctr\(7) & (!\s|Add0~13\)) # (!\s|cctr\(7) & ((\s|Add0~13\) # (GND)))
-- \s|Add0~15\ = CARRY((!\s|Add0~13\) # (!\s|cctr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s|cctr\(7),
	datad => VCC,
	cin => \s|Add0~13\,
	combout => \s|Add0~14_combout\,
	cout => \s|Add0~15\);

-- Location: LCCOMB_X33_Y13_N8
\s|cctr~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|cctr~1_combout\ = (\s|Add0~14_combout\ & ((!\s|cctr\(16)) # (!\s|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|Add0~14_combout\,
	datab => \s|Equal0~4_combout\,
	datac => \s|cctr\(16),
	combout => \s|cctr~1_combout\);

-- Location: FF_X33_Y13_N9
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

-- Location: LCCOMB_X33_Y13_N2
\s|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|Equal0~1_combout\ = (!\s|cctr\(6) & (\s|cctr\(4) & (\s|cctr\(7) & !\s|cctr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|cctr\(6),
	datab => \s|cctr\(4),
	datac => \s|cctr\(7),
	datad => \s|cctr\(5),
	combout => \s|Equal0~1_combout\);

-- Location: LCCOMB_X33_Y12_N0
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

-- Location: FF_X33_Y12_N1
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

-- Location: LCCOMB_X33_Y12_N2
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

-- Location: LCCOMB_X33_Y12_N20
\s|cctr~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|cctr~3_combout\ = (\s|Add0~18_combout\ & ((!\s|cctr\(16)) # (!\s|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s|Equal0~4_combout\,
	datac => \s|cctr\(16),
	datad => \s|Add0~18_combout\,
	combout => \s|cctr~3_combout\);

-- Location: FF_X33_Y12_N21
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

-- Location: LCCOMB_X33_Y12_N4
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

-- Location: LCCOMB_X33_Y12_N30
\s|cctr~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|cctr~4_combout\ = (\s|Add0~20_combout\ & ((!\s|Equal0~4_combout\) # (!\s|cctr\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s|cctr\(16),
	datac => \s|Add0~20_combout\,
	datad => \s|Equal0~4_combout\,
	combout => \s|cctr~4_combout\);

-- Location: FF_X33_Y12_N31
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

-- Location: LCCOMB_X33_Y12_N6
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

-- Location: FF_X33_Y12_N7
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

-- Location: LCCOMB_X33_Y12_N24
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

-- Location: LCCOMB_X33_Y12_N8
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

-- Location: FF_X33_Y12_N9
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

-- Location: LCCOMB_X33_Y12_N10
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

-- Location: FF_X33_Y12_N11
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

-- Location: LCCOMB_X33_Y12_N12
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

-- Location: FF_X33_Y12_N13
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

-- Location: LCCOMB_X33_Y12_N14
\s|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|Add0~30_combout\ = (\s|cctr\(15) & (!\s|Add0~29\)) # (!\s|cctr\(15) & ((\s|Add0~29\) # (GND)))
-- \s|Add0~31\ = CARRY((!\s|Add0~29\) # (!\s|cctr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s|cctr\(15),
	datad => VCC,
	cin => \s|Add0~29\,
	combout => \s|Add0~30_combout\,
	cout => \s|Add0~31\);

-- Location: LCCOMB_X33_Y12_N26
\s|cctr~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|cctr~5_combout\ = (\s|Add0~30_combout\ & ((!\s|Equal0~4_combout\) # (!\s|cctr\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s|cctr\(16),
	datac => \s|Add0~30_combout\,
	datad => \s|Equal0~4_combout\,
	combout => \s|cctr~5_combout\);

-- Location: FF_X33_Y12_N27
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

-- Location: LCCOMB_X33_Y12_N28
\s|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|Equal0~3_combout\ = (!\s|cctr\(14) & (!\s|cctr\(12) & (\s|cctr\(15) & !\s|cctr\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|cctr\(14),
	datab => \s|cctr\(12),
	datac => \s|cctr\(15),
	datad => \s|cctr\(13),
	combout => \s|Equal0~3_combout\);

-- Location: LCCOMB_X33_Y13_N4
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

-- Location: LCCOMB_X33_Y12_N16
\s|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|Add0~32_combout\ = \s|Add0~31\ $ (!\s|cctr\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \s|cctr\(16),
	cin => \s|Add0~31\,
	combout => \s|Add0~32_combout\);

-- Location: LCCOMB_X33_Y12_N18
\s|cctr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|cctr~0_combout\ = (\s|Add0~32_combout\ & ((!\s|cctr\(16)) # (!\s|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s|Equal0~4_combout\,
	datac => \s|cctr\(16),
	datad => \s|Add0~32_combout\,
	combout => \s|cctr~0_combout\);

-- Location: FF_X33_Y12_N19
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

-- Location: LCCOMB_X33_Y13_N10
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

-- Location: LCCOMB_X33_Y13_N14
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

-- Location: FF_X33_Y13_N15
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

-- Location: CLKCTRL_G9
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

-- Location: IOIBUF_X34_Y12_N8
\control[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(1),
	o => \control[1]~input_o\);

-- Location: LCCOMB_X33_Y12_N22
\ct|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ct|Selector0~0_combout\ = \ct|ctlBus\(1) $ (!\control[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ct|ctlBus\(1),
	datad => \control[1]~input_o\,
	combout => \ct|Selector0~0_combout\);

-- Location: IOIBUF_X34_Y12_N15
\control[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(2),
	o => \control[2]~input_o\);

-- Location: FF_X33_Y12_N23
\ct|ctlBus[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \ct|Selector0~0_combout\,
	clrn => \control[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ct|ctlBus\(1));

-- Location: LCCOMB_X19_Y13_N6
\f|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~0_combout\ = \f|ctr\(0) $ (VCC)
-- \f|Add0~1\ = CARRY(\f|ctr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(0),
	datad => VCC,
	combout => \f|Add0~0_combout\,
	cout => \f|Add0~1\);

-- Location: FF_X19_Y13_N7
\f|ctr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~0_combout\,
	ena => \ct|ctlBus\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(0));

-- Location: LCCOMB_X19_Y13_N8
\f|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~2_combout\ = (\f|ctr\(1) & (!\f|Add0~1\)) # (!\f|ctr\(1) & ((\f|Add0~1\) # (GND)))
-- \f|Add0~3\ = CARRY((!\f|Add0~1\) # (!\f|ctr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f|ctr\(1),
	datad => VCC,
	cin => \f|Add0~1\,
	combout => \f|Add0~2_combout\,
	cout => \f|Add0~3\);

-- Location: FF_X19_Y13_N9
\f|ctr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~2_combout\,
	ena => \ct|ctlBus\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(1));

-- Location: LCCOMB_X19_Y13_N10
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

-- Location: FF_X19_Y13_N11
\f|ctr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~4_combout\,
	ena => \ct|ctlBus\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(2));

-- Location: LCCOMB_X19_Y13_N12
\f|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~6_combout\ = (\f|ctr\(3) & (!\f|Add0~5\)) # (!\f|ctr\(3) & ((\f|Add0~5\) # (GND)))
-- \f|Add0~7\ = CARRY((!\f|Add0~5\) # (!\f|ctr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(3),
	datad => VCC,
	cin => \f|Add0~5\,
	combout => \f|Add0~6_combout\,
	cout => \f|Add0~7\);

-- Location: FF_X19_Y13_N13
\f|ctr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~6_combout\,
	ena => \ct|ctlBus\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(3));

-- Location: LCCOMB_X19_Y13_N14
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

-- Location: FF_X19_Y13_N15
\f|ctr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~8_combout\,
	ena => \ct|ctlBus\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(4));

-- Location: LCCOMB_X19_Y13_N16
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

-- Location: FF_X19_Y13_N17
\f|ctr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~10_combout\,
	ena => \ct|ctlBus\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(5));

-- Location: LCCOMB_X19_Y13_N18
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

-- Location: FF_X19_Y13_N19
\f|ctr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~12_combout\,
	ena => \ct|ctlBus\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(6));

-- Location: LCCOMB_X19_Y13_N20
\f|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~14_combout\ = (\f|ctr\(7) & (!\f|Add0~13\)) # (!\f|ctr\(7) & ((\f|Add0~13\) # (GND)))
-- \f|Add0~15\ = CARRY((!\f|Add0~13\) # (!\f|ctr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f|ctr\(7),
	datad => VCC,
	cin => \f|Add0~13\,
	combout => \f|Add0~14_combout\,
	cout => \f|Add0~15\);

-- Location: LCCOMB_X19_Y13_N0
\f|ctr~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~16_combout\ = (\f|Add0~14_combout\ & ((!\f|Equal0~7_combout\) # (!\f|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|Equal0~4_combout\,
	datab => \f|Add0~14_combout\,
	datac => \f|Equal0~7_combout\,
	combout => \f|ctr~16_combout\);

-- Location: FF_X19_Y13_N1
\f|ctr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~16_combout\,
	ena => \ct|ctlBus\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(7));

-- Location: LCCOMB_X19_Y13_N22
\f|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~16_combout\ = (\f|ctr\(8) & (\f|Add0~15\ $ (GND))) # (!\f|ctr\(8) & (!\f|Add0~15\ & VCC))
-- \f|Add0~17\ = CARRY((\f|ctr\(8) & !\f|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(8),
	datad => VCC,
	cin => \f|Add0~15\,
	combout => \f|Add0~16_combout\,
	cout => \f|Add0~17\);

-- Location: FF_X19_Y13_N23
\f|ctr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~16_combout\,
	ena => \ct|ctlBus\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(8));

-- Location: LCCOMB_X19_Y13_N24
\f|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~18_combout\ = (\f|ctr\(9) & (!\f|Add0~17\)) # (!\f|ctr\(9) & ((\f|Add0~17\) # (GND)))
-- \f|Add0~19\ = CARRY((!\f|Add0~17\) # (!\f|ctr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f|ctr\(9),
	datad => VCC,
	cin => \f|Add0~17\,
	combout => \f|Add0~18_combout\,
	cout => \f|Add0~19\);

-- Location: FF_X19_Y13_N25
\f|ctr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~18_combout\,
	ena => \ct|ctlBus\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(9));

-- Location: LCCOMB_X19_Y13_N2
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

-- Location: LCCOMB_X19_Y13_N4
\f|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Equal0~6_combout\ = (\f|ctr\(2) & (\f|ctr\(5) & (\f|ctr\(4) & \f|ctr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(2),
	datab => \f|ctr\(5),
	datac => \f|ctr\(4),
	datad => \f|ctr\(3),
	combout => \f|Equal0~6_combout\);

-- Location: LCCOMB_X18_Y12_N10
\f|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Equal0~7_combout\ = (\f|ctr\(0) & (\f|ctr\(1) & (\f|Equal0~5_combout\ & \f|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(0),
	datab => \f|ctr\(1),
	datac => \f|Equal0~5_combout\,
	datad => \f|Equal0~6_combout\,
	combout => \f|Equal0~7_combout\);

-- Location: LCCOMB_X19_Y13_N26
\f|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~20_combout\ = (\f|ctr\(10) & (\f|Add0~19\ $ (GND))) # (!\f|ctr\(10) & (!\f|Add0~19\ & VCC))
-- \f|Add0~21\ = CARRY((\f|ctr\(10) & !\f|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(10),
	datad => VCC,
	cin => \f|Add0~19\,
	combout => \f|Add0~20_combout\,
	cout => \f|Add0~21\);

-- Location: FF_X19_Y13_N27
\f|ctr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~20_combout\,
	ena => \ct|ctlBus\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(10));

-- Location: LCCOMB_X19_Y13_N28
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

-- Location: FF_X19_Y13_N29
\f|ctr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~22_combout\,
	ena => \ct|ctlBus\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(11));

-- Location: LCCOMB_X19_Y13_N30
\f|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~24_combout\ = (\f|ctr\(12) & (\f|Add0~23\ $ (GND))) # (!\f|ctr\(12) & (!\f|Add0~23\ & VCC))
-- \f|Add0~25\ = CARRY((\f|ctr\(12) & !\f|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(12),
	datad => VCC,
	cin => \f|Add0~23\,
	combout => \f|Add0~24_combout\,
	cout => \f|Add0~25\);

-- Location: LCCOMB_X18_Y12_N20
\f|ctr~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~15_combout\ = (\f|Add0~24_combout\ & ((!\f|Equal0~4_combout\) # (!\f|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|Equal0~7_combout\,
	datac => \f|Equal0~4_combout\,
	datad => \f|Add0~24_combout\,
	combout => \f|ctr~15_combout\);

-- Location: FF_X18_Y12_N21
\f|ctr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~15_combout\,
	ena => \ct|ctlBus\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(12));

-- Location: LCCOMB_X19_Y12_N0
\f|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~26_combout\ = (\f|ctr\(13) & (!\f|Add0~25\)) # (!\f|ctr\(13) & ((\f|Add0~25\) # (GND)))
-- \f|Add0~27\ = CARRY((!\f|Add0~25\) # (!\f|ctr\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f|ctr\(13),
	datad => VCC,
	cin => \f|Add0~25\,
	combout => \f|Add0~26_combout\,
	cout => \f|Add0~27\);

-- Location: LCCOMB_X18_Y12_N6
\f|ctr~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~14_combout\ = (\f|Add0~26_combout\ & ((!\f|Equal0~7_combout\) # (!\f|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|Equal0~4_combout\,
	datac => \f|Add0~26_combout\,
	datad => \f|Equal0~7_combout\,
	combout => \f|ctr~14_combout\);

-- Location: FF_X18_Y12_N7
\f|ctr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~14_combout\,
	ena => \ct|ctlBus\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(13));

-- Location: LCCOMB_X18_Y12_N22
\f|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Equal0~3_combout\ = (\f|ctr\(13) & (\f|ctr\(12) & (!\f|ctr\(10) & !\f|ctr\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(13),
	datab => \f|ctr\(12),
	datac => \f|ctr\(10),
	datad => \f|ctr\(11),
	combout => \f|Equal0~3_combout\);

-- Location: LCCOMB_X19_Y12_N2
\f|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~28_combout\ = (\f|ctr\(14) & (\f|Add0~27\ $ (GND))) # (!\f|ctr\(14) & (!\f|Add0~27\ & VCC))
-- \f|Add0~29\ = CARRY((\f|ctr\(14) & !\f|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f|ctr\(14),
	datad => VCC,
	cin => \f|Add0~27\,
	combout => \f|Add0~28_combout\,
	cout => \f|Add0~29\);

-- Location: LCCOMB_X18_Y12_N30
\f|ctr~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~13_combout\ = (\f|Add0~28_combout\ & ((!\f|Equal0~4_combout\) # (!\f|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|Equal0~7_combout\,
	datac => \f|Equal0~4_combout\,
	datad => \f|Add0~28_combout\,
	combout => \f|ctr~13_combout\);

-- Location: FF_X18_Y12_N31
\f|ctr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~13_combout\,
	ena => \ct|ctlBus\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(14));

-- Location: LCCOMB_X19_Y12_N4
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

-- Location: LCCOMB_X18_Y12_N26
\f|ctr~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~12_combout\ = (\f|Add0~30_combout\ & ((!\f|Equal0~4_combout\) # (!\f|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|Equal0~7_combout\,
	datac => \f|Equal0~4_combout\,
	datad => \f|Add0~30_combout\,
	combout => \f|ctr~12_combout\);

-- Location: FF_X18_Y12_N27
\f|ctr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~12_combout\,
	ena => \ct|ctlBus\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(15));

-- Location: LCCOMB_X19_Y12_N6
\f|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~32_combout\ = (\f|ctr\(16) & (\f|Add0~31\ $ (GND))) # (!\f|ctr\(16) & (!\f|Add0~31\ & VCC))
-- \f|Add0~33\ = CARRY((\f|ctr\(16) & !\f|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(16),
	datad => VCC,
	cin => \f|Add0~31\,
	combout => \f|Add0~32_combout\,
	cout => \f|Add0~33\);

-- Location: FF_X19_Y12_N7
\f|ctr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~32_combout\,
	ena => \ct|ctlBus\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(16));

-- Location: LCCOMB_X19_Y12_N8
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

-- Location: LCCOMB_X18_Y12_N12
\f|ctr~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~11_combout\ = (\f|Add0~34_combout\ & ((!\f|Equal0~7_combout\) # (!\f|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|Equal0~4_combout\,
	datac => \f|Add0~34_combout\,
	datad => \f|Equal0~7_combout\,
	combout => \f|ctr~11_combout\);

-- Location: FF_X18_Y12_N13
\f|ctr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~11_combout\,
	ena => \ct|ctlBus\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(17));

-- Location: LCCOMB_X19_Y12_N10
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

-- Location: FF_X19_Y12_N11
\f|ctr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~36_combout\,
	ena => \ct|ctlBus\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(18));

-- Location: LCCOMB_X19_Y12_N12
\f|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~38_combout\ = (\f|ctr\(19) & (!\f|Add0~37\)) # (!\f|ctr\(19) & ((\f|Add0~37\) # (GND)))
-- \f|Add0~39\ = CARRY((!\f|Add0~37\) # (!\f|ctr\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(19),
	datad => VCC,
	cin => \f|Add0~37\,
	combout => \f|Add0~38_combout\,
	cout => \f|Add0~39\);

-- Location: LCCOMB_X18_Y12_N8
\f|ctr~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~10_combout\ = (\f|Add0~38_combout\ & ((!\f|Equal0~7_combout\) # (!\f|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|Equal0~4_combout\,
	datac => \f|Add0~38_combout\,
	datad => \f|Equal0~7_combout\,
	combout => \f|ctr~10_combout\);

-- Location: FF_X18_Y12_N9
\f|ctr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~10_combout\,
	ena => \ct|ctlBus\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(19));

-- Location: LCCOMB_X19_Y12_N14
\f|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~40_combout\ = (\f|ctr\(20) & (\f|Add0~39\ $ (GND))) # (!\f|ctr\(20) & (!\f|Add0~39\ & VCC))
-- \f|Add0~41\ = CARRY((\f|ctr\(20) & !\f|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(20),
	datad => VCC,
	cin => \f|Add0~39\,
	combout => \f|Add0~40_combout\,
	cout => \f|Add0~41\);

-- Location: LCCOMB_X19_Y12_N26
\f|ctr~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~21_combout\ = (\f|Add0~40_combout\ & ((!\f|Equal0~4_combout\) # (!\f|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|Equal0~7_combout\,
	datac => \f|Add0~40_combout\,
	datad => \f|Equal0~4_combout\,
	combout => \f|ctr~21_combout\);

-- Location: FF_X19_Y12_N27
\f|ctr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~21_combout\,
	ena => \ct|ctlBus\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(20));

-- Location: LCCOMB_X19_Y12_N16
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

-- Location: LCCOMB_X19_Y12_N28
\f|ctr~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~20_combout\ = (\f|Add0~42_combout\ & ((!\f|Equal0~4_combout\) # (!\f|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|Equal0~7_combout\,
	datac => \f|Equal0~4_combout\,
	datad => \f|Add0~42_combout\,
	combout => \f|ctr~20_combout\);

-- Location: FF_X19_Y12_N29
\f|ctr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~20_combout\,
	ena => \ct|ctlBus\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(21));

-- Location: LCCOMB_X18_Y12_N28
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

-- Location: LCCOMB_X18_Y12_N4
\f|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Equal0~2_combout\ = (\f|ctr\(15) & (\f|ctr\(17) & (\f|ctr\(14) & !\f|ctr\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(15),
	datab => \f|ctr\(17),
	datac => \f|ctr\(14),
	datad => \f|ctr\(16),
	combout => \f|Equal0~2_combout\);

-- Location: LCCOMB_X19_Y12_N18
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

-- Location: LCCOMB_X19_Y12_N30
\f|ctr~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~19_combout\ = (\f|Add0~44_combout\ & ((!\f|Equal0~4_combout\) # (!\f|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|Equal0~7_combout\,
	datac => \f|Equal0~4_combout\,
	datad => \f|Add0~44_combout\,
	combout => \f|ctr~19_combout\);

-- Location: FF_X19_Y12_N31
\f|ctr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~19_combout\,
	ena => \ct|ctlBus\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(22));

-- Location: LCCOMB_X19_Y12_N20
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

-- Location: LCCOMB_X18_Y12_N16
\f|ctr~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~18_combout\ = (\f|Add0~46_combout\ & ((!\f|Equal0~7_combout\) # (!\f|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|Equal0~4_combout\,
	datac => \f|Add0~46_combout\,
	datad => \f|Equal0~7_combout\,
	combout => \f|ctr~18_combout\);

-- Location: FF_X18_Y12_N17
\f|ctr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~18_combout\,
	ena => \ct|ctlBus\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(23));

-- Location: LCCOMB_X19_Y12_N22
\f|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~48_combout\ = (\f|ctr\(24) & (\f|Add0~47\ $ (GND))) # (!\f|ctr\(24) & (!\f|Add0~47\ & VCC))
-- \f|Add0~49\ = CARRY((\f|ctr\(24) & !\f|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(24),
	datad => VCC,
	cin => \f|Add0~47\,
	combout => \f|Add0~48_combout\,
	cout => \f|Add0~49\);

-- Location: FF_X19_Y12_N23
\f|ctr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|Add0~48_combout\,
	ena => \ct|ctlBus\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(24));

-- Location: LCCOMB_X19_Y12_N24
\f|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Add0~50_combout\ = \f|Add0~49\ $ (\f|ctr\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \f|ctr\(25),
	cin => \f|Add0~49\,
	combout => \f|Add0~50_combout\);

-- Location: LCCOMB_X18_Y12_N2
\f|ctr~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|ctr~17_combout\ = (\f|Add0~50_combout\ & ((!\f|Equal0~4_combout\) # (!\f|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|Equal0~7_combout\,
	datac => \f|Equal0~4_combout\,
	datad => \f|Add0~50_combout\,
	combout => \f|ctr~17_combout\);

-- Location: FF_X18_Y12_N3
\f|ctr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \f|ctr~17_combout\,
	ena => \ct|ctlBus\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|ctr\(25));

-- Location: LCCOMB_X18_Y12_N18
\f|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Equal0~0_combout\ = (!\f|ctr\(24) & (\f|ctr\(25) & (\f|ctr\(22) & \f|ctr\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|ctr\(24),
	datab => \f|ctr\(25),
	datac => \f|ctr\(22),
	datad => \f|ctr\(23),
	combout => \f|Equal0~0_combout\);

-- Location: LCCOMB_X18_Y12_N14
\f|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|Equal0~4_combout\ = (\f|Equal0~3_combout\ & (\f|Equal0~1_combout\ & (\f|Equal0~2_combout\ & \f|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|Equal0~3_combout\,
	datab => \f|Equal0~1_combout\,
	datac => \f|Equal0~2_combout\,
	datad => \f|Equal0~0_combout\,
	combout => \f|Equal0~4_combout\);

-- Location: LCCOMB_X18_Y12_N0
\f|sclk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|sclk~0_combout\ = \f|sclk~q\ $ (((\ct|ctlBus\(1) & (\f|Equal0~4_combout\ & \f|Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ct|ctlBus\(1),
	datab => \f|sclk~q\,
	datac => \f|Equal0~4_combout\,
	datad => \f|Equal0~7_combout\,
	combout => \f|sclk~0_combout\);

-- Location: LCCOMB_X18_Y12_N24
\f|sclk~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|sclk~feeder_combout\ = \f|sclk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|sclk~0_combout\,
	combout => \f|sclk~feeder_combout\);

-- Location: FF_X18_Y12_N25
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

-- Location: CLKCTRL_G6
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

-- Location: IOIBUF_X34_Y12_N1
\control[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(0),
	o => \control[0]~input_o\);

-- Location: LCCOMB_X26_Y16_N6
\ct|mode~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ct|mode~0_combout\ = !\ct|mode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ct|mode~q\,
	combout => \ct|mode~0_combout\);

-- Location: FF_X26_Y16_N7
\ct|mode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_control[0]~input_o\,
	d => \ct|mode~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ct|mode~q\);

-- Location: LCCOMB_X26_Y16_N8
\ct|ctlBus[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ct|ctlBus[0]~2_combout\ = (\control[2]~input_o\ & (\ct|ctlBus[0]~2_combout\)) # (!\control[2]~input_o\ & ((!\ct|mode~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ct|ctlBus[0]~2_combout\,
	datac => \control[2]~input_o\,
	datad => \ct|mode~q\,
	combout => \ct|ctlBus[0]~2_combout\);

-- Location: LCCOMB_X26_Y16_N16
\ct|ctlBus[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ct|ctlBus[0]~4_combout\ = \ct|ctlBus[0]~2_combout\ $ (((!\ct|mode~q\ & (\control[1]~input_o\ $ (!\ct|ctlBus\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[1]~input_o\,
	datab => \ct|mode~q\,
	datac => \ct|ctlBus\(1),
	datad => \ct|ctlBus[0]~2_combout\,
	combout => \ct|ctlBus[0]~4_combout\);

-- Location: FF_X26_Y16_N17
\ct|ctlBus[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \ct|ctlBus[0]~4_combout\,
	clrn => \control[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ct|ctlBus[0]~_emulated_q\);

-- Location: LCCOMB_X22_Y16_N18
\ct|ctlBus[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ct|ctlBus[0]~3_combout\ = (\control[2]~input_o\ & (\ct|ctlBus[0]~2_combout\ $ (((\ct|ctlBus[0]~_emulated_q\))))) # (!\control[2]~input_o\ & (((!\ct|mode~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[2]~input_o\,
	datab => \ct|ctlBus[0]~2_combout\,
	datac => \ct|mode~q\,
	datad => \ct|ctlBus[0]~_emulated_q\,
	combout => \ct|ctlBus[0]~3_combout\);

-- Location: LCCOMB_X23_Y16_N16
\c|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|Add0~0_combout\ = \c|ctr\(0) $ (VCC)
-- \c|Add0~1\ = CARRY(\c|ctr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c|ctr\(0),
	datad => VCC,
	combout => \c|Add0~0_combout\,
	cout => \c|Add0~1\);

-- Location: LCCOMB_X30_Y14_N24
\ct|ctlBus[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ct|ctlBus[2]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \ct|ctlBus[2]~feeder_combout\);

-- Location: FF_X30_Y14_N25
\ct|ctlBus[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \ct|ctlBus[2]~feeder_combout\,
	clrn => \control[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ct|ctlBus\(2));

-- Location: CLKCTRL_G7
\ct|ctlBus[2]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ct|ctlBus[2]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ct|ctlBus[2]~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y16_N14
\c|ctr[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[4]~5_combout\ = (GLOBAL(\ct|ctlBus[2]~clkctrl_outclk\) & ((\c|ctr[4]~5_combout\))) # (!GLOBAL(\ct|ctlBus[2]~clkctrl_outclk\) & (!\ct|ctlBus[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ct|ctlBus[0]~3_combout\,
	datab => \c|ctr[4]~5_combout\,
	datac => \ct|ctlBus[2]~clkctrl_outclk\,
	combout => \c|ctr[4]~5_combout\);

-- Location: LCCOMB_X22_Y16_N4
\c|ctr[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[2]~1_combout\ = (GLOBAL(\ct|ctlBus[2]~clkctrl_outclk\) & ((\c|ctr[2]~1_combout\))) # (!GLOBAL(\ct|ctlBus[2]~clkctrl_outclk\) & (\ct|ctlBus[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ct|ctlBus[2]~clkctrl_outclk\,
	datab => \ct|ctlBus[0]~3_combout\,
	datac => \c|ctr[2]~1_combout\,
	combout => \c|ctr[2]~1_combout\);

-- Location: LCCOMB_X23_Y16_N18
\c|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|Add0~2_combout\ = (\c|ctr\(1) & ((\ct|ctlBus[0]~3_combout\ & ((\c|Add0~1\) # (GND))) # (!\ct|ctlBus[0]~3_combout\ & (!\c|Add0~1\)))) # (!\c|ctr\(1) & ((\ct|ctlBus[0]~3_combout\ & (!\c|Add0~1\)) # (!\ct|ctlBus[0]~3_combout\ & (\c|Add0~1\ & VCC))))
-- \c|Add0~3\ = CARRY((\c|ctr\(1) & ((\ct|ctlBus[0]~3_combout\) # (!\c|Add0~1\))) # (!\c|ctr\(1) & (\ct|ctlBus[0]~3_combout\ & !\c|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(1),
	datab => \ct|ctlBus[0]~3_combout\,
	datad => VCC,
	cin => \c|Add0~1\,
	combout => \c|Add0~2_combout\,
	cout => \c|Add0~3\);

-- Location: LCCOMB_X23_Y16_N20
\c|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|Add0~4_combout\ = ((\c|ctr[2]~2_combout\ $ (\ct|ctlBus[0]~3_combout\ $ (\c|Add0~3\)))) # (GND)
-- \c|Add0~5\ = CARRY((\c|ctr[2]~2_combout\ & ((!\c|Add0~3\) # (!\ct|ctlBus[0]~3_combout\))) # (!\c|ctr[2]~2_combout\ & (!\ct|ctlBus[0]~3_combout\ & !\c|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr[2]~2_combout\,
	datab => \ct|ctlBus[0]~3_combout\,
	datad => VCC,
	cin => \c|Add0~3\,
	combout => \c|Add0~4_combout\,
	cout => \c|Add0~5\);

-- Location: LCCOMB_X22_Y16_N8
\c|ctr[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[2]~3_combout\ = \c|ctr[2]~1_combout\ $ (\c|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c|ctr[2]~1_combout\,
	datac => \c|Add0~4_combout\,
	combout => \c|ctr[2]~3_combout\);

-- Location: FF_X22_Y16_N9
\c|ctr[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f|ALT_INV_sclk~clkctrl_outclk\,
	d => \c|ctr[2]~3_combout\,
	clrn => \ct|ctlBus[2]~clkctrl_outclk\,
	ena => \c|ctr~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c|ctr[2]~_emulated_q\);

-- Location: LCCOMB_X22_Y16_N2
\c|ctr[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[2]~2_combout\ = (\ct|ctlBus\(2) & (\c|ctr[2]~1_combout\ $ ((\c|ctr[2]~_emulated_q\)))) # (!\ct|ctlBus\(2) & (((\ct|ctlBus[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ct|ctlBus\(2),
	datab => \c|ctr[2]~1_combout\,
	datac => \c|ctr[2]~_emulated_q\,
	datad => \ct|ctlBus[0]~3_combout\,
	combout => \c|ctr[2]~2_combout\);

-- Location: LCCOMB_X23_Y16_N22
\c|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|Add0~6_combout\ = (\c|ctr\(3) & ((\ct|ctlBus[0]~3_combout\ & ((\c|Add0~5\) # (GND))) # (!\ct|ctlBus[0]~3_combout\ & (!\c|Add0~5\)))) # (!\c|ctr\(3) & ((\ct|ctlBus[0]~3_combout\ & (!\c|Add0~5\)) # (!\ct|ctlBus[0]~3_combout\ & (\c|Add0~5\ & VCC))))
-- \c|Add0~7\ = CARRY((\c|ctr\(3) & ((\ct|ctlBus[0]~3_combout\) # (!\c|Add0~5\))) # (!\c|ctr\(3) & (\ct|ctlBus[0]~3_combout\ & !\c|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(3),
	datab => \ct|ctlBus[0]~3_combout\,
	datad => VCC,
	cin => \c|Add0~5\,
	combout => \c|Add0~6_combout\,
	cout => \c|Add0~7\);

-- Location: LCCOMB_X23_Y16_N28
\c|ctr[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[3]~16_combout\ = !\c|Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|Add0~6_combout\,
	combout => \c|ctr[3]~16_combout\);

-- Location: FF_X23_Y16_N29
\c|ctr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f|ALT_INV_sclk~clkctrl_outclk\,
	d => \c|ctr[3]~16_combout\,
	clrn => \ct|ctlBus[2]~clkctrl_outclk\,
	ena => \c|ctr~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c|ctr\(3));

-- Location: LCCOMB_X23_Y16_N24
\c|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|Add0~8_combout\ = ((\c|ctr[4]~6_combout\ $ (\ct|ctlBus[0]~3_combout\ $ (\c|Add0~7\)))) # (GND)
-- \c|Add0~9\ = CARRY((\c|ctr[4]~6_combout\ & ((!\c|Add0~7\) # (!\ct|ctlBus[0]~3_combout\))) # (!\c|ctr[4]~6_combout\ & (!\ct|ctlBus[0]~3_combout\ & !\c|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr[4]~6_combout\,
	datab => \ct|ctlBus[0]~3_combout\,
	datad => VCC,
	cin => \c|Add0~7\,
	combout => \c|Add0~8_combout\,
	cout => \c|Add0~9\);

-- Location: LCCOMB_X22_Y16_N12
\c|ctr[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[4]~7_combout\ = \c|ctr[4]~5_combout\ $ (\c|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr[4]~5_combout\,
	datac => \c|Add0~8_combout\,
	combout => \c|ctr[4]~7_combout\);

-- Location: FF_X22_Y16_N13
\c|ctr[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f|ALT_INV_sclk~clkctrl_outclk\,
	d => \c|ctr[4]~7_combout\,
	clrn => \ct|ctlBus[2]~clkctrl_outclk\,
	ena => \c|ctr~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c|ctr[4]~_emulated_q\);

-- Location: LCCOMB_X22_Y16_N10
\c|ctr[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[4]~6_combout\ = (\ct|ctlBus\(2) & (\c|ctr[4]~_emulated_q\ $ ((\c|ctr[4]~5_combout\)))) # (!\ct|ctlBus\(2) & (((!\ct|ctlBus[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr[4]~_emulated_q\,
	datab => \ct|ctlBus\(2),
	datac => \c|ctr[4]~5_combout\,
	datad => \ct|ctlBus[0]~3_combout\,
	combout => \c|ctr[4]~6_combout\);

-- Location: LCCOMB_X23_Y16_N26
\c|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|Add0~10_combout\ = \c|ctr[5]~8_combout\ $ (\c|Add0~9\ $ (!\ct|ctlBus[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c|ctr[5]~8_combout\,
	datad => \ct|ctlBus[0]~3_combout\,
	cin => \c|Add0~9\,
	combout => \c|Add0~10_combout\);

-- Location: LCCOMB_X22_Y16_N26
\c|ctr[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[5]~9_combout\ = \c|ctr[4]~5_combout\ $ (\c|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr[4]~5_combout\,
	datad => \c|Add0~10_combout\,
	combout => \c|ctr[5]~9_combout\);

-- Location: FF_X22_Y16_N27
\c|ctr[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f|ALT_INV_sclk~clkctrl_outclk\,
	d => \c|ctr[5]~9_combout\,
	clrn => \ct|ctlBus[2]~clkctrl_outclk\,
	ena => \c|ctr~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c|ctr[5]~_emulated_q\);

-- Location: LCCOMB_X22_Y16_N24
\c|ctr[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[5]~8_combout\ = (\ct|ctlBus\(2) & (\c|ctr[4]~5_combout\ $ ((\c|ctr[5]~_emulated_q\)))) # (!\ct|ctlBus\(2) & (((!\ct|ctlBus[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ct|ctlBus\(2),
	datab => \c|ctr[4]~5_combout\,
	datac => \c|ctr[5]~_emulated_q\,
	datad => \ct|ctlBus[0]~3_combout\,
	combout => \c|ctr[5]~8_combout\);

-- Location: LCCOMB_X22_Y16_N22
\c|ctr~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr~14_combout\ = (\c|ctr[4]~6_combout\ & ((!\ct|ctlBus[0]~3_combout\) # (!\c|ctr[5]~8_combout\))) # (!\c|ctr[4]~6_combout\ & ((\c|ctr[5]~8_combout\) # (\ct|ctlBus[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr[4]~6_combout\,
	datab => \c|ctr[5]~8_combout\,
	datad => \ct|ctlBus[0]~3_combout\,
	combout => \c|ctr~14_combout\);

-- Location: LCCOMB_X22_Y16_N20
\c|ctr~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr~13_combout\ = (\c|ctr\(0) & (((\c|ctr\(1)) # (\c|ctr\(3))) # (!\ct|ctlBus[0]~3_combout\))) # (!\c|ctr\(0) & ((\ct|ctlBus[0]~3_combout\) # ((!\c|ctr\(3)) # (!\c|ctr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(0),
	datab => \ct|ctlBus[0]~3_combout\,
	datac => \c|ctr\(1),
	datad => \c|ctr\(3),
	combout => \c|ctr~13_combout\);

-- Location: LCCOMB_X22_Y16_N0
\c|ctr~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr~15_combout\ = (\c|ctr~14_combout\) # ((\c|ctr~13_combout\) # (\ct|ctlBus[0]~3_combout\ $ (\c|ctr[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr~14_combout\,
	datab => \c|ctr~13_combout\,
	datac => \ct|ctlBus[0]~3_combout\,
	datad => \c|ctr[2]~2_combout\,
	combout => \c|ctr~15_combout\);

-- Location: FF_X23_Y16_N17
\c|ctr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f|ALT_INV_sclk~clkctrl_outclk\,
	d => \c|Add0~0_combout\,
	clrn => \ct|ctlBus[2]~clkctrl_outclk\,
	ena => \c|ctr~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c|ctr\(0));

-- Location: LCCOMB_X23_Y16_N30
\c|ctr[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|ctr[1]~17_combout\ = !\c|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c|Add0~2_combout\,
	combout => \c|ctr[1]~17_combout\);

-- Location: FF_X23_Y16_N31
\c|ctr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f|ALT_INV_sclk~clkctrl_outclk\,
	d => \c|ctr[1]~17_combout\,
	clrn => \ct|ctlBus[2]~clkctrl_outclk\,
	ena => \c|ctr~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c|ctr\(1));

-- Location: LCCOMB_X21_Y16_N28
\s|o~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~10_combout\ = (\c|ctr[2]~2_combout\ & (!\c|ctr[5]~8_combout\ & (\c|ctr[4]~6_combout\ $ (!\c|ctr\(3))))) # (!\c|ctr[2]~2_combout\ & (\c|ctr[4]~6_combout\ & (!\c|ctr\(3) & \c|ctr[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr[2]~2_combout\,
	datab => \c|ctr[4]~6_combout\,
	datac => \c|ctr\(3),
	datad => \c|ctr[5]~8_combout\,
	combout => \s|o~10_combout\);

-- Location: LCCOMB_X21_Y16_N8
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

-- Location: FF_X21_Y16_N9
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

-- Location: LCCOMB_X21_Y16_N4
\s|o~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~11_combout\ = (\c|ctr\(3) & (!\c|ctr[4]~6_combout\ & (!\c|ctr[2]~2_combout\ & \c|ctr[5]~8_combout\))) # (!\c|ctr\(3) & (\c|ctr[2]~2_combout\ & (\c|ctr[4]~6_combout\ $ (\c|ctr[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(3),
	datab => \c|ctr[4]~6_combout\,
	datac => \c|ctr[2]~2_combout\,
	datad => \c|ctr[5]~8_combout\,
	combout => \s|o~11_combout\);

-- Location: LCCOMB_X21_Y16_N22
\s|o~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~12_combout\ = (\s|ctr~q\ & ((\c|ctr\(1) & (!\s|o~10_combout\ & \s|o~11_combout\)) # (!\c|ctr\(1) & (\s|o~10_combout\ & !\s|o~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(1),
	datab => \s|o~10_combout\,
	datac => \s|ctr~q\,
	datad => \s|o~11_combout\,
	combout => \s|o~12_combout\);

-- Location: FF_X21_Y16_N23
\s|o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s|ALT_INV_sclk~clkctrl_outclk\,
	d => \s|o~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|o\(3));

-- Location: LCCOMB_X21_Y16_N24
\s|o~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~3_combout\ = (\c|ctr[2]~2_combout\ & (!\c|ctr[5]~8_combout\ & (\c|ctr[4]~6_combout\ $ (!\c|ctr\(3))))) # (!\c|ctr[2]~2_combout\ & (!\c|ctr[4]~6_combout\ & (\c|ctr\(3) & \c|ctr[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr[2]~2_combout\,
	datab => \c|ctr[4]~6_combout\,
	datac => \c|ctr\(3),
	datad => \c|ctr[5]~8_combout\,
	combout => \s|o~3_combout\);

-- Location: LCCOMB_X21_Y16_N6
\s|o~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~4_combout\ = (\c|ctr\(3) & ((\c|ctr[4]~6_combout\ $ (!\c|ctr[5]~8_combout\)) # (!\c|ctr[2]~2_combout\))) # (!\c|ctr\(3) & (!\c|ctr[2]~2_combout\ & (\c|ctr[4]~6_combout\ $ (\c|ctr[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr\(3),
	datab => \c|ctr[4]~6_combout\,
	datac => \c|ctr[2]~2_combout\,
	datad => \c|ctr[5]~8_combout\,
	combout => \s|o~4_combout\);

-- Location: LCCOMB_X21_Y16_N10
\s|o~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~5_combout\ = \c|ctr\(1) $ (((\s|ctr~q\ & \c|ctr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s|ctr~q\,
	datac => \c|ctr\(0),
	datad => \c|ctr\(1),
	combout => \s|o~5_combout\);

-- Location: LCCOMB_X21_Y16_N18
\s|o~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~6_combout\ = (\s|ctr~q\ & (((!\s|o~5_combout\)))) # (!\s|ctr~q\ & (\s|o~4_combout\ $ (((\s|o~5_combout\) # (!\s|o~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o~3_combout\,
	datab => \s|o~4_combout\,
	datac => \s|ctr~q\,
	datad => \s|o~5_combout\,
	combout => \s|o~6_combout\);

-- Location: FF_X21_Y16_N19
\s|o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s|ALT_INV_sclk~clkctrl_outclk\,
	d => \s|o~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|o\(0));

-- Location: LCCOMB_X21_Y16_N20
\s|o~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~2_combout\ = (\c|ctr[2]~2_combout\ & ((\c|ctr[5]~8_combout\) # (\c|ctr[4]~6_combout\ $ (\c|ctr\(3))))) # (!\c|ctr[2]~2_combout\ & ((\c|ctr[4]~6_combout\) # ((!\c|ctr[5]~8_combout\) # (!\c|ctr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr[2]~2_combout\,
	datab => \c|ctr[4]~6_combout\,
	datac => \c|ctr\(3),
	datad => \c|ctr[5]~8_combout\,
	combout => \s|o~2_combout\);

-- Location: LCCOMB_X21_Y16_N12
\s|o~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~13_combout\ = (\s|ctr~q\ & (\c|ctr[2]~2_combout\ $ (((!\c|ctr\(3)))))) # (!\s|ctr~q\ & ((\c|ctr[5]~8_combout\ & ((\c|ctr\(3)))) # (!\c|ctr[5]~8_combout\ & (\c|ctr[2]~2_combout\ & !\c|ctr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr[2]~2_combout\,
	datab => \c|ctr[5]~8_combout\,
	datac => \s|ctr~q\,
	datad => \c|ctr\(3),
	combout => \s|o~13_combout\);

-- Location: LCCOMB_X21_Y16_N30
\s|o~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~15_combout\ = (\s|ctr~q\ & ((\c|ctr[2]~2_combout\) # ((\c|ctr[5]~8_combout\) # (\c|ctr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr[2]~2_combout\,
	datab => \c|ctr[5]~8_combout\,
	datac => \s|ctr~q\,
	datad => \c|ctr\(3),
	combout => \s|o~15_combout\);

-- Location: LCCOMB_X21_Y16_N26
\s|o~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~14_combout\ = (\c|ctr[5]~8_combout\ & (!\c|ctr\(3) & (\c|ctr[2]~2_combout\ $ (!\s|ctr~q\)))) # (!\c|ctr[5]~8_combout\ & (\s|ctr~q\ & ((\c|ctr\(3)) # (!\c|ctr[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr[2]~2_combout\,
	datab => \c|ctr[5]~8_combout\,
	datac => \s|ctr~q\,
	datad => \c|ctr\(3),
	combout => \s|o~14_combout\);

-- Location: LCCOMB_X21_Y16_N14
\s|o~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~7_combout\ = (\s|o~13_combout\ & ((\c|ctr[4]~6_combout\ & (!\s|o~15_combout\ & \s|o~14_combout\)) # (!\c|ctr[4]~6_combout\ & (\s|o~15_combout\ & !\s|o~14_combout\)))) # (!\s|o~13_combout\ & ((\c|ctr[4]~6_combout\) # ((\s|o~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o~13_combout\,
	datab => \c|ctr[4]~6_combout\,
	datac => \s|o~15_combout\,
	datad => \s|o~14_combout\,
	combout => \s|o~7_combout\);

-- Location: LCCOMB_X21_Y16_N0
\s|o~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~16_combout\ = \s|o~7_combout\ $ (((\s|o~2_combout\ & (\s|ctr~q\ & \c|ctr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o~2_combout\,
	datab => \s|o~7_combout\,
	datac => \s|ctr~q\,
	datad => \c|ctr\(1),
	combout => \s|o~16_combout\);

-- Location: FF_X21_Y16_N1
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

-- Location: LCCOMB_X22_Y16_N28
\gd|disp2[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gd|disp2[2]~1_combout\ = (\c|ctr\(1) & (\c|ctr[4]~6_combout\)) # (!\c|ctr\(1) & ((\c|ctr[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr[4]~6_combout\,
	datab => \c|ctr[2]~2_combout\,
	datac => \c|ctr\(1),
	combout => \gd|disp2[2]~1_combout\);

-- Location: LCCOMB_X22_Y16_N30
\gd|disp2[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gd|disp2[2]~0_combout\ = (\c|ctr\(3) & (\c|ctr[4]~6_combout\ $ ((\c|ctr[2]~2_combout\)))) # (!\c|ctr\(3) & (!\c|ctr\(1) & (\c|ctr[4]~6_combout\ $ (!\c|ctr[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr[4]~6_combout\,
	datab => \c|ctr[2]~2_combout\,
	datac => \c|ctr\(1),
	datad => \c|ctr\(3),
	combout => \gd|disp2[2]~0_combout\);

-- Location: LCCOMB_X22_Y16_N6
\gd|disp2[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gd|disp2[2]~2_combout\ = (\gd|disp2[2]~1_combout\ & ((\c|ctr[5]~8_combout\ $ (\gd|disp2[2]~0_combout\)))) # (!\gd|disp2[2]~1_combout\ & (\gd|disp2[2]~0_combout\ & ((\c|ctr[2]~2_combout\) # (!\c|ctr[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr[2]~2_combout\,
	datab => \gd|disp2[2]~1_combout\,
	datac => \c|ctr[5]~8_combout\,
	datad => \gd|disp2[2]~0_combout\,
	combout => \gd|disp2[2]~2_combout\);

-- Location: LCCOMB_X21_Y16_N2
\s|o~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~8_combout\ = (\c|ctr[5]~8_combout\ & (!\s|ctr~q\ & ((\c|ctr\(3)) # (!\c|ctr[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|ctr[5]~8_combout\,
	datab => \c|ctr[4]~6_combout\,
	datac => \c|ctr\(3),
	datad => \s|ctr~q\,
	combout => \s|o~8_combout\);

-- Location: LCCOMB_X22_Y16_N16
\s|o~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s|o~9_combout\ = (\s|o~8_combout\) # ((\gd|disp2[2]~2_combout\ & \s|ctr~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gd|disp2[2]~2_combout\,
	datac => \s|o~8_combout\,
	datad => \s|ctr~q\,
	combout => \s|o~9_combout\);

-- Location: FF_X22_Y16_N17
\s|o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s|ALT_INV_sclk~clkctrl_outclk\,
	d => \s|o~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s|o\(2));

-- Location: LCCOMB_X17_Y20_N4
\dd|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd|Mux6~0_combout\ = (\s|o\(1) & (!\s|o\(3) & ((!\s|o\(2)) # (!\s|o\(0))))) # (!\s|o\(1) & (\s|o\(3) $ (((\s|o\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o\(3),
	datab => \s|o\(0),
	datac => \s|o\(1),
	datad => \s|o\(2),
	combout => \dd|Mux6~0_combout\);

-- Location: LCCOMB_X17_Y20_N2
\dd|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd|Mux5~0_combout\ = (!\s|o\(3) & ((\s|o\(0) & ((\s|o\(1)) # (!\s|o\(2)))) # (!\s|o\(0) & (\s|o\(1) & !\s|o\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o\(3),
	datab => \s|o\(0),
	datac => \s|o\(1),
	datad => \s|o\(2),
	combout => \dd|Mux5~0_combout\);

-- Location: LCCOMB_X17_Y20_N8
\dd|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd|Mux4~0_combout\ = (\s|o\(1) & (!\s|o\(3) & (\s|o\(0)))) # (!\s|o\(1) & ((\s|o\(2) & (!\s|o\(3))) # (!\s|o\(2) & ((\s|o\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o\(3),
	datab => \s|o\(0),
	datac => \s|o\(1),
	datad => \s|o\(2),
	combout => \dd|Mux4~0_combout\);

-- Location: LCCOMB_X17_Y20_N10
\dd|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd|Mux3~0_combout\ = (!\s|o\(3) & ((\s|o\(0) & (\s|o\(1) $ (!\s|o\(2)))) # (!\s|o\(0) & (!\s|o\(1) & \s|o\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o\(3),
	datab => \s|o\(0),
	datac => \s|o\(1),
	datad => \s|o\(2),
	combout => \dd|Mux3~0_combout\);

-- Location: LCCOMB_X17_Y20_N0
\dd|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd|Mux2~0_combout\ = (!\s|o\(3) & (!\s|o\(0) & (\s|o\(1) & !\s|o\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o\(3),
	datab => \s|o\(0),
	datac => \s|o\(1),
	datad => \s|o\(2),
	combout => \dd|Mux2~0_combout\);

-- Location: LCCOMB_X17_Y20_N22
\dd|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd|Mux1~0_combout\ = (!\s|o\(3) & (\s|o\(2) & (\s|o\(0) $ (\s|o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o\(3),
	datab => \s|o\(0),
	datac => \s|o\(1),
	datad => \s|o\(2),
	combout => \dd|Mux1~0_combout\);

-- Location: LCCOMB_X17_Y20_N12
\dd|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd|Mux0~0_combout\ = (\s|o\(1) & (\s|o\(3))) # (!\s|o\(1) & (\s|o\(2) $ (((!\s|o\(3) & \s|o\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|o\(3),
	datab => \s|o\(0),
	datac => \s|o\(1),
	datad => \s|o\(2),
	combout => \dd|Mux0~0_combout\);

-- Location: LCCOMB_X21_Y16_N16
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

-- Location: FF_X21_Y16_N17
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

-- Location: FF_X21_Y16_N27
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

-- Location: IOIBUF_X34_Y12_N22
\control[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(3),
	o => \control[3]~input_o\);

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


