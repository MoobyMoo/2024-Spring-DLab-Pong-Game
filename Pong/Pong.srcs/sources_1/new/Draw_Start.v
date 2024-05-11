//To show the Start and Title screen of the game
module Draw_Start(
    input clock,
    input sec,
    input [5:0] column_count,
    input [5:0] row_count,
    input [2:0] state,

    output [3:0] out_Red,
    output [3:0] out_Green,
    output [3:0] out_Blue
    );

    reg draw_t = 0, draw_change = 0, draw_s, draw_r, draw_g, draw_b;
    reg [1:0] counter = 2'b00;

    always @(negedge sec) begin
            draw_change <= ~draw_change;
            counter <= counter + 1'b1;
    end
        

    always @(posedge clock) begin
        //##########    Title    ##########//
        if ((row_count >= 6'd4 & row_count <= 6'd11) & (column_count >= 6'd3 & column_count <= 6'd36)) begin
            case (row_count)
                6'd4: begin
                     draw_t <= ((column_count >= 6'd3   &  column_count <= 6'd7)  |
                                (column_count >= 6'd11  &  column_count <= 6'd15) |
                                (column_count >= 6'd28  &  column_count <= 6'd32) |
                                (column_count == 6'd19) | (column_count == 6'd24) | (column_count == 6'd36)) ?
                            1'b1 : 1'b0;
                end
                6'd5: begin
                    draw_t <= ((column_count == 6'd3)  | (column_count == 6'd7)  |
                               (column_count == 6'd11) | (column_count == 6'd15) |
                               (column_count == 6'd19) | (column_count == 6'd24) | 
                               (column_count == 6'd28) | (column_count == 6'd36)) ?
                            1'b1 : 1'b0;
                end
                6'd6: begin
                    draw_t <= ((column_count == 6'd3)  | (column_count == 6'd7)  |
                               (column_count == 6'd11) | (column_count == 6'd15) |
                               (column_count == 6'd19) | (column_count == 6'd24) | 
                               (column_count == 6'd28) | (column_count == 6'd36) | (column_count == 6'd20)) ?
                            1'b1 : 1'b0;
                end
                6'd7: begin
                    draw_t <= ((column_count >= 6'd3   &  column_count <= 6'd7)  |
                               (column_count == 6'd11) | (column_count == 6'd15) |
                               (column_count == 6'd19) | (column_count == 6'd24) | 
                               (column_count == 6'd28) | (column_count == 6'd36) | (column_count == 6'd21)) ?
                            1'b1 : 1'b0;
                end
                6'd8: begin
                    draw_t <= ((column_count >= 6'd30  &  column_count <= 6'd32) |
                               (column_count == 6'd3)  | (column_count == 6'd11) | (column_count == 6'd15) |
                               (column_count == 6'd19) | (column_count == 6'd24) | 
                               (column_count == 6'd28) | (column_count == 6'd36) | (column_count == 6'd22)) ?
                            1'b1 : 1'b0;
                end
                6'd9: begin
                    draw_t <= ((column_count == 6'd3)  | (column_count == 6'd11) | (column_count == 6'd15) |
                               (column_count == 6'd19) | (column_count == 6'd24) | (column_count == 6'd28) | 
                               (column_count == 6'd32) | (column_count == 6'd36) | (column_count == 6'd23)) ?
                        1'b1 : 1'b0;
                end
                6'd10: begin
                    draw_t <= ((column_count == 6'd3)  | (column_count == 6'd11) | (column_count == 6'd15) |
                               (column_count == 6'd19) | (column_count == 6'd24) | (column_count == 6'd28) | 
                               (column_count == 6'd32) ) ?
                        1'b1 : 1'b0;
                end
                6'd11: begin
                    draw_t <= ((column_count >= 6'd11  &  column_count <= 6'd15) |
                               (column_count >= 6'd28  &  column_count <= 6'd32) |
                               (column_count == 6'd3)  | (column_count == 6'd19) | 
                               (column_count == 6'd24) | (column_count == 6'd36) ) ?
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

        //##########    Start    ##########//
        if ((row_count >= 6'd17 & row_count <= 6'd26) & (column_count >= 6'd6 & column_count <= 31)) begin
            case (row_count)
                6'd18: begin
                    draw_s <= (column_count == 6'd13 | (column_count >= 17 & column_count <= 19) | column_count == 28) ?
                        draw_change : ~draw_change; 
                end
                6'd19: begin
                    draw_s <= (column_count == 6'd20 | (column_count >= 11 & column_count <= 15) | (column_count >= 26 & column_count <= 30)) ?
                        draw_change : ~draw_change; 
                end
                6'd20: begin
                    draw_s <= ((column_count >= 6'd8 & column_count <= 6'd10) | (column_count >= 6'd17 & column_count <= 6'd20) | 
                                column_count == 6'd13 | column_count == 6'd23 | column_count == 6'd25 | column_count == 6'd28) ?
                        draw_change : ~draw_change; 
                end
                6'd21: begin
                    draw_s <= (column_count == 6'd7  | column_count == 6'd13 | column_count == 6'd16 | column_count == 6'd20 | 
                               column_count == 6'd23 | column_count == 6'd24 | column_count == 6'd26 | column_count == 6'd28) ?
                        draw_change : ~draw_change;
                end
                6'd22: begin
                    draw_s <= (column_count == 6'd7  | column_count == 6'd8  | column_count == 6'd9  | column_count == 6'd13 | 
                               column_count == 6'd16 | column_count == 6'd20 | column_count == 6'd23 | column_count == 6'd28) ?
                        draw_change : ~draw_change;
                end
                6'd23: begin
                    draw_s <= ((column_count >= 6'd16 & column_count <= 6'd21) | 
                                column_count == 6'd10 | column_count == 6'd13 | column_count == 6'd23 | column_count == 6'd28) ?
                        draw_change : ~draw_change; 
                end
                6'd24: begin
                    draw_s <= ((column_count >= 6'd13 & column_count <= 6'd15) | (column_count >= 6'd28 & column_count <= 6'd30) |
                                column_count == 6'd10 | column_count == 6'd23) ?
                        draw_change : ~draw_change; 
                end
                6'd25: begin
                    draw_s <= ((column_count >= 6'd7 & column_count <= 6'd9))?
                        draw_change : ~draw_change; 
                end
                default: begin
                    draw_s <= ~draw_change;
                end
            endcase
        end
        else begin
            draw_s <= 1'b0;
        end

        //##########     dot     ##########//
        if (row_count == 6'd26 & column_count == 6'd33) begin
            case (counter)
                2'b00: begin
                    draw_r <= 1'b1;
                    draw_b <= 1'b0;
                    draw_g <= 1'b0;
                end
                2'b01: begin
                    draw_r <= 1'b0;
                    draw_b <= 1'b1;
                    draw_g <= 1'b0;
                end
                2'b10: begin
                    draw_r <= 1'b0;
                    draw_b <= 1'b0;
                    draw_g <= 1'b1;
                end
                2'b11: begin
                    draw_r <= 1'b1;
                    draw_b <= 1'b1;
                    draw_g <= 1'b1;
                end
            endcase
        end
        else if (row_count == 6'd26 & column_count == 6'd35) begin
            case (counter)
                2'b00: begin
                    draw_r <= 1'b1;
                    draw_b <= 1'b1;
                    draw_g <= 1'b1;
                end
                2'b01: begin
                    draw_r <= 1'b1;
                    draw_b <= 1'b0;
                    draw_g <= 1'b0;
                end
                2'b10: begin
                    draw_r <= 1'b0;
                    draw_b <= 1'b1;
                    draw_g <= 1'b0;
                end
                2'b11: begin
                    draw_r <= 1'b0;
                    draw_b <= 1'b0;
                    draw_g <= 1'b1;
                end
            endcase
        end
        else if (row_count == 6'd26 & column_count == 6'd37) begin
            case (counter)
                2'b00: begin
                    draw_r <= 1'b0;
                    draw_b <= 1'b0;
                    draw_g <= 1'b1;
                end
                2'b01: begin
                    draw_r <= 1'b1;
                    draw_b <= 1'b1;
                    draw_g <= 1'b1;
                end
                2'b10: begin
                    draw_r <= 1'b1;
                    draw_b <= 1'b0;
                    draw_g <= 1'b0;
                end
                2'b11: begin
                    draw_r <= 1'b0;
                    draw_b <= 1'b1;
                    draw_g <= 1'b0;
                end
            endcase
        end
        else begin
            draw_r <= 1'b0;
            draw_b <= 1'b0;
            draw_g <= 1'b0;
        end
    end


    // Assign white when the paddles or ball is in current position 
    assign out_Red = (draw_r | draw_s | draw_t) ? 4'b1111 : 4'b0000;
    assign out_Blue = (draw_b | draw_s | draw_t) ? 4'b1111 : 4'b0000;
    assign out_Green = (draw_g | draw_s | draw_t) ? 4'b1111 : 4'b0000;
endmodule
