module tp (C3, C2, C1, C0, D1, D0, s1, s0, ready);
    input C3, C2, C1, C0, D1, D0, ready;
    output reg s1, s0;
    always @(*) begin
        if (ready) begin
            s1 = ~D1 | C3 | (C1 & C2 & ~C3);
            s0 = (~D0 & ~D1) | (C2 & C3) | (~C2 & ~C3 & D1) | (~C1 & C2 & D1) | (C0 & C1 & C3);
        end else begin
            s1 = 0;
            s0 = 0;
        end
    end
endmodule
