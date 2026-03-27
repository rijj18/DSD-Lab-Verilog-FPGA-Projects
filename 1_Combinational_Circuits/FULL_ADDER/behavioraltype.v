module full_adder_behavioral(
    input A, B, Cin,
    output reg Sum, Carry
);
always @(*) begin
    Sum   = A ^ B ^ Cin;
    Carry = (A & B) | (Cin & (A ^ B));
end

endmodule
