-- Copyright (C) 1991-2010 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"

-- DATE "06/10/2018 22:32:22"

-- 
-- Device: Altera EP2C5T144C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cla16 IS
    PORT (
	a : IN std_logic_vector(15 DOWNTO 0);
	b : IN std_logic_vector(15 DOWNTO 0);
	cin : IN std_logic;
	s : OUT std_logic_vector(15 DOWNTO 0);
	cout : OUT std_logic;
	p : BUFFER std_logic;
	g : BUFFER std_logic
	);
END cla16;

-- Design Ports Information
-- s[0]	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[1]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[2]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[3]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[4]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[5]	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[6]	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[7]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[8]	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[9]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[10]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[11]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[12]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[13]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[14]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[15]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cout	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- p	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- g	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cin	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[4]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[4]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[5]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[5]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[6]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[6]	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[7]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[7]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[8]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[8]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[9]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[9]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[10]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[10]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[11]	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[11]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[12]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[12]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[13]	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[13]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[14]	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[14]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[15]	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[15]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default

ARCHITECTURE structure OF cla16 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_cin : std_logic;
SIGNAL ww_s : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL ww_p : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL \somador4_1|somador_3|p~combout\ : std_logic;
SIGNAL \somador4_2|carry|gg~0_combout\ : std_logic;
SIGNAL \somador4_3|carry|c~6_combout\ : std_logic;
SIGNAL \cin~combout\ : std_logic;
SIGNAL \somador4_0|somador_0|s~combout\ : std_logic;
SIGNAL \somador4_0|somador_1|p~combout\ : std_logic;
SIGNAL \somador4_0|somador_1|s~combout\ : std_logic;
SIGNAL \somador4_0|somador_2|p~combout\ : std_logic;
SIGNAL \somador4_0|carry|c~0_combout\ : std_logic;
SIGNAL \somador4_0|carry|c~1_combout\ : std_logic;
SIGNAL \somador4_0|somador_2|s~combout\ : std_logic;
SIGNAL \somador4_0|somador_3|p~combout\ : std_logic;
SIGNAL \somador4_0|carry|c~4_combout\ : std_logic;
SIGNAL \somador4_0|carry|c[3]~3_combout\ : std_logic;
SIGNAL \somador4_0|carry|c[3]~2_combout\ : std_logic;
SIGNAL \somador4_0|somador_3|s~combout\ : std_logic;
SIGNAL \somador4_0|carry|gg~0_combout\ : std_logic;
SIGNAL \somador4_0|carry|c~5_combout\ : std_logic;
SIGNAL \somador4_0|carry|gg~1_combout\ : std_logic;
SIGNAL \carry|c~4_combout\ : std_logic;
SIGNAL \carry|c~5_combout\ : std_logic;
SIGNAL \somador4_1|somador_0|s~combout\ : std_logic;
SIGNAL \somador4_1|carry|c[1]~2_combout\ : std_logic;
SIGNAL \somador4_1|somador_1|s~combout\ : std_logic;
SIGNAL \somador4_1|carry|c~4_combout\ : std_logic;
SIGNAL \somador4_1|somador_2|s~combout\ : std_logic;
SIGNAL \somador4_1|somador_2|p~combout\ : std_logic;
SIGNAL \somador4_1|carry|c~5_combout\ : std_logic;
SIGNAL \somador4_1|carry|c~3_combout\ : std_logic;
SIGNAL \somador4_1|carry|c[3]~8_combout\ : std_logic;
SIGNAL \somador4_1|somador_3|s~combout\ : std_logic;
SIGNAL \somador4_1|carry|pg~4_combout\ : std_logic;
SIGNAL \somador4_1|carry|gg~0_combout\ : std_logic;
SIGNAL \somador4_1|carry|c~6_combout\ : std_logic;
SIGNAL \somador4_1|carry|gg~1_combout\ : std_logic;
SIGNAL \carry|c~6_combout\ : std_logic;
SIGNAL \carry|c~7_combout\ : std_logic;
SIGNAL \somador4_2|somador_0|s~combout\ : std_logic;
SIGNAL \somador4_2|carry|c[1]~2_combout\ : std_logic;
SIGNAL \somador4_2|somador_1|s~combout\ : std_logic;
SIGNAL \somador4_2|carry|c~3_combout\ : std_logic;
SIGNAL \somador4_2|somador_2|p~combout\ : std_logic;
SIGNAL \somador4_2|carry|c~4_combout\ : std_logic;
SIGNAL \somador4_2|somador_2|s~combout\ : std_logic;
SIGNAL \somador4_2|carry|c~5_combout\ : std_logic;
SIGNAL \somador4_2|carry|c[3]~8_combout\ : std_logic;
SIGNAL \somador4_2|somador_3|s~combout\ : std_logic;
SIGNAL \somador4_2|carry|c~6_combout\ : std_logic;
SIGNAL \somador4_2|somador_3|p~combout\ : std_logic;
SIGNAL \somador4_2|carry|gg~1_combout\ : std_logic;
SIGNAL \carry|c~8_combout\ : std_logic;
SIGNAL \somador4_3|somador_0|s~combout\ : std_logic;
SIGNAL \somador4_3|somador_1|s~0_combout\ : std_logic;
SIGNAL \somador4_3|somador_1|s~1_combout\ : std_logic;
SIGNAL \carry|c~9_combout\ : std_logic;
SIGNAL \somador4_3|somador_1|s~combout\ : std_logic;
SIGNAL \somador4_3|somador_2|p~combout\ : std_logic;
SIGNAL \somador4_3|carry|c~5_combout\ : std_logic;
SIGNAL \somador4_3|carry|c~4_combout\ : std_logic;
SIGNAL \somador4_3|somador_2|s~combout\ : std_logic;
SIGNAL \somador4_3|carry|c[3]~9_combout\ : std_logic;
SIGNAL \somador4_3|carry|c~7_combout\ : std_logic;
SIGNAL \somador4_3|somador_3|p~combout\ : std_logic;
SIGNAL \somador4_3|somador_3|s~combout\ : std_logic;
SIGNAL \somador4_3|carry|pg~4_combout\ : std_logic;
SIGNAL \carry|c~10_combout\ : std_logic;
SIGNAL \carry|c~11_combout\ : std_logic;
SIGNAL \carry|c~12_combout\ : std_logic;
SIGNAL \carry|c[4]~13_combout\ : std_logic;
SIGNAL \somador4_2|carry|pg~0_combout\ : std_logic;
SIGNAL \carry|c[4]~14_combout\ : std_logic;
SIGNAL \carry|pg~0_combout\ : std_logic;
SIGNAL \carry|gg~0_combout\ : std_logic;
SIGNAL \a~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \carry|c\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \somador4_1|carry|c\ : std_logic_vector(4 DOWNTO 1);

