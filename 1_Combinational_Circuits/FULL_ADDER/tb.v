`timescale 1ns/1ps

module fa_tb;

    reg a, b, cin;
    wire s, cout;

    fulladder uut (   // make sure name matches your module
        .a(a),
        .b(b),
        .cin(cin),
        .s(s),
        .cout(cout)
    );

    initial begin
        $display("a b cin | s cout");
        $monitor("%b %b %b |  %b    %b", a, b, cin, s, cout);

        a=0; b=0; cin=0; #10;
        a=0; b=0; cin=1; #10;
        a=0; b=1; cin=0; #10;
        a=0; b=1; cin=1; #10;
        a=1; b=0; cin=0; #10;
        a=1; b=0; cin=1; #10;
        a=1; b=1; cin=0; #10;
        a=1; b=1; cin=1; #10;

        $finish;
    end

endmodule
