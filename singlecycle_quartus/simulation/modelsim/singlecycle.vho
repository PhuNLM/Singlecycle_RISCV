-- Copyright (C) 1991-2013 Altera Corporation
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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "11/07/2024 09:15:32"

-- 
-- Device: Altera EP4CGX30CF23C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	singlecycle IS
    PORT (
	i_clk : IN std_logic;
	i_rst_n : IN std_logic;
	o_pc_debug : OUT std_logic_vector(31 DOWNTO 0);
	o_insn_vld : OUT std_logic;
	o_io_ledr : OUT std_logic_vector(31 DOWNTO 0);
	o_io_ledg : OUT std_logic_vector(31 DOWNTO 0);
	o_io_hex0 : OUT std_logic;
	o_io_hex1 : OUT std_logic;
	o_io_hex2 : OUT std_logic;
	o_io_hex3 : OUT std_logic;
	o_io_hex4 : OUT std_logic;
	o_io_hex5 : OUT std_logic;
	o_io_hex6 : OUT std_logic;
	o_io_hex7 : OUT std_logic;
	o_io_lcd : OUT std_logic_vector(31 DOWNTO 0);
	i_io_sw : IN std_logic_vector(31 DOWNTO 0);
	i_io_btn : IN std_logic_vector(3 DOWNTO 0)
	);
END singlecycle;

