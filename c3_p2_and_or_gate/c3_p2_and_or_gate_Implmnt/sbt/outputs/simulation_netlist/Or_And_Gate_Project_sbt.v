// ******************************************************************************

// iCEcube Netlister

// Version:            2020.12.27943

// Build Date:         Dec  9 2020 18:18:12

// File Generated:     Jun 9 2026 15:55:16

// Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

// Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

// ******************************************************************************

// Verilog file for cell "Or_And_Gate_Project" view "INTERFACE"

module Or_And_Gate_Project (
    o_LED_1,
    i_Switch_4,
    i_Switch_2,
    o_LED_4,
    i_Switch_3,
    i_Switch_1);

    output o_LED_1;
    input i_Switch_4;
    input i_Switch_2;
    output o_LED_4;
    input i_Switch_3;
    input i_Switch_1;

    wire N__217;
    wire N__216;
    wire N__215;
    wire N__208;
    wire N__207;
    wire N__206;
    wire N__199;
    wire N__198;
    wire N__197;
    wire N__190;
    wire N__189;
    wire N__188;
    wire N__181;
    wire N__180;
    wire N__179;
    wire N__172;
    wire N__171;
    wire N__170;
    wire N__153;
    wire N__150;
    wire N__147;
    wire N__144;
    wire N__141;
    wire N__138;
    wire N__135;
    wire N__132;
    wire N__129;
    wire N__126;
    wire N__123;
    wire N__120;
    wire N__117;
    wire N__114;
    wire N__111;
    wire N__108;
    wire N__105;
    wire N__102;
    wire VCCG0;
    wire GNDG0;
    wire i_Switch_2_c;
    wire i_Switch_1_c;
    wire o_LED_1_c;
    wire i_Switch_4_c;
    wire i_Switch_3_c;
    wire o_LED_4_0_i;
    wire _gnd_net_;

    IO_PAD i_Switch_1_ibuf_iopad (
            .OE(N__217),
            .DIN(N__216),
            .DOUT(N__215),
            .PACKAGEPIN(i_Switch_1));
    defparam i_Switch_1_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam i_Switch_1_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO i_Switch_1_ibuf_preio (
            .PADOEN(N__217),
            .PADOUT(N__216),
            .PADIN(N__215),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(i_Switch_1_c),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD i_Switch_3_ibuf_iopad (
            .OE(N__208),
            .DIN(N__207),
            .DOUT(N__206),
            .PACKAGEPIN(i_Switch_3));
    defparam i_Switch_3_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam i_Switch_3_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO i_Switch_3_ibuf_preio (
            .PADOEN(N__208),
            .PADOUT(N__207),
            .PADIN(N__206),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(i_Switch_3_c),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD i_Switch_2_ibuf_iopad (
            .OE(N__199),
            .DIN(N__198),
            .DOUT(N__197),
            .PACKAGEPIN(i_Switch_2));
    defparam i_Switch_2_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam i_Switch_2_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO i_Switch_2_ibuf_preio (
            .PADOEN(N__199),
            .PADOUT(N__198),
            .PADIN(N__197),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(i_Switch_2_c),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD i_Switch_4_ibuf_iopad (
            .OE(N__190),
            .DIN(N__189),
            .DOUT(N__188),
            .PACKAGEPIN(i_Switch_4));
    defparam i_Switch_4_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam i_Switch_4_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO i_Switch_4_ibuf_preio (
            .PADOEN(N__190),
            .PADOUT(N__189),
            .PADIN(N__188),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(i_Switch_4_c),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD o_LED_1_obuf_iopad (
            .OE(N__181),
            .DIN(N__180),
            .DOUT(N__179),
            .PACKAGEPIN(o_LED_1));
    defparam o_LED_1_obuf_preio.NEG_TRIGGER=1'b0;
    defparam o_LED_1_obuf_preio.PIN_TYPE=6'b011001;
    PRE_IO o_LED_1_obuf_preio (
            .PADOEN(N__181),
            .PADOUT(N__180),
            .PADIN(N__179),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__141),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD o_LED_4_obuf_iopad (
            .OE(N__172),
            .DIN(N__171),
            .DOUT(N__170),
            .PACKAGEPIN(o_LED_4));
    defparam o_LED_4_obuf_preio.NEG_TRIGGER=1'b0;
    defparam o_LED_4_obuf_preio.PIN_TYPE=6'b011001;
    PRE_IO o_LED_4_obuf_preio (
            .PADOEN(N__172),
            .PADOUT(N__171),
            .PADIN(N__170),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__111),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    InMux I__28 (
            .O(N__153),
            .I(N__150));
    LocalMux I__27 (
            .O(N__150),
            .I(i_Switch_2_c));
    InMux I__26 (
            .O(N__147),
            .I(N__144));
    LocalMux I__25 (
            .O(N__144),
            .I(i_Switch_1_c));
    IoInMux I__24 (
            .O(N__141),
            .I(N__138));
    LocalMux I__23 (
            .O(N__138),
            .I(N__135));
    Span4Mux_s0_h I__22 (
            .O(N__135),
            .I(N__132));
    Odrv4 I__21 (
            .O(N__132),
            .I(o_LED_1_c));
    InMux I__20 (
            .O(N__129),
            .I(N__126));
    LocalMux I__19 (
            .O(N__126),
            .I(N__123));
    Span4Mux_v I__18 (
            .O(N__123),
            .I(N__120));
    Odrv4 I__17 (
            .O(N__120),
            .I(i_Switch_4_c));
    InMux I__16 (
            .O(N__117),
            .I(N__114));
    LocalMux I__15 (
            .O(N__114),
            .I(i_Switch_3_c));
    IoInMux I__14 (
            .O(N__111),
            .I(N__108));
    LocalMux I__13 (
            .O(N__108),
            .I(N__105));
    Span12Mux_s0_h I__12 (
            .O(N__105),
            .I(N__102));
    Odrv12 I__11 (
            .O(N__102),
            .I(o_LED_4_0_i));
    VCC VCC (
            .Y(VCCG0));
    GND GND (
            .Y(GNDG0));
    GND GND_Inst (
            .Y(_gnd_net_));
    defparam o_LED_1_obuf_RNO_LC_12_4_7.C_ON=1'b0;
    defparam o_LED_1_obuf_RNO_LC_12_4_7.SEQ_MODE=4'b0000;
    defparam o_LED_1_obuf_RNO_LC_12_4_7.LUT_INIT=16'b1100110000000000;
    LogicCell40 o_LED_1_obuf_RNO_LC_12_4_7 (
            .in0(_gnd_net_),
            .in1(N__153),
            .in2(_gnd_net_),
            .in3(N__147),
            .lcout(o_LED_1_c),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam o_LED_4_obuf_RNO_LC_12_6_2.C_ON=1'b0;
    defparam o_LED_4_obuf_RNO_LC_12_6_2.SEQ_MODE=4'b0000;
    defparam o_LED_4_obuf_RNO_LC_12_6_2.LUT_INIT=16'b1111111110101010;
    LogicCell40 o_LED_4_obuf_RNO_LC_12_6_2 (
            .in0(N__129),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__117),
            .lcout(o_LED_4_0_i),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
endmodule // Or_And_Gate_Project
