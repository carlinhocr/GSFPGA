module Reset_Sync(
    input i_Reset, //used as reset swith1
    input i_Clk,
    output o_LED_1 //used as signal led 1
);

    always @(posedge i_Clk)
    begin
        if (i_Reset)
            o_Q <= 1'b1;
        else
            o_Q <= 1'b0;        
    end

    assign o_LED_1 = o_Q;

endmodule

/*
command to compile and run:

yosys -p "synth_ice40 -top Reset_Sync -json c4_p6_reset_sync.json" c4_p6_reset_sync.v
nextpnr-ice40 --hx1k --package vq100 --pcf c4_p6_reset_sync.pcf --json c4_p6_reset_sync.json --asc c4_p6_reset_sync.asc
icepack c4_p6_reset_sync.asc c4_p6_reset_sync.bin
iceprog c4_p6_reset_sync.bin


command to install the suite (x64 for intel, darwin for arm)
download from https://github.com/YosysHQ/oss-cad-suite-build/releases

xattr -d com.apple.quarantine oss-cad-suite-darwin-*.tgz
tar xzf oss-cad-suite-darwin-*.tgz
source oss-cad-suite/environment
*/