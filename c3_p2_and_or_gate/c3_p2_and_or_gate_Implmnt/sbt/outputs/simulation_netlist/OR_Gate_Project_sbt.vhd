-- ******************************************************************************

-- iCEcube Netlister

-- Version:            2020.12.27943

-- Build Date:         Dec  9 2020 18:18:06

-- File Generated:     Jun 9 2026 15:53:35

-- Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

-- Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

-- ******************************************************************************

-- VHDL file for cell "OR_Gate_Project" view "INTERFACE"

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library ice;
use ice.vcomponent_vital.all;

-- Entity of OR_Gate_Project
entity OR_Gate_Project is
port (
    o_LED_4 : out std_logic;
    i_Switch_4 : in std_logic;
    i_Switch_3 : in std_logic);
end OR_Gate_Project;

-- Architecture of OR_Gate_Project
-- View name is \INTERFACE\
architecture \INTERFACE\ of OR_Gate_Project is

signal \N__119\ : std_logic;
signal \N__118\ : std_logic;
signal \N__117\ : std_logic;
signal \N__110\ : std_logic;
signal \N__109\ : std_logic;
signal \N__108\ : std_logic;
signal \N__101\ : std_logic;
signal \N__100\ : std_logic;
signal \N__99\ : std_logic;
signal \N__82\ : std_logic;
signal \N__79\ : std_logic;
signal \N__76\ : std_logic;
signal \N__73\ : std_logic;
signal \N__70\ : std_logic;
signal \N__67\ : std_logic;
signal \N__64\ : std_logic;
signal \N__61\ : std_logic;
signal \N__58\ : std_logic;
signal \N__55\ : std_logic;
signal \VCCG0\ : std_logic;
signal \GNDG0\ : std_logic;
signal \i_Switch_4_c\ : std_logic;
signal \i_Switch_3_c\ : std_logic;
signal \o_LED_4_0_i\ : std_logic;
signal \_gnd_net_\ : std_logic;

signal \i_Switch_3_wire\ : std_logic;
signal \i_Switch_4_wire\ : std_logic;
signal \o_LED_4_wire\ : std_logic;

begin
    \i_Switch_3_wire\ <= i_Switch_3;
    \i_Switch_4_wire\ <= i_Switch_4;
    o_LED_4 <= \o_LED_4_wire\;

    \i_Switch_3_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__119\,
            DIN => \N__118\,
            DOUT => \N__117\,
            PACKAGEPIN => \i_Switch_3_wire\
        );

    \i_Switch_3_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__119\,
            PADOUT => \N__118\,
            PADIN => \N__117\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => \i_Switch_3_c\,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \i_Switch_4_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__110\,
            DIN => \N__109\,
            DOUT => \N__108\,
            PACKAGEPIN => \i_Switch_4_wire\
        );

    \i_Switch_4_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__110\,
            PADOUT => \N__109\,
            PADIN => \N__108\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => \i_Switch_4_c\,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \o_LED_4_obuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__101\,
            DIN => \N__100\,
            DOUT => \N__99\,
            PACKAGEPIN => \o_LED_4_wire\
        );

    \o_LED_4_obuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__101\,
            PADOUT => \N__100\,
            PADIN => \N__99\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__64\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \I__16\ : InMux
    port map (
            O => \N__82\,
            I => \N__79\
        );

    \I__15\ : LocalMux
    port map (
            O => \N__79\,
            I => \N__76\
        );

    \I__14\ : Span4Mux_v
    port map (
            O => \N__76\,
            I => \N__73\
        );

    \I__13\ : Odrv4
    port map (
            O => \N__73\,
            I => \i_Switch_4_c\
        );

    \I__12\ : InMux
    port map (
            O => \N__70\,
            I => \N__67\
        );

    \I__11\ : LocalMux
    port map (
            O => \N__67\,
            I => \i_Switch_3_c\
        );

    \I__10\ : IoInMux
    port map (
            O => \N__64\,
            I => \N__61\
        );

    \I__9\ : LocalMux
    port map (
            O => \N__61\,
            I => \N__58\
        );

    \I__8\ : Span4Mux_s0_h
    port map (
            O => \N__58\,
            I => \N__55\
        );

    \I__7\ : Odrv4
    port map (
            O => \N__55\,
            I => \o_LED_4_0_i\
        );

    \VCC\ : VCC
    port map (
            Y => \VCCG0\
        );

    \GND\ : GND
    port map (
            Y => \GNDG0\
        );

    \GND_Inst\ : GND
    port map (
            Y => \_gnd_net_\
        );

    \o_LED_4_obuf_RNO_LC_12_6_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111110101010"
        )
    port map (
            in0 => \N__82\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__70\,
            lcout => \o_LED_4_0_i\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );
end \INTERFACE\;