-- Design Ports Information
-- o_pc_debug[0]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[2]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[3]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[4]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[5]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[6]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[7]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[8]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[9]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[10]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[11]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[12]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[13]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[14]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[15]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[16]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[17]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[18]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[19]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[20]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[21]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[22]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[23]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[24]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[25]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[26]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[27]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[28]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[29]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[30]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_pc_debug[31]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_insn_vld	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[1]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[2]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[4]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[5]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[6]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[7]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[8]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[9]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[10]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[11]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[12]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[13]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[14]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[15]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[16]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[17]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[18]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[19]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[20]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[21]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[22]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[23]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[24]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[25]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[26]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[27]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[28]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[29]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[30]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledr[31]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[3]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[4]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[5]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[6]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[7]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[8]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[9]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[10]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[11]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[12]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[13]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[14]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[15]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[16]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[17]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[18]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[19]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[20]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[21]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[22]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[23]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[24]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[25]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[26]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[27]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[28]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[29]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[30]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_ledg[31]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_hex0	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_hex1	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_hex2	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_hex3	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_hex4	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_hex5	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_hex6	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_hex7	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[0]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[2]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[3]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[4]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[5]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[6]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[7]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[8]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[10]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[11]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[12]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[13]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[14]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[15]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[16]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[17]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[18]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[19]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[20]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[21]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[22]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[23]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[24]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[25]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[26]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[27]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[28]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[29]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[30]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_io_lcd[31]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[1]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[2]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[3]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[4]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[5]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[6]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[7]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[8]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[9]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[10]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[11]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[12]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[13]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[14]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[15]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[16]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[17]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[18]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[19]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[20]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[21]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[22]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[23]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[24]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[25]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[26]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[27]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[28]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[29]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[30]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_sw[31]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_btn[0]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_btn[1]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_btn[2]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_io_btn[3]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_rst_n	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clk	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF singlecycle IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clk : std_logic;
SIGNAL ww_i_rst_n : std_logic;
SIGNAL ww_o_pc_debug : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_o_insn_vld : std_logic;
SIGNAL ww_o_io_ledr : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_o_io_ledg : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_o_io_hex0 : std_logic;
SIGNAL ww_o_io_hex1 : std_logic;
SIGNAL ww_o_io_hex2 : std_logic;
SIGNAL ww_o_io_hex3 : std_logic;
SIGNAL ww_o_io_hex4 : std_logic;
SIGNAL ww_o_io_hex5 : std_logic;
SIGNAL ww_o_io_hex6 : std_logic;
SIGNAL ww_o_io_hex7 : std_logic;
SIGNAL ww_o_io_lcd : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_i_io_sw : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_i_io_btn : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_io_sw[0]~input_o\ : std_logic;
SIGNAL \i_io_sw[1]~input_o\ : std_logic;
SIGNAL \i_io_sw[2]~input_o\ : std_logic;
SIGNAL \i_io_sw[3]~input_o\ : std_logic;
SIGNAL \i_io_sw[4]~input_o\ : std_logic;
SIGNAL \i_io_sw[5]~input_o\ : std_logic;
SIGNAL \i_io_sw[6]~input_o\ : std_logic;
SIGNAL \i_io_sw[7]~input_o\ : std_logic;
SIGNAL \i_io_sw[8]~input_o\ : std_logic;
SIGNAL \i_io_sw[9]~input_o\ : std_logic;
SIGNAL \i_io_sw[10]~input_o\ : std_logic;
SIGNAL \i_io_sw[11]~input_o\ : std_logic;
SIGNAL \i_io_sw[12]~input_o\ : std_logic;
SIGNAL \i_io_sw[13]~input_o\ : std_logic;
SIGNAL \i_io_sw[14]~input_o\ : std_logic;
SIGNAL \i_io_sw[15]~input_o\ : std_logic;
SIGNAL \i_io_sw[16]~input_o\ : std_logic;
SIGNAL \i_io_sw[17]~input_o\ : std_logic;
SIGNAL \i_io_sw[18]~input_o\ : std_logic;
SIGNAL \i_io_sw[19]~input_o\ : std_logic;
SIGNAL \i_io_sw[20]~input_o\ : std_logic;
SIGNAL \i_io_sw[21]~input_o\ : std_logic;
SIGNAL \i_io_sw[22]~input_o\ : std_logic;
SIGNAL \i_io_sw[23]~input_o\ : std_logic;
SIGNAL \i_io_sw[24]~input_o\ : std_logic;
SIGNAL \i_io_sw[25]~input_o\ : std_logic;
SIGNAL \i_io_sw[26]~input_o\ : std_logic;
SIGNAL \i_io_sw[27]~input_o\ : std_logic;
SIGNAL \i_io_sw[28]~input_o\ : std_logic;
SIGNAL \i_io_sw[29]~input_o\ : std_logic;
SIGNAL \i_io_sw[30]~input_o\ : std_logic;
SIGNAL \i_io_sw[31]~input_o\ : std_logic;
SIGNAL \i_io_btn[0]~input_o\ : std_logic;
SIGNAL \i_io_btn[1]~input_o\ : std_logic;
SIGNAL \i_io_btn[2]~input_o\ : std_logic;
SIGNAL \i_io_btn[3]~input_o\ : std_logic;
SIGNAL \o_pc_debug[0]~output_o\ : std_logic;
SIGNAL \o_pc_debug[1]~output_o\ : std_logic;
SIGNAL \o_pc_debug[2]~output_o\ : std_logic;
SIGNAL \o_pc_debug[3]~output_o\ : std_logic;
SIGNAL \o_pc_debug[4]~output_o\ : std_logic;
SIGNAL \o_pc_debug[5]~output_o\ : std_logic;
SIGNAL \o_pc_debug[6]~output_o\ : std_logic;
SIGNAL \o_pc_debug[7]~output_o\ : std_logic;
SIGNAL \o_pc_debug[8]~output_o\ : std_logic;
SIGNAL \o_pc_debug[9]~output_o\ : std_logic;
SIGNAL \o_pc_debug[10]~output_o\ : std_logic;
SIGNAL \o_pc_debug[11]~output_o\ : std_logic;
SIGNAL \o_pc_debug[12]~output_o\ : std_logic;
SIGNAL \o_pc_debug[13]~output_o\ : std_logic;
SIGNAL \o_pc_debug[14]~output_o\ : std_logic;
SIGNAL \o_pc_debug[15]~output_o\ : std_logic;
SIGNAL \o_pc_debug[16]~output_o\ : std_logic;
SIGNAL \o_pc_debug[17]~output_o\ : std_logic;
SIGNAL \o_pc_debug[18]~output_o\ : std_logic;
SIGNAL \o_pc_debug[19]~output_o\ : std_logic;
SIGNAL \o_pc_debug[20]~output_o\ : std_logic;
SIGNAL \o_pc_debug[21]~output_o\ : std_logic;
SIGNAL \o_pc_debug[22]~output_o\ : std_logic;
SIGNAL \o_pc_debug[23]~output_o\ : std_logic;
SIGNAL \o_pc_debug[24]~output_o\ : std_logic;
SIGNAL \o_pc_debug[25]~output_o\ : std_logic;
SIGNAL \o_pc_debug[26]~output_o\ : std_logic;
SIGNAL \o_pc_debug[27]~output_o\ : std_logic;
SIGNAL \o_pc_debug[28]~output_o\ : std_logic;
SIGNAL \o_pc_debug[29]~output_o\ : std_logic;
SIGNAL \o_pc_debug[30]~output_o\ : std_logic;
SIGNAL \o_pc_debug[31]~output_o\ : std_logic;
SIGNAL \o_insn_vld~output_o\ : std_logic;
SIGNAL \o_io_ledr[0]~output_o\ : std_logic;
SIGNAL \o_io_ledr[1]~output_o\ : std_logic;
SIGNAL \o_io_ledr[2]~output_o\ : std_logic;
SIGNAL \o_io_ledr[3]~output_o\ : std_logic;
SIGNAL \o_io_ledr[4]~output_o\ : std_logic;
SIGNAL \o_io_ledr[5]~output_o\ : std_logic;
SIGNAL \o_io_ledr[6]~output_o\ : std_logic;
SIGNAL \o_io_ledr[7]~output_o\ : std_logic;
SIGNAL \o_io_ledr[8]~output_o\ : std_logic;
SIGNAL \o_io_ledr[9]~output_o\ : std_logic;
SIGNAL \o_io_ledr[10]~output_o\ : std_logic;
SIGNAL \o_io_ledr[11]~output_o\ : std_logic;
SIGNAL \o_io_ledr[12]~output_o\ : std_logic;
SIGNAL \o_io_ledr[13]~output_o\ : std_logic;
SIGNAL \o_io_ledr[14]~output_o\ : std_logic;
SIGNAL \o_io_ledr[15]~output_o\ : std_logic;
SIGNAL \o_io_ledr[16]~output_o\ : std_logic;
SIGNAL \o_io_ledr[17]~output_o\ : std_logic;
SIGNAL \o_io_ledr[18]~output_o\ : std_logic;
SIGNAL \o_io_ledr[19]~output_o\ : std_logic;
SIGNAL \o_io_ledr[20]~output_o\ : std_logic;
SIGNAL \o_io_ledr[21]~output_o\ : std_logic;
SIGNAL \o_io_ledr[22]~output_o\ : std_logic;
SIGNAL \o_io_ledr[23]~output_o\ : std_logic;
SIGNAL \o_io_ledr[24]~output_o\ : std_logic;
SIGNAL \o_io_ledr[25]~output_o\ : std_logic;
SIGNAL \o_io_ledr[26]~output_o\ : std_logic;
SIGNAL \o_io_ledr[27]~output_o\ : std_logic;
SIGNAL \o_io_ledr[28]~output_o\ : std_logic;
SIGNAL \o_io_ledr[29]~output_o\ : std_logic;
SIGNAL \o_io_ledr[30]~output_o\ : std_logic;
SIGNAL \o_io_ledr[31]~output_o\ : std_logic;
SIGNAL \o_io_ledg[0]~output_o\ : std_logic;
SIGNAL \o_io_ledg[1]~output_o\ : std_logic;
SIGNAL \o_io_ledg[2]~output_o\ : std_logic;
SIGNAL \o_io_ledg[3]~output_o\ : std_logic;
SIGNAL \o_io_ledg[4]~output_o\ : std_logic;
SIGNAL \o_io_ledg[5]~output_o\ : std_logic;
SIGNAL \o_io_ledg[6]~output_o\ : std_logic;
SIGNAL \o_io_ledg[7]~output_o\ : std_logic;
SIGNAL \o_io_ledg[8]~output_o\ : std_logic;
SIGNAL \o_io_ledg[9]~output_o\ : std_logic;
SIGNAL \o_io_ledg[10]~output_o\ : std_logic;
SIGNAL \o_io_ledg[11]~output_o\ : std_logic;
SIGNAL \o_io_ledg[12]~output_o\ : std_logic;
SIGNAL \o_io_ledg[13]~output_o\ : std_logic;
SIGNAL \o_io_ledg[14]~output_o\ : std_logic;
SIGNAL \o_io_ledg[15]~output_o\ : std_logic;
SIGNAL \o_io_ledg[16]~output_o\ : std_logic;
SIGNAL \o_io_ledg[17]~output_o\ : std_logic;
SIGNAL \o_io_ledg[18]~output_o\ : std_logic;
SIGNAL \o_io_ledg[19]~output_o\ : std_logic;
SIGNAL \o_io_ledg[20]~output_o\ : std_logic;
SIGNAL \o_io_ledg[21]~output_o\ : std_logic;
SIGNAL \o_io_ledg[22]~output_o\ : std_logic;
SIGNAL \o_io_ledg[23]~output_o\ : std_logic;
SIGNAL \o_io_ledg[24]~output_o\ : std_logic;
SIGNAL \o_io_ledg[25]~output_o\ : std_logic;
SIGNAL \o_io_ledg[26]~output_o\ : std_logic;
SIGNAL \o_io_ledg[27]~output_o\ : std_logic;
SIGNAL \o_io_ledg[28]~output_o\ : std_logic;
SIGNAL \o_io_ledg[29]~output_o\ : std_logic;
SIGNAL \o_io_ledg[30]~output_o\ : std_logic;
SIGNAL \o_io_ledg[31]~output_o\ : std_logic;
SIGNAL \o_io_hex0~output_o\ : std_logic;
SIGNAL \o_io_hex1~output_o\ : std_logic;
SIGNAL \o_io_hex2~output_o\ : std_logic;
SIGNAL \o_io_hex3~output_o\ : std_logic;
SIGNAL \o_io_hex4~output_o\ : std_logic;
SIGNAL \o_io_hex5~output_o\ : std_logic;
SIGNAL \o_io_hex6~output_o\ : std_logic;
SIGNAL \o_io_hex7~output_o\ : std_logic;
SIGNAL \o_io_lcd[0]~output_o\ : std_logic;
SIGNAL \o_io_lcd[1]~output_o\ : std_logic;
SIGNAL \o_io_lcd[2]~output_o\ : std_logic;
SIGNAL \o_io_lcd[3]~output_o\ : std_logic;
SIGNAL \o_io_lcd[4]~output_o\ : std_logic;
SIGNAL \o_io_lcd[5]~output_o\ : std_logic;
SIGNAL \o_io_lcd[6]~output_o\ : std_logic;
SIGNAL \o_io_lcd[7]~output_o\ : std_logic;
SIGNAL \o_io_lcd[8]~output_o\ : std_logic;
SIGNAL \o_io_lcd[9]~output_o\ : std_logic;
SIGNAL \o_io_lcd[10]~output_o\ : std_logic;
SIGNAL \o_io_lcd[11]~output_o\ : std_logic;
SIGNAL \o_io_lcd[12]~output_o\ : std_logic;
SIGNAL \o_io_lcd[13]~output_o\ : std_logic;
SIGNAL \o_io_lcd[14]~output_o\ : std_logic;
SIGNAL \o_io_lcd[15]~output_o\ : std_logic;
SIGNAL \o_io_lcd[16]~output_o\ : std_logic;
SIGNAL \o_io_lcd[17]~output_o\ : std_logic;
SIGNAL \o_io_lcd[18]~output_o\ : std_logic;
SIGNAL \o_io_lcd[19]~output_o\ : std_logic;
SIGNAL \o_io_lcd[20]~output_o\ : std_logic;
SIGNAL \o_io_lcd[21]~output_o\ : std_logic;
SIGNAL \o_io_lcd[22]~output_o\ : std_logic;
SIGNAL \o_io_lcd[23]~output_o\ : std_logic;
SIGNAL \o_io_lcd[24]~output_o\ : std_logic;
SIGNAL \o_io_lcd[25]~output_o\ : std_logic;
SIGNAL \o_io_lcd[26]~output_o\ : std_logic;
SIGNAL \o_io_lcd[27]~output_o\ : std_logic;
SIGNAL \o_io_lcd[28]~output_o\ : std_logic;
SIGNAL \o_io_lcd[29]~output_o\ : std_logic;
SIGNAL \o_io_lcd[30]~output_o\ : std_logic;
SIGNAL \o_io_lcd[31]~output_o\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \i_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_rst_n~input_o\ : std_logic;
SIGNAL \PC|pc[2]~30_combout\ : std_logic;
SIGNAL \FFPC|Q~0_combout\ : std_logic;
SIGNAL \PC|pc[2]~31\ : std_logic;
SIGNAL \PC|pc[3]~32_combout\ : std_logic;
SIGNAL \FFPC|Q~1_combout\ : std_logic;
SIGNAL \PC|pc[3]~33\ : std_logic;
SIGNAL \PC|pc[4]~34_combout\ : std_logic;
SIGNAL \FFPC|Q~2_combout\ : std_logic;
SIGNAL \PC|pc[4]~35\ : std_logic;
SIGNAL \PC|pc[5]~36_combout\ : std_logic;
SIGNAL \FFPC|Q~3_combout\ : std_logic;
SIGNAL \PC|pc[5]~37\ : std_logic;
SIGNAL \PC|pc[6]~38_combout\ : std_logic;
SIGNAL \FFPC|Q~4_combout\ : std_logic;
SIGNAL \PC|pc[6]~39\ : std_logic;
SIGNAL \PC|pc[7]~40_combout\ : std_logic;
SIGNAL \FFPC|Q~5_combout\ : std_logic;
SIGNAL \PC|pc[7]~41\ : std_logic;
SIGNAL \PC|pc[8]~42_combout\ : std_logic;
SIGNAL \FFPC|Q~6_combout\ : std_logic;
SIGNAL \PC|pc[8]~43\ : std_logic;
SIGNAL \PC|pc[9]~44_combout\ : std_logic;
SIGNAL \FFPC|Q~7_combout\ : std_logic;
SIGNAL \PC|pc[9]~45\ : std_logic;
SIGNAL \PC|pc[10]~46_combout\ : std_logic;
SIGNAL \FFPC|Q~8_combout\ : std_logic;
SIGNAL \PC|pc[10]~47\ : std_logic;
SIGNAL \PC|pc[11]~48_combout\ : std_logic;
SIGNAL \FFPC|Q~9_combout\ : std_logic;
SIGNAL \PC|pc[11]~49\ : std_logic;
SIGNAL \PC|pc[12]~50_combout\ : std_logic;
SIGNAL \FFPC|Q~10_combout\ : std_logic;
SIGNAL \PC|pc[12]~51\ : std_logic;
SIGNAL \PC|pc[13]~52_combout\ : std_logic;
SIGNAL \FFPC|Q~11_combout\ : std_logic;
SIGNAL \PC|pc[13]~53\ : std_logic;
SIGNAL \PC|pc[14]~54_combout\ : std_logic;
SIGNAL \FFPC|Q~12_combout\ : std_logic;
SIGNAL \PC|pc[14]~55\ : std_logic;
SIGNAL \PC|pc[15]~56_combout\ : std_logic;
SIGNAL \FFPC|Q~13_combout\ : std_logic;
SIGNAL \PC|pc[15]~57\ : std_logic;
SIGNAL \PC|pc[16]~58_combout\ : std_logic;
SIGNAL \FFPC|Q~14_combout\ : std_logic;
SIGNAL \PC|pc[16]~59\ : std_logic;
SIGNAL \PC|pc[17]~60_combout\ : std_logic;
SIGNAL \FFPC|Q~15_combout\ : std_logic;
SIGNAL \PC|pc[17]~61\ : std_logic;
SIGNAL \PC|pc[18]~62_combout\ : std_logic;
SIGNAL \FFPC|Q~16_combout\ : std_logic;
SIGNAL \PC|pc[18]~63\ : std_logic;
SIGNAL \PC|pc[19]~64_combout\ : std_logic;
SIGNAL \FFPC|Q~17_combout\ : std_logic;
SIGNAL \PC|pc[19]~65\ : std_logic;
SIGNAL \PC|pc[20]~66_combout\ : std_logic;
SIGNAL \FFPC|Q~18_combout\ : std_logic;
SIGNAL \PC|pc[20]~67\ : std_logic;
SIGNAL \PC|pc[21]~68_combout\ : std_logic;
SIGNAL \FFPC|Q~19_combout\ : std_logic;
SIGNAL \PC|pc[21]~69\ : std_logic;
SIGNAL \PC|pc[22]~70_combout\ : std_logic;
SIGNAL \FFPC|Q~20_combout\ : std_logic;
SIGNAL \PC|pc[22]~71\ : std_logic;
SIGNAL \PC|pc[23]~72_combout\ : std_logic;
SIGNAL \FFPC|Q~21_combout\ : std_logic;
SIGNAL \PC|pc[23]~73\ : std_logic;
SIGNAL \PC|pc[24]~74_combout\ : std_logic;
SIGNAL \FFPC|Q~22_combout\ : std_logic;
SIGNAL \PC|pc[24]~75\ : std_logic;
SIGNAL \PC|pc[25]~76_combout\ : std_logic;
SIGNAL \FFPC|Q~23_combout\ : std_logic;
SIGNAL \PC|pc[25]~77\ : std_logic;
SIGNAL \PC|pc[26]~78_combout\ : std_logic;
SIGNAL \FFPC|Q~24_combout\ : std_logic;
SIGNAL \PC|pc[26]~79\ : std_logic;
SIGNAL \PC|pc[27]~80_combout\ : std_logic;
SIGNAL \FFPC|Q~25_combout\ : std_logic;
SIGNAL \PC|pc[27]~81\ : std_logic;
SIGNAL \PC|pc[28]~82_combout\ : std_logic;
SIGNAL \FFPC|Q~26_combout\ : std_logic;
SIGNAL \PC|pc[28]~83\ : std_logic;
SIGNAL \PC|pc[29]~84_combout\ : std_logic;
SIGNAL \FFPC|Q~27_combout\ : std_logic;
SIGNAL \PC|pc[29]~85\ : std_logic;
SIGNAL \PC|pc[30]~86_combout\ : std_logic;
SIGNAL \FFPC|Q~28_combout\ : std_logic;
SIGNAL \PC|pc[30]~87\ : std_logic;
SIGNAL \PC|pc[31]~88_combout\ : std_logic;
SIGNAL \FFPC|Q~29_combout\ : std_logic;
SIGNAL \PC|pc\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FFPC|Q\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_i_clk <= i_clk;
ww_i_rst_n <= i_rst_n;
o_pc_debug <= ww_o_pc_debug;
o_insn_vld <= ww_o_insn_vld;
o_io_ledr <= ww_o_io_ledr;
o_io_ledg <= ww_o_io_ledg;
o_io_hex0 <= ww_o_io_hex0;
o_io_hex1 <= ww_o_io_hex1;
o_io_hex2 <= ww_o_io_hex2;
o_io_hex3 <= ww_o_io_hex3;
o_io_hex4 <= ww_o_io_hex4;
o_io_hex5 <= ww_o_io_hex5;
o_io_hex6 <= ww_o_io_hex6;
o_io_hex7 <= ww_o_io_hex7;
o_io_lcd <= ww_o_io_lcd;
ww_i_io_sw <= i_io_sw;
ww_i_io_btn <= i_io_btn;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clk~input_o\);

