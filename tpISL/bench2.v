module bench ();

    reg C3, C2, C1, C0, D1, D0;
    reg ready, reset, soma;

    wire s1, s0;
    wire a, b, c, d, e, f, g;

    wire [3:0] valor_soma;
    wire [3:0] v1, v2, v3, v4;
    wire [6:0] d1, d2, d3, d4;

    integer i;

    tp unit1 (
        .C3(C3), .C2(C2), .C1(C1), .C0(C0),
        .D1(D1), .D0(D0),
        .s1(s1), .s0(s0),
        .ready(ready)
    );

    display unit2 (
        .s1(s1), .s0(s0), .ready(ready),
        .reset(reset),
        .a(a), .b(b), .c(c), .d(d),
        .e(e), .f(f), .g(g)
    );

    sum unit3 (
        .s({s1, s0}),
        .ready(ready),
        .reset(reset),
        .soma(soma),
        .valor_soma(valor_soma),
        .v1(v1), .v2(v2), .v3(v3), .v4(v4),
        .d1(d1), .d2(d2), .d3(d3), .d4(d4)
    );

    initial begin

        $dumpfile("bench_saturacao.vcd");
        $dumpvars(0, bench);

        $monitor(
            "Time=%0t|ready=%b reset=%b soma=%b|C=%b%b%b%b D=%b%b|S=%b%b|Categoria: %b%b%b%b%b%b%b|soma=%d|Contador: v4=%d v3=%d v2=%d v1=%d|Displays: d4=%b d3=%b d2=%b d1=%b",
            $time, ready, reset, soma,
            C3, C2, C1, C0, D1, D0,
            s1, s0,
            a, b, c, d, e, f, g,
            valor_soma,
            v4, v3, v2, v1,
            d4, d3, d2, d1
        );

        C3 = 0; C2 = 0; C1 = 0; C0 = 0;
        D1 = 0; D0 = 0;
        ready = 0;
        reset = 1;
        soma = 0;

        #5;
        reset = 0;
        ready = 1;

        $display("\n================================");
        $display("       TESTE DE SATURACAO");
        $display("==================================");

        soma = 0;
        ready = 0;
        reset = 1;

        reset = 0;
        ready = 1;

        C3 = 0; C2 = 0; C1 = 0; C0 = 0;
        D1 = 0; D0 = 0;

        for (i = 0; i < 2050; i = i + 1) begin

            soma = 1;
            #5;

            soma = 0;
            #5;

        end

        #5;
        soma = 1;
        #5;

        soma = 0;
        #5;
        #10;
        $finish;

    end

endmodule
