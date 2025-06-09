`timescale 1ns / 1ps
module stopwatch_timer_tb;
    reg clk, reset, start, mode;
    reg [7:0] timer_set;
    wire [7:0] time_out;
    wire done;

    stopwatch_timer uut (
        .clk(clk), .reset(reset), .start(start),
        .mode(mode), .timer_set(timer_set),
        .time_out(time_out), .done(done)
    );

    always #5 clk = ~clk;

    initial begin
        $display("Stopwatch and Timer System Test");
        clk = 0; reset = 1; start = 0; mode = 0; timer_set = 0;
        #10 reset = 0;

        // Stopwatch mode test
        mode = 0;
        start = 1; #10;
        start = 0;
        #100;

        // Reset and test countdown
        reset = 1; #10; reset = 0;
        mode = 1; timer_set = 8'd10;
        start = 1; #10;
        start = 0;
        #200;

        $finish;
    end
endmodule
