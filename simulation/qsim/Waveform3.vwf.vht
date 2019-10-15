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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/15/2019 14:21:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          top
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY top_vhd_vec_tst IS
END top_vhd_vec_tst;
ARCHITECTURE top_arch OF top_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL control : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dec : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL led : STD_LOGIC;
SIGNAL seg : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT top
	PORT (
	clock : IN STD_LOGIC;
	control : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	dec : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	led : BUFFER STD_LOGIC;
	seg : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : top
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	control => control,
	dec => dec,
	led => led,
	seg => seg
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
-- control[3]
t_prcs_control_3: PROCESS
BEGIN
	control(3) <= '0';
WAIT;
END PROCESS t_prcs_control_3;
-- control[2]
t_prcs_control_2: PROCESS
BEGIN
	control(2) <= '0';
WAIT;
END PROCESS t_prcs_control_2;
-- control[1]
t_prcs_control_1: PROCESS
BEGIN
	control(1) <= '1';
	WAIT FOR 400000 ps;
	control(1) <= '0';
	WAIT FOR 400000 ps;
	control(1) <= '1';
WAIT;
END PROCESS t_prcs_control_1;
-- control[0]
t_prcs_control_0: PROCESS
BEGIN
	control(0) <= '0';
WAIT;
END PROCESS t_prcs_control_0;
END top_arch;
