//To show the end screen of the game (includes score and winner)
module Draw_Over(
    input clock,
    input ms,
    input [5:0] column_count,
    input [5:0] row_count,
    input [3:0] p1_score,
    input [3:0] p2_score,

    output [3:0] out_Red,
    output [3:0] out_Green,
    output [3:0] out_Blue
    );

    reg draw_t;
    wire draw_sP1, draw_sP2, draw_f1, draw_f2;

    reg winner = (p1_score > p2_score) ? 1 : 0;
    wire [3:0] change_r, change_g, change_b;

    always @(posedge clock) begin
        //##########    Title    ##########//
        if ((row_count >= 6'd3 & row_count <= 6'd10) & (column_count >= 6'd3 & column_count <= 6'd35)) begin
            case (row_count)
                6'd3, 6'd10: begin
                     draw_t <= ((column_count >= 6'd3   &  column_count <= 6'd8)  |
                                (column_count >= 6'd23  &  column_count <= 6'd26) |
                                (column_count == 6'd13) | (column_count == 6'd18) |
                                (column_count == 6'd33) | (column_count == 6'd35)) ?
                            1'b1 : 1'b0;
                end
                6'd4: begin
                    draw_t <= ((column_count == 6'd3)  |
                               (column_count == 6'd13) | (column_count == 6'd18) |
                               (column_count == 6'd23) | (column_count == 6'd27) | 
                               (column_count == 6'd33) | (column_count == 6'd35)) ?
                            1'b1 : 1'b0;
                end
                6'd5: begin
                    draw_t <= ((column_count == 6'd3)  | (column_count == 6'd13) |
                               (column_count == 6'd14) | (column_count == 6'd18) |
                               (column_count == 6'd23) | (column_count == 6'd28) | 
                               (column_count == 6'd33) | (column_count == 6'd35)) ?
                            1'b1 : 1'b0;
                end
                6'd6: begin
                    draw_t <= ((column_count == 6'd3)  | (column_count == 6'd13) |
                               (column_count == 6'd15) | (column_count == 6'd18) |
                               (column_count == 6'd23) | (column_count == 6'd28) | 
                               (column_count == 6'd33) | (column_count == 6'd35)) ?
                            1'b1 : 1'b0;
                end
                6'd7: begin
                    draw_t <= ((column_count >= 6'd3   &  column_count <= 6'd7)  |
                               (column_count == 6'd13) | (column_count == 6'd16) | (column_count == 6'd18) |
                               (column_count == 6'd23) | (column_count == 6'd28) | 
                               (column_count == 6'd33) | (column_count == 6'd35)) ?
                            1'b1 : 1'b0;
                end
                6'd8: begin
                    draw_t <= ((column_count == 6'd3)  | (column_count == 6'd13) |
                               (column_count == 6'd17) | (column_count == 6'd18) |
                               (column_count == 6'd23) | (column_count == 6'd28) | 
                               (column_count == 6'd33) | (column_count == 6'd35)) ?
                            1'b1 : 1'b0;
                end
                6'd9: begin
                    draw_t <= ((column_count == 6'd3)  |
                               (column_count == 6'd13) | (column_count == 6'd18) |
                               (column_count == 6'd23) | (column_count == 6'd27)) ?
                        1'b1 : 1'b0;
                end
                default: begin
                    draw_t <= 1'b0;
                end
            endcase
        end
        //##########    Dot(:)    ##########//
        else if ((row_count == 6'd16 | row_count == 6'd17 | row_count == 6'd19 | row_count == 6'd20) & 
                 (column_count == 6'd19 | column_count == 6'd20)) begin
            draw_t <= 1'b1;
        end
        else begin
            draw_t <= 1'b0;
        end
    end

    Score_Display #(
        .COL_S1(6'd3),
        .COL_E1(6'd8),
        .COL_S2(6'd10),
        .COL_E2(6'd15),
        .ROW_S(6'd13),
        .ROW_E(6'd22)
    ) Score_Display_P1 (
        .clock(clock),
        .column_count(column_count),
        .row_count(row_count),
        .score(p1_score),

        .draw_s(draw_sP1)
    );

    Score_Display #(
        .COL_S1(6'd24),
        .COL_E1(6'd29),
        .COL_S2(6'd31),
        .COL_E2(6'd36),
        .ROW_S(6'd13),
        .ROW_E(6'd22)
    ) Score_Display_P2 (
        .clock(clock),
        .column_count(column_count),
        .row_count(row_count),
        .score(p2_score),

        .draw_s(draw_sP2)
    );

    Face_Display #(
        .COL_S(6'd7),
        .COL_E(6'd11),
        .ROW_S(6'd25),
        .ROW_E(6'd28)
    ) Face_Display_P1 (
        .clock(clock),
        .column_count(column_count),
        .row_count(row_count),
        .win(winner),

        .draw_f(draw_f1)
    );

    Face_Display #(
        .COL_S(6'd28),
        .COL_E(6'd32),
        .ROW_S(6'd25),
        .ROW_E(6'd28)
    ) Face_Display_P2 (
        .clock(clock),
        .column_count(column_count),
        .row_count(row_count),
        .win(~winner),

        .draw_f(draw_f2)
    );

    Signal_Control #(
        .INITIAL_STATE(2'd1),
        .INITIAL_VALUE(4'b1111)
    ) Signal_Control_R (
        .clock(ms),

        .signal(change_r)
    );

    Signal_Control #(
        .INITIAL_STATE(2'd0),
        .INITIAL_VALUE(4'b0000)
    ) Signal_Control_G (
        .clock(ms),

        .signal(change_g)
    );

    Signal_Control #(
        .INITIAL_STATE(2'd2),
        .INITIAL_VALUE(4'b0000)
    ) Signal_Control_B (
        .clock(ms),

        .signal(change_b)
    );

    assign out_Red = ((winner & draw_f1) | (~winner & draw_f2)) ? change_r : (draw_sP1 | draw_sP2 | draw_f1 | draw_f2 | draw_t) ? 4'b1111 : 4'b0000;
    assign out_Green = ((winner & draw_f1) | (~winner & draw_f2)) ? change_g : (draw_sP1 | draw_sP2 | draw_f1 | draw_f2 | draw_t) ? 4'b1111 : 4'b0000;
    assign out_Blue = ((winner & draw_f1) | (~winner & draw_f2)) ? change_b : ((~winner & draw_sP1) | (winner & draw_sP2) | draw_f1 | draw_f2 | draw_t) ? 4'b1111 : 4'b0000;
    
endmodule