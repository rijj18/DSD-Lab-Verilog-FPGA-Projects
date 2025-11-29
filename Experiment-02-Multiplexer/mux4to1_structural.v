module MUX4x1_structural(
    input [3:0] I,
    input [1:0] S,
    output Y
);

    wire S0_bar, S1_bar;
    wire w0, w1, w2, w3;

    // Invert select lines
    not (S0_bar, S[0]);
    not (S1_bar, S[1]);

    // AND gates for each input line
    and (w0, I[0], S1_bar, S0_bar);   // Select = 00
    and (w1, I[1], S1_bar, S[0]);     // Select = 01
    and (w2, I[2], S[1], S0_bar);     // Select = 10
    and (w3, I[3], S[1], S[0]);       // Select = 11

    // OR gate for final output
    or (Y, w0, w1, w2, w3);

endmodule

