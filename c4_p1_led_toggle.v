module Led_Toggle (
    input i_Clk,
    input i_Switch_1,
    output o_LED_1
);
    //reg de register van a ser losFlipFlops
    //los hago de 1 but de largo y les asigno el valor 0
    reg r_LED_1 =1'b0; 
    reg r_Switch_1 =1'b0; 
    
    //el always se ejecuta siempre que cambie la señal i_Clk
    //en este caso en el edge positivo o rising
    always @(posedge i_Clk) 
    begin
        //acá se crea el FlipFlop
        r_Switch_1 <= i_Switch_1;
        //si el input es cero y el valor regitrado del flipFlop
        //era una entonces toggle a la señal que representa al LED
        // en el and se crea una LUT para representar los valores
        //booleanos de la comparación
        if (i_Switch_1 == 1'b0 && r_Switch_1 == 1'b1)
        begin
            //acá se genera el segundo FlipFlop
            //el símbolo ~ es un NOT con lo cual
            // r_led_1 entre a una nueva LUT que invierte su valor
            //booleano y lo pone en el input del FlipFlop
            //pasa en dos momentos diferentes el leer el valor
            //y el reasignar el mismo
            r_LED_1 <= ~r_LED_1;
        end    
    end
    //asignamos la señal que representa al LED al output o_LED_1
    assign o_LED_1 = r_LED_1;
endmodule

/*
command to compile and run:

yosys -p "synth_ice40 -top Led_Toggle -json c4_p1_led_toggle.json" c4_p1_led_toggle.v
nextpnr-ice40 --hx1k --package vq100 --pcf c4_p1_led_toggle.pcf --json c4_p1_led_toggle.json --asc c4_p1_led_toggle.asc
icepack c4_p1_led_toggle.asc c4_p1_led_toggle.bin
iceprog c4_p1_led_toggle.bin


command to install the suite (x64 for intel, darwin for arm)
download from https://github.com/YosysHQ/oss-cad-suite-build/releases

xattr -d com.apple.quarantine oss-cad-suite-darwin-*.tgz
tar xzf oss-cad-suite-darwin-*.tgz
source oss-cad-suite/environment
*/