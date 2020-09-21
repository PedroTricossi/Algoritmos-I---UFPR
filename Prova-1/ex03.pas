program SequenciaNumerica;
var
    n, posicaoNaSequencia, i, milhar, centena, dezena, unidade:integer;

begin
    read(n);

    {Primeiro numero da sequencia C}
    i:= 1023;

    posicaoNaSequencia:= 0;

    while i <= n do begin
        {Como todos os algarismos precisam ser distintos dentro de do numero, o numero foi dividido o em seus respectivos algarismos}
        milhar:= i div 1000;
        centena:= (i div 100) mod 10;
        dezena:= (i mod 100) div 10;
        unidade:= (i mod 100) mod 10;

        {comparação de todos os algarismos para verificação se algum deles é igual}
        if (milhar <> centena) AND (milhar <> dezena) AND (milhar <> unidade) AND (centena <> dezena) AND (centena <> unidade)  AND (dezena <> unidade) then begin
            posicaoNaSequencia:= posicaoNaSequencia + 1;
        end;

        i:= i + 1;
    end;

    writeln(posicaoNaSequencia);

end.