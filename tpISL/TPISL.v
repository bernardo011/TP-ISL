module tp (C3, C2, C1, C0, D1, D0, s1, s0, reset, ready);
    input C3, C2, C1, C0, D1, D0, reset, ready;
    output reg s1, s0;
    always @(*) begin
        if (ready) begin
            s1 = ~D1 | (C2 & C3) | (C3 & ~D0 & D1) | (C0 & C1 & C3) | (C1 & C2 & ~C3 & ~D0 & D1);
            s0 = (~D0 & ~D1) | (C2 & C3) | (~C2 & ~C3 & D1) | (~C1 & C2 & D1) | (C0 & C1 & C3);
        end
        if (reset) begin
            s1 = 0;
            s0 = 0;
        end
    end
endmodule