-- Location: IOOBUF_X8_Y67_N2
\o_pc_debug[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_pc_debug[0]~output_o\);

-- Location: IOOBUF_X81_Y26_N2
\o_pc_debug[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_pc_debug[1]~output_o\);

-- Location: IOOBUF_X81_Y8_N2
\o_pc_debug[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(2),
	devoe => ww_devoe,
	o => \o_pc_debug[2]~output_o\);

-- Location: IOOBUF_X81_Y16_N2
\o_pc_debug[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(3),
	devoe => ww_devoe,
	o => \o_pc_debug[3]~output_o\);

-- Location: IOOBUF_X81_Y14_N16
\o_pc_debug[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(4),
	devoe => ww_devoe,
	o => \o_pc_debug[4]~output_o\);

-- Location: IOOBUF_X81_Y16_N9
\o_pc_debug[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(5),
	devoe => ww_devoe,
	o => \o_pc_debug[5]~output_o\);

-- Location: IOOBUF_X81_Y4_N9
\o_pc_debug[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(6),
	devoe => ww_devoe,
	o => \o_pc_debug[6]~output_o\);

-- Location: IOOBUF_X81_Y14_N9
\o_pc_debug[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(7),
	devoe => ww_devoe,
	o => \o_pc_debug[7]~output_o\);

-- Location: IOOBUF_X81_Y11_N23
\o_pc_debug[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(8),
	devoe => ww_devoe,
	o => \o_pc_debug[8]~output_o\);

-- Location: IOOBUF_X81_Y11_N2
\o_pc_debug[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(9),
	devoe => ww_devoe,
	o => \o_pc_debug[9]~output_o\);

-- Location: IOOBUF_X81_Y4_N2
\o_pc_debug[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(10),
	devoe => ww_devoe,
	o => \o_pc_debug[10]~output_o\);

-- Location: IOOBUF_X81_Y14_N2
\o_pc_debug[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(11),
	devoe => ww_devoe,
	o => \o_pc_debug[11]~output_o\);

-- Location: IOOBUF_X81_Y12_N2
\o_pc_debug[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(12),
	devoe => ww_devoe,
	o => \o_pc_debug[12]~output_o\);

-- Location: IOOBUF_X81_Y4_N23
\o_pc_debug[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(13),
	devoe => ww_devoe,
	o => \o_pc_debug[13]~output_o\);

-- Location: IOOBUF_X81_Y7_N9
\o_pc_debug[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(14),
	devoe => ww_devoe,
	o => \o_pc_debug[14]~output_o\);

-- Location: IOOBUF_X81_Y4_N16
\o_pc_debug[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(15),
	devoe => ww_devoe,
	o => \o_pc_debug[15]~output_o\);

-- Location: IOOBUF_X81_Y8_N9
\o_pc_debug[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(16),
	devoe => ww_devoe,
	o => \o_pc_debug[16]~output_o\);

-- Location: IOOBUF_X81_Y9_N2
\o_pc_debug[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(17),
	devoe => ww_devoe,
	o => \o_pc_debug[17]~output_o\);

-- Location: IOOBUF_X81_Y7_N2
\o_pc_debug[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(18),
	devoe => ww_devoe,
	o => \o_pc_debug[18]~output_o\);

-- Location: IOOBUF_X81_Y10_N16
\o_pc_debug[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(19),
	devoe => ww_devoe,
	o => \o_pc_debug[19]~output_o\);

-- Location: IOOBUF_X81_Y6_N9
\o_pc_debug[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(20),
	devoe => ww_devoe,
	o => \o_pc_debug[20]~output_o\);

-- Location: IOOBUF_X81_Y6_N16
\o_pc_debug[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(21),
	devoe => ww_devoe,
	o => \o_pc_debug[21]~output_o\);

-- Location: IOOBUF_X81_Y10_N9
\o_pc_debug[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(22),
	devoe => ww_devoe,
	o => \o_pc_debug[22]~output_o\);

-- Location: IOOBUF_X81_Y5_N2
\o_pc_debug[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(23),
	devoe => ww_devoe,
	o => \o_pc_debug[23]~output_o\);

-- Location: IOOBUF_X81_Y9_N9
\o_pc_debug[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(24),
	devoe => ww_devoe,
	o => \o_pc_debug[24]~output_o\);

-- Location: IOOBUF_X81_Y10_N2
\o_pc_debug[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(25),
	devoe => ww_devoe,
	o => \o_pc_debug[25]~output_o\);

-- Location: IOOBUF_X81_Y17_N2
\o_pc_debug[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(26),
	devoe => ww_devoe,
	o => \o_pc_debug[26]~output_o\);

-- Location: IOOBUF_X81_Y6_N2
\o_pc_debug[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(27),
	devoe => ww_devoe,
	o => \o_pc_debug[27]~output_o\);

-- Location: IOOBUF_X81_Y3_N2
\o_pc_debug[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(28),
	devoe => ww_devoe,
	o => \o_pc_debug[28]~output_o\);

-- Location: IOOBUF_X81_Y17_N9
\o_pc_debug[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(29),
	devoe => ww_devoe,
	o => \o_pc_debug[29]~output_o\);

-- Location: IOOBUF_X81_Y3_N9
\o_pc_debug[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(30),
	devoe => ww_devoe,
	o => \o_pc_debug[30]~output_o\);

-- Location: IOOBUF_X81_Y7_N16
\o_pc_debug[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFPC|Q\(31),
	devoe => ww_devoe,
	o => \o_pc_debug[31]~output_o\);

-- Location: IOOBUF_X61_Y67_N9
\o_insn_vld~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_insn_vld~output_o\);

-- Location: IOOBUF_X26_Y67_N2
\o_io_ledr[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[0]~output_o\);

-- Location: IOOBUF_X81_Y61_N16
\o_io_ledr[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[1]~output_o\);

-- Location: IOOBUF_X81_Y58_N2
\o_io_ledr[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[2]~output_o\);

-- Location: IOOBUF_X49_Y67_N2
\o_io_ledr[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[3]~output_o\);

-- Location: IOOBUF_X81_Y65_N16
\o_io_ledr[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[4]~output_o\);

-- Location: IOOBUF_X8_Y67_N16
\o_io_ledr[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[5]~output_o\);

-- Location: IOOBUF_X81_Y53_N9
\o_io_ledr[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[6]~output_o\);

