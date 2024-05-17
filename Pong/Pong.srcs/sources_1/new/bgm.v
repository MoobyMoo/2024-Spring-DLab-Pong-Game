module bgm (
    input clk,
    input [2:0] state,
    input hit_wall,
    input [5:0] ball_x,
    input change_mode,
    output reg voice_fre
);

    reg [7:0] bps = 8'd2;
    reg [7:0] bps_2 = 8'd1;
    wire bump;
    wire bump_2;
    wire clk_10Hz;
    wire MODE_music;
    wire P1_SCORE_music;
    wire P2_SCORE_music;
    wire OVER_music;
    wire hit_paddle_music;
    wire hit_wall_music;
    wire change_mode_music;
    
    reg start_MODE;
    reg start_P1_SCORE;
    reg start_P2_SCORE;
    reg start_OVER;
    reg hit_paddle;

    wire [3:0] MODE_counter;
    wire [3:0] P1_SCORE_counter;
    wire [3:0] P2_SCORE_counter;
    wire [3:0] OVER_counter;
    wire [3:0]hit_paddle_counter;
    wire [3:0]hit_wall_counter;
    wire change_mode_counter;

    parameter INIT = 3'd0, MODE = 3'd1, RUNNING = 3'd2, 
    P1_SCORE = 3'd3, P2_SCORE = 3'd4, OVER = 3'd5;

    fre_divider fre_1Hz(
        .clk(clk),
        .clk_10Hz(clk_10Hz)
    );

    bps bps_name_1(//bump per secone
        .clk(clk_10Hz),
        .bps(bps),
        .bump(bump)
    );

    bps bps_name_2(//bump per secone
        .clk(clk_10Hz),
        .bps(bps_2),
        .bump(bump_2)
    );
    music_1 MODE_1(.bump(bump), .voice_fre(MODE_music),.counter(MODE_counter), .start(start_MODE), .clk(clk));
    music_2 P1_SCORE_1(.bump(bump), .voice_fre(P1_SCORE_music),.counter(P1_SCORE_counter), .start(start_P1_SCORE), .clk(clk));
    music_3 P2_SCORE_1(.bump(bump), .voice_fre(P2_SCORE_music),.counter(P2_SCORE_counter), .start(start_P2_SCORE), .clk(clk));
    music_4 OVER_1(.bump(bump), .voice_fre(OVER_music),.counter(OVER_counter), .start(start_OVER), .clk(clk));
    music_5 hit_paddle_1(.bump(bump_2), .voice_fre(hit_paddle_music),.counter(hit_paddle_counter), .start(hit_paddle), .clk(clk));
    music_6 hit_wall_1(.bump(bump_2), .voice_fre(hit_wall_music),.counter(hit_wall_counter), .start(hit_wall), .clk(clk));
    music_7 change_mode_1(.bump(bump_2), .voice_fre(change_mode_music),.counter(change_mode_counter), .start(change_mode), .clk(clk));

    always@(posedge clk)begin
        if(ball_x >= 6'd38 || ball_x <= 6'd1 && (state == RUNNING || state == P1_SCORE || state == P2_SCORE))
            hit_paddle = 1'd1;
        else
            hit_paddle = 1'd0;
    end

    always@(*)begin // get output signal from other module
        if(MODE_counter > 4'd0)
            voice_fre = MODE_music;
        else if(P1_SCORE_counter > 4'd0)
            voice_fre = P1_SCORE_music;
        else if(P2_SCORE_counter > 4'd0)
            voice_fre = P2_SCORE_music;
        else if(OVER_counter > 4'd0)
            voice_fre = OVER_music;
        else if(hit_paddle_counter> 1'd0)
            voice_fre = hit_paddle_music;
        else if(hit_wall_counter > 1'd0)
            voice_fre = hit_wall_music;
        else if(change_mode_counter > 1'd0)
            voice_fre = change_mode_music;
        else
            voice_fre = 1'd0;
            
    end

    reg start_MODE_store = 1'd0;
    reg start_P1_SCORE_store = 1'd0;
    reg start_P2_SCORE_store = 1'd0;
    reg start_OVER_store = 1'd0;


    always @(posedge clk) begin//output start signal to music modules
        case (state)
            INIT:begin
                start_MODE_store = 1'd0;
                start_P1_SCORE_store = 1'd0;
                start_P2_SCORE_store = 1'd0;
                start_OVER_store = 1'd0;
            end
            MODE: begin
                if(start_MODE_store == 1'd0)begin
                    start_MODE = 1'b1;
                    start_P1_SCORE = 1'b0;
                    start_P2_SCORE = 1'b0;
                    start_OVER = 1'b0;
                    start_MODE_store = 1'd1;
                end
                else
                begin
                    start_MODE = 1'b0;
                    start_P1_SCORE = 1'b0;
                    start_P2_SCORE = 1'b0;
                    start_OVER = 1'b0;
                end
            end
            RUNNING: begin
                start_MODE_store = 1'd0;
                start_P1_SCORE_store = 1'd0;
                start_P2_SCORE_store = 1'd0;
                start_OVER_store = 1'd0;
            end
            P1_SCORE: begin
                if(start_P1_SCORE_store == 1'd0)begin
                    start_MODE = 1'b0;
                    start_P1_SCORE = 1'b1;
                    start_P2_SCORE = 1'b0;
                    start_OVER = 1'b0;
                    start_P1_SCORE_store = 1'd1;
                end else begin
                    start_MODE = 1'b0;
                    start_P1_SCORE = 1'b0;
                    start_P2_SCORE = 1'b0;
                    start_OVER = 1'b0;
                end
            end
            P2_SCORE: begin
                if(start_P2_SCORE_store == 1'd0)begin
                    start_MODE = 1'b0;
                    start_P1_SCORE = 1'b0;
                    start_P2_SCORE = 1'b1;
                    start_OVER = 1'b0;
                    start_P2_SCORE_store = 1'd1;
                end else begin
                    start_MODE = 1'b0;
                    start_P1_SCORE = 1'b0;
                    start_P2_SCORE = 1'b0;
                    start_OVER = 1'b0;
                end
            end
            OVER: begin
                if(start_OVER_store == 1'd0)begin
                    start_MODE = 1'b0;
                    start_P1_SCORE = 1'b0;
                    start_P2_SCORE = 1'b0;
                    start_OVER = 1'b1;
                    start_OVER_store = 1'd1;
                end else begin
                    start_MODE = 1'b0;
                    start_P1_SCORE = 1'b0;
                    start_P2_SCORE = 1'b0;
                    start_OVER = 1'b0;
                end
            end
            default:
            begin
                start_MODE = 1'b0;
                start_P1_SCORE = 1'b0;
                start_P2_SCORE = 1'b0;
                start_OVER = 1'b0;
            end
        endcase
    end

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

module bps(input clk,input [7:0] bps,output reg bump);
    reg [7:0] counter = 8'd0;
    always@(posedge clk)begin
        if(counter >= bps)
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

module music_1 (
    input bump,
    output reg voice_fre,
    output reg [3:0] counter,
    input start,
    input clk
    );

    initial begin
        counter = 8'd0;
    end
    reg store_start = 1'd0;

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

    reg [27:0] number_1 = 28'd381679;//c4
    reg [27:0] number_2 = 28'd340136;//d4
    reg [27:0] number_3 = 28'd303030;//e4
    reg [27:0] number_4 = 28'd286532;//f4
    reg [27:0] number_5 = 28'd255102;//g4
    reg [27:0] number_6 = 28'd227272;//a4
    reg [27:0] number_7 = 28'd202429;//b4
    reg [27:0] number_8 = 28'd191204;//c5
    reg [27:0] number_9 = 28'd170357;//d5
    reg [27:0] number_10 = 28'd151745;//e5
    reg [27:0] number_11 = 28'd143266;//f5
    reg [27:0] number_12 = 28'd127511;//g5 

    always @(posedge clk) begin
        if(start == 1'd1)
            store_start = 1'd1;
        else if(counter >= 8'd12) 
        begin
            store_start = 1'd0;
        end
    end

    always @(posedge bump) begin
        if(store_start == 1'd1)begin
            counter = counter + 8'd1;
        end
        else 
            counter = 8'd0;
    end//put counter in the above always block, when start = 1, store_start = 1, 
    //then counter will increase, when counter = 12, store_start = 0, counter = 0

    always@(*)begin
        if(store_start == 1'd1)
        begin
            case (counter)
                8'd1:
                begin
                    voice_fre = voice_fre_1;
                end
                8'd2:
                begin
                    voice_fre = voice_fre_2;
                end 
                8'd3:
                begin
                    voice_fre = voice_fre_3;
                end
                8'd4:
                begin
                    voice_fre = voice_fre_4;
                end
                8'd5:
                begin
                    voice_fre = voice_fre_5;
                end
                8'd6:
                begin
                    voice_fre = voice_fre_6;
                end
                8'd7:
                begin
                    voice_fre = voice_fre_7;
                end
                8'd8:
                begin
                    voice_fre = voice_fre_8;
                end
                8'd9:
                begin
                    voice_fre = voice_fre_9;
                end
                8'd10:
                begin
                    voice_fre = voice_fre_10;
                end
                8'd11:
                begin
                    voice_fre = voice_fre_11;
                end
                8'd12:
                begin
                    voice_fre = voice_fre_12;
                end
                default:
                begin
                    voice_fre = 1'd0;
                end 
            endcase     
        end
        else    
            voice_fre = 1'd0;
    end

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

endmodule

module music_2 (
    input bump,
    output reg voice_fre,
    output reg [3:0] counter,
    input start,
    input clk
    );
    
    initial begin
        counter = 8'd0;
    end
    reg store_start = 1'd0;

    wire voice_fre_9;
    wire voice_fre_10;
    wire voice_fre_11;

    reg [27:0] number_9 = 28'd170357;//d5
    reg [27:0] number_10 = 28'd151745;//e5
    reg [27:0] number_11 = 28'd143266;//f5

    always @(posedge clk) begin
        if(start == 1'd1)
            store_start = 1'd1;
        else if(counter >= 8'd4) 
        begin
            store_start = 1'd0;
        end
    end

    always @(posedge bump) begin
        if(store_start == 1'd1)begin
            counter = counter + 8'd1;
        end
        else 
            counter = 8'd0;
    end

    always@(*)begin
        if(store_start == 1'd1)
        begin
            case (counter)
                8'd1:
                begin
                    voice_fre = voice_fre_9;
                end
                8'd2:
                begin
                    voice_fre = voice_fre_10;
                end 
                8'd3:
                begin
                    voice_fre = voice_fre_11;
                end
                default:
                begin
                    voice_fre = 1'd0;
                end 
            endcase     
        end
        else    
            voice_fre = 1'd0;
    end

    fre_divider_inv fre_9(.clk(clk), .clk_after(voice_fre_9), .number(number_9));
    fre_divider_inv fre_10(.clk(clk), .clk_after(voice_fre_10), .number(number_10));
    fre_divider_inv fre_11(.clk(clk), .clk_after(voice_fre_11), .number(number_11));

endmodule

module music_3 (
    input bump,
    output reg voice_fre,
    output reg [3:0] counter,
    input start,
    input clk
    );
    initial begin
        counter = 8'd0;
    end
    reg store_start = 1'd0;

    wire voice_fre_9;
    wire voice_fre_10;
    wire voice_fre_11;

    reg [27:0] number_9 = 28'd170357;//d5
    reg [27:0] number_10 = 28'd151745;//e5
    reg [27:0] number_11 = 28'd143266;//f5

    always @(posedge clk) begin
        if(start == 1'd1)
            store_start = 1'd1;
        else if(counter >= 8'd4) 
        begin
            store_start = 1'd0;
        end
    end

    always @(posedge bump) begin
        if(store_start == 1'd1)begin
            counter = counter + 8'd1;
        end
        else 
            counter = 8'd0;
    end

    always@(*)begin
        if(store_start == 1'd1)
        begin
            case (counter)
                8'd1:
                begin
                    voice_fre = voice_fre_9;
                end
                8'd2:
                begin
                    voice_fre = voice_fre_10;
                end 
                8'd3:
                begin
                    voice_fre = voice_fre_11;
                end
                default:
                begin
                    voice_fre = 1'd0;
                end 
            endcase     
        end
        else    
            voice_fre = 1'd0;
    end

    fre_divider_inv fre_9(.clk(clk), .clk_after(voice_fre_9), .number(number_9));
    fre_divider_inv fre_10(.clk(clk), .clk_after(voice_fre_10), .number(number_10));
    fre_divider_inv fre_11(.clk(clk), .clk_after(voice_fre_11), .number(number_11));

endmodule

module music_4 (
    input bump,
    output reg voice_fre,
    output reg [3:0] counter,
    input start,
    input clk
    );

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

    reg [27:0] number_1 = 28'd381679;//c4
    reg [27:0] number_2 = 28'd340136;//d4
    reg [27:0] number_3 = 28'd303030;//e4
    reg [27:0] number_4 = 28'd286532;//f4
    reg [27:0] number_5 = 28'd255102;//g4
    reg [27:0] number_6 = 28'd227272;//a4
    reg [27:0] number_7 = 28'd202429;//b4
    reg [27:0] number_8 = 28'd191204;//c5
    reg [27:0] number_9 = 28'd170357;//d5
    reg [27:0] number_10 = 28'd151745;//e5
    reg [27:0] number_11 = 28'd143266;//f5
    reg [27:0] number_12 = 28'd127511;//g5 

    initial begin
        counter = 4'd0;
    end
    reg store_start = 1'd0;


    always @(posedge clk) begin
        if(start == 1'd1)
            store_start = 1'd1;
        else if(counter >= 8'd12) 
        begin
            store_start = 1'd0;
        end
    end

    always @(posedge bump) begin
        if(store_start == 1'd1)begin
            counter = counter + 8'd1;
        end
        else 
            counter = 8'd0;
    end

    always@(*)begin
        if(store_start == 1'd1)
        begin
            case (counter)
                8'd1:
                begin
                    voice_fre = voice_fre_12;
                end
                8'd2:
                begin
                    voice_fre = voice_fre_11;
                end 
                8'd3:
                begin
                    voice_fre = voice_fre_10;
                end
                8'd4:
                begin
                    voice_fre = voice_fre_9;
                end
                8'd5:
                begin
                    voice_fre = voice_fre_8;
                end
                8'd6:
                begin
                    voice_fre = voice_fre_7;
                end
                8'd7:
                begin
                    voice_fre = voice_fre_6;
                end
                8'd8:
                begin
                    voice_fre = voice_fre_5;
                end
                8'd9:
                begin
                    voice_fre = voice_fre_4;
                end
                8'd10:
                begin
                    voice_fre = voice_fre_3;
                end
                8'd11:
                begin
                    voice_fre = voice_fre_2;
                end
                8'd12:
                begin
                    voice_fre = voice_fre_1;
                end
                default:
                begin
                    voice_fre = 1'd0;
                end 
            endcase     
        end
        else    
            voice_fre = 1'd0;
    end

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

endmodule

module fre_divider (
    input clk,
    output reg clk_10Hz
);

    reg [27:0] counter = 28'd0;

    always @(posedge clk) begin
        if (counter >= 28'd4000000)begin//10000000
            counter <= 28'd0; // Divide the clock frequency by 100000
            clk_10Hz <= 1'd1;
        end
        else begin
            counter <= counter + 28'd1;
            clk_10Hz <= 1'd0;
        end
    end
endmodule

module music_5 (
    input bump,
    output reg voice_fre,
    output reg [3:0] counter,
    input start,
    input clk
    );

    initial begin
        counter = 8'd0;
    end
    reg store_start = 1'd0;

    wire voice_fre_11;

    reg [27:0] number_11 = 28'd143266;//f5

    always @(posedge clk) begin
        if(start == 1'd1)
            store_start = 1'd1;
        else if(counter >= 8'd2) 
        begin
            store_start = 1'd0;
        end
    end

    always @(posedge bump) begin
        if(store_start == 1'd1)begin
            counter = counter + 8'd1;
        end
        else 
            counter = 8'd0;
    end

    always@(*)begin
        if(store_start == 1'd1)
        begin
            case (counter)
                8'd1:
                begin
                    voice_fre = voice_fre_11;
                end
                8'd2:
                begin
                    voice_fre = voice_fre_11;
                end
                default:
                begin
                    voice_fre = 1'd0;
                end 
            endcase     
        end
        else    
            voice_fre = 1'd0;
    end

    fre_divider_inv fre_11(.clk(clk), .clk_after(voice_fre_11), .number(number_11));

endmodule

module music_6 (
    input bump,
    output reg voice_fre,
    output reg [3:0] counter,
    input start,
    input clk
    );

    initial begin
        counter = 8'd0;
    end
    reg store_start = 1'd0;

    wire voice_fre_1;

   reg [27:0] number_1 = 28'd381679;//c4

    always @(posedge clk) begin
        if(start == 1'd1)
            store_start = 1'd1;
        else if(counter >= 8'd2) 
        begin
            store_start = 1'd0;
        end
    end

    always @(posedge bump) begin
        if(store_start == 1'd1)begin
            counter = counter + 8'd1;
        end
        else 
            counter = 8'd0;
    end

    always@(*)begin
        if(store_start == 1'd1)
        begin
            case (counter)
                8'd1:
                begin
                    voice_fre = voice_fre_1;
                end
                8'd2:
                begin
                    voice_fre = voice_fre_1;
                end
                default:
                begin
                    voice_fre = 1'd0;
                end 
            endcase     
        end
        else    
            voice_fre = 1'd0;
    end

    fre_divider_inv fre_1(.clk(clk), .clk_after(voice_fre_1), .number(number_1));

endmodule

module music_7 (
    input bump,
    output reg voice_fre,
    output reg [3:0] counter,
    input start,
    input clk
    );

    initial begin
        counter = 8'd0;
    end
    reg store_start = 1'd0;

    wire voice_fre_1;

   reg [27:0] number_1 = 28'd381679;//c4

    always @(posedge clk) begin
        if(start == 1'd1)
            store_start = 1'd1;
        else if(counter >= 8'd1)//changr 2 t0 1 
        begin
            store_start = 1'd0;
        end
    end

    always @(posedge bump) begin
        if(store_start == 1'd1)begin
            counter = counter + 8'd1;
        end
        else 
            counter = 8'd0;
    end

    always@(*)begin
        if(store_start == 1'd1)
        begin
            case (counter)
                8'd1:
                begin
                    voice_fre = voice_fre_1;
                end
                8'd2:
                begin
                    voice_fre = voice_fre_1;
                end
                default:
                begin
                    voice_fre = 1'd0;
                end 
            endcase     
        end
        else    
            voice_fre = 1'd0;
    end

    fre_divider_inv fre_1(.clk(clk), .clk_after(voice_fre_1), .number(number_1));

endmodule