{Observe a soma infinita abaixo. Ela é formada por frações em que cada numerador é o dobro do denominador da fração anterior e cada denominador, por sua vez, é o dobro do numerador da fração anterior (exceto a primeira fração)}
program breakingBad_MaisUmaSerieQueNaoENadaDemais;
var 
    numerador, denominador, i, varIntermed: integer;
    soma: real;

begin
    numerador:= 1;
    denominador:= 3;
    soma:= 0;
    i:= 1;


    while i <= 10 do begin
        soma:= soma + (numerador / denominador);

        varIntermed:= numerador;
        numerador:= denominador * 2;
        denominador:= varIntermed * 2;

        i:= i + 1;
    end;

    writeln(soma:4:2);

end.