-- Location: IOOBUF_X81_Y58_N9
\o_io_ledr[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[7]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\o_io_ledr[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[8]~output_o\);

-- Location: IOOBUF_X65_Y67_N16
\o_io_ledr[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[9]~output_o\);

-- Location: IOOBUF_X52_Y67_N23
\o_io_ledr[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[10]~output_o\);

-- Location: IOOBUF_X42_Y67_N9
\o_io_ledr[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[11]~output_o\);

-- Location: IOOBUF_X70_Y67_N9
\o_io_ledr[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[12]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\o_io_ledr[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[13]~output_o\);

-- Location: IOOBUF_X63_Y67_N9
\o_io_ledr[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[14]~output_o\);

-- Location: IOOBUF_X81_Y47_N9
\o_io_ledr[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[15]~output_o\);

-- Location: IOOBUF_X15_Y67_N9
\o_io_ledr[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[16]~output_o\);

-- Location: IOOBUF_X8_Y0_N16
\o_io_ledr[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[17]~output_o\);

-- Location: IOOBUF_X10_Y67_N9
\o_io_ledr[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[18]~output_o\);

-- Location: IOOBUF_X49_Y67_N23
\o_io_ledr[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[19]~output_o\);

-- Location: IOOBUF_X17_Y67_N23
\o_io_ledr[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[20]~output_o\);

-- Location: IOOBUF_X81_Y62_N9
\o_io_ledr[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[21]~output_o\);

-- Location: IOOBUF_X56_Y67_N23
\o_io_ledr[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[22]~output_o\);

-- Location: IOOBUF_X70_Y0_N2
\o_io_ledr[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[23]~output_o\);

-- Location: IOOBUF_X81_Y21_N9
\o_io_ledr[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[24]~output_o\);

-- Location: IOOBUF_X58_Y67_N16
\o_io_ledr[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[25]~output_o\);

-- Location: IOOBUF_X31_Y67_N23
\o_io_ledr[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[26]~output_o\);

-- Location: IOOBUF_X56_Y67_N2
\o_io_ledr[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[27]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\o_io_ledr[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[28]~output_o\);

-- Location: IOOBUF_X44_Y67_N2
\o_io_ledr[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[29]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\o_io_ledr[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[30]~output_o\);

-- Location: IOOBUF_X6_Y0_N16
\o_io_ledr[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledr[31]~output_o\);

-- Location: IOOBUF_X31_Y67_N9
\o_io_ledg[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[0]~output_o\);

-- Location: IOOBUF_X44_Y67_N23
\o_io_ledg[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[1]~output_o\);

-- Location: IOOBUF_X81_Y52_N2
\o_io_ledg[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[2]~output_o\);

-- Location: IOOBUF_X19_Y67_N9
\o_io_ledg[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[3]~output_o\);

-- Location: IOOBUF_X81_Y2_N23
\o_io_ledg[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[4]~output_o\);

-- Location: IOOBUF_X63_Y67_N16
\o_io_ledg[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[5]~output_o\);

-- Location: IOOBUF_X17_Y67_N16
\o_io_ledg[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[6]~output_o\);

-- Location: IOOBUF_X33_Y67_N16
\o_io_ledg[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[7]~output_o\);

-- Location: IOOBUF_X81_Y20_N2
\o_io_ledg[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[8]~output_o\);

-- Location: IOOBUF_X31_Y67_N16
\o_io_ledg[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[9]~output_o\);

-- Location: IOOBUF_X15_Y0_N2
\o_io_ledg[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[10]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\o_io_ledg[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[11]~output_o\);

-- Location: IOOBUF_X81_Y61_N2
\o_io_ledg[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[12]~output_o\);

-- Location: IOOBUF_X10_Y67_N23
\o_io_ledg[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[13]~output_o\);

-- Location: IOOBUF_X13_Y67_N9
\o_io_ledg[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[14]~output_o\);

-- Location: IOOBUF_X54_Y67_N23
\o_io_ledg[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[15]~output_o\);

-- Location: IOOBUF_X81_Y62_N16
\o_io_ledg[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[16]~output_o\);

-- Location: IOOBUF_X40_Y0_N9
\o_io_ledg[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[17]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\o_io_ledg[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[18]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\o_io_ledg[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[19]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\o_io_ledg[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[20]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\o_io_ledg[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[21]~output_o\);

-- Location: IOOBUF_X42_Y67_N16
\o_io_ledg[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[22]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\o_io_ledg[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[23]~output_o\);

-- Location: IOOBUF_X54_Y67_N2
\o_io_ledg[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[24]~output_o\);

-- Location: IOOBUF_X70_Y67_N2
\o_io_ledg[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[25]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\o_io_ledg[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[26]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\o_io_ledg[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[27]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\o_io_ledg[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[28]~output_o\);

-- Location: IOOBUF_X70_Y67_N16
\o_io_ledg[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[29]~output_o\);

-- Location: IOOBUF_X52_Y67_N16
\o_io_ledg[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[30]~output_o\);

-- Location: IOOBUF_X81_Y64_N9
\o_io_ledg[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_ledg[31]~output_o\);

-- Location: IOOBUF_X17_Y0_N2
\o_io_hex0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_hex0~output_o\);

-- Location: IOOBUF_X52_Y67_N2
\o_io_hex1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_hex1~output_o\);

-- Location: IOOBUF_X15_Y0_N9
\o_io_hex2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_hex2~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\o_io_hex3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_hex3~output_o\);

-- Location: IOOBUF_X49_Y67_N16
\o_io_hex4~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_hex4~output_o\);

-- Location: IOOBUF_X29_Y67_N23
\o_io_hex5~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_hex5~output_o\);

-- Location: IOOBUF_X68_Y67_N2
\o_io_hex6~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_hex6~output_o\);

-- Location: IOOBUF_X24_Y67_N16
\o_io_hex7~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_hex7~output_o\);

-- Location: IOOBUF_X81_Y20_N9
\o_io_lcd[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\o_io_lcd[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[1]~output_o\);

-- Location: IOOBUF_X70_Y0_N16
\o_io_lcd[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[2]~output_o\);

-- Location: IOOBUF_X81_Y50_N9
\o_io_lcd[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[3]~output_o\);

-- Location: IOOBUF_X81_Y26_N9
\o_io_lcd[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[4]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\o_io_lcd[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[5]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\o_io_lcd[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[6]~output_o\);

-- Location: IOOBUF_X44_Y67_N9
\o_io_lcd[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[7]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\o_io_lcd[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[8]~output_o\);

-- Location: IOOBUF_X26_Y67_N16
\o_io_lcd[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[9]~output_o\);

-- Location: IOOBUF_X10_Y0_N2
\o_io_lcd[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[10]~output_o\);

-- Location: IOOBUF_X17_Y0_N23
\o_io_lcd[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[11]~output_o\);

-- Location: IOOBUF_X24_Y67_N9
\o_io_lcd[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[12]~output_o\);

-- Location: IOOBUF_X58_Y0_N9
\o_io_lcd[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[13]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\o_io_lcd[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[14]~output_o\);

-- Location: IOOBUF_X47_Y67_N9
\o_io_lcd[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[15]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\o_io_lcd[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[16]~output_o\);

-- Location: IOOBUF_X81_Y61_N9
\o_io_lcd[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[17]~output_o\);

-- Location: IOOBUF_X68_Y0_N16
\o_io_lcd[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[18]~output_o\);

-- Location: IOOBUF_X81_Y65_N23
\o_io_lcd[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[19]~output_o\);

-- Location: IOOBUF_X29_Y67_N16
\o_io_lcd[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[20]~output_o\);

-- Location: IOOBUF_X68_Y0_N2
\o_io_lcd[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[21]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\o_io_lcd[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[22]~output_o\);

-- Location: IOOBUF_X68_Y0_N9
\o_io_lcd[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[23]~output_o\);

-- Location: IOOBUF_X81_Y25_N9
\o_io_lcd[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[24]~output_o\);

-- Location: IOOBUF_X10_Y67_N2
\o_io_lcd[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[25]~output_o\);

-- Location: IOOBUF_X42_Y0_N9
\o_io_lcd[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[26]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\o_io_lcd[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[27]~output_o\);

-- Location: IOOBUF_X6_Y0_N2
\o_io_lcd[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[28]~output_o\);

-- Location: IOOBUF_X81_Y53_N2
\o_io_lcd[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[29]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\o_io_lcd[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[30]~output_o\);

-- Location: IOOBUF_X63_Y67_N2
\o_io_lcd[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_io_lcd[31]~output_o\);

-- Location: IOIBUF_X38_Y0_N15
\i_clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clk,
	o => \i_clk~input_o\);

-- Location: CLKCTRL_G29
\i_clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X81_Y12_N8
\i_rst_n~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_rst_n,
	o => \i_rst_n~input_o\);

-- Location: LCCOMB_X79_Y11_N2
\PC|pc[2]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[2]~30_combout\ = \PC|pc\(2) $ (VCC)
-- \PC|pc[2]~31\ = CARRY(\PC|pc\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|pc\(2),
	datad => VCC,
	combout => \PC|pc[2]~30_combout\,
	cout => \PC|pc[2]~31\);

-- Location: FF_X79_Y11_N3
\PC|pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[2]~30_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(2));

-- Location: LCCOMB_X80_Y11_N4
\FFPC|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~0_combout\ = (!\i_rst_n~input_o\ & \PC|pc\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_rst_n~input_o\,
	datad => \PC|pc\(2),
	combout => \FFPC|Q~0_combout\);

-- Location: FF_X80_Y11_N5
\FFPC|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(2));

-- Location: LCCOMB_X79_Y11_N4
\PC|pc[3]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[3]~32_combout\ = (\PC|pc\(3) & (!\PC|pc[2]~31\)) # (!\PC|pc\(3) & ((\PC|pc[2]~31\) # (GND)))
-- \PC|pc[3]~33\ = CARRY((!\PC|pc[2]~31\) # (!\PC|pc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|pc\(3),
	datad => VCC,
	cin => \PC|pc[2]~31\,
	combout => \PC|pc[3]~32_combout\,
	cout => \PC|pc[3]~33\);

-- Location: FF_X79_Y11_N5
\PC|pc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[3]~32_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(3));

-- Location: LCCOMB_X80_Y11_N2
\FFPC|Q~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~1_combout\ = (\PC|pc\(3) & !\i_rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|pc\(3),
	datac => \i_rst_n~input_o\,
	combout => \FFPC|Q~1_combout\);

-- Location: FF_X80_Y11_N3
\FFPC|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(3));

-- Location: LCCOMB_X79_Y11_N6
\PC|pc[4]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[4]~34_combout\ = (\PC|pc\(4) & (\PC|pc[3]~33\ $ (GND))) # (!\PC|pc\(4) & (!\PC|pc[3]~33\ & VCC))
-- \PC|pc[4]~35\ = CARRY((\PC|pc\(4) & !\PC|pc[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|pc\(4),
	datad => VCC,
	cin => \PC|pc[3]~33\,
	combout => \PC|pc[4]~34_combout\,
	cout => \PC|pc[4]~35\);

-- Location: FF_X79_Y11_N7
\PC|pc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[4]~34_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(4));

-- Location: LCCOMB_X80_Y11_N0
\FFPC|Q~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~2_combout\ = (\PC|pc\(4) & !\i_rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|pc\(4),
	datac => \i_rst_n~input_o\,
	combout => \FFPC|Q~2_combout\);

-- Location: FF_X80_Y11_N1
\FFPC|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(4));

-- Location: LCCOMB_X79_Y11_N8
\PC|pc[5]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[5]~36_combout\ = (\PC|pc\(5) & (!\PC|pc[4]~35\)) # (!\PC|pc\(5) & ((\PC|pc[4]~35\) # (GND)))
-- \PC|pc[5]~37\ = CARRY((!\PC|pc[4]~35\) # (!\PC|pc\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|pc\(5),
	datad => VCC,
	cin => \PC|pc[4]~35\,
	combout => \PC|pc[5]~36_combout\,
	cout => \PC|pc[5]~37\);

-- Location: FF_X79_Y11_N9
\PC|pc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[5]~36_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(5));

-- Location: LCCOMB_X80_Y11_N10
\FFPC|Q~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~3_combout\ = (!\i_rst_n~input_o\ & \PC|pc\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_rst_n~input_o\,
	datad => \PC|pc\(5),
	combout => \FFPC|Q~3_combout\);

-- Location: FF_X80_Y11_N11
\FFPC|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(5));

-- Location: LCCOMB_X79_Y11_N10
\PC|pc[6]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[6]~38_combout\ = (\PC|pc\(6) & (\PC|pc[5]~37\ $ (GND))) # (!\PC|pc\(6) & (!\PC|pc[5]~37\ & VCC))
-- \PC|pc[6]~39\ = CARRY((\PC|pc\(6) & !\PC|pc[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|pc\(6),
	datad => VCC,
	cin => \PC|pc[5]~37\,
	combout => \PC|pc[6]~38_combout\,
	cout => \PC|pc[6]~39\);

-- Location: FF_X79_Y11_N11
\PC|pc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[6]~38_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(6));

-- Location: LCCOMB_X80_Y11_N8
\FFPC|Q~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~4_combout\ = (!\i_rst_n~input_o\ & \PC|pc\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_rst_n~input_o\,
	datad => \PC|pc\(6),
	combout => \FFPC|Q~4_combout\);

-- Location: FF_X80_Y11_N9
\FFPC|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(6));

-- Location: LCCOMB_X79_Y11_N12
\PC|pc[7]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[7]~40_combout\ = (\PC|pc\(7) & (!\PC|pc[6]~39\)) # (!\PC|pc\(7) & ((\PC|pc[6]~39\) # (GND)))
-- \PC|pc[7]~41\ = CARRY((!\PC|pc[6]~39\) # (!\PC|pc\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|pc\(7),
	datad => VCC,
	cin => \PC|pc[6]~39\,
	combout => \PC|pc[7]~40_combout\,
	cout => \PC|pc[7]~41\);

-- Location: FF_X79_Y11_N13
\PC|pc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[7]~40_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(7));

-- Location: LCCOMB_X80_Y11_N6
\FFPC|Q~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~5_combout\ = (!\i_rst_n~input_o\ & \PC|pc\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_rst_n~input_o\,
	datad => \PC|pc\(7),
	combout => \FFPC|Q~5_combout\);

-- Location: FF_X80_Y11_N7
\FFPC|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(7));

-- Location: LCCOMB_X79_Y11_N14
\PC|pc[8]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[8]~42_combout\ = (\PC|pc\(8) & (\PC|pc[7]~41\ $ (GND))) # (!\PC|pc\(8) & (!\PC|pc[7]~41\ & VCC))
-- \PC|pc[8]~43\ = CARRY((\PC|pc\(8) & !\PC|pc[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|pc\(8),
	datad => VCC,
	cin => \PC|pc[7]~41\,
	combout => \PC|pc[8]~42_combout\,
	cout => \PC|pc[8]~43\);

-- Location: FF_X79_Y11_N15
\PC|pc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[8]~42_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(8));

-- Location: LCCOMB_X80_Y11_N24
\FFPC|Q~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~6_combout\ = (!\i_rst_n~input_o\ & \PC|pc\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_rst_n~input_o\,
	datad => \PC|pc\(8),
	combout => \FFPC|Q~6_combout\);

-- Location: FF_X80_Y11_N25
\FFPC|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(8));

-- Location: LCCOMB_X79_Y11_N16
\PC|pc[9]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[9]~44_combout\ = (\PC|pc\(9) & (!\PC|pc[8]~43\)) # (!\PC|pc\(9) & ((\PC|pc[8]~43\) # (GND)))
-- \PC|pc[9]~45\ = CARRY((!\PC|pc[8]~43\) # (!\PC|pc\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|pc\(9),
	datad => VCC,
	cin => \PC|pc[8]~43\,
	combout => \PC|pc[9]~44_combout\,
	cout => \PC|pc[9]~45\);

-- Location: FF_X79_Y11_N17
\PC|pc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[9]~44_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(9));

-- Location: LCCOMB_X80_Y11_N22
\FFPC|Q~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~7_combout\ = (\PC|pc\(9) & !\i_rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|pc\(9),
	datac => \i_rst_n~input_o\,
	combout => \FFPC|Q~7_combout\);

-- Location: FF_X80_Y11_N23
\FFPC|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(9));

-- Location: LCCOMB_X79_Y11_N18
\PC|pc[10]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[10]~46_combout\ = (\PC|pc\(10) & (\PC|pc[9]~45\ $ (GND))) # (!\PC|pc\(10) & (!\PC|pc[9]~45\ & VCC))
-- \PC|pc[10]~47\ = CARRY((\PC|pc\(10) & !\PC|pc[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|pc\(10),
	datad => VCC,
	cin => \PC|pc[9]~45\,
	combout => \PC|pc[10]~46_combout\,
	cout => \PC|pc[10]~47\);

-- Location: FF_X79_Y11_N19
\PC|pc[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[10]~46_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(10));

-- Location: LCCOMB_X80_Y11_N12
\FFPC|Q~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~8_combout\ = (!\i_rst_n~input_o\ & \PC|pc\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_rst_n~input_o\,
	datad => \PC|pc\(10),
	combout => \FFPC|Q~8_combout\);

-- Location: FF_X80_Y11_N13
\FFPC|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(10));

-- Location: LCCOMB_X79_Y11_N20
\PC|pc[11]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[11]~48_combout\ = (\PC|pc\(11) & (!\PC|pc[10]~47\)) # (!\PC|pc\(11) & ((\PC|pc[10]~47\) # (GND)))
-- \PC|pc[11]~49\ = CARRY((!\PC|pc[10]~47\) # (!\PC|pc\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|pc\(11),
	datad => VCC,
	cin => \PC|pc[10]~47\,
	combout => \PC|pc[11]~48_combout\,
	cout => \PC|pc[11]~49\);

-- Location: FF_X79_Y11_N21
\PC|pc[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[11]~48_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(11));

-- Location: LCCOMB_X80_Y11_N26
\FFPC|Q~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~9_combout\ = (!\i_rst_n~input_o\ & \PC|pc\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_rst_n~input_o\,
	datad => \PC|pc\(11),
	combout => \FFPC|Q~9_combout\);

-- Location: FF_X80_Y11_N27
\FFPC|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(11));

-- Location: LCCOMB_X79_Y11_N22
\PC|pc[12]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[12]~50_combout\ = (\PC|pc\(12) & (\PC|pc[11]~49\ $ (GND))) # (!\PC|pc\(12) & (!\PC|pc[11]~49\ & VCC))
-- \PC|pc[12]~51\ = CARRY((\PC|pc\(12) & !\PC|pc[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|pc\(12),
	datad => VCC,
	cin => \PC|pc[11]~49\,
	combout => \PC|pc[12]~50_combout\,
	cout => \PC|pc[12]~51\);

-- Location: FF_X79_Y11_N23
\PC|pc[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[12]~50_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(12));

-- Location: LCCOMB_X80_Y11_N16
\FFPC|Q~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~10_combout\ = (!\i_rst_n~input_o\ & \PC|pc\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_rst_n~input_o\,
	datad => \PC|pc\(12),
	combout => \FFPC|Q~10_combout\);

-- Location: FF_X80_Y11_N17
\FFPC|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(12));

-- Location: LCCOMB_X79_Y11_N24
\PC|pc[13]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[13]~52_combout\ = (\PC|pc\(13) & (!\PC|pc[12]~51\)) # (!\PC|pc\(13) & ((\PC|pc[12]~51\) # (GND)))
-- \PC|pc[13]~53\ = CARRY((!\PC|pc[12]~51\) # (!\PC|pc\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|pc\(13),
	datad => VCC,
	cin => \PC|pc[12]~51\,
	combout => \PC|pc[13]~52_combout\,
	cout => \PC|pc[13]~53\);

-- Location: FF_X79_Y11_N25
\PC|pc[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[13]~52_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(13));

-- Location: LCCOMB_X80_Y11_N18
\FFPC|Q~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~11_combout\ = (!\i_rst_n~input_o\ & \PC|pc\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_rst_n~input_o\,
	datad => \PC|pc\(13),
	combout => \FFPC|Q~11_combout\);

-- Location: FF_X80_Y11_N19
\FFPC|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(13));

-- Location: LCCOMB_X79_Y11_N26
\PC|pc[14]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[14]~54_combout\ = (\PC|pc\(14) & (\PC|pc[13]~53\ $ (GND))) # (!\PC|pc\(14) & (!\PC|pc[13]~53\ & VCC))
-- \PC|pc[14]~55\ = CARRY((\PC|pc\(14) & !\PC|pc[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|pc\(14),
	datad => VCC,
	cin => \PC|pc[13]~53\,
	combout => \PC|pc[14]~54_combout\,
	cout => \PC|pc[14]~55\);

-- Location: FF_X79_Y11_N27
\PC|pc[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[14]~54_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(14));

-- Location: LCCOMB_X80_Y11_N20
\FFPC|Q~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~12_combout\ = (\PC|pc\(14) & !\i_rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|pc\(14),
	datac => \i_rst_n~input_o\,
	combout => \FFPC|Q~12_combout\);

-- Location: FF_X80_Y11_N21
\FFPC|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(14));

-- Location: LCCOMB_X79_Y11_N28
\PC|pc[15]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[15]~56_combout\ = (\PC|pc\(15) & (!\PC|pc[14]~55\)) # (!\PC|pc\(15) & ((\PC|pc[14]~55\) # (GND)))
-- \PC|pc[15]~57\ = CARRY((!\PC|pc[14]~55\) # (!\PC|pc\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|pc\(15),
	datad => VCC,
	cin => \PC|pc[14]~55\,
	combout => \PC|pc[15]~56_combout\,
	cout => \PC|pc[15]~57\);

-- Location: FF_X79_Y11_N29
\PC|pc[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[15]~56_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(15));

-- Location: LCCOMB_X80_Y11_N14
\FFPC|Q~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~13_combout\ = (!\i_rst_n~input_o\ & \PC|pc\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_rst_n~input_o\,
	datad => \PC|pc\(15),
	combout => \FFPC|Q~13_combout\);

-- Location: FF_X80_Y11_N15
\FFPC|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(15));

-- Location: LCCOMB_X79_Y11_N30
\PC|pc[16]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[16]~58_combout\ = (\PC|pc\(16) & (\PC|pc[15]~57\ $ (GND))) # (!\PC|pc\(16) & (!\PC|pc[15]~57\ & VCC))
-- \PC|pc[16]~59\ = CARRY((\PC|pc\(16) & !\PC|pc[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|pc\(16),
	datad => VCC,
	cin => \PC|pc[15]~57\,
	combout => \PC|pc[16]~58_combout\,
	cout => \PC|pc[16]~59\);

-- Location: FF_X79_Y11_N31
\PC|pc[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[16]~58_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(16));

-- Location: LCCOMB_X80_Y11_N28
\FFPC|Q~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~14_combout\ = (!\i_rst_n~input_o\ & \PC|pc\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_rst_n~input_o\,
	datad => \PC|pc\(16),
	combout => \FFPC|Q~14_combout\);

-- Location: FF_X80_Y11_N29
\FFPC|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(16));

-- Location: LCCOMB_X79_Y10_N0
\PC|pc[17]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[17]~60_combout\ = (\PC|pc\(17) & (!\PC|pc[16]~59\)) # (!\PC|pc\(17) & ((\PC|pc[16]~59\) # (GND)))
-- \PC|pc[17]~61\ = CARRY((!\PC|pc[16]~59\) # (!\PC|pc\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|pc\(17),
	datad => VCC,
	cin => \PC|pc[16]~59\,
	combout => \PC|pc[17]~60_combout\,
	cout => \PC|pc[17]~61\);

-- Location: FF_X79_Y10_N1
\PC|pc[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[17]~60_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(17));

-- Location: LCCOMB_X80_Y10_N8
\FFPC|Q~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~15_combout\ = (\PC|pc\(17) & !\i_rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|pc\(17),
	datad => \i_rst_n~input_o\,
	combout => \FFPC|Q~15_combout\);

-- Location: FF_X80_Y10_N9
\FFPC|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(17));

-- Location: LCCOMB_X79_Y10_N2
\PC|pc[18]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[18]~62_combout\ = (\PC|pc\(18) & (\PC|pc[17]~61\ $ (GND))) # (!\PC|pc\(18) & (!\PC|pc[17]~61\ & VCC))
-- \PC|pc[18]~63\ = CARRY((\PC|pc\(18) & !\PC|pc[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|pc\(18),
	datad => VCC,
	cin => \PC|pc[17]~61\,
	combout => \PC|pc[18]~62_combout\,
	cout => \PC|pc[18]~63\);

-- Location: FF_X79_Y10_N3
\PC|pc[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[18]~62_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(18));

-- Location: LCCOMB_X80_Y10_N14
\FFPC|Q~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~16_combout\ = (\PC|pc\(18) & !\i_rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|pc\(18),
	datad => \i_rst_n~input_o\,
	combout => \FFPC|Q~16_combout\);

-- Location: FF_X80_Y10_N15
\FFPC|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(18));

-- Location: LCCOMB_X79_Y10_N4
\PC|pc[19]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[19]~64_combout\ = (\PC|pc\(19) & (!\PC|pc[18]~63\)) # (!\PC|pc\(19) & ((\PC|pc[18]~63\) # (GND)))
-- \PC|pc[19]~65\ = CARRY((!\PC|pc[18]~63\) # (!\PC|pc\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|pc\(19),
	datad => VCC,
	cin => \PC|pc[18]~63\,
	combout => \PC|pc[19]~64_combout\,
	cout => \PC|pc[19]~65\);

-- Location: FF_X79_Y10_N5
\PC|pc[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[19]~64_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(19));

-- Location: LCCOMB_X80_Y10_N20
\FFPC|Q~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~17_combout\ = (\PC|pc\(19) & !\i_rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|pc\(19),
	datad => \i_rst_n~input_o\,
	combout => \FFPC|Q~17_combout\);

-- Location: FF_X80_Y10_N21
\FFPC|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(19));

-- Location: LCCOMB_X79_Y10_N6
\PC|pc[20]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[20]~66_combout\ = (\PC|pc\(20) & (\PC|pc[19]~65\ $ (GND))) # (!\PC|pc\(20) & (!\PC|pc[19]~65\ & VCC))
-- \PC|pc[20]~67\ = CARRY((\PC|pc\(20) & !\PC|pc[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|pc\(20),
	datad => VCC,
	cin => \PC|pc[19]~65\,
	combout => \PC|pc[20]~66_combout\,
	cout => \PC|pc[20]~67\);

-- Location: FF_X79_Y10_N7
\PC|pc[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[20]~66_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(20));

-- Location: LCCOMB_X80_Y10_N10
\FFPC|Q~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~18_combout\ = (\PC|pc\(20) & !\i_rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|pc\(20),
	datad => \i_rst_n~input_o\,
	combout => \FFPC|Q~18_combout\);

-- Location: FF_X80_Y10_N11
\FFPC|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(20));

-- Location: LCCOMB_X79_Y10_N8
\PC|pc[21]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[21]~68_combout\ = (\PC|pc\(21) & (!\PC|pc[20]~67\)) # (!\PC|pc\(21) & ((\PC|pc[20]~67\) # (GND)))
-- \PC|pc[21]~69\ = CARRY((!\PC|pc[20]~67\) # (!\PC|pc\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|pc\(21),
	datad => VCC,
	cin => \PC|pc[20]~67\,
	combout => \PC|pc[21]~68_combout\,
	cout => \PC|pc[21]~69\);

-- Location: FF_X79_Y10_N9
\PC|pc[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[21]~68_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(21));

-- Location: LCCOMB_X80_Y10_N16
\FFPC|Q~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~19_combout\ = (\PC|pc\(21) & !\i_rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|pc\(21),
	datad => \i_rst_n~input_o\,
	combout => \FFPC|Q~19_combout\);

-- Location: FF_X80_Y10_N17
\FFPC|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(21));

-- Location: LCCOMB_X79_Y10_N10
\PC|pc[22]~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[22]~70_combout\ = (\PC|pc\(22) & (\PC|pc[21]~69\ $ (GND))) # (!\PC|pc\(22) & (!\PC|pc[21]~69\ & VCC))
-- \PC|pc[22]~71\ = CARRY((\PC|pc\(22) & !\PC|pc[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|pc\(22),
	datad => VCC,
	cin => \PC|pc[21]~69\,
	combout => \PC|pc[22]~70_combout\,
	cout => \PC|pc[22]~71\);

-- Location: FF_X79_Y10_N11
\PC|pc[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[22]~70_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(22));

-- Location: LCCOMB_X80_Y10_N26
\FFPC|Q~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~20_combout\ = (\PC|pc\(22) & !\i_rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|pc\(22),
	datad => \i_rst_n~input_o\,
	combout => \FFPC|Q~20_combout\);

-- Location: FF_X80_Y10_N27
\FFPC|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(22));

-- Location: LCCOMB_X79_Y10_N12
\PC|pc[23]~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[23]~72_combout\ = (\PC|pc\(23) & (!\PC|pc[22]~71\)) # (!\PC|pc\(23) & ((\PC|pc[22]~71\) # (GND)))
-- \PC|pc[23]~73\ = CARRY((!\PC|pc[22]~71\) # (!\PC|pc\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|pc\(23),
	datad => VCC,
	cin => \PC|pc[22]~71\,
	combout => \PC|pc[23]~72_combout\,
	cout => \PC|pc[23]~73\);

-- Location: FF_X79_Y10_N13
\PC|pc[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[23]~72_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(23));

-- Location: LCCOMB_X80_Y10_N4
\FFPC|Q~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~21_combout\ = (\PC|pc\(23) & !\i_rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|pc\(23),
	datad => \i_rst_n~input_o\,
	combout => \FFPC|Q~21_combout\);

-- Location: FF_X80_Y10_N5
\FFPC|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(23));

-- Location: LCCOMB_X79_Y10_N14
\PC|pc[24]~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[24]~74_combout\ = (\PC|pc\(24) & (\PC|pc[23]~73\ $ (GND))) # (!\PC|pc\(24) & (!\PC|pc[23]~73\ & VCC))
-- \PC|pc[24]~75\ = CARRY((\PC|pc\(24) & !\PC|pc[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|pc\(24),
	datad => VCC,
	cin => \PC|pc[23]~73\,
	combout => \PC|pc[24]~74_combout\,
	cout => \PC|pc[24]~75\);

-- Location: FF_X79_Y10_N15
\PC|pc[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[24]~74_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(24));

-- Location: LCCOMB_X80_Y10_N30
\FFPC|Q~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~22_combout\ = (\PC|pc\(24) & !\i_rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|pc\(24),
	datad => \i_rst_n~input_o\,
	combout => \FFPC|Q~22_combout\);

-- Location: FF_X80_Y10_N31
\FFPC|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(24));

-- Location: LCCOMB_X79_Y10_N16
\PC|pc[25]~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[25]~76_combout\ = (\PC|pc\(25) & (!\PC|pc[24]~75\)) # (!\PC|pc\(25) & ((\PC|pc[24]~75\) # (GND)))
-- \PC|pc[25]~77\ = CARRY((!\PC|pc[24]~75\) # (!\PC|pc\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|pc\(25),
	datad => VCC,
	cin => \PC|pc[24]~75\,
	combout => \PC|pc[25]~76_combout\,
	cout => \PC|pc[25]~77\);

-- Location: FF_X79_Y10_N17
\PC|pc[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[25]~76_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(25));

-- Location: LCCOMB_X80_Y10_N12
\FFPC|Q~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~23_combout\ = (\PC|pc\(25) & !\i_rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|pc\(25),
	datad => \i_rst_n~input_o\,
	combout => \FFPC|Q~23_combout\);

-- Location: FF_X80_Y10_N13
\FFPC|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(25));

-- Location: LCCOMB_X79_Y10_N18
\PC|pc[26]~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[26]~78_combout\ = (\PC|pc\(26) & (\PC|pc[25]~77\ $ (GND))) # (!\PC|pc\(26) & (!\PC|pc[25]~77\ & VCC))
-- \PC|pc[26]~79\ = CARRY((\PC|pc\(26) & !\PC|pc[25]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|pc\(26),
	datad => VCC,
	cin => \PC|pc[25]~77\,
	combout => \PC|pc[26]~78_combout\,
	cout => \PC|pc[26]~79\);

-- Location: FF_X79_Y10_N19
\PC|pc[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[26]~78_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(26));

-- Location: LCCOMB_X80_Y10_N2
\FFPC|Q~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~24_combout\ = (\PC|pc\(26) & !\i_rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|pc\(26),
	datad => \i_rst_n~input_o\,
	combout => \FFPC|Q~24_combout\);

-- Location: FF_X80_Y10_N3
\FFPC|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(26));

-- Location: LCCOMB_X79_Y10_N20
\PC|pc[27]~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[27]~80_combout\ = (\PC|pc\(27) & (!\PC|pc[26]~79\)) # (!\PC|pc\(27) & ((\PC|pc[26]~79\) # (GND)))
-- \PC|pc[27]~81\ = CARRY((!\PC|pc[26]~79\) # (!\PC|pc\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|pc\(27),
	datad => VCC,
	cin => \PC|pc[26]~79\,
	combout => \PC|pc[27]~80_combout\,
	cout => \PC|pc[27]~81\);

-- Location: FF_X79_Y10_N21
\PC|pc[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[27]~80_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(27));

-- Location: LCCOMB_X80_Y10_N28
\FFPC|Q~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~25_combout\ = (\PC|pc\(27) & !\i_rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|pc\(27),
	datad => \i_rst_n~input_o\,
	combout => \FFPC|Q~25_combout\);

-- Location: FF_X80_Y10_N29
\FFPC|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(27));

-- Location: LCCOMB_X79_Y10_N22
\PC|pc[28]~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[28]~82_combout\ = (\PC|pc\(28) & (\PC|pc[27]~81\ $ (GND))) # (!\PC|pc\(28) & (!\PC|pc[27]~81\ & VCC))
-- \PC|pc[28]~83\ = CARRY((\PC|pc\(28) & !\PC|pc[27]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|pc\(28),
	datad => VCC,
	cin => \PC|pc[27]~81\,
	combout => \PC|pc[28]~82_combout\,
	cout => \PC|pc[28]~83\);

-- Location: FF_X79_Y10_N23
\PC|pc[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[28]~82_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(28));

-- Location: LCCOMB_X80_Y10_N18
\FFPC|Q~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~26_combout\ = (\PC|pc\(28) & !\i_rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|pc\(28),
	datad => \i_rst_n~input_o\,
	combout => \FFPC|Q~26_combout\);

-- Location: FF_X80_Y10_N19
\FFPC|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(28));

-- Location: LCCOMB_X79_Y10_N24
\PC|pc[29]~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[29]~84_combout\ = (\PC|pc\(29) & (!\PC|pc[28]~83\)) # (!\PC|pc\(29) & ((\PC|pc[28]~83\) # (GND)))
-- \PC|pc[29]~85\ = CARRY((!\PC|pc[28]~83\) # (!\PC|pc\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|pc\(29),
	datad => VCC,
	cin => \PC|pc[28]~83\,
	combout => \PC|pc[29]~84_combout\,
	cout => \PC|pc[29]~85\);

-- Location: FF_X79_Y10_N25
\PC|pc[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[29]~84_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(29));

-- Location: LCCOMB_X80_Y10_N0
\FFPC|Q~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~27_combout\ = (\PC|pc\(29) & !\i_rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|pc\(29),
	datad => \i_rst_n~input_o\,
	combout => \FFPC|Q~27_combout\);

-- Location: FF_X80_Y10_N1
\FFPC|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(29));

-- Location: LCCOMB_X79_Y10_N26
\PC|pc[30]~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[30]~86_combout\ = (\PC|pc\(30) & (\PC|pc[29]~85\ $ (GND))) # (!\PC|pc\(30) & (!\PC|pc[29]~85\ & VCC))
-- \PC|pc[30]~87\ = CARRY((\PC|pc\(30) & !\PC|pc[29]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|pc\(30),
	datad => VCC,
	cin => \PC|pc[29]~85\,
	combout => \PC|pc[30]~86_combout\,
	cout => \PC|pc[30]~87\);

-- Location: FF_X79_Y10_N27
\PC|pc[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[30]~86_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(30));

-- Location: LCCOMB_X80_Y10_N6
\FFPC|Q~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~28_combout\ = (\PC|pc\(30) & !\i_rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|pc\(30),
	datad => \i_rst_n~input_o\,
	combout => \FFPC|Q~28_combout\);

-- Location: FF_X80_Y10_N7
\FFPC|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(30));

-- Location: LCCOMB_X79_Y10_N28
\PC|pc[31]~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC|pc[31]~88_combout\ = \PC|pc[30]~87\ $ (\PC|pc\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PC|pc\(31),
	cin => \PC|pc[30]~87\,
	combout => \PC|pc[31]~88_combout\);

-- Location: FF_X79_Y10_N29
\PC|pc[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \PC|pc[31]~88_combout\,
	sclr => \i_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|pc\(31));

-- Location: LCCOMB_X80_Y10_N24
\FFPC|Q~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FFPC|Q~29_combout\ = (\PC|pc\(31) & !\i_rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|pc\(31),
	datad => \i_rst_n~input_o\,
	combout => \FFPC|Q~29_combout\);

-- Location: FF_X80_Y10_N25
\FFPC|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \FFPC|Q~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFPC|Q\(31));

