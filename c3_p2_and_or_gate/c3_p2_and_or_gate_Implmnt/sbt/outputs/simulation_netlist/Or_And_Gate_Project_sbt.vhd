-- ******************************************************************************

-- iCEcube Netlister

-- Version:            2020.12.27943

-- Build Date:         Dec  9 2020 18:18:06

-- File Generated:     Jun 9 2026 15:55:16

-- Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

-- Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

-- ******************************************************************************

-- VHDL file for cell "Or_And_Gate_Project" view "INTERFACE"

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library ice;
use ice.vcomponent_vital.all;

-- Entity of Or_And_Gate_Project
entity Or_And_Gate_Project is
port (
    o_LED_1 : out std_logic;
    i_Switch_4 : in std_logic;
    i_Switch_2 : in std_logic;
    o_LED_4 : out std_logic;
    i_Switch_3 : in std_logic;
    i_Switch_1 : in std_logic);
end Or_And_Gate_Project;

-- Architecture of Or_And_Gate_Project
-- View name is \INTERFACE\
architecture \INTERFACE\ of Or_And_Gate_Project is

signal \N__217\ : std_logic;
signal \N__216\ : std_logic;
signal \N__215\ : std_logic;
signal \N__208\ : std_logic;
signal \N__207\ : std_logic;
signal \N__206\ : std_logic;
signal \N__199\ : std_logic;
signal \N__198\ : std_logic;
signal \N__197\ : std_logic;
signal \N__190\ : std_logic;
signal \N__189\ : std_logic;
signal \N__188\ : std_logic;
signal \N__181\ : std_logic;
signal \N__180\ : std_logic;
signal \N__179\ : std_logic;
signal \N__172\ : std_logic;
signal \N__171\ : std_logic;
signal \N__170\ : std_logic;
signal \N__153\ : std_logic;
signal \N__150\ : std_logic;
signal \N__147\ : std_logic;
signal \N__144\ : std_logic;
signal \N__141\ : std_logic;
signal \N__138\ : std_logic;
signal \N__135\ : std_logic;
signal \N__132\ : std_logic;
signal \N__129\ : std_logic;
signal \N__126\ : std_logic;
signal \N__123\ : std_logic;
signal \N__120\ : std_logic;
signal \N__117\ : std_logic;
signal \N__114\ : std_logic;
signal \N__111\ : std_logic;
signal \N__108\ : std_logic;
signal \N__105\ : std_logic;
signal \N__102\ : std_logic;
signal \VCCG0\ : std_logic;
signal \GNDG0\ : std_logic;
signal \i_Switch_2_c\ : std_logic;
signal \i_Switch_1_c\ : std_logic;
signal \o_LED_1_c\ : std_logic;
signal \i_Switch_4_c\ : std_logic;
signal \i_Switch_3_c\ : std_logic;
signal \o_LED_4_0_i\ : std_logic;
signal \_gnd_net_\ : std_logic;

signal \i_Switch_1_wire\ : std_logic;
signal \i_Switch_3_wire\ : std_logic;
signal \i_Switch_2_wire\ : std_logic;
signal \i_Switch_4_wire\ : std_logic;
signal \o_LED_1_wire\ : std_logic;
signal \o_LED_4_wire\ : std_logic;

begin
    \i_Switch_1_wire\ <= i_Switch_1;
    \i_Switch_3_wire\ <= i_Switch_3;
    \i_Switch_2_wire\ <= i_Switch_2;
    \i_Switch_4_wire\ <= i_Switch_4;
    o_LED_1 <= \o_LED_1_wire\;
    o_LED_4 <= \o_LED_4_wire\;

    \i_Switch_1_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__217\,
            DIN => \N__216\,
            DOUT => \N__215\,
            PACKAGEPIN => \i_Switch_1_wire\
        );

    \i_Switch_1_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__217\,
            PADOUT => \N__216\,
            PADIN => \N__215\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => \i_Switch_1_c\,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \i_Switch_3_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__208\,
            DIN => \N__207\,
            DOUT => \N__206\,
            PACKAGEPIN => \i_Switch_3_wire\
        );

    \i_Switch_3_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__208\,
            PADOUT => \N__207\,
            PADIN => \N__206\,
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

    \i_Switch_2_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__199\,
            DIN => \N__198\,
            DOUT => \N__197\,
            PACKAGEPIN => \i_Switch_2_wire\
        );

    \i_Switch_2_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__199\,
            PADOUT => \N__198\,
            PADIN => \N__197\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => \i_Switch_2_c\,
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
            OE => \N__190\,
            DIN => \N__189\,
            DOUT => \N__188\,
            PACKAGEPIN => \i_Switch_4_wire\
        );

    \i_Switch_4_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__190\,
            PADOUT => \N__189\,
            PADIN => \N__188\,
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

    \o_LED_1_obuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__181\,
            DIN => \N__180\,
            DOUT => \N__179\,
            PACKAGEPIN => \o_LED_1_wire\
        );

    \o_LED_1_obuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__181\,
            PADOUT => \N__180\,
            PADIN => \N__179\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__141\,
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
            OE => \N__172\,
            DIN => \N__171\,
            DOUT => \N__170\,
            PACKAGEPIN => \o_LED_4_wire\
        );

    \o_LED_4_obuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__172\,
            PADOUT => \N__171\,
            PADIN => \N__170\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__111\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \I__28\ : InMux
    port map (
            O => \N__153\,
            I => \N__150\
        );

    \I__27\ : LocalMux
    port map (
            O => \N__150\,
            I => \i_Switch_2_c\
        );

    \I__26\ : InMux
    port map (
            O => \N__147\,
            I => \N__144\
        );

    \I__25\ : LocalMux
    port map (
            O => \N__144\,
            I => \i_Switch_1_c\
        );

    \I__24\ : IoInMux
    port map (
            O => \N__141\,
            I => \N__138\
        );

    \I__23\ : LocalMux
    port map (
            O => \N__138\,
            I => \N__135\
        );

    \I__22\ : Span4Mux_s0_h
    port map (
            O => \N__135\,
            I => \N__132\
        );

    \I__21\ : Odrv4
    port map (
            O => \N__132\,
            I => \o_LED_1_c\
        );

    \I__20\ : InMux
    port map (
            O => \N__129\,
            I => \N__126\
        );

    \I__19\ : LocalMux
    port map (
            O => \N__126\,
            I => \N__123\
        );

    \I__18\ : Span4Mux_v
    port map (
            O => \N__123\,
            I => \N__120\
        );

    \I__17\ : Odrv4
    port map (
            O => \N__120\,
            I => \i_Switch_4_c\
        );

    \I__16\ : InMux
    port map (
            O => \N__117\,
            I => \N__114\
        );

    \I__15\ : LocalMux
    port map (
            O => \N__114\,
            I => \i_Switch_3_c\
        );

    \I__14\ : IoInMux
    port map (
            O => \N__111\,
            I => \N__108\
        );

    \I__13\ : LocalMux
    port map (
            O => \N__108\,
            I => \N__105\
        );

    \I__12\ : Span12Mux_s0_h
    port map (
            O => \N__105\,
            I => \N__102\
        );

    \I__11\ : Odrv12
    port map (
            O => \N__102\,
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

    \o_LED_1_obuf_RNO_LC_12_4_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1100110000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__153\,
            in2 => \_gnd_net_\,
            in3 => \N__147\,
            lcout => \o_LED_1_c\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \o_LED_4_obuf_RNO_LC_12_6_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111110101010"
        )
    port map (
            in0 => \N__129\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__117\,
            lcout => \o_LED_4_0_i\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );
end \INTERFACE\;
