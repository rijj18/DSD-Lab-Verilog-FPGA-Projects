// 4-to-1 MUX (structural, gate-level)
// y = (~s1 & ~s0 & d0) | (~s1 & s0 & d1) | (s1 & ~s0 & d2) | (s1 & s0 & d3)
module mux4_structural(
    input  wire d0, d1, d2, d3,
    input  wire [1:0] sel,
    output wire y
);
    wire s0, s1, ns0, ns1;
    wire t0, t1, t2, t3;

    assign s0 = sel[0];
    assign s1 = sel[1];

    not (ns0, s0);
    not (ns1, s1);

    and (t0, ns1, ns0, d0);
    and (t1, ns1,  s0, d1);
    and (t2,  s1, ns0, d2);
    and (t3,  s1,  s0, d3);

    or  (y, t0, t1, t2, t3);
endmodule
