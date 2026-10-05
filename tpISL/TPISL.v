module tp (C3, C2, C1, C0, D1, D0, s1, s0, reset, ready);
    input C3, C2, C1, C0, D1, D0, reset, ready;
    output reg s1, s0;
    always @(*) begin
        /* Se o sinal de controle "reset" for 1, as saídas s1 e s0 são atualizadas com 0. Se o sinal de controle "ready" for 1,
        as entradas são lidas e a saída é atualizada. O ready tem prioridade pois caso tanto reset quando ready forem 1, as entra-
        das são lidas.
        */
        if (reset) begin
            s1 = 0;
            s0 = 0;
        end
        if (ready) begin
            s1 = ~D1 | (C2 & C3) | (C3 & ~D0 & D1) | (C0 & C1 & C3) | (C1 & C2 & ~C3 & ~D0 & D1);
            s0 = (~D0 & ~D1) | (C2 & C3) | (~C2 & ~C3 & D1) | (~C1 & C2 & D1) | (C0 & C1 & C3);
        end
    end
endmodule