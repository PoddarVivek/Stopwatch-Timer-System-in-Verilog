module stopwatch_timer (
    input clk,
    input reset,
    input start,
    input mode, // 0: Stopwatch, 1: Countdown Timer
    input [7:0] timer_set, // Value to load in countdown mode
    output reg [7:0] time_out,
    output reg done
);
    reg running;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            time_out <= 8'd0;
            running <= 0;
            done <= 0;
        end else begin
            if (start && !running) begin
                running <= 1;
                done <= 0;
                if (mode)
                    time_out <= timer_set; // Countdown mode
                else
                    time_out <= 8'd0; // Stopwatch mode
            end

            if (running) begin
                if (mode) begin
                    if (time_out > 0)
                        time_out <= time_out - 1;
                    else begin
                        running <= 0;
                        done <= 1;
                    end
                end else begin
                    if (time_out < 8'd255)
                        time_out <= time_out + 1;
                end
            end
        end
    end
endmodule
