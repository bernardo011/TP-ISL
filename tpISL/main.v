module main(C3, C2, C1, C0, D1, D0, s1, s0, a, b, c, d, e, f, g, ready, soma, valor_soma, v1, v2, v3, v4, d1, d2, d3, d4, reset);
    input wire C3, C2, C1, C0, D1, D0, ready, reset, soma;
    output wire s1, s0, a, b, c, d, e, f, g;
    output wire [3:0] valor_soma, v1, v2, v3, v4;
    output wire [6:0] d1, d2, d3, d4;
    tp unit1 (.C3(C3), .C2(C2), .C1(C1), .C0(C0), .D1(D1), .D0(D0), .s1(s1), .s0(s0), .ready(ready));
    display unit2 (.s1(s1), .s0(s0), .ready(ready), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .reset(reset));
    sum unit3 (.s({s1, s0}), .ready(ready), .reset(reset), .soma(soma), .valor_soma(valor_soma), .v1(v1), .v2(v2), .v3(v3), .v4(v4), .d1(d1), .d2(d2), .d3(d3), .d4(d4));
endmodule