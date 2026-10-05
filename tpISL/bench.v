module bench ();
    reg C3, C2, C1, C0, D1, D0, reset, ready;
    wire s1, s0, a, b, c, d, e, f, g;
    tp unit1 (.C3(C3), .C2(C2), .C1(C1), .C0(C0), .D1(D1), .D0(D0), .s1(s1), .s0(s0), .reset(reset), .ready(ready));
    display unit2 (.s1(s1), .s0(s0), .reset(reset), .ready(ready), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g));
    initial begin
    $dumpfile("ondas.vcd");
    $dumpvars(0, bench);
    $monitor("Time: %0t | reset = %b | ready = %b | C=%b%b%b%b | D=%b%b | S=%b%b | Display=%b%b%b%b%b%b%b", $time, reset, ready, C3, C2, C1, C0, D1, D0, s1, s0, a, b, c, d, e, f, g);
    // Atribui-se 1 ao sinal reset e 0 para o sinal ready para inicializar o display e as saídas s1 e s0.
    reset = 1;
    ready = 0;
    #5
    //Atribui-se 0 ao reset e 1 ao ready para começar a leitura das entradas.
    reset = 0;
    ready = 1;
    // Todas as linhas da tabela verdade do circuito (0-63): 
    C3 = 0;
    C2 = 0;
    C1 = 0;
    C0 = 0;
    D1 = 0;
    D0 = 0;

    #5
    C3 = 0;
    C2 = 0;
    C1 = 0;
    C0 = 0;
    D1 = 0;
    D0 = 1;

    #5
    C3 = 0;
    C2 = 0;
    C1 = 0;
    C0 = 0;
    D1 = 1;
    D0 = 0;

    #5
    C3 = 0;
    C2 = 0;
    C1 = 0;
    C0 = 0;
    D1 = 1;
    D0 = 1;

    #5
    C3 = 0;
    C2 = 0;
    C1 = 0;
    C0 = 1;
    D1 = 0;
    D0 = 0;

    #5
    C3 = 0;
    C2 = 0;
    C1 = 0;
    C0 = 1;
    D1 = 0;
    D0 = 1;

    #5
    C3 = 0;
    C2 = 0;
    C1 = 0;
    C0 = 1;
    D1 = 1;
    D0 = 0;

    #5
    C3 = 0;
    C2 = 0;
    C1 = 0;
    C0 = 1;
    D1 = 1;
    D0 = 1;

    #5
    C3 = 0;
    C2 = 0;
    C1 = 1;
    C0 = 0;
    D1 = 0;
    D0 = 0;

    #5
    C3 = 0;
    C2 = 0;
    C1 = 1;
    C0 = 0;
    D1 = 0;
    D0 = 1;

    #5
    C3 = 0;
    C2 = 0;
    C1 = 1;
    C0 = 0;
    D1 = 1;
    D0 = 0;

    #5
    C3 = 0;
    C2 = 0;
    C1 = 1;
    C0 = 0;
    D1 = 1;
    D0 = 1;

    #5
    C3 = 0;
    C2 = 0;
    C1 = 1;
    C0 = 1;
    D1 = 0;
    D0 = 0;

    #5
    C3 = 0;
    C2 = 0;
    C1 = 1;
    C0 = 1;
    D1 = 0;
    D0 = 1;

    #5
    C3 = 0;
    C2 = 0;
    C1 = 1;
    C0 = 1;
    D1 = 1;
    D0 = 0;

    #5
    C3 = 0;
    C2 = 0;
    C1 = 1;
    C0 = 1;
    D1 = 1;
    D0 = 1;

    #5
    C3 = 0;
    C2 = 1;
    C1 = 0;
    C0 = 0;
    D1 = 0;
    D0 = 0;

    #5
    C3 = 0;
    C2 = 1;
    C1 = 0;
    C0 = 0;
    D1 = 0;
    D0 = 1;

    #5
    C3 = 0;
    C2 = 1;
    C1 = 0;
    C0 = 0;
    D1 = 1;
    D0 = 0;

    #5
    C3 = 0;
    C2 = 1;
    C1 = 0;
    C0 = 0;
    D1 = 1;
    D0 = 1;

    #5
    C3 = 0;
    C2 = 1;
    C1 = 0;
    C0 = 1;
    D1 = 0;
    D0 = 0;

    #5
    C3 = 0;
    C2 = 1;
    C1 = 0;
    C0 = 1;
    D1 = 0;
    D0 = 1;

    #5
    C3 = 0;
    C2 = 1;
    C1 = 0;
    C0 = 1;
    D1 = 1;
    D0 = 0;

    #5
    C3 = 0;
    C2 = 1;
    C1 = 0;
    C0 = 1;
    D1 = 1;
    D0 = 1;

    #5
    C3 = 0;
    C2 = 1;
    C1 = 1;
    C0 = 0;
    D1 = 0;
    D0 = 0;

    #5
    C3 = 0;
    C2 = 1;
    C1 = 1;
    C0 = 0;
    D1 = 0;
    D0 = 1;

    #5
    C3 = 0;
    C2 = 1;
    C1 = 1;
    C0 = 0;
    D1 = 1;
    D0 = 0;

    #5
    C3 = 0;
    C2 = 1;
    C1 = 1;
    C0 = 0;
    D1 = 1;
    D0 = 1;

    #5
    C3 = 0;
    C2 = 1;
    C1 = 1;
    C0 = 1;
    D1 = 0;
    D0 = 0;

    #5
    C3 = 0;
    C2 = 1;
    C1 = 1;
    C0 = 1;
    D1 = 0;
    D0 = 1;

    #5
    C3 = 0;
    C2 = 1;
    C1 = 1;
    C0 = 1;
    D1 = 1;
    D0 = 0;

    #5
    C3 = 0;
    C2 = 1;
    C1 = 1;
    C0 = 1;
    D1 = 1;
    D0 = 1;

    #5
    C3 = 1;
    C2 = 0;
    C1 = 0;
    C0 = 0;
    D1 = 0;
    D0 = 0;

    #5
    C3 = 1;
    C2 = 0;
    C1 = 0;
    C0 = 0;
    D1 = 0;
    D0 = 1;

    #5
    C3 = 1;
    C2 = 0;
    C1 = 0;
    C0 = 0;
    D1 = 1;
    D0 = 0;

    #5
    C3 = 1;
    C2 = 0;
    C1 = 0;
    C0 = 0;
    D1 = 1;
    D0 = 1;

    #5
    C3 = 1;
    C2 = 0;
    C1 = 0;
    C0 = 1;
    D1 = 0;
    D0 = 0;

    #5
    C3 = 1;
    C2 = 0;
    C1 = 0;
    C0 = 1;
    D1 = 0;
    D0 = 1;

    #5
    C3 = 1;
    C2 = 0;
    C1 = 0;
    C0 = 1;
    D1 = 1;
    D0 = 0;

    #5
    C3 = 1;
    C2 = 0;
    C1 = 0;
    C0 = 1;
    D1 = 1;
    D0 = 1;

    #5
    C3 = 1;
    C2 = 0;
    C1 = 1;
    C0 = 0;
    D1 = 0;
    D0 = 0;

    #5
    C3 = 1;
    C2 = 0;
    C1 = 1;
    C0 = 0;
    D1 = 0;
    D0 = 1;

    #5
    C3 = 1;
    C2 = 0;
    C1 = 1;
    C0 = 0;
    D1 = 1;
    D0 = 0;

    #5
    C3 = 1;
    C2 = 0;
    C1 = 1;
    C0 = 0;
    D1 = 1;
    D0 = 1;

    #5
    C3 = 1;
    C2 = 0;
    C1 = 1;
    C0 = 1;
    D1 = 0;
    D0 = 0;

    #5
    C3 = 1;
    C2 = 0;
    C1 = 1;
    C0 = 1;
    D1 = 0;
    D0 = 1;

    #5
    C3 = 1;
    C2 = 0;
    C1 = 1;
    C0 = 1;
    D1 = 1;
    D0 = 0;

    #5
    C3 = 1;
    C2 = 0;
    C1 = 1;
    C0 = 1;
    D1 = 1;
    D0 = 1;

    #5
    C3 = 1;
    C2 = 1;
    C1 = 0;
    C0 = 0;
    D1 = 0;
    D0 = 0;

    #5
    C3 = 1;
    C2 = 1;
    C1 = 0;
    C0 = 0;
    D1 = 0;
    D0 = 1;

    #5
    C3 = 1;
    C2 = 1;
    C1 = 0;
    C0 = 0;
    D1 = 1;
    D0 = 0;

    #5
    C3 = 1;
    C2 = 1;
    C1 = 0;
    C0 = 0;
    D1 = 1;
    D0 = 1;

    #5
    C3 = 1;
    C2 = 1;
    C1 = 0;
    C0 = 1;
    D1 = 0;
    D0 = 0;

    #5
    C3 = 1;
    C2 = 1;
    C1 = 0;
    C0 = 1;
    D1 = 0;
    D0 = 1;

    #5
    C3 = 1;
    C2 = 1;
    C1 = 0;
    C0 = 1;
    D1 = 1;
    D0 = 0;

    #5
    C3 = 1;
    C2 = 1;
    C1 = 0;
    C0 = 1;
    D1 = 1;
    D0 = 1;

    #5
    C3 = 1;
    C2 = 1;
    C1 = 1;
    C0 = 0;
    D1 = 0;
    D0 = 0;

    #5
    C3 = 1;
    C2 = 1;
    C1 = 1;
    C0 = 0;
    D1 = 0;
    D0 = 1;

    #5
    C3 = 1;
    C2 = 1;
    C1 = 1;
    C0 = 0;
    D1 = 1;
    D0 = 0;

    #5
    C3 = 1;
    C2 = 1;
    C1 = 1;
    C0 = 0;
    D1 = 1;
    D0 = 1;

    #5
    C3 = 1;
    C2 = 1;
    C1 = 1;
    C0 = 1;
    D1 = 0;
    D0 = 0;

    #5
    C3 = 1;
    C2 = 1;
    C1 = 1;
    C0 = 1;
    D1 = 0;
    D0 = 1;

    #5
    C3 = 1;
    C2 = 1;
    C1 = 1;
    C0 = 1;
    D1 = 1;
    D0 = 0;

    #5
    C3 = 1;
    C2 = 1;
    C1 = 1;
    C0 = 1;
    D1 = 1;
    D0 = 1;

    #10
    $finish;
    end
endmodule