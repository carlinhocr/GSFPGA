module top (
  input  i_Clk,
  input  i_Switch_1,
  output o_LED_1, o_LED_2, o_LED_3, o_LED_4
);
  reg [26:0] cnt = 0;
  always @(posedge i_Clk) cnt <= cnt + 1;

  wire [3:0] leds = cnt[26:23] ^ {4{i_Switch_1}};
  assign {o_LED_4, o_LED_3, o_LED_2, o_LED_1} = leds;
endmodule

/*
command to compile and run:

yosys -p "synth_ice40 -top top -json c0_top.json" c0_top_code.v
nextpnr-ice40 --hx1k --package vq100 --pcf c0_top_pines.pcf --json c0_top.json --asc c0_top.asc
icepack c0_top.asc c0_top.bin
iceprog c0_top.bin


command to install the suite (x64 for intel, darwin for arm)
download from https://github.com/YosysHQ/oss-cad-suite-build/releases

xattr -d com.apple.quarantine oss-cad-suite-darwin-*.tgz
tar xzf oss-cad-suite-darwin-*.tgz
source oss-cad-suite/environment
*/