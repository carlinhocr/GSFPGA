module Led_Project(
    input i_Switch_1,
    input i_Switch_2,
    input i_Clk,
    output o_LED_1);

    reg r_AND_1 =1'b0; 

    always @(posedge i_Clk)
    begin
        r_AND_1 <= i_Switch_1 && i_Switch_2;
    end

    assign o_LED_1 = r_AND_1;
endmodule