module button_debouncer (
    input button,         
    input clock,            

    output reg debounced_button = 0 
    );

    parameter IDLE = 2'b00, PRESS_CHECK = 2'b01, PRESSED = 2'b10, RELEASE_CHECK = 2'b11;
    // count the number of clock cycles to debounce
    parameter DEBOUNCE_TIME = 10; 


    reg [1:0] state = IDLE;
    reg [3:0] debounce_counter = 0;


    always @(posedge clock) begin
        case (state)
            IDLE: begin
                debounced_button <= 0;
                debounce_counter <= 0;
                state <= (button) ? PRESS_CHECK : IDLE;
            end
            PRESS_CHECK: begin
                if (!button) begin
                    state <= IDLE;
                end else if (debounce_counter == DEBOUNCE_TIME) begin
                    state <= PRESSED;
                end else begin
                    debounce_counter <= debounce_counter + 1;
                end
            end
            PRESSED: begin
                debounced_button <= 1;
                debounce_counter <= 0;
                state <= (!button) ? RELEASE_CHECK : PRESSED;
            end
            RELEASE_CHECK: begin
                if (button) begin
                    state <= PRESSED;
                end else if (debounce_counter == DEBOUNCE_TIME) begin
                    state <= IDLE;
                end else begin 
                    debounce_counter <= debounce_counter + 1;
                end
            end
        endcase
    end
endmodule