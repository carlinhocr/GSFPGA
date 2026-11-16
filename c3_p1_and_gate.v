module And_Gate (
  input i_Switch_1,
  input i_Switch_2,
  output o_LED_1
);
  assign o_LED_1 = i_Switch_1 & i_Switch_2;
endmodule


/*
command to compile and run:

yosys -p "synth_ice40 -top And_Gate -json c3_p1_and_gate.json" c3_p1_and_gate.v
nextpnr-ice40 --hx1k --package vq100 --pcf c3_p1_and_gate.pcf --json c3_p1_and_gate.json --asc c3_p1_and_gate.asc
icepack c3_p1_and_gate.asc c3_p1_and_gate.bin
iceprog c3_p1_and_gate.bin


command to install the suite (x64 for intel, darwin for arm)
download from https://github.com/YosysHQ/oss-cad-suite-build/releases

xattr -d com.apple.quarantine oss-cad-suite-darwin-*.tgz
tar xzf oss-cad-suite-darwin-*.tgz
source oss-cad-suite/environment
*/