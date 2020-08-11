{Faça um programa em Pascal que lê do teclado um número inteiro positivo N. Depois disso, o programa deve calcular e imprimir a soma de todas as frações em que a soma do numerador com o denominador de cada fração seja o número N. Por exemplo, se N=7, o programa deve calcular a soma abaixo:
S = 1/6 + 2/5 + 3/4 + 4/3 ...}
program UmaSerie;
var 
    n, numerador, denominador:integer;
    soma: real;

begin
    read(n);

    numerador:= 1;
    denominador:= n;
    soma:= 0;

    while denominador >= 1 do begin
        soma:= soma + (numerador / denominador);

        denominador:= denominador - 1;
        numerador:= numerador + 1;
    end;

    writeln(soma:4:2);
end.