BEGIN

ww_a <= a;
ww_b <= b;
ww_cin <= cin;
s <= ww_s;
cout <= ww_cout;
p <= ww_p;
g <= ww_g;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X27_Y10_N24
\somador4_1|somador_3|p\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_1|somador_3|p~combout\ = \b~combout\(7) $ (\a~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(7),
	datad => \a~combout\(7),
	combout => \somador4_1|somador_3|p~combout\);

-- Location: LCCOMB_X25_Y9_N24
\somador4_2|carry|gg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_2|carry|gg~0_combout\ = (\a~combout\(9) & ((\b~combout\(9)) # ((\a~combout\(8) & \b~combout\(8))))) # (!\a~combout\(9) & (\a~combout\(8) & (\b~combout\(8) & \b~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(9),
	datab => \a~combout\(8),
	datac => \b~combout\(8),
	datad => \b~combout\(9),
	combout => \somador4_2|carry|gg~0_combout\);

-- Location: LCCOMB_X25_Y11_N16
\somador4_3|carry|c~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_3|carry|c~6_combout\ = (\a~combout\(15) & ((\b~combout\(15)) # ((\b~combout\(14) & \a~combout\(14))))) # (!\a~combout\(15) & (\b~combout\(14) & (\a~combout\(14) & \b~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(14),
	datab => \a~combout\(15),
	datac => \a~combout\(14),
	datad => \b~combout\(15),
	combout => \somador4_3|carry|c~6_combout\);

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cin~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_cin,
	combout => \cin~combout\);

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: LCCOMB_X27_Y5_N0
\somador4_0|somador_0|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_0|somador_0|s~combout\ = \b~combout\(0) $ (\cin~combout\ $ (\a~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(0),
	datac => \cin~combout\,
	datad => \a~combout\(0),
	combout => \somador4_0|somador_0|s~combout\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: LCCOMB_X27_Y5_N18
\somador4_0|somador_1|p\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_0|somador_1|p~combout\ = \a~combout\(1) $ (\b~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(1),
	datad => \b~combout\(1),
	combout => \somador4_0|somador_1|p~combout\);

-- Location: LCCOMB_X27_Y5_N28
\somador4_0|somador_1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_0|somador_1|s~combout\ = \somador4_0|somador_1|p~combout\ $ (((\b~combout\(0) & ((\cin~combout\) # (\a~combout\(0)))) # (!\b~combout\(0) & (\cin~combout\ & \a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador4_0|somador_1|p~combout\,
	datab => \b~combout\(0),
	datac => \cin~combout\,
	datad => \a~combout\(0),
	combout => \somador4_0|somador_1|s~combout\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: LCCOMB_X27_Y5_N10
\somador4_0|somador_2|p\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_0|somador_2|p~combout\ = \a~combout\(2) $ (\b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(2),
	datad => \b~combout\(2),
	combout => \somador4_0|somador_2|p~combout\);

-- Location: LCCOMB_X27_Y5_N30
\somador4_0|carry|c~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_0|carry|c~0_combout\ = (\cin~combout\ & (\b~combout\(0) $ (\a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(0),
	datac => \cin~combout\,
	datad => \a~combout\(0),
	combout => \somador4_0|carry|c~0_combout\);

-- Location: LCCOMB_X27_Y5_N24
\somador4_0|carry|c~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_0|carry|c~1_combout\ = (\b~combout\(1) & ((\a~combout\(1)) # ((\b~combout\(0) & \a~combout\(0))))) # (!\b~combout\(1) & (\b~combout\(0) & (\a~combout\(1) & \a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \b~combout\(0),
	datac => \a~combout\(1),
	datad => \a~combout\(0),
	combout => \somador4_0|carry|c~1_combout\);

-- Location: LCCOMB_X27_Y5_N12
\somador4_0|somador_2|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_0|somador_2|s~combout\ = \somador4_0|somador_2|p~combout\ $ (((\somador4_0|carry|c~1_combout\) # ((\somador4_0|carry|c~0_combout\ & \somador4_0|somador_1|p~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador4_0|somador_2|p~combout\,
	datab => \somador4_0|carry|c~0_combout\,
	datac => \somador4_0|carry|c~1_combout\,
	datad => \somador4_0|somador_1|p~combout\,
	combout => \somador4_0|somador_2|s~combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LCCOMB_X27_Y5_N20
\somador4_0|somador_3|p\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_0|somador_3|p~combout\ = \b~combout\(3) $ (\a~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(3),
	datad => \a~combout\(3),
	combout => \somador4_0|somador_3|p~combout\);

-- Location: LCCOMB_X27_Y5_N26
\somador4_0|carry|c~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_0|carry|c~4_combout\ = (\b~combout\(2) & ((\a~combout\(2)) # ((\a~combout\(1) & \b~combout\(1))))) # (!\b~combout\(2) & (\a~combout\(1) & (\a~combout\(2) & \b~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \a~combout\(1),
	datac => \a~combout\(2),
	datad => \b~combout\(1),
	combout => \somador4_0|carry|c~4_combout\);

-- Location: LCCOMB_X27_Y5_N8
\somador4_0|carry|c[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_0|carry|c[3]~3_combout\ = (\b~combout\(2) & (!\a~combout\(2) & (\a~combout\(1) $ (\b~combout\(1))))) # (!\b~combout\(2) & (\a~combout\(2) & (\a~combout\(1) $ (\b~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \a~combout\(1),
	datac => \a~combout\(2),
	datad => \b~combout\(1),
	combout => \somador4_0|carry|c[3]~3_combout\);

-- Location: LCCOMB_X27_Y5_N22
\somador4_0|carry|c[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_0|carry|c[3]~2_combout\ = (\b~combout\(0) & ((\cin~combout\) # (\a~combout\(0)))) # (!\b~combout\(0) & (\cin~combout\ & \a~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(0),
	datac => \cin~combout\,
	datad => \a~combout\(0),
	combout => \somador4_0|carry|c[3]~2_combout\);

-- Location: LCCOMB_X27_Y5_N14
\somador4_0|somador_3|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_0|somador_3|s~combout\ = \somador4_0|somador_3|p~combout\ $ (((\somador4_0|carry|c~4_combout\) # ((\somador4_0|carry|c[3]~3_combout\ & \somador4_0|carry|c[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador4_0|somador_3|p~combout\,
	datab => \somador4_0|carry|c~4_combout\,
	datac => \somador4_0|carry|c[3]~3_combout\,
	datad => \somador4_0|carry|c[3]~2_combout\,
	combout => \somador4_0|somador_3|s~combout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(4),
	combout => \b~combout\(4));

-- Location: LCCOMB_X27_Y5_N2
\somador4_0|carry|gg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_0|carry|gg~0_combout\ = (\b~combout\(1) & ((\a~combout\(1)) # ((\b~combout\(0) & \a~combout\(0))))) # (!\b~combout\(1) & (\b~combout\(0) & (\a~combout\(1) & \a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \b~combout\(0),
	datac => \a~combout\(1),
	datad => \a~combout\(0),
	combout => \somador4_0|carry|gg~0_combout\);

-- Location: LCCOMB_X27_Y5_N16
\somador4_0|carry|c~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_0|carry|c~5_combout\ = (\b~combout\(3) & ((\a~combout\(3)) # ((\b~combout\(2) & \a~combout\(2))))) # (!\b~combout\(3) & (\b~combout\(2) & (\a~combout\(2) & \a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \b~combout\(3),
	datac => \a~combout\(2),
	datad => \a~combout\(3),
	combout => \somador4_0|carry|c~5_combout\);

-- Location: LCCOMB_X27_Y5_N4
\somador4_0|carry|gg~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_0|carry|gg~1_combout\ = (\somador4_0|carry|c~5_combout\) # ((\somador4_0|somador_3|p~combout\ & (\somador4_0|carry|gg~0_combout\ & \somador4_0|somador_2|p~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador4_0|somador_3|p~combout\,
	datab => \somador4_0|carry|gg~0_combout\,
	datac => \somador4_0|carry|c~5_combout\,
	datad => \somador4_0|somador_2|p~combout\,
	combout => \somador4_0|carry|gg~1_combout\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(4),
	combout => \a~combout\(4));

-- Location: LCCOMB_X27_Y5_N6
\carry|c~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \carry|c~4_combout\ = (\somador4_0|somador_3|p~combout\ & (\somador4_0|carry|c[3]~3_combout\ & (\b~combout\(0) $ (\a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador4_0|somador_3|p~combout\,
	datab => \b~combout\(0),
	datac => \somador4_0|carry|c[3]~3_combout\,
	datad => \a~combout\(0),
	combout => \carry|c~4_combout\);

-- Location: LCCOMB_X26_Y10_N16
\carry|c~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \carry|c~5_combout\ = (\carry|c~4_combout\ & \cin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \carry|c~4_combout\,
	datad => \cin~combout\,
	combout => \carry|c~5_combout\);

-- Location: LCCOMB_X27_Y10_N16
\somador4_1|somador_0|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_1|somador_0|s~combout\ = \b~combout\(4) $ (\a~combout\(4) $ (((\somador4_0|carry|gg~1_combout\) # (\carry|c~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datab => \somador4_0|carry|gg~1_combout\,
	datac => \a~combout\(4),
	datad => \carry|c~5_combout\,
	combout => \somador4_1|somador_0|s~combout\);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(5),
	combout => \a~combout\(5));

-- Location: LCCOMB_X27_Y10_N26
\somador4_1|carry|c[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_1|carry|c[1]~2_combout\ = (\b~combout\(4) & ((\somador4_0|carry|gg~1_combout\) # ((\a~combout\(4)) # (\carry|c~5_combout\)))) # (!\b~combout\(4) & (\a~combout\(4) & ((\somador4_0|carry|gg~1_combout\) # (\carry|c~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datab => \somador4_0|carry|gg~1_combout\,
	datac => \a~combout\(4),
	datad => \carry|c~5_combout\,
	combout => \somador4_1|carry|c[1]~2_combout\);

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(5),
	combout => \b~combout\(5));

-- Location: LCCOMB_X27_Y10_N28
\somador4_1|somador_1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_1|somador_1|s~combout\ = \a~combout\(5) $ (\somador4_1|carry|c[1]~2_combout\ $ (\b~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(5),
	datac => \somador4_1|carry|c[1]~2_combout\,
	datad => \b~combout\(5),
	combout => \somador4_1|somador_1|s~combout\);

-- Location: LCCOMB_X27_Y10_N18
\somador4_1|carry|c~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_1|carry|c~4_combout\ = (\b~combout\(4) & (!\a~combout\(4) & (\a~combout\(5) $ (\b~combout\(5))))) # (!\b~combout\(4) & (\a~combout\(4) & (\a~combout\(5) $ (\b~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datab => \a~combout\(5),
	datac => \a~combout\(4),
	datad => \b~combout\(5),
	combout => \somador4_1|carry|c~4_combout\);

-- Location: LCCOMB_X27_Y10_N12
\somador4_1|carry|c[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_1|carry|c\(2) = (\somador4_1|carry|c~3_combout\) # ((\somador4_1|carry|c~4_combout\ & ((\somador4_0|carry|gg~1_combout\) # (\carry|c~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador4_1|carry|c~3_combout\,
	datab => \somador4_1|carry|c~4_combout\,
	datac => \somador4_0|carry|gg~1_combout\,
	datad => \carry|c~5_combout\,
	combout => \somador4_1|carry|c\(2));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(6),
	combout => \a~combout\(6));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(6),
	combout => \b~combout\(6));

-- Location: LCCOMB_X27_Y10_N8
\somador4_1|somador_2|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_1|somador_2|s~combout\ = \somador4_1|carry|c\(2) $ (\a~combout\(6) $ (\b~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador4_1|carry|c\(2),
	datac => \a~combout\(6),
	datad => \b~combout\(6),
	combout => \somador4_1|somador_2|s~combout\);

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(7),
	combout => \b~combout\(7));

-- Location: LCCOMB_X27_Y10_N30
\somador4_1|somador_2|p\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_1|somador_2|p~combout\ = \a~combout\(6) $ (\b~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(6),
	datad => \b~combout\(6),
	combout => \somador4_1|somador_2|p~combout\);

-- Location: LCCOMB_X27_Y10_N22
\somador4_1|carry|c~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_1|carry|c~5_combout\ = (\somador4_1|carry|c~4_combout\ & (\somador4_1|somador_2|p~combout\ & ((\carry|c~5_combout\) # (\somador4_0|carry|gg~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador4_1|carry|c~4_combout\,
	datab => \carry|c~5_combout\,
	datac => \somador4_0|carry|gg~1_combout\,
	datad => \somador4_1|somador_2|p~combout\,
	combout => \somador4_1|carry|c~5_combout\);

-- Location: LCCOMB_X27_Y10_N0
\somador4_1|carry|c~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_1|carry|c~3_combout\ = (\a~combout\(5) & ((\b~combout\(5)) # ((\b~combout\(4) & \a~combout\(4))))) # (!\a~combout\(5) & (\b~combout\(4) & (\a~combout\(4) & \b~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datab => \a~combout\(5),
	datac => \a~combout\(4),
	datad => \b~combout\(5),
	combout => \somador4_1|carry|c~3_combout\);

-- Location: LCCOMB_X27_Y10_N14
\somador4_1|carry|c[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_1|carry|c[3]~8_combout\ = (\somador4_1|carry|c~3_combout\ & ((\a~combout\(6)) # (\b~combout\(6)))) # (!\somador4_1|carry|c~3_combout\ & (\a~combout\(6) & \b~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \somador4_1|carry|c~3_combout\,
	datac => \a~combout\(6),
	datad => \b~combout\(6),
	combout => \somador4_1|carry|c[3]~8_combout\);

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(7),
	combout => \a~combout\(7));

-- Location: LCCOMB_X27_Y10_N2
\somador4_1|somador_3|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_1|somador_3|s~combout\ = \b~combout\(7) $ (\a~combout\(7) $ (((\somador4_1|carry|c~5_combout\) # (\somador4_1|carry|c[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(7),
	datab => \somador4_1|carry|c~5_combout\,
	datac => \somador4_1|carry|c[3]~8_combout\,
	datad => \a~combout\(7),
	combout => \somador4_1|somador_3|s~combout\);

-- Location: LCCOMB_X27_Y10_N20
\somador4_1|carry|pg~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_1|carry|pg~4_combout\ = (\somador4_1|somador_3|p~combout\ & (\somador4_1|carry|c~4_combout\ & (\a~combout\(6) $ (\b~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador4_1|somador_3|p~combout\,
	datab => \somador4_1|carry|c~4_combout\,
	datac => \a~combout\(6),
	datad => \b~combout\(6),
	combout => \somador4_1|carry|pg~4_combout\);

-- Location: LCCOMB_X27_Y10_N4
\somador4_1|carry|gg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_1|carry|gg~0_combout\ = (\a~combout\(5) & ((\b~combout\(5)) # ((\b~combout\(4) & \a~combout\(4))))) # (!\a~combout\(5) & (\b~combout\(4) & (\a~combout\(4) & \b~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datab => \a~combout\(5),
	datac => \a~combout\(4),
	datad => \b~combout\(5),
	combout => \somador4_1|carry|gg~0_combout\);

-- Location: LCCOMB_X27_Y10_N10
\somador4_1|carry|c~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_1|carry|c~6_combout\ = (\b~combout\(7) & ((\a~combout\(7)) # ((\a~combout\(6) & \b~combout\(6))))) # (!\b~combout\(7) & (\a~combout\(7) & (\a~combout\(6) & \b~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(7),
	datab => \a~combout\(7),
	datac => \a~combout\(6),
	datad => \b~combout\(6),
	combout => \somador4_1|carry|c~6_combout\);

-- Location: LCCOMB_X27_Y10_N6
\somador4_1|carry|gg~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_1|carry|gg~1_combout\ = (\somador4_1|carry|c~6_combout\) # ((\somador4_1|somador_3|p~combout\ & (\somador4_1|somador_2|p~combout\ & \somador4_1|carry|gg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador4_1|somador_3|p~combout\,
	datab => \somador4_1|somador_2|p~combout\,
	datac => \somador4_1|carry|gg~0_combout\,
	datad => \somador4_1|carry|c~6_combout\,
	combout => \somador4_1|carry|gg~1_combout\);

-- Location: LCCOMB_X25_Y9_N8
\carry|c~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \carry|c~6_combout\ = (\somador4_1|carry|gg~1_combout\) # ((\somador4_0|carry|gg~1_combout\ & \somador4_1|carry|pg~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador4_0|carry|gg~1_combout\,
	datab => \somador4_1|carry|pg~4_combout\,
	datad => \somador4_1|carry|gg~1_combout\,
	combout => \carry|c~6_combout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(8),
	combout => \a~combout\(8));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(8),
	combout => \b~combout\(8));

-- Location: LCCOMB_X25_Y9_N26
\carry|c~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \carry|c~7_combout\ = (\carry|c~4_combout\ & (\somador4_1|carry|pg~4_combout\ & \cin~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry|c~4_combout\,
	datab => \somador4_1|carry|pg~4_combout\,
	datad => \cin~combout\,
	combout => \carry|c~7_combout\);

-- Location: LCCOMB_X25_Y9_N12
\somador4_2|somador_0|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_2|somador_0|s~combout\ = \a~combout\(8) $ (\b~combout\(8) $ (((\carry|c~6_combout\) # (\carry|c~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry|c~6_combout\,
	datab => \a~combout\(8),
	datac => \b~combout\(8),
	datad => \carry|c~7_combout\,
	combout => \somador4_2|somador_0|s~combout\);

-- Location: LCCOMB_X25_Y9_N6
\somador4_2|carry|c[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_2|carry|c[1]~2_combout\ = (\a~combout\(8) & ((\carry|c~6_combout\) # ((\b~combout\(8)) # (\carry|c~7_combout\)))) # (!\a~combout\(8) & (\b~combout\(8) & ((\carry|c~6_combout\) # (\carry|c~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry|c~6_combout\,
	datab => \a~combout\(8),
	datac => \b~combout\(8),
	datad => \carry|c~7_combout\,
	combout => \somador4_2|carry|c[1]~2_combout\);

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(9),
	combout => \b~combout\(9));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(9),
	combout => \a~combout\(9));

-- Location: LCCOMB_X25_Y9_N16
\somador4_2|somador_1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_2|somador_1|s~combout\ = \somador4_2|carry|c[1]~2_combout\ $ (\b~combout\(9) $ (\a~combout\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador4_2|carry|c[1]~2_combout\,
	datab => \b~combout\(9),
	datad => \a~combout\(9),
	combout => \somador4_2|somador_1|s~combout\);

-- Location: LCCOMB_X25_Y9_N10
\somador4_2|carry|c~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_2|carry|c~3_combout\ = (\a~combout\(9) & (!\b~combout\(9) & (\a~combout\(8) $ (\b~combout\(8))))) # (!\a~combout\(9) & (\b~combout\(9) & (\a~combout\(8) $ (\b~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(9),
	datab => \a~combout\(8),
	datac => \b~combout\(8),
	datad => \b~combout\(9),
	combout => \somador4_2|carry|c~3_combout\);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(10),
	combout => \b~combout\(10));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(10),
	combout => \a~combout\(10));

-- Location: LCCOMB_X25_Y9_N30
\somador4_2|somador_2|p\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_2|somador_2|p~combout\ = \b~combout\(10) $ (\a~combout\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(10),
	datad => \a~combout\(10),
	combout => \somador4_2|somador_2|p~combout\);

-- Location: LCCOMB_X25_Y9_N20
\somador4_2|carry|c~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_2|carry|c~4_combout\ = (\a~combout\(9) & ((\b~combout\(9)) # ((\a~combout\(8) & \b~combout\(8))))) # (!\a~combout\(9) & (\a~combout\(8) & (\b~combout\(8) & \b~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(9),
	datab => \a~combout\(8),
	datac => \b~combout\(8),
	datad => \b~combout\(9),
	combout => \somador4_2|carry|c~4_combout\);

-- Location: LCCOMB_X25_Y9_N28
\carry|c[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \carry|c\(2) = (\carry|c~7_combout\) # ((\somador4_1|carry|gg~1_combout\) # ((\somador4_0|carry|gg~1_combout\ & \somador4_1|carry|pg~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador4_0|carry|gg~1_combout\,
	datab => \somador4_1|carry|pg~4_combout\,
	datac => \carry|c~7_combout\,
	datad => \somador4_1|carry|gg~1_combout\,
	combout => \carry|c\(2));

-- Location: LCCOMB_X25_Y9_N0
\somador4_2|somador_2|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_2|somador_2|s~combout\ = \somador4_2|somador_2|p~combout\ $ (((\somador4_2|carry|c~4_combout\) # ((\somador4_2|carry|c~3_combout\ & \carry|c\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador4_2|carry|c~3_combout\,
	datab => \somador4_2|somador_2|p~combout\,
	datac => \somador4_2|carry|c~4_combout\,
	datad => \carry|c\(2),
	combout => \somador4_2|somador_2|s~combout\);

-- Location: LCCOMB_X25_Y9_N18
\somador4_2|carry|c~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_2|carry|c~5_combout\ = (\somador4_2|carry|c~3_combout\ & (\somador4_2|somador_2|p~combout\ & ((\carry|c~6_combout\) # (\carry|c~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador4_2|carry|c~3_combout\,
	datab => \somador4_2|somador_2|p~combout\,
	datac => \carry|c~6_combout\,
	datad => \carry|c~7_combout\,
	combout => \somador4_2|carry|c~5_combout\);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(11),
	combout => \b~combout\(11));

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(11),
	combout => \a~combout\(11));

-- Location: LCCOMB_X25_Y9_N22
\somador4_2|carry|c[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_2|carry|c[3]~8_combout\ = (\somador4_2|carry|c~4_combout\ & ((\b~combout\(10)) # (\a~combout\(10)))) # (!\somador4_2|carry|c~4_combout\ & (\b~combout\(10) & \a~combout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador4_2|carry|c~4_combout\,
	datac => \b~combout\(10),
	datad => \a~combout\(10),
	combout => \somador4_2|carry|c[3]~8_combout\);

-- Location: LCCOMB_X25_Y8_N10
\somador4_2|somador_3|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_2|somador_3|s~combout\ = \b~combout\(11) $ (\a~combout\(11) $ (((\somador4_2|carry|c~5_combout\) # (\somador4_2|carry|c[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador4_2|carry|c~5_combout\,
	datab => \b~combout\(11),
	datac => \a~combout\(11),
	datad => \somador4_2|carry|c[3]~8_combout\,
	combout => \somador4_2|somador_3|s~combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(12),
	combout => \b~combout\(12));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(12),
	combout => \a~combout\(12));

-- Location: LCCOMB_X25_Y9_N14
\somador4_2|carry|c~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_2|carry|c~6_combout\ = (\b~combout\(11) & ((\a~combout\(11)) # ((\b~combout\(10) & \a~combout\(10))))) # (!\b~combout\(11) & (\b~combout\(10) & (\a~combout\(11) & \a~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(10),
	datab => \b~combout\(11),
	datac => \a~combout\(11),
	datad => \a~combout\(10),
	combout => \somador4_2|carry|c~6_combout\);

-- Location: LCCOMB_X25_Y8_N0
\somador4_2|somador_3|p\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_2|somador_3|p~combout\ = \b~combout\(11) $ (\a~combout\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(11),
	datac => \a~combout\(11),
	combout => \somador4_2|somador_3|p~combout\);

-- Location: LCCOMB_X25_Y9_N2
\somador4_2|carry|gg~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_2|carry|gg~1_combout\ = (\somador4_2|carry|c~6_combout\) # ((\somador4_2|carry|gg~0_combout\ & (\somador4_2|somador_2|p~combout\ & \somador4_2|somador_3|p~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador4_2|carry|gg~0_combout\,
	datab => \somador4_2|somador_2|p~combout\,
	datac => \somador4_2|carry|c~6_combout\,
	datad => \somador4_2|somador_3|p~combout\,
	combout => \somador4_2|carry|gg~1_combout\);

-- Location: LCCOMB_X26_Y10_N26
\carry|c~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \carry|c~8_combout\ = (\somador4_2|carry|pg~0_combout\ & (\somador4_1|carry|pg~4_combout\ & (\carry|c~4_combout\ & \cin~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador4_2|carry|pg~0_combout\,
	datab => \somador4_1|carry|pg~4_combout\,
	datac => \carry|c~4_combout\,
	datad => \cin~combout\,
	combout => \carry|c~8_combout\);

-- Location: LCCOMB_X26_Y10_N22
\carry|c[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \carry|c\(3) = (\carry|c~9_combout\) # ((\somador4_2|carry|gg~1_combout\) # (\carry|c~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry|c~9_combout\,
	datac => \somador4_2|carry|gg~1_combout\,
	datad => \carry|c~8_combout\,
	combout => \carry|c\(3));

-- Location: LCCOMB_X26_Y10_N8
\somador4_3|somador_0|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_3|somador_0|s~combout\ = \b~combout\(12) $ (\a~combout\(12) $ (\carry|c\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(12),
	datac => \a~combout\(12),
	datad => \carry|c\(3),
	combout => \somador4_3|somador_0|s~combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(13),
	combout => \a~combout\(13));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(13),
	combout => \b~combout\(13));

-- Location: LCCOMB_X26_Y10_N18
\somador4_3|somador_1|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_3|somador_1|s~0_combout\ = \a~combout\(13) $ (\b~combout\(13) $ (((\a~combout\(12)) # (\b~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(12),
	datab => \a~combout\(13),
	datac => \b~combout\(12),
	datad => \b~combout\(13),
	combout => \somador4_3|somador_1|s~0_combout\);

-- Location: LCCOMB_X26_Y10_N28
\somador4_3|somador_1|s~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_3|somador_1|s~1_combout\ = (\somador4_2|carry|gg~1_combout\) # (\b~combout\(12) $ (!\a~combout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador4_2|carry|gg~1_combout\,
	datab => \b~combout\(12),
	datac => \a~combout\(12),
	combout => \somador4_3|somador_1|s~1_combout\);

-- Location: LCCOMB_X26_Y10_N20
\carry|c~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \carry|c~9_combout\ = (\somador4_2|carry|pg~0_combout\ & ((\somador4_1|carry|gg~1_combout\) # ((\somador4_1|carry|pg~4_combout\ & \somador4_0|carry|gg~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador4_2|carry|pg~0_combout\,
	datab => \somador4_1|carry|pg~4_combout\,
	datac => \somador4_0|carry|gg~1_combout\,
	datad => \somador4_1|carry|gg~1_combout\,
	combout => \carry|c~9_combout\);

-- Location: LCCOMB_X26_Y10_N14
\somador4_3|somador_1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_3|somador_1|s~combout\ = \somador4_3|somador_1|s~0_combout\ $ (((!\somador4_3|somador_1|s~1_combout\ & (!\carry|c~9_combout\ & !\carry|c~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador4_3|somador_1|s~0_combout\,
	datab => \somador4_3|somador_1|s~1_combout\,
	datac => \carry|c~9_combout\,
	datad => \carry|c~8_combout\,
	combout => \somador4_3|somador_1|s~combout\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(14),
	combout => \a~combout\(14));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(14),
	combout => \b~combout\(14));

-- Location: LCCOMB_X25_Y11_N0
\somador4_3|somador_2|p\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_3|somador_2|p~combout\ = \a~combout\(14) $ (\b~combout\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(14),
	datad => \b~combout\(14),
	combout => \somador4_3|somador_2|p~combout\);

-- Location: LCCOMB_X26_Y10_N10
\somador4_3|carry|c~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_3|carry|c~5_combout\ = (\a~combout\(13) & ((\b~combout\(13)) # ((\a~combout\(12) & \b~combout\(12))))) # (!\a~combout\(13) & (\a~combout\(12) & (\b~combout\(12) & \b~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(12),
	datab => \a~combout\(13),
	datac => \b~combout\(12),
	datad => \b~combout\(13),
	combout => \somador4_3|carry|c~5_combout\);

-- Location: LCCOMB_X26_Y10_N0
\somador4_3|carry|c~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_3|carry|c~4_combout\ = (\a~combout\(12) & (!\b~combout\(12) & (\a~combout\(13) $ (\b~combout\(13))))) # (!\a~combout\(12) & (\b~combout\(12) & (\a~combout\(13) $ (\b~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(12),
	datab => \a~combout\(13),
	datac => \b~combout\(12),
	datad => \b~combout\(13),
	combout => \somador4_3|carry|c~4_combout\);

-- Location: LCCOMB_X25_Y11_N18
\somador4_3|somador_2|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_3|somador_2|s~combout\ = \somador4_3|somador_2|p~combout\ $ (((\somador4_3|carry|c~5_combout\) # ((\carry|c\(3) & \somador4_3|carry|c~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry|c\(3),
	datab => \somador4_3|somador_2|p~combout\,
	datac => \somador4_3|carry|c~5_combout\,
	datad => \somador4_3|carry|c~4_combout\,
	combout => \somador4_3|somador_2|s~combout\);

-- Location: LCCOMB_X25_Y11_N24
\somador4_3|carry|c[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_3|carry|c[3]~9_combout\ = (\b~combout\(14) & ((\somador4_3|carry|c~5_combout\) # (\a~combout\(14)))) # (!\b~combout\(14) & (\somador4_3|carry|c~5_combout\ & \a~combout\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(14),
	datab => \somador4_3|carry|c~5_combout\,
	datac => \a~combout\(14),
	combout => \somador4_3|carry|c[3]~9_combout\);

-- Location: LCCOMB_X25_Y11_N28
\somador4_3|carry|c~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_3|carry|c~7_combout\ = (\somador4_3|carry|c~4_combout\ & (\b~combout\(14) $ (\a~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(14),
	datac => \a~combout\(14),
	datad => \somador4_3|carry|c~4_combout\,
	combout => \somador4_3|carry|c~7_combout\);

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(15),
	combout => \a~combout\(15));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(15),
	combout => \b~combout\(15));

-- Location: LCCOMB_X25_Y11_N4
\somador4_3|somador_3|p\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_3|somador_3|p~combout\ = \a~combout\(15) $ (\b~combout\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(15),
	datad => \b~combout\(15),
	combout => \somador4_3|somador_3|p~combout\);

-- Location: LCCOMB_X25_Y11_N6
\somador4_3|somador_3|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_3|somador_3|s~combout\ = \somador4_3|somador_3|p~combout\ $ (((\somador4_3|carry|c[3]~9_combout\) # ((\somador4_3|carry|c~7_combout\ & \carry|c\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador4_3|carry|c[3]~9_combout\,
	datab => \somador4_3|carry|c~7_combout\,
	datac => \somador4_3|somador_3|p~combout\,
	datad => \carry|c\(3),
	combout => \somador4_3|somador_3|s~combout\);

-- Location: LCCOMB_X25_Y11_N22
\somador4_3|carry|pg~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_3|carry|pg~4_combout\ = (\somador4_3|somador_3|p~combout\ & (\somador4_3|carry|c~4_combout\ & (\b~combout\(14) $ (\a~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(14),
	datab => \somador4_3|somador_3|p~combout\,
	datac => \a~combout\(14),
	datad => \somador4_3|carry|c~4_combout\,
	combout => \somador4_3|carry|pg~4_combout\);

-- Location: LCCOMB_X26_Y10_N4
\carry|c~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \carry|c~10_combout\ = (\a~combout\(13) & ((\b~combout\(13)) # ((\a~combout\(12) & \b~combout\(12))))) # (!\a~combout\(13) & (\a~combout\(12) & (\b~combout\(12) & \b~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(12),
	datab => \a~combout\(13),
	datac => \b~combout\(12),
	datad => \b~combout\(13),
	combout => \carry|c~10_combout\);

-- Location: LCCOMB_X25_Y11_N10
\carry|c~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \carry|c~11_combout\ = (\somador4_3|carry|c~6_combout\) # ((\somador4_3|somador_3|p~combout\ & (\carry|c~10_combout\ & \somador4_3|somador_2|p~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador4_3|carry|c~6_combout\,
	datab => \somador4_3|somador_3|p~combout\,
	datac => \carry|c~10_combout\,
	datad => \somador4_3|somador_2|p~combout\,
	combout => \carry|c~11_combout\);

-- Location: LCCOMB_X26_Y10_N30
\carry|c~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \carry|c~12_combout\ = (\carry|c~11_combout\) # ((\somador4_3|carry|pg~4_combout\ & \somador4_2|carry|gg~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador4_3|carry|pg~4_combout\,
	datac => \somador4_2|carry|gg~1_combout\,
	datad => \carry|c~11_combout\,
	combout => \carry|c~12_combout\);

-- Location: LCCOMB_X26_Y10_N24
\carry|c[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \carry|c[4]~13_combout\ = (\somador4_1|carry|gg~1_combout\) # ((\somador4_1|carry|pg~4_combout\ & ((\somador4_0|carry|gg~1_combout\) # (\carry|c~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador4_0|carry|gg~1_combout\,
	datab => \somador4_1|carry|pg~4_combout\,
	datac => \carry|c~5_combout\,
	datad => \somador4_1|carry|gg~1_combout\,
	combout => \carry|c[4]~13_combout\);

-- Location: LCCOMB_X25_Y9_N4
\somador4_2|carry|pg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador4_2|carry|pg~0_combout\ = (\somador4_2|carry|c~3_combout\ & (\somador4_2|somador_3|p~combout\ & (\b~combout\(10) $ (\a~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador4_2|carry|c~3_combout\,
	datab => \somador4_2|somador_3|p~combout\,
	datac => \b~combout\(10),
	datad => \a~combout\(10),
	combout => \somador4_2|carry|pg~0_combout\);

-- Location: LCCOMB_X26_Y10_N2
\carry|c[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \carry|c[4]~14_combout\ = (\carry|c~12_combout\) # ((\somador4_3|carry|pg~4_combout\ & (\carry|c[4]~13_combout\ & \somador4_2|carry|pg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador4_3|carry|pg~4_combout\,
	datab => \carry|c~12_combout\,
	datac => \carry|c[4]~13_combout\,
	datad => \somador4_2|carry|pg~0_combout\,
	combout => \carry|c[4]~14_combout\);

-- Location: LCCOMB_X26_Y10_N12
\carry|pg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \carry|pg~0_combout\ = (\somador4_2|carry|pg~0_combout\ & (\carry|c~4_combout\ & (\somador4_3|carry|pg~4_combout\ & \somador4_1|carry|pg~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador4_2|carry|pg~0_combout\,
	datab => \carry|c~4_combout\,
	datac => \somador4_3|carry|pg~4_combout\,
	datad => \somador4_1|carry|pg~4_combout\,
	combout => \carry|pg~0_combout\);

-- Location: LCCOMB_X26_Y10_N6
\carry|gg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \carry|gg~0_combout\ = (\carry|c~12_combout\) # ((\carry|c~6_combout\ & (\somador4_3|carry|pg~4_combout\ & \somador4_2|carry|pg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry|c~6_combout\,
	datab => \carry|c~12_combout\,
	datac => \somador4_3|carry|pg~4_combout\,
	datad => \somador4_2|carry|pg~0_combout\,
	combout => \carry|gg~0_combout\);

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador4_0|somador_0|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(0));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador4_0|somador_1|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(1));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador4_0|somador_2|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(2));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador4_0|somador_3|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(3));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador4_1|somador_0|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(4));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador4_1|somador_1|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(5));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador4_1|somador_2|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(6));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador4_1|somador_3|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(7));

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador4_2|somador_0|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(8));

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador4_2|somador_1|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(9));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador4_2|somador_2|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(10));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador4_2|somador_3|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(11));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador4_3|somador_0|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(12));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador4_3|somador_1|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(13));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador4_3|somador_2|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(14));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador4_3|somador_3|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(15));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cout~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \carry|c[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cout);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\p~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \carry|pg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_p);

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\g~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \carry|gg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_g);
END structure;


