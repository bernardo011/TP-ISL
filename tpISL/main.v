module main(C3, C2, C1, C0, D1, D0, s1, s0, a, b, c, d, e, f, g, ready);
    input wire C3, C2, C1, C0, D1, D0, ready;
    output wire S1, S0, a, b, c, d, e, f, g;
    tp unit1 (.C3(C3), .C2(C2), .C1(C1), .C0(C0), .D1(D1), .D0(D0), .s1(s1), .s0(s0), .ready(ready));
    display unit2 (.s1(s1), .s0(s0), .ready(ready), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g));
endmodule