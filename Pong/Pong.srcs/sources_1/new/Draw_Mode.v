
module Draw_Mode(
    input clock,
    input Hsync,
    input Vsync,
    input [5:0] column_count,
    input [5:0] row_count,
    input [3:0] score_limit,
    input ai_enable,

    output [3:0] out_Red,
    output [3:0] out_Green,
    output [3:0] out_Blue
    );

    reg draw_t = 0;
    wire draw_s;
    wire [3:0] title, background;
    wire Inactive;
    
    assign Inactive = ~(Hsync & Vsync);
    assign title = (ai_enable) ? 4'b0000 : 4'b1111;
    assign background = (Inactive | ~ai_enable) ? 4'b0000 : 4'b1111;
    always @(posedge clock) begin
        //##########    Title    ##########//
        if ((row_count >= 6'd4 & row_count <= 6'd11) & (column_count >= 6'd3 & column_count <= 6'd36)) begin
            case (row_count)
                6'd4, 6'd11: begin
                     draw_t <= ((column_count >= 6'd13  &  column_count <= 6'd18) |
                                (column_count >= 6'd22  &  column_count <= 6'd25) |
                                (column_count >= 6'd31  &  column_count <= 6'd36) |
                                (column_count == 6'd3)  |  (column_count == 6'd9) ) ?
                            1'b1 : 1'b0;
                end
                6'd5: begin
                    draw_t <= ((column_count == 6'd3)  | (column_count == 6'd4)  |
                               (column_count == 6'd8)  | (column_count == 6'd9)  |
                               (column_count == 6'd13) | (column_count == 6'd18) | 
                               (column_count == 6'd22) | (column_count == 6'd26) | (column_count == 6'd31)) ?
                            1'b1 : 1'b0;
                end
                6'd6: begin
                    draw_t <= ((column_count == 6'd3)  | (column_count == 6'd5)  |
                               (column_count == 6'd7)  | (column_count == 6'd9)  |
                               (column_count == 6'd13) | (column_count == 6'd18) | 
                               (column_count == 6'd22) | (column_count == 6'd27) | (column_count == 6'd31)) ?
                            1'b1 : 1'b0;
                end
                6'd7: begin
                    draw_t <= ((column_count == 6'd3)  | (column_count == 6'd6)  |
                               (column_count == 6'd9)  | (column_count == 6'd13) | (column_count == 6'd18) | 
                               (column_count == 6'd22) | (column_count == 6'd27) | (column_count == 6'd31)) ?
                            1'b1 : 1'b0;
                end
                6'd8: begin
                    draw_t <= ((column_count >= 6'd31  &  column_count <= 6'd35) |
                               (column_count == 6'd3)  | (column_count == 6'd9)  |
                               (column_count == 6'd13) | (column_count == 6'd18) | 
                               (column_count == 6'd22) | (column_count == 6'd27) ) ?
                            1'b1 : 1'b0;
                end
                6'd9: begin
                    draw_t <= ((column_count == 6'd3)  | (column_count == 6'd9)  |
                               (column_count == 6'd13) | (column_count == 6'd18) | 
                               (column_count == 6'd22) | (column_count == 6'd27) | (column_count == 6'd31)) ?
                            1'b1 : 1'b0;
                end
                6'd10: begin
                    draw_t <= ((column_count == 6'd3)  | (column_count == 6'd9)  |
                               (column_count == 6'd13) | (column_count == 6'd18) | 
                               (column_count == 6'd22) | (column_count == 6'd26) | (column_count == 6'd31)) ?
                            1'b1 : 1'b0;
                end
                default: begin
                    draw_t <= 1'b0;
                end
            endcase
        end
        else begin
            draw_t <= 1'b0;
        end
    end

    Score_Display #(
        .COL_S1(6'd13),
        .COL_E1(6'd18),
        .COL_S2(6'd21),
        .COL_E2(6'd26),
        .ROW_S(6'd13),
        .ROW_E(6'd22)
    ) Score_Display_Limit (
        .clock(clock),
        .column_count(column_count),
        .row_count(row_count),
        .score(score_limit),

        .draw_s(draw_s)
    );

    assign out_Red   = (draw_s | draw_t) ? title : background;
    assign out_Green = (draw_s | draw_t) ? title : background;
    assign out_Blue  = (draw_s | draw_t) ? title : background;
endmodule
