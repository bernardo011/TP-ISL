module display (s1, s0, reset, ready, a, b, c, d, e, f, g);
    output reg a, b, c, d, e, f, g;
    input s1, s0, reset, ready;
    always @(*) begin
        a = 0;
        b = 0;
        c = 0;
        d = 0;
        e = 0;
        f = 0;
        g = 0;
        if (reset) begin
            a = 1;
            b = 1;
            c = 1;
            d = 1;
            e = 1;
            f = 1;
            g = 0;
        end
        if (ready) begin
            if ((s1 == 1) & (s0 == 1)) begin
            a = 1;
            b = 1;
            c = 1;
            d = 1;
            g = 1;
            f = 0;
            e = 0; 
            end else if ((s1 == 0) && (s0 == 1)) begin
                b = 1;
                c = 1;
                a = 0;
                f = 0;
                g = 0;
                e = 0;
                d = 0;
            end else if ((s1 == 1) && (s0 == 0)) begin
                b = 1;
                c = 0;
                a = 1;
                f = 0;
                g = 1;
                e = 1;
                d = 1;
            end else if ((s1 == 0) && (s0 == 0))begin
                b = 0;
                c = 0;
                a = 1;
                f = 1;
                g = 1;
                e = 1;
                d = 1;
            end
        end
    end
endmodule