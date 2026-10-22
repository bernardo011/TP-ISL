module sum (s, ready, reset, soma, f);
  input wire ready, reset, soma;
  output reg f;
  reg[1:0] s;
  always@(posedge soma) begin
    if (reset == 1 || ready == 0) begin
      f = 0;
    end else if (ready == 1 && soma == 1) begin
      case (s) begin
        2b'00: f = 0;
        2b'01: f = 1;
        2b'10: f = 3;
        2b'11: f = 5;
      end
    end
endmodule
