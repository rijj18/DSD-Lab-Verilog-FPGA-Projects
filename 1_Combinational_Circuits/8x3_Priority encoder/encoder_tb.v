`timescale 1ns/1ps

module priority_encoder_tb;
    reg [7:0] y;
    wire [2:0] a;
    wire d;

    priority_encoder uut (
        .y(y),
        .a(a),
        .d(d)
    );

    initial begin
        $display("Time\t y\t\t a\t d");
        $monitor("%0t\t %b\t %b\t %b", $time, y, a, d);

        // Test cases
        y = 8'b00000000; #10; // No input
        y = 8'b00000001; #10; // y0
        y = 8'b00000010; #10; // y1
        y = 8'b00000100; #10; // y2
        y = 8'b00001000; #10; // y3
        y = 8'b00010000; #10; // y4
        y = 8'b00100000; #10; // y5
        y = 8'b01000000; #10; // y6
        y = 8'b10000000; #10; // y7

        // Multiple bits high (priority check)
        y = 8'b10101010; #10; // expect y7 priority
        y = 8'b01100000; #10; // expect y6 priority
        y = 8'b00011000; #10; // expect y4 priority
        $finish;
    end

endmodule
