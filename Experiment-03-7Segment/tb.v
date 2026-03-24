`timescale 1ns / 1ps

module tb;
    reg [3:0] bin;
    wire [6:0] sout;

    bin_7seg uut (
        .bin(bin),
        .sout(sout)
    );

    initial begin
        // Apply all inputs from 0 to 9
        bin = 4'b0000; #10;
        bin = 4'b0001; #10;
        bin = 4'b0010; #10;
        bin = 4'b0011; #10;
        bin = 4'b0100; #10;
        bin = 4'b0101; #10;
        bin = 4'b0110; #10;
        bin = 4'b0111; #10;
        bin = 4'b1000; #10;
        bin = 4'b1001; #10;

        // Test invalid inputs
        bin = 4'b1010; #10;
        bin = 4'b1111; #10;
       $stop;
    end

endmodule
