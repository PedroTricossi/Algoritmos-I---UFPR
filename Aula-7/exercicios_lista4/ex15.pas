{Se multiplicarmos 37 por alguns números, obteremos números cujos algarismos, quando somados, resultam no mesmo número que foi multiplicado pelo 37. Por exemplo, se tomarmos o número 15, multiplicando-o por 37, obtemos 555. Somando-se 5 + 5 + 5 resulta em 15.
Faça um programa Pascal que leia um número inteiro positivo do teclado, calcule o resultado da multiplicação por 37, some os algarismos do resultado, compare essa soma com o número lido e imprima "SIM" se há coincidência ou "NAO" se não há coincidência.}
program numerosLegais;
var 
    n, centena, dezena, unidade, soma, n37:int64;

begin
    read(n);

    n37 := n * 37;

    centena := n37 div 100;
    dezena := (n37 mod 100) div 10;
    unidade := (n37 mod 100) mod 10;

    soma := centena + dezena + unidade;

    if soma = n then
        writeln('SIM')
    else
    begin
        writeln('NAO')
    end;    
end.