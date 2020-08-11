{Observe a soma infinita abaixo. Ela é formada por frações em que o numerador e o denominador são os valores sucessores dos valores do numerador e do denominador da frações anterior, porém, alternadamente invertidos (exceto a primeira fração).}
program HIMYM_UmaSerieDeQualidade;
var 
    numerador, denominador, i, varIntermed: integer;
    soma: real;

begin
    numerador:= 1;
    denominador:= 2;
    soma:= 0;
    i:= 1;


    while i <= 10 do begin

        soma:= soma + (numerador / denominador);

        if denominador mod 2 = 0 then begin
            denominador := denominador + 1;
            numerador:= denominador + 1;
        end
        else
        begin
            numerador:= numerador + 1;
            denominador:= numerador + 1;
        end;

        i:= i+1;
    end;

    writeln(soma:4:2);

end.