{A soma infinita indicada abaixo é composta de termos em que o numerador de cada termo é um número ímpar ou a dezena de um número ímpar, conforme a posição do termo na série, e o denominador é um número par ou a dezena de um número par, conforme a posição do termo na série:}
program GOT_UmaSerieRealmenteBoa;
var
    i:integer;
    soma, frac1, frac2, denominador1, numerador1, denominador2, numerador2:real;

begin
    denominador1:= 20;
    numerador1:= 1;
    denominador2:= 4;
    numerador2:= 30;
    soma:= 0;
    
    i:= 1;

    while i <= 5 do begin
        frac1:= numerador1 / denominador1;
        frac2:= numerador2 / denominador2;

        soma:= soma + (frac2 - frac1);

        numerador1:= numerador1 + 4;
        denominador1:= denominador1 + 40;
        numerador2:= numerador2 + 40;
        denominador2:= denominador2 + 4;

        i:= i+1;
    end;
    writeln(soma:4:2);
end.