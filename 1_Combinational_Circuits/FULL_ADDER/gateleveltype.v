module full_adder_gate(
    input A, B, Cin,
    output Sum, Carry
);
wire x1, c1, c2;
xor (x1, A, B);
xor (Sum, x1, Cin);
and (c1, A, B);
and (c2, x1, Cin);
or (Carry, c1, c2);

endmodule
