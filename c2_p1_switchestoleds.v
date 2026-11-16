module Switches_to_Leds (
  input i_Switch_1,
  input i_Switch_2,
  input i_Switch_3,
  input i_Switch_4,
  output o_LED_1,
  output o_LED_2,
  output o_LED_3,
  output o_LED_4
);
  assign o_LED_1 = i_Switch_1;
  assign o_LED_2 = i_Switch_2;
  assign o_LED_3 = i_Switch_3;
  assign o_LED_4 = i_Switch_4;
endmodule

/*
command to compile and run:

yosys -p "synth_ice40 -top Switches_to_Leds -json c2_p1_switchestoleds.json" c2_p1_switchestoleds.v
nextpnr-ice40 --hx1k --package vq100 --pcf c2_p1_switchestoleds.pcf --json c2_p1_switchestoleds.json --asc c2_p1_switchestoleds.asc
icepack c2_p1_switchestoleds.asc c2_p1_switchestoleds.bin
iceprog c2_p1_switchestoleds.bin


command to install the suite (x64 for intel, darwin for arm)
download from https://github.com/YosysHQ/oss-cad-suite-build/releases

xattr -d com.apple.quarantine oss-cad-suite-darwin-*.tgz
tar xzf oss-cad-suite-darwin-*.tgz
source oss-cad-suite/environment
*/