-- Location: IOIBUF_X81_Y2_N1
\i_io_sw[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(0),
	o => \i_io_sw[0]~input_o\);

-- Location: IOIBUF_X81_Y44_N8
\i_io_sw[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(1),
	o => \i_io_sw[1]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\i_io_sw[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(2),
	o => \i_io_sw[2]~input_o\);

-- Location: IOIBUF_X81_Y25_N1
\i_io_sw[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(3),
	o => \i_io_sw[3]~input_o\);

-- Location: IOIBUF_X47_Y0_N8
\i_io_sw[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(4),
	o => \i_io_sw[4]~input_o\);

-- Location: IOIBUF_X81_Y65_N1
\i_io_sw[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(5),
	o => \i_io_sw[5]~input_o\);

-- Location: IOIBUF_X31_Y67_N1
\i_io_sw[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(6),
	o => \i_io_sw[6]~input_o\);

-- Location: IOIBUF_X81_Y41_N1
\i_io_sw[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(7),
	o => \i_io_sw[7]~input_o\);

-- Location: IOIBUF_X56_Y0_N15
\i_io_sw[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(8),
	o => \i_io_sw[8]~input_o\);

-- Location: IOIBUF_X58_Y67_N8
\i_io_sw[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(9),
	o => \i_io_sw[9]~input_o\);

-- Location: IOIBUF_X61_Y0_N1
\i_io_sw[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(10),
	o => \i_io_sw[10]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\i_io_sw[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(11),
	o => \i_io_sw[11]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\i_io_sw[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(12),
	o => \i_io_sw[12]~input_o\);

-- Location: IOIBUF_X47_Y67_N1
\i_io_sw[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(13),
	o => \i_io_sw[13]~input_o\);

-- Location: IOIBUF_X81_Y64_N1
\i_io_sw[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(14),
	o => \i_io_sw[14]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\i_io_sw[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(15),
	o => \i_io_sw[15]~input_o\);

-- Location: IOIBUF_X58_Y67_N1
\i_io_sw[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(16),
	o => \i_io_sw[16]~input_o\);

-- Location: IOIBUF_X65_Y0_N1
\i_io_sw[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(17),
	o => \i_io_sw[17]~input_o\);

-- Location: IOIBUF_X70_Y0_N8
\i_io_sw[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(18),
	o => \i_io_sw[18]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\i_io_sw[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(19),
	o => \i_io_sw[19]~input_o\);

-- Location: IOIBUF_X70_Y67_N22
\i_io_sw[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(20),
	o => \i_io_sw[20]~input_o\);

-- Location: IOIBUF_X81_Y52_N15
\i_io_sw[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(21),
	o => \i_io_sw[21]~input_o\);

-- Location: IOIBUF_X31_Y0_N15
\i_io_sw[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(22),
	o => \i_io_sw[22]~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\i_io_sw[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(23),
	o => \i_io_sw[23]~input_o\);

-- Location: IOIBUF_X17_Y0_N15
\i_io_sw[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(24),
	o => \i_io_sw[24]~input_o\);

-- Location: IOIBUF_X44_Y67_N15
\i_io_sw[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(25),
	o => \i_io_sw[25]~input_o\);

-- Location: IOIBUF_X49_Y67_N8
\i_io_sw[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(26),
	o => \i_io_sw[26]~input_o\);

-- Location: IOIBUF_X8_Y67_N8
\i_io_sw[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(27),
	o => \i_io_sw[27]~input_o\);

-- Location: IOIBUF_X15_Y67_N15
\i_io_sw[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(28),
	o => \i_io_sw[28]~input_o\);

-- Location: IOIBUF_X81_Y50_N1
\i_io_sw[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(29),
	o => \i_io_sw[29]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\i_io_sw[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(30),
	o => \i_io_sw[30]~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\i_io_sw[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_sw(31),
	o => \i_io_sw[31]~input_o\);

-- Location: IOIBUF_X33_Y67_N8
\i_io_btn[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_btn(0),
	o => \i_io_btn[0]~input_o\);

-- Location: IOIBUF_X42_Y0_N15
\i_io_btn[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_btn(1),
	o => \i_io_btn[1]~input_o\);

-- Location: IOIBUF_X81_Y64_N22
\i_io_btn[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_btn(2),
	o => \i_io_btn[2]~input_o\);

-- Location: IOIBUF_X10_Y0_N22
\i_io_btn[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_io_btn(3),
	o => \i_io_btn[3]~input_o\);

ww_o_pc_debug(0) <= \o_pc_debug[0]~output_o\;

ww_o_pc_debug(1) <= \o_pc_debug[1]~output_o\;

ww_o_pc_debug(2) <= \o_pc_debug[2]~output_o\;

ww_o_pc_debug(3) <= \o_pc_debug[3]~output_o\;

ww_o_pc_debug(4) <= \o_pc_debug[4]~output_o\;

ww_o_pc_debug(5) <= \o_pc_debug[5]~output_o\;

ww_o_pc_debug(6) <= \o_pc_debug[6]~output_o\;

ww_o_pc_debug(7) <= \o_pc_debug[7]~output_o\;

ww_o_pc_debug(8) <= \o_pc_debug[8]~output_o\;

ww_o_pc_debug(9) <= \o_pc_debug[9]~output_o\;

ww_o_pc_debug(10) <= \o_pc_debug[10]~output_o\;

ww_o_pc_debug(11) <= \o_pc_debug[11]~output_o\;

ww_o_pc_debug(12) <= \o_pc_debug[12]~output_o\;

ww_o_pc_debug(13) <= \o_pc_debug[13]~output_o\;

ww_o_pc_debug(14) <= \o_pc_debug[14]~output_o\;

ww_o_pc_debug(15) <= \o_pc_debug[15]~output_o\;

ww_o_pc_debug(16) <= \o_pc_debug[16]~output_o\;

ww_o_pc_debug(17) <= \o_pc_debug[17]~output_o\;

ww_o_pc_debug(18) <= \o_pc_debug[18]~output_o\;

ww_o_pc_debug(19) <= \o_pc_debug[19]~output_o\;

ww_o_pc_debug(20) <= \o_pc_debug[20]~output_o\;

ww_o_pc_debug(21) <= \o_pc_debug[21]~output_o\;

ww_o_pc_debug(22) <= \o_pc_debug[22]~output_o\;

ww_o_pc_debug(23) <= \o_pc_debug[23]~output_o\;

ww_o_pc_debug(24) <= \o_pc_debug[24]~output_o\;

ww_o_pc_debug(25) <= \o_pc_debug[25]~output_o\;

ww_o_pc_debug(26) <= \o_pc_debug[26]~output_o\;

ww_o_pc_debug(27) <= \o_pc_debug[27]~output_o\;

ww_o_pc_debug(28) <= \o_pc_debug[28]~output_o\;

ww_o_pc_debug(29) <= \o_pc_debug[29]~output_o\;

ww_o_pc_debug(30) <= \o_pc_debug[30]~output_o\;

ww_o_pc_debug(31) <= \o_pc_debug[31]~output_o\;

ww_o_insn_vld <= \o_insn_vld~output_o\;

ww_o_io_ledr(0) <= \o_io_ledr[0]~output_o\;

ww_o_io_ledr(1) <= \o_io_ledr[1]~output_o\;

ww_o_io_ledr(2) <= \o_io_ledr[2]~output_o\;

ww_o_io_ledr(3) <= \o_io_ledr[3]~output_o\;

ww_o_io_ledr(4) <= \o_io_ledr[4]~output_o\;

ww_o_io_ledr(5) <= \o_io_ledr[5]~output_o\;

ww_o_io_ledr(6) <= \o_io_ledr[6]~output_o\;

ww_o_io_ledr(7) <= \o_io_ledr[7]~output_o\;

ww_o_io_ledr(8) <= \o_io_ledr[8]~output_o\;

ww_o_io_ledr(9) <= \o_io_ledr[9]~output_o\;

ww_o_io_ledr(10) <= \o_io_ledr[10]~output_o\;

ww_o_io_ledr(11) <= \o_io_ledr[11]~output_o\;

ww_o_io_ledr(12) <= \o_io_ledr[12]~output_o\;

ww_o_io_ledr(13) <= \o_io_ledr[13]~output_o\;

ww_o_io_ledr(14) <= \o_io_ledr[14]~output_o\;

ww_o_io_ledr(15) <= \o_io_ledr[15]~output_o\;

ww_o_io_ledr(16) <= \o_io_ledr[16]~output_o\;

ww_o_io_ledr(17) <= \o_io_ledr[17]~output_o\;

ww_o_io_ledr(18) <= \o_io_ledr[18]~output_o\;

ww_o_io_ledr(19) <= \o_io_ledr[19]~output_o\;

ww_o_io_ledr(20) <= \o_io_ledr[20]~output_o\;

ww_o_io_ledr(21) <= \o_io_ledr[21]~output_o\;

ww_o_io_ledr(22) <= \o_io_ledr[22]~output_o\;

ww_o_io_ledr(23) <= \o_io_ledr[23]~output_o\;

ww_o_io_ledr(24) <= \o_io_ledr[24]~output_o\;

ww_o_io_ledr(25) <= \o_io_ledr[25]~output_o\;

ww_o_io_ledr(26) <= \o_io_ledr[26]~output_o\;

ww_o_io_ledr(27) <= \o_io_ledr[27]~output_o\;

ww_o_io_ledr(28) <= \o_io_ledr[28]~output_o\;

ww_o_io_ledr(29) <= \o_io_ledr[29]~output_o\;

ww_o_io_ledr(30) <= \o_io_ledr[30]~output_o\;

ww_o_io_ledr(31) <= \o_io_ledr[31]~output_o\;

ww_o_io_ledg(0) <= \o_io_ledg[0]~output_o\;

ww_o_io_ledg(1) <= \o_io_ledg[1]~output_o\;

ww_o_io_ledg(2) <= \o_io_ledg[2]~output_o\;

ww_o_io_ledg(3) <= \o_io_ledg[3]~output_o\;

ww_o_io_ledg(4) <= \o_io_ledg[4]~output_o\;

ww_o_io_ledg(5) <= \o_io_ledg[5]~output_o\;

ww_o_io_ledg(6) <= \o_io_ledg[6]~output_o\;

ww_o_io_ledg(7) <= \o_io_ledg[7]~output_o\;

ww_o_io_ledg(8) <= \o_io_ledg[8]~output_o\;

ww_o_io_ledg(9) <= \o_io_ledg[9]~output_o\;

ww_o_io_ledg(10) <= \o_io_ledg[10]~output_o\;

ww_o_io_ledg(11) <= \o_io_ledg[11]~output_o\;

ww_o_io_ledg(12) <= \o_io_ledg[12]~output_o\;

ww_o_io_ledg(13) <= \o_io_ledg[13]~output_o\;

ww_o_io_ledg(14) <= \o_io_ledg[14]~output_o\;

ww_o_io_ledg(15) <= \o_io_ledg[15]~output_o\;

ww_o_io_ledg(16) <= \o_io_ledg[16]~output_o\;

ww_o_io_ledg(17) <= \o_io_ledg[17]~output_o\;

ww_o_io_ledg(18) <= \o_io_ledg[18]~output_o\;

ww_o_io_ledg(19) <= \o_io_ledg[19]~output_o\;

ww_o_io_ledg(20) <= \o_io_ledg[20]~output_o\;

ww_o_io_ledg(21) <= \o_io_ledg[21]~output_o\;

ww_o_io_ledg(22) <= \o_io_ledg[22]~output_o\;

ww_o_io_ledg(23) <= \o_io_ledg[23]~output_o\;

ww_o_io_ledg(24) <= \o_io_ledg[24]~output_o\;

ww_o_io_ledg(25) <= \o_io_ledg[25]~output_o\;

ww_o_io_ledg(26) <= \o_io_ledg[26]~output_o\;

ww_o_io_ledg(27) <= \o_io_ledg[27]~output_o\;

ww_o_io_ledg(28) <= \o_io_ledg[28]~output_o\;

ww_o_io_ledg(29) <= \o_io_ledg[29]~output_o\;

ww_o_io_ledg(30) <= \o_io_ledg[30]~output_o\;

ww_o_io_ledg(31) <= \o_io_ledg[31]~output_o\;

ww_o_io_hex0 <= \o_io_hex0~output_o\;

ww_o_io_hex1 <= \o_io_hex1~output_o\;

ww_o_io_hex2 <= \o_io_hex2~output_o\;

ww_o_io_hex3 <= \o_io_hex3~output_o\;

ww_o_io_hex4 <= \o_io_hex4~output_o\;

ww_o_io_hex5 <= \o_io_hex5~output_o\;

ww_o_io_hex6 <= \o_io_hex6~output_o\;

ww_o_io_hex7 <= \o_io_hex7~output_o\;

ww_o_io_lcd(0) <= \o_io_lcd[0]~output_o\;

ww_o_io_lcd(1) <= \o_io_lcd[1]~output_o\;

ww_o_io_lcd(2) <= \o_io_lcd[2]~output_o\;

ww_o_io_lcd(3) <= \o_io_lcd[3]~output_o\;

ww_o_io_lcd(4) <= \o_io_lcd[4]~output_o\;

ww_o_io_lcd(5) <= \o_io_lcd[5]~output_o\;

ww_o_io_lcd(6) <= \o_io_lcd[6]~output_o\;

ww_o_io_lcd(7) <= \o_io_lcd[7]~output_o\;

ww_o_io_lcd(8) <= \o_io_lcd[8]~output_o\;

ww_o_io_lcd(9) <= \o_io_lcd[9]~output_o\;

ww_o_io_lcd(10) <= \o_io_lcd[10]~output_o\;

ww_o_io_lcd(11) <= \o_io_lcd[11]~output_o\;

ww_o_io_lcd(12) <= \o_io_lcd[12]~output_o\;

ww_o_io_lcd(13) <= \o_io_lcd[13]~output_o\;

ww_o_io_lcd(14) <= \o_io_lcd[14]~output_o\;

ww_o_io_lcd(15) <= \o_io_lcd[15]~output_o\;

ww_o_io_lcd(16) <= \o_io_lcd[16]~output_o\;

ww_o_io_lcd(17) <= \o_io_lcd[17]~output_o\;

ww_o_io_lcd(18) <= \o_io_lcd[18]~output_o\;

ww_o_io_lcd(19) <= \o_io_lcd[19]~output_o\;

ww_o_io_lcd(20) <= \o_io_lcd[20]~output_o\;

ww_o_io_lcd(21) <= \o_io_lcd[21]~output_o\;

ww_o_io_lcd(22) <= \o_io_lcd[22]~output_o\;

ww_o_io_lcd(23) <= \o_io_lcd[23]~output_o\;

ww_o_io_lcd(24) <= \o_io_lcd[24]~output_o\;

ww_o_io_lcd(25) <= \o_io_lcd[25]~output_o\;

ww_o_io_lcd(26) <= \o_io_lcd[26]~output_o\;

ww_o_io_lcd(27) <= \o_io_lcd[27]~output_o\;

ww_o_io_lcd(28) <= \o_io_lcd[28]~output_o\;

ww_o_io_lcd(29) <= \o_io_lcd[29]~output_o\;

ww_o_io_lcd(30) <= \o_io_lcd[30]~output_o\;

ww_o_io_lcd(31) <= \o_io_lcd[31]~output_o\;
END structure;


