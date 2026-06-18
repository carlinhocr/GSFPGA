-- ******************************************************************************

-- iCEcube Netlister

-- Version:            2020.12.27943

-- Build Date:         Dec  9 2020 18:18:06

-- File Generated:     Jun 18 2026 14:23:40

-- Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

-- Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

-- ******************************************************************************

-- VHDL file for cell "Led_Project" view "INTERFACE"

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library ice;
use ice.vcomponent_vital.all;

-- Entity of Led_Project
entity Led_Project is
port (
    o_LED_1 : out std_logic;
    i_Switch_2 : in std_logic;
    i_Switch_1 : in std_logic;
    i_Clk : in std_logic);
end Led_Project;

-- Architecture of Led_Project
-- View name is \INTERFACE\
architecture \INTERFACE\ of Led_Project is

signal \N__146\ : std_logic;
signal \N__145\ : std_logic;
signal \N__144\ : std_logic;
signal \N__135\ : std_logic;
signal \N__134\ : std_logic;
signal \N__133\ : std_logic;
signal \N__126\ : std_logic;
signal \N__125\ : std_logic;
signal \N__124\ : std_logic;
signal \N__117\ : std_logic;
signal \N__116\ : std_logic;
signal \N__115\ : std_logic;
signal \N__98\ : std_logic;
signal \N__95\ : std_logic;
signal \N__92\ : std_logic;
signal \N__89\ : std_logic;
signal \N__86\ : std_logic;
signal \N__83\ : std_logic;
signal \N__80\ : std_logic;
signal \N__77\ : std_logic;
signal \N__74\ : std_logic;
signal \N__71\ : std_logic;
signal \N__68\ : std_logic;
signal \i_Clk_c_g\ : std_logic;
signal \VCCG0\ : std_logic;
signal \GNDG0\ : std_logic;
signal \i_Switch_2_c\ : std_logic;
signal \i_Switch_1_c\ : std_logic;
signal \r_AND_1_2\ : std_logic;
signal \_gnd_net_\ : std_logic;

signal \i_Clk_wire\ : std_logic;
signal \i_Switch_1_wire\ : std_logic;
signal \i_Switch_2_wire\ : std_logic;
signal \o_LED_1_wire\ : std_logic;

begin
    \i_Clk_wire\ <= i_Clk;
    \i_Switch_1_wire\ <= i_Switch_1;
    \i_Switch_2_wire\ <= i_Switch_2;
    o_LED_1 <= \o_LED_1_wire\;

    \i_Clk_ibuf_gb_io_preiogbuf\ : PRE_IO_GBUF
    port map (
            PADSIGNALTOGLOBALBUFFER => \N__144\,
            GLOBALBUFFEROUTPUT => \i_Clk_c_g\
        );

    \i_Clk_ibuf_gb_io_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__146\,
            DIN => \N__145\,
            DOUT => \N__144\,
            PACKAGEPIN => \i_Clk_wire\
        );

    \i_Clk_ibuf_gb_io_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__146\,
            PADOUT => \N__145\,
            PADIN => \N__144\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \i_Switch_1_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__135\,
            DIN => \N__134\,
            DOUT => \N__133\,
            PACKAGEPIN => \i_Switch_1_wire\
        );

    \i_Switch_1_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__135\,
            PADOUT => \N__134\,
            PADIN => \N__133\,
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

    \i_Switch_2_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__126\,
            DIN => \N__125\,
            DOUT => \N__124\,
            PACKAGEPIN => \i_Switch_2_wire\
        );

    \i_Switch_2_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__126\,
            PADOUT => \N__125\,
            PADIN => \N__124\,
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

    \o_LED_1_obuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__117\,
            DIN => \N__116\,
            DOUT => \N__115\,
            PACKAGEPIN => \o_LED_1_wire\
        );

    \o_LED_1_obuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "010101"
        )
    port map (
            PADOEN => \N__117\,
            PADOUT => \N__116\,
            PADIN => \N__115\,
            CLOCKENABLE => \VCCG0\,
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__77\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => \N__98\
        );

    \I__18\ : ClkMux
    port map (
            O => \N__98\,
            I => \N__95\
        );

    \I__17\ : GlobalMux
    port map (
            O => \N__95\,
            I => \N__92\
        );

    \I__16\ : gio2CtrlBuf
    port map (
            O => \N__92\,
            I => \i_Clk_c_g\
        );

    \I__15\ : InMux
    port map (
            O => \N__89\,
            I => \N__86\
        );

    \I__14\ : LocalMux
    port map (
            O => \N__86\,
            I => \i_Switch_2_c\
        );

    \I__13\ : InMux
    port map (
            O => \N__83\,
            I => \N__80\
        );

    \I__12\ : LocalMux
    port map (
            O => \N__80\,
            I => \i_Switch_1_c\
        );

    \I__11\ : IoInMux
    port map (
            O => \N__77\,
            I => \N__74\
        );

    \I__10\ : LocalMux
    port map (
            O => \N__74\,
            I => \N__71\
        );

    \I__9\ : Span4Mux_s0_h
    port map (
            O => \N__71\,
            I => \N__68\
        );

    \I__8\ : Odrv4
    port map (
            O => \N__68\,
            I => \r_AND_1_2\
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

    \r_AND_1_RNO_LC_12_4_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1010101000000000"
        )
    port map (
            in0 => \N__89\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__83\,
            lcout => \r_AND_1_2\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );
end \INTERFACE\;
