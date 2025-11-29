`timescale 1ns/1ps

module tb_MUX4x1_;

    reg [3:0] I;
    reg [1:0] S;
    wire Y;
    MUX4x1 uut (
        .I(I),
        .S(S),
        .Y(Y)
    );
     initial begin
        // Apply inputs
        I = 4'b1010;  // Example inputs

        S = 2'b00; #10;  // Expect Y = I[0]
        S = 2'b01; #10;  // Expect Y = I[1]
        S = 2'b10; #10;  // Expect Y = I[2]
        S = 2'b11; #10;  // Expect Y = I[3]

        $finish;
    end

endmodule
