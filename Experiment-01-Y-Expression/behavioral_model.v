// Behavioral modeling of Y = (ab)' + cd'
module behavioral_model(
    input  a,b,c,d,
 output reg y
);
    always @*
      begin
        y = (~(a & b)) | (c & ~d);
    end
endmodule
