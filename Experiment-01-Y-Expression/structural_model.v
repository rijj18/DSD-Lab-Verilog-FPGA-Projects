// Structural modeling of Y = (ab)' + cd'

module structural_model(
    input a,b,c,d,
   
    output y
);

    wire ab;       // a AND b
    wire ab_bar;   // (ab)'
    wire d_bar;    // d'
    wire c_and_dbar; // c AND d'

    and  g1(ab, a, b);         // ab
    not  g2(ab_bar, ab);       // (ab)'
    not  g3(d_bar, d);         // d'
    and  g4(c_and_dbar, c, d_bar);  // cd'
    or   g5(y, ab_bar, c_and_dbar); // (ab)' + cd'

endmodule
