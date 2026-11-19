module Latch(
    input i_Switch_1,
    input i_Switch_2,
    input i_Clk,
    output o_LED_1
);

    always @(posedge i_Clk)
    begin
        if (i_Switch_1 == 1'b0 && i_Switch_2 == 1'b0)
            o_LED_1 <= 1'b0;
        else if (i_Switch_1 == 1'b0 && i_Switch_2 == 1'b1)
            o_LED_1 <= 1'b1;
        else if (i_Switch_1 == 1'b1 && i_Switch_2 == 1'b0)
            o_LED_1 <= 1'b1;
        // missing the case 1 && 1 a latch will not form as the FlipFlop always has a result determined           
    end

endmodule

/*
command to compile and run:

yosys -p "synth_ice40 -top Latch -json c4_p5_nolatch.json" c4_p5_nolatch.v
nextpnr-ice40 --hx1k --package vq100 --pcf c4_p5_nolatch.pcf --json c4_p5_nolatch.json --asc c4_p5_nolatch.asc
icepack c4_p5_nolatch.asc c4_p5_nolatch.bin
iceprog c4_p5_nolatch.bin


command to install the suite (x64 for intel, darwin for arm)
download from https://github.com/YosysHQ/oss-cad-suite-build/releases

xattr -d com.apple.quarantine oss-cad-suite-darwin-*.tgz
tar xzf oss-cad-suite-darwin-*.tgz
source oss-cad-suite/environment
*/