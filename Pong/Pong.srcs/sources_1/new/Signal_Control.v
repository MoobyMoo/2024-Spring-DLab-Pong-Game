// To make the output signal change orderly.
module Signal_Control #(
    parameter
    INITIAL_STATE = 2'd0,
    INITIAL_VALUE = 4'b0000,
    INCREASE = 0, DECREASE = 1, ZERO = 2
    ) (
    input clock,

    output reg [3:0] signal
    );

    reg [1:0] current_state = INITIAL_STATE;
    reg [1:0] next_state;
    reg [3:0] timer = INITIAL_VALUE; 
    reg [3:0] timer_ZERO = 4'b0000; 

    always @(posedge clock) begin
        current_state <= next_state;
    end

    always @(*) begin
        case(current_state)
            INCREASE: begin
                if (timer == 4'b1111) begin
                    next_state <= DECREASE;
                end
                else begin
                    next_state <= current_state;
                end
            end
            DECREASE: begin
                if (timer == 4'b0000) begin
                    next_state <= ZERO;
                end
                else begin
                    next_state <= current_state;
                end
            end
            ZERO: begin
                if (timer_ZERO == 4'b1111) begin
                    next_state <= INCREASE;
                end
                else begin
                    next_state <= current_state;
                end
            end
            default: begin
                next_state <= current_state;
            end
        endcase
    end

    always @(negedge clock) begin
        case(current_state)
            INCREASE: begin
                signal <= timer;
                timer <= timer + 1'b1;
                timer_ZERO <= 4'b0000;
            end
            DECREASE: begin
                signal <= timer;
                timer <= timer - 1'b1;
                timer_ZERO <= 4'b0000;
            end
            ZERO: begin
                signal <= 4'b0000;
                timer <= 4'b0000;
                timer_ZERO <= timer_ZERO + 1'b1;
            end
            default: begin
                signal <= signal;
                timer <= timer;
                timer_ZERO <= timer_ZERO;
            end
        endcase
    end

endmodule
