// ******************************************************************************

// iCEcube Netlister

// Version:            2020.12.27943

// Build Date:         Dec  9 2020 18:18:12

// File Generated:     Jun 18 2026 14:23:40

// Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

// Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

// ******************************************************************************

// Verilog file for cell "Led_Project" view "INTERFACE"

module Led_Project (
    o_LED_1,
    i_Switch_2,
    i_Switch_1,
    i_Clk);

    output o_LED_1;
    input i_Switch_2;
    input i_Switch_1;
    input i_Clk;

    wire N__146;
    wire N__145;
    wire N__144;
    wire N__135;
    wire N__134;
    wire N__133;
    wire N__126;
    wire N__125;
    wire N__124;
    wire N__117;
    wire N__116;
    wire N__115;
    wire N__98;
    wire N__95;
    wire N__92;
    wire N__89;
    wire N__86;
    wire N__83;
    wire N__80;
    wire N__77;
    wire N__74;
    wire N__71;
    wire N__68;
    wire i_Clk_c_g;
    wire VCCG0;
    wire GNDG0;
    wire i_Switch_2_c;
    wire i_Switch_1_c;
    wire r_AND_1_2;
    wire _gnd_net_;

    PRE_IO_GBUF i_Clk_ibuf_gb_io_preiogbuf (
            .PADSIGNALTOGLOBALBUFFER(N__144),
            .GLOBALBUFFEROUTPUT(i_Clk_c_g));
    IO_PAD i_Clk_ibuf_gb_io_iopad (
            .OE(N__146),
            .DIN(N__145),
            .DOUT(N__144),
            .PACKAGEPIN(i_Clk));
    defparam i_Clk_ibuf_gb_io_preio.NEG_TRIGGER=1'b0;
    defparam i_Clk_ibuf_gb_io_preio.PIN_TYPE=6'b000001;
    PRE_IO i_Clk_ibuf_gb_io_preio (
            .PADOEN(N__146),
            .PADOUT(N__145),
            .PADIN(N__144),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD i_Switch_1_ibuf_iopad (
            .OE(N__135),
            .DIN(N__134),
            .DOUT(N__133),
            .PACKAGEPIN(i_Switch_1));
    defparam i_Switch_1_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam i_Switch_1_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO i_Switch_1_ibuf_preio (
            .PADOEN(N__135),
            .PADOUT(N__134),
            .PADIN(N__133),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(i_Switch_1_c),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD i_Switch_2_ibuf_iopad (
            .OE(N__126),
            .DIN(N__125),
            .DOUT(N__124),
            .PACKAGEPIN(i_Switch_2));
    defparam i_Switch_2_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam i_Switch_2_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO i_Switch_2_ibuf_preio (
            .PADOEN(N__126),
            .PADOUT(N__125),
            .PADIN(N__124),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(i_Switch_2_c),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD o_LED_1_obuf_iopad (
            .OE(N__117),
            .DIN(N__116),
            .DOUT(N__115),
            .PACKAGEPIN(o_LED_1));
    defparam o_LED_1_obuf_preio.NEG_TRIGGER=1'b0;
    defparam o_LED_1_obuf_preio.PIN_TYPE=6'b010101;
    PRE_IO o_LED_1_obuf_preio (
            .PADOEN(N__117),
            .PADOUT(N__116),
            .PADIN(N__115),
            .CLOCKENABLE(VCCG0),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__77),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK(N__98));
    ClkMux I__18 (
            .O(N__98),
            .I(N__95));
    GlobalMux I__17 (
            .O(N__95),
            .I(N__92));
    gio2CtrlBuf I__16 (
            .O(N__92),
            .I(i_Clk_c_g));
    InMux I__15 (
            .O(N__89),
            .I(N__86));
    LocalMux I__14 (
            .O(N__86),
            .I(i_Switch_2_c));
    InMux I__13 (
            .O(N__83),
            .I(N__80));
    LocalMux I__12 (
            .O(N__80),
            .I(i_Switch_1_c));
    IoInMux I__11 (
            .O(N__77),
            .I(N__74));
    LocalMux I__10 (
            .O(N__74),
            .I(N__71));
    Span4Mux_s0_h I__9 (
            .O(N__71),
            .I(N__68));
    Odrv4 I__8 (
            .O(N__68),
            .I(r_AND_1_2));
    VCC VCC (
            .Y(VCCG0));
    GND GND (
            .Y(GNDG0));
    GND GND_Inst (
            .Y(_gnd_net_));
    defparam r_AND_1_RNO_LC_12_4_0.C_ON=1'b0;
    defparam r_AND_1_RNO_LC_12_4_0.SEQ_MODE=4'b0000;
    defparam r_AND_1_RNO_LC_12_4_0.LUT_INIT=16'b1010101000000000;
    LogicCell40 r_AND_1_RNO_LC_12_4_0 (
            .in0(N__89),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__83),
            .lcout(r_AND_1_2),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
endmodule // Led_Project
