// ******************************************************************************

// iCEcube Netlister

// Version:            2020.12.27943

// Build Date:         Dec  9 2020 18:18:12

// File Generated:     Jun 9 2026 15:53:35

// Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

// Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

// ******************************************************************************

// Verilog file for cell "OR_Gate_Project" view "INTERFACE"

module OR_Gate_Project (
    o_LED_4,
    i_Switch_4,
    i_Switch_3);

    output o_LED_4;
    input i_Switch_4;
    input i_Switch_3;

    wire N__119;
    wire N__118;
    wire N__117;
    wire N__110;
    wire N__109;
    wire N__108;
    wire N__101;
    wire N__100;
    wire N__99;
    wire N__82;
    wire N__79;
    wire N__76;
    wire N__73;
    wire N__70;
    wire N__67;
    wire N__64;
    wire N__61;
    wire N__58;
    wire N__55;
    wire VCCG0;
    wire GNDG0;
    wire i_Switch_4_c;
    wire i_Switch_3_c;
    wire o_LED_4_0_i;
    wire _gnd_net_;

    IO_PAD i_Switch_3_ibuf_iopad (
            .OE(N__119),
            .DIN(N__118),
            .DOUT(N__117),
            .PACKAGEPIN(i_Switch_3));
    defparam i_Switch_3_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam i_Switch_3_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO i_Switch_3_ibuf_preio (
            .PADOEN(N__119),
            .PADOUT(N__118),
            .PADIN(N__117),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(i_Switch_3_c),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD i_Switch_4_ibuf_iopad (
            .OE(N__110),
            .DIN(N__109),
            .DOUT(N__108),
            .PACKAGEPIN(i_Switch_4));
    defparam i_Switch_4_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam i_Switch_4_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO i_Switch_4_ibuf_preio (
            .PADOEN(N__110),
            .PADOUT(N__109),
            .PADIN(N__108),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(i_Switch_4_c),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD o_LED_4_obuf_iopad (
            .OE(N__101),
            .DIN(N__100),
            .DOUT(N__99),
            .PACKAGEPIN(o_LED_4));
    defparam o_LED_4_obuf_preio.NEG_TRIGGER=1'b0;
    defparam o_LED_4_obuf_preio.PIN_TYPE=6'b011001;
    PRE_IO o_LED_4_obuf_preio (
            .PADOEN(N__101),
            .PADOUT(N__100),
            .PADIN(N__99),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__64),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    InMux I__16 (
            .O(N__82),
            .I(N__79));
    LocalMux I__15 (
            .O(N__79),
            .I(N__76));
    Span4Mux_v I__14 (
            .O(N__76),
            .I(N__73));
    Odrv4 I__13 (
            .O(N__73),
            .I(i_Switch_4_c));
    InMux I__12 (
            .O(N__70),
            .I(N__67));
    LocalMux I__11 (
            .O(N__67),
            .I(i_Switch_3_c));
    IoInMux I__10 (
            .O(N__64),
            .I(N__61));
    LocalMux I__9 (
            .O(N__61),
            .I(N__58));
    Span4Mux_s0_h I__8 (
            .O(N__58),
            .I(N__55));
    Odrv4 I__7 (
            .O(N__55),
            .I(o_LED_4_0_i));
    VCC VCC (
            .Y(VCCG0));
    GND GND (
            .Y(GNDG0));
    GND GND_Inst (
            .Y(_gnd_net_));
    defparam o_LED_4_obuf_RNO_LC_12_6_0.C_ON=1'b0;
    defparam o_LED_4_obuf_RNO_LC_12_6_0.SEQ_MODE=4'b0000;
    defparam o_LED_4_obuf_RNO_LC_12_6_0.LUT_INIT=16'b1111111110101010;
    LogicCell40 o_LED_4_obuf_RNO_LC_12_6_0 (
            .in0(N__82),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__70),
            .lcout(o_LED_4_0_i),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
endmodule // OR_Gate_Project
