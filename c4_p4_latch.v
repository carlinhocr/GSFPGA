module Latch(
    input i_Switch_1,
    input i_Switch_2,
    output o_LED_1);

    always @(i_Switch_1 or i_Switch_2)
    begin
        if (i_Switch_1 == 1'b0 && i_Switch_2 == 1'b0)
            o_LED_1 <= 1'b0;
        else if (i_Switch_1 == 1'b0 && i_Switch_2 == 1'b1)
            o_LED_1 <= 1'b1;
        else if (i_Switch_1 == 1'b1 && i_Switch_2 == 1'b0)
            o_LED_1 <= 1'b1;
        // missing the case 1 && 1 a latch will form            
    end
endmodule

//it gives error
// 2.4.8. Executing PROC_DLATCH pass (convert process syncs to latches).
//ERROR: Latch inferred for signal `\Latch.\o_LED_1' from process `\Latch.$c4_p4_latch.v:8$proc$381': 
//$auto$proc_dlatch.cc:649:proc_dlatch$425

/*
command to compile and run:

yosys -p "synth_ice40 -top Latch -json c4_p4_latch.json" c4_p4_latch.v
nextpnr-ice40 --hx1k --package vq100 --pcf c4_p4_latch.pcf --json c4_p4_latch.json --asc c4_p4_latch.asc
icepack c4_p4_latch.asc c4_p4_latch.bin
iceprog c4_p4_latch.bin


command to install the suite (x64 for intel, darwin for arm)
download from https://github.com/YosysHQ/oss-cad-suite-build/releases

xattr -d com.apple.quarantine oss-cad-suite-darwin-*.tgz
tar xzf oss-cad-suite-darwin-*.tgz
source oss-cad-suite/environment
*/