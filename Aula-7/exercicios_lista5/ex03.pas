{Observe a soma infinita abaixo. Ela é formada por frações em que cada numerador é a soma entre o numerador e o denominador da fração anterior e cada denominador, por sua vez, é a soma do seu numerador com o denominador da fração anterior (exceto a primeira fração)}
program friends_UmaSerieQueNaoENadaDemais;
var 
    numerador, denominador, i: integer;
    soma: real;

begin
    numerador:= 1;
    denominador:= 1;
    soma:= 0;
    i:= 1;


    while i <= 5 do begin
        soma:= soma + (numerador / denominador);

        numerador:= numerador + denominador;
        denominador:= denominador + numerador;

        i:= i + 1;
    end;

    writeln(soma:4:2);

end.