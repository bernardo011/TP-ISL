Como compilar o projeto:

O circuito possui dois módulos de test bench que podem ser compilados individualmente utilizando os comandos:

iverilog -o sim bench.v classificador.v display.v main.v sum.v
iverilog -o sim bench2.v classificador.v display.v main.v sum.v
