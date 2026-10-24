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
        $dumpfile("ondas.vcd");
        $dumpvars(0, bench);

        $monitor(
            "Time=%0t | ready=%b reset=%b soma=%b | C=%b%b%b%b D=%b%b | S=%b%b | f=%d | Contador: v4=%d v3=%d v2=%d v1=%d | Displays: d4=%b d3=%b d2=%b d1=%b",
            $time, ready, reset, soma,
            C3, C2, C1, C0, D1, D0,
            s1, s0, valor_soma,
            v4, v3, v2, v1,
            d4, d3, d2, d1
        );

        // Inicialização
        C3 = 0; C2 = 0; C1 = 0; C0 = 0;
        D1 = 0; D0 = 0;
        ready = 0;
        reset = 1;
        soma = 0;

        #5;
        reset = 0;
        ready = 1;

        // Testa as 64 combinações de C e D
        for (i = 0; i < 64; i = i + 1) begin
            {C3, C2, C1, C0, D1, D0} = i;

            #5;

            // Pulso de subida de soma: calcula f
            soma = 1;
            #5;

            // Pulso de descida de soma: atualiza o contador
            soma = 0;
            #5;

            // Desativa ready periodicamente
            if (i == 7 || i == 23 || i == 39 || i == 55) begin
                ready = 0;
                #5;
                ready = 1;
            end

            // Aciona reset periodicamente
            if (i == 15 || i == 31 || i == 47) begin
                reset = 1;
                #5;
                reset = 0;
            end
        end

        #10;
        $finish;
    end

endmodule