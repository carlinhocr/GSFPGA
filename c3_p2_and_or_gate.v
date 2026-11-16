module Or_And_Gate (
  input i_Switch_1,
  input i_Switch_2,
  input i_Switch_3,
  input i_Switch_4,
  output o_LED_1,
  output o_LED_4
);
  assign o_LED_1 = i_Switch_1 & i_Switch_2;
  assign o_LED_4 = i_Switch_3 | i_Switch_4;
endmodule


/*
command to compile and run:

yosys -p "synth_ice40 -top Or_And_Gate -json c3_p2_and_or_gate.json" c3_p2_and_or_gate.v
nextpnr-ice40 --hx1k --package vq100 --pcf c3_p2_and_or_gate.pcf --json c3_p2_and_or_gate.json --asc c3_p2_and_or_gate.asc
icepack c3_p2_and_or_gate.asc c3_p2_and_or_gate.bin
iceprog c3_p2_and_or_gate.bin


command to install the suite (x64 for intel, darwin for arm)
download from https://github.com/YosysHQ/oss-cad-suite-build/releases

xattr -d com.apple.quarantine oss-cad-suite-darwin-*.tgz
tar xzf oss-cad-suite-darwin-*.tgz
source oss-cad-suite/environment
*/