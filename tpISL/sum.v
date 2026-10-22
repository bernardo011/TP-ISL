module sum (s, ready, reset, soma, f, v1, v2, v3, v4, d1, d2, d3, d4);
  input wire ready, reset, soma;
  output reg f;
  input reg [1:0] s;
  output reg [3:0], v1, v2, v3, v4;
  output reg [6:0] d1, d2, d3, d4;
  always@(posedge soma) begin
    if (reset == 1 || ready == 0) begin
      f = 0;
    end else if (ready == 1) begin
      case (s) begin
        2b'00: f = 0;
        2b'01: f = 1;
        2b'10: f = 3;
        2b'11: f = 5;
      end
    end
  always @(negedge soma) begin
    if (reset) begin
      v1 = 4b'0000;
      v2 = 4b'0000;
      v3 = 4b'0000;
      v4 = 4b'0000;
    end else if (ready == 1 && (v1!=4b'1001 || v2!=4b'1001 || v3!=4b'1001 || v4!=4b'1001) begin
      if (v1+f<=9) begin
        v1+=f;
      end else if (v2+1<=9) begin
        v2+=1;
        v1 = v1+f-10;
        end else if (v3+1<=9) begin
          v1 = v1+f-10;
          v2 = v2+1-10;
          v3 +=1;
        end else begin
          v1=v1+f-10;
          v2 = v2+1-10;
          v3 = v3+1-10;
          v4+=1;
        end
      end
    
    end
endmodule
