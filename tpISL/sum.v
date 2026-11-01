module sum (s, ready, reset, soma, valor_soma, v1, v2, v3, v4, d1, d2, d3, d4);
  input wire ready, reset, soma;
  output reg[3:0] valor_soma;
  input wire [1:0] s;
  output reg [3:0] v1, v2, v3, v4;
  output reg [6:0] d1, d2, d3, d4;
  always@(soma) begin
    if (reset == 1 || ready == 0 || soma == 0) begin
      valor_soma = 0;
    end else if (ready == 1) begin
      case (s)
        2'b00: valor_soma = 0;
        2'b01: valor_soma = 1;
        2'b10: valor_soma = 3;
        2'b11: valor_soma = 5;
      endcase
      end
    end
    always @(valor_soma or reset) begin
    if (reset) begin
      v1 = 4'b0000;
      v2 = 4'b0000;
      v3 = 4'b0000;
      v4 = 4'b0000;
    end else if (ready == 1 && !(v1==9 && v2==9 && v3==9 && v4==9)) begin
      if (v1+valor_soma<=9) begin
        v1= v1+valor_soma;
      end else if (v2+1<=9) begin
        v2 = v2+1;
        v1 = v1+valor_soma-10;
        end else if (v3+1<=9) begin
          v1 = v1+valor_soma-10;
          v2 = v2+1-10;
          v3 = v3+1;
        end else if (v4+1<=9)begin
          v1=v1+valor_soma-10;
          v2 = v2+1-10;
          v3 = v3+1-10;
          v4= v4+1;
        end else begin
          v1 = 9;
          v2 = 9;
          v3 = 9;
          v4 = 9;
        end
      end
      case (v1) 
        0: begin
          d1[6] = 1; d1[5] = 1; d1[4] = 1; d1[3] = 1; d1[2] = 1; d1[1] = 1; d1[0] = 0;
        end
        1: begin
          d1[6] = 0; d1[5] = 1; d1[4] = 1; d1[3] = 0; d1[2] = 0; d1[1] = 0; d1[0] = 0;
        end
        2: begin
          d1[6] = 1; d1[5] = 1; d1[4] = 0; d1[3] = 1; d1[2] = 1; d1[1] = 0; d1[0] = 1;
        end
        3: begin
          d1[6] = 1; d1[5] = 1; d1[4] = 1; d1[3] = 1; d1[2] = 0; d1[1] = 0; d1[0] = 1;
        end
        4: begin
          d1[6] = 0; d1[5] = 1; d1[4] = 1; d1[3] = 0; d1[2] = 0; d1[1] = 1; d1[0] = 1;
        end
        5: begin
          d1[6] = 1; d1[5] = 0; d1[4] = 1; d1[3] = 1; d1[2] = 0; d1[1] = 1; d1[0] = 1;  
        end
        6: begin
          d1[6] = 1; d1[5] = 0; d1[4] = 1; d1[3] = 1; d1[2] = 1; d1[1] = 1; d1[0] = 1;
        end
        7: begin
          d1[6] = 1; d1[5] = 1; d1[4] = 1; d1[3] = 0; d1[2] = 0; d1[1] = 0; d1[0] = 0;
        end
        8: begin
          d1[6] = 1; d1[5] = 1; d1[4] = 1; d1[3] = 1; d1[2] = 1; d1[1] = 1; d1[0] = 1;
        end
        9: begin
          d1[6] = 1; d1[5] = 1; d1[4] = 1; d1[3] = 1; d1[2] = 0; d1[1] = 1; d1[0] = 1;
        end
      endcase
      case (v2) 
        0: begin
          d2[6] = 1; d2[5] = 1; d2[4] = 1; d2[3] = 1; d2[2] = 1; d2[1] = 1; d2[0] = 0;
        end
        1: begin
          d2[6] = 0; d2[5] = 1; d2[4] = 1; d2[3] = 0; d2[2] = 0; d2[1] = 0; d2[0] = 0;
        end
        2: begin
          d2[6] = 1; d2[5] = 1; d2[4] = 0; d2[3] = 1; d2[2] = 1; d2[1] = 0; d2[0] = 1;
        end
        3: begin
          d2[6] = 1; d2[5] = 1; d2[4] = 1; d2[3] = 1; d2[2] = 0; d2[1] = 0; d2[0] = 1;
        end
        4: begin
          d2[6] = 0; d2[5] = 1; d2[4] = 1; d2[3] = 0; d2[2] = 0; d2[1] = 1; d2[0] = 1;
        end
        5: begin
          d2[6] = 1; d2[5] = 0; d2[4] = 1; d2[3] = 1; d2[2] = 0; d2[1] = 1; d2[0] = 1;  
        end
        6: begin
          d2[6] = 1; d2[5] = 0; d2[4] = 1; d2[3] = 1; d2[2] = 1; d2[1] = 1; d2[0] = 1;
        end
        7: begin
          d2[6] = 1; d2[5] = 1; d2[4] = 1; d2[3] = 0; d2[2] = 0; d2[1] = 0; d2[0] = 0;
        end
        8: begin
          d2[6] = 1; d2[5] = 1; d2[4] = 1; d2[3] = 1; d2[2] = 1; d2[1] = 1; d2[0] = 1;
        end
        9: begin
          d2[6] = 1; d2[5] = 1; d2[4] = 1; d2[3] = 1; d2[2] = 0; d2[1] = 1; d2[0] = 1;
        end
      endcase
      case (v3) 
        0: begin
          d3[6] = 1; d3[5] = 1; d3[4] = 1; d3[3] = 1; d3[2] = 1; d3[1] = 1; d3[0] = 0;
        end
        1: begin
          d3[6] = 0; d3[5] = 1; d3[4] = 1; d3[3] = 0; d3[2] = 0; d3[1] = 0; d3[0] = 0;
        end
        2: begin
          d3[6] = 1; d3[5] = 1; d3[4] = 0; d3[3] = 1; d3[2] = 1; d3[1] = 0; d3[0] = 1;
        end
        3: begin
          d3[6] = 1; d3[5] = 1; d3[4] = 1; d3[3] = 1; d3[2] = 0; d3[1] = 0; d3[0] = 1;
        end
        4: begin
          d3[6] = 0; d3[5] = 1; d3[4] = 1; d3[3] = 0; d3[2] = 0; d3[1] = 1; d3[0] = 1;
        end
        5: begin
          d3[6] = 1; d3[5] = 0; d3[4] = 1; d3[3] = 1; d3[2] = 0; d3[1] = 1; d3[0] = 1;  
        end
        6: begin
          d3[6] = 1; d3[5] = 0; d3[4] = 1; d3[3] = 1; d3[2] = 1; d3[1] = 1; d3[0] = 1;
        end
        7: begin
          d3[6] = 1; d3[5] = 1; d3[4] = 1; d3[3] = 0; d3[2] = 0; d3[1] = 0; d3[0] = 0;
        end
        8: begin
          d3[6] = 1; d3[5] = 1; d3[4] = 1; d3[3] = 1; d3[2] = 1; d3[1] = 1; d3[0] = 1;
        end
        9: begin
          d3[6] = 1; d3[5] = 1; d3[4] = 1; d3[3] = 1; d3[2] = 0; d3[1] = 1; d3[0] = 1;
        end
      endcase
      case (v4) 
        0: begin
          d4[6] = 1; d4[5] = 1; d4[4] = 1; d4[3] = 1; d4[2] = 1; d4[1] = 1; d4[0] = 0;
        end
        1: begin
          d4[6] = 0; d4[5] = 1; d4[4] = 1; d4[3] = 0; d4[2] = 0; d4[1] = 0; d4[0] = 0;
        end
        2: begin
          d4[6] = 1; d4[5] = 1; d4[4] = 0; d4[3] = 1; d4[2] = 1; d4[1] = 0; d4[0] = 1;
        end
        3: begin
          d4[6] = 1; d4[5] = 1; d4[4] = 1; d4[3] = 1; d4[2] = 0; d4[1] = 0; d4[0] = 1;
        end
        4: begin
          d4[6] = 0; d4[5] = 1; d4[4] = 1; d4[3] = 0; d4[2] = 0; d4[1] = 1; d4[0] = 1;
        end
        5: begin
          d4[6] = 1; d4[5] = 0; d4[4] = 1; d4[3] = 1; d4[2] = 0; d4[1] = 1; d4[0] = 1;  
        end
        6: begin
          d4[6] = 1; d4[5] = 0; d4[4] = 1; d4[3] = 1; d4[2] = 1; d4[1] = 1; d4[0] = 1;
        end
        7: begin
          d4[6] = 1; d4[5] = 1; d4[4] = 1; d4[3] = 0; d4[2] = 0; d4[1] = 0; d4[0] = 0;
        end
        8: begin
          d4[6] = 1; d4[5] = 1; d4[4] = 1; d4[3] = 1; d4[2] = 1; d4[1] = 1; d4[0] = 1;
        end
        9: begin
          d4[6] = 1; d4[5] = 1; d4[4] = 1; d4[3] = 1; d4[2] = 0; d4[1] = 1; d4[0] = 1;
        end
      endcase
    end
endmodule
