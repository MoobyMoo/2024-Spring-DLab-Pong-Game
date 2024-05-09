
module Draw_Over(
    input clock,
    input sec,
    input [5:0] column_count,
    input [5:0] row_count,
    input [3:0] p1_score,
    input [3:0] p2_score,
    input [2:0] state,

    output [3:0] out_Red,
    output [3:0] out_Green,
    output [3:0] out_Blue
    );

    reg draw_t;
    wire draw_s;

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

    Score_Display Score_Display_wrap (
        .clock(clock),
        .column_count(column_count),
        .row_count(row_count),
        .p1_score(p1_score),
        .p2_score(p2_score),

        .draw_s(draw_s)
    );

    assign out_Red = (draw_s | draw_t) ? 4'b1111 : 4'b0000;
    assign out_Green = (draw_s | draw_t) ? 4'b1111 : 4'b0000;
    assign out_Blue = (draw_s | draw_t) ? 4'b1111 : 4'b0000;
    
endmodule
