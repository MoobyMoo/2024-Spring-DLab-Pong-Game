`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/08 21:13:37
// Design Name: 
// Module Name: TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TB();

    reg clock;
    reg p1_up;
    reg p1_down;
    reg p2_up;
    reg p2_down;
    reg start;

    wire out_Hsync;
    wire out_Vsync;
    wire [3:0] out_Red;
    wire [3:0] out_Green;
    wire [3:0] out_Blue;
    wire [7:0] ssd;
    wire [7:0] anode;

    wire [2:0] state;

    Pong Pong_wrap (
        .clock(clock),
        .p1_up(p1_up),
        .p1_down(p1_down),
        .p2_up(p2_up),
        .p2_down(p2_down),
        .start(start),

        .out_Hsync(out_Hsync),
        .out_Vsync(out_Vsync),
        .out_Red(out_Red),
        .out_Green(out_Green),
        .out_Blue(out_Blue),
        .ssd(ssd),
        .anode(anode),

        .state(state)
    );

    initial begin
        clock = 0;
        p1_up = 0;
        p1_down = 0;
        p2_up = 0;
        p2_down = 0;
    end

    always begin
        #1 clock = ~clock;
    end
endmodule
