module siso_shift_register (
    input clk,
    input reset,
    input si,
    output so
);

reg [3:0] shift_reg;

always @(posedge clk or posedge reset) begin
    if (reset)
        shift_reg <= 4'b0000;
    else
        shift_reg <= {shift_reg[2:0], si};
end
assign so = shift_reg[3];
endmodule
