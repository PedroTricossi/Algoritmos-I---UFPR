{Faça um programa em Pascal que leia um inteiro positivo n, e escreva a soma dos n primeiros termos da série abaixo:
S = 1000/1 - 997/2 + 994/3 ...
Imprima a saída com duas casas decimais.}
program serieS;
var
    sinal: integer;
    n, denominador, numerador, soma:real;

begin
    read(n);

    numerador:= 1000;
    denominador:= 1;
    soma:= 0;
    sinal := 1;

    while n >= 1 do begin
        soma:= soma + (sinal * (numerador / denominador));

        numerador:= numerador - 3;
        denominador:= denominador + 1;
        sinal := sinal * (-1);

        n:= n - 1;
    end; 

    writeln(soma:4:2);
end.