module bgm (
    input clk,
    input reg [2:0] state,
    output reg voice_fre
);

    reg [27:0]number_1 = 28'd381679;//c4
    reg [27:0]number_2 = 28'd340136;//d4
    reg [27:0]number_3 = 28'd303030;//e4
    reg [27:0]number_4 = 28'd286532;//f4
    reg [27:0]number_5 = 28'd255102;//g4
    reg [27:0]number_6 = 28'd227272;//a4
    reg [27:0]number_7 = 28'd202429;//b4
    reg [27:0]number_8 = 28'd191204;//c5
    reg [27:0]number_9 = 28'd170357;//d5
    reg [27:0]number_10 = 28'd151745;//e5
    reg [27:0]number_11 = 28'd143266;//f5
    reg [27:0]number_12 = 28'd127511;//g5

    reg [7:0] bpm;
    reg bump;

    wire voice_fre_1;
    wire voice_fre_2;
    wire voice_fre_3;
    wire voice_fre_4;
    wire voice_fre_5;
    wire voice_fre_6;
    wire voice_fre_7;
    wire voice_fre_8;
    wire voice_fre_9;
    wire voice_fre_10;
    wire voice_fre_11;
    wire voice_fre_12;

    wire INIT_music;
    wire MODE_music;
    wire IDLE_music;
    wire RUNNING_music;
    wire P1_SCORE_music;
    wire P2_SCORE_music;
    wire OVER_music;


    fre_divider_inv fre_1(.clk(clk), .clk_after(voice_fre_1), .number(number_1));
    fre_divider_inv fre_2(.clk(clk), .clk_after(voice_fre_2), .number(number_2));
    fre_divider_inv fre_3(.clk(clk), .clk_after(voice_fre_3), .number(number_3));
    fre_divider_inv fre_4(.clk(clk), .clk_after(voice_fre_4), .number(number_4));
    fre_divider_inv fre_5(.clk(clk), .clk_after(voice_fre_5), .number(number_5));
    fre_divider_inv fre_6(.clk(clk), .clk_after(voice_fre_6), .number(number_6));
    fre_divider_inv fre_7(.clk(clk), .clk_after(voice_fre_7), .number(number_7));
    fre_divider_inv fre_8(.clk(clk), .clk_after(voice_fre_8), .number(number_8));
    fre_divider_inv fre_9(.clk(clk), .clk_after(voice_fre_9), .number(number_9));
    fre_divider_inv fre_10(.clk(clk), .clk_after(voice_fre_10), .number(number_10));
    fre_divider_inv fre_11(.clk(clk), .clk_after(voice_fre_11), .number(number_11));
    fre_divider_inv fre_12(.clk(clk), .clk_after(voice_fre_12), .number(number_12));

    bpm bpm_1(
        .clk(clk),
        .bpm(bpm),
        .bump(bump)
    );

    music_1 INIT(.bump(bump), .IDLE_music(voice_fre));
    music_2 MODE(.bump(bump), .MODE_music(voice_fre));
    music_3 IDLE(.bump(bump), .IDLE_music(voice_fre));
    music_4 RUNNING(.bump(bump), .RUNNING_music(voice_fre));
    music_5 P1_SCORE(.bump(bump), .P1_SCORE_music(voice_fre));
    music_6 P2_SCORE(.bump(bump), .P2_SCORE_music(voice_fre));
    music_7 OVER(.bump(bump), .OVER_music(voice_fre));

endmodule

module fre_divider_inv(input clk,input [27:0] number,output reg clk_after);
    reg [27:0] counter = 28'd0;
    always@(posedge clk)begin
        if(counter > number)
        begin
            clk_after = 1'd1;
            counter = 28'd0;
        end else if(counter < 28'd100000)
        begin
            counter = counter + 28'd1;
            clk_after = 1'd1;
        end        
        else
        begin
            clk_after = 1'd0;
            counter = counter + 28'd1;
        end
    end
endmodule

module bpm(input clk,input [7:0] bpm,output bump);
    reg [7:0] counter = 8'd0;
    always@(posedge clk)begin
        if(counter > bpm)
        begin
            bump = 1'd1;
            counter = 8'd0;
        end 
        else
        begin
            bump = 1'd0;
            counter = counter + 8'd1;
        end
    end
endmodule

module msuic_1 (
    input bump,
    output voice_fre
);
    
endmodule