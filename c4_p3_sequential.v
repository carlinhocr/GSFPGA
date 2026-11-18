module Led_Sequential (
    input i_Switch_1,
    input i_Switch_2,
    input i_Clk,
    output o_LED_1
);

    reg r_AND_1 =1'b0; 

    always @(posedge i_Clk)
    begin
        r_AND_1 <= i_Switch_1 && i_Switch_2;
    end

    assign o_LED_1 = r_AND_1;
endmodule

/*
command to compile and run:

yosys -p "synth_ice40 -top Led_Sequential -json c4_p3_sequential.json" c4_p3_sequential.v
nextpnr-ice40 --hx1k --package vq100 --pcf c4_p3_sequential.pcf --json c4_p3_sequential.json --asc c4_p3_sequential.asc
icepack c4_p3_sequential.asc c4_p3_sequential.bin
iceprog c4_p3_sequential.bin


command to install the suite (x64 for intel, darwin for arm)
download from https://github.com/YosysHQ/oss-cad-suite-build/releases

xattr -d com.apple.quarantine oss-cad-suite-darwin-*.tgz
tar xzf oss-cad-suite-darwin-*.tgz
source oss-cad-suite/environment
*/