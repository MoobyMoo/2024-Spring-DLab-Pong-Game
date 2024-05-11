`timescale 1ns / 1ps

module TB();
    reg [5:0] col = 7, row = 25;
    reg clk = 0, ms = 0;
    reg [3:0] p1 = 15, p2 = 6;
    wire [3:0] out_Red, out_Green, out_Blue;

    always begin
        #1 clk = ~clk;
    end

    always begin
        #2 ms = ~ms;
    end

    Draw_Over draw_over(
        .clock(clk),
        .ms(ms),
        .column_count(col),
        .row_count(row),
        .p1_score(p1),
        .p2_score(p2),
        .state(3'd6),
        .out_Red(out_Red),
        .out_Green(out_Green),
        .out_Blue(out_Blue)
    );
endmodule
