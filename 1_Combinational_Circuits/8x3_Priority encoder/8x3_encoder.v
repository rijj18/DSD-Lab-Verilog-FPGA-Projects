module PRIORITYENCODER8x3(
    input [7:0] y,
    output reg [2:0] a,
    output reg d
    );
    //priority y7>y6>y5>y4>y3>y2>y1>y0
    always@(*) begin
     casez (y)   // using casez for better control (z/? as don't care)

        8'b1???????: begin a = 3'b111; d = 1'b1; end
        8'b01??????: begin a = 3'b110; d = 1'b1; end
        8'b001?????: begin a = 3'b101; d = 1'b1; end
        8'b0001????: begin a = 3'b100; d = 1'b1; end
        8'b00001???: begin a = 3'b011; d = 1'b1; end
        8'b000001??: begin a = 3'b010; d = 1'b1; end
        8'b0000001?: begin a = 3'b001; d = 1'b1; end
        8'b00000001: begin a = 3'b000; d = 1'b1; end
        default: begin a = 3'b000; d = 1'b0; end
endcase
end

endmodule
