always @(*) begin
    a = 3'b000;
    d = 1'b0;

    for (i = 7; i >= 0; i = i - 1) begin
        if (y[i] && !d) begin
            a = i[2:0];
            d = 1'b1;
        end
    end
end
