program contarPositivos;
var
    numero, i, numerosPositivos, numerosNegativos: integer;

begin
    numerosPositivos := 0;
    numerosNegativos := 0;
    i := 1;

    while i <= 5 do
    begin
        read(numero);

        if numero > 0 then
            numerosPositivos := numerosPositivos + 1
        else
            numerosNegativos := numerosNegativos + 1;

         i := i + 1; 
    end;

    writeln(numerosPositivos);
    writeln(numerosNegativos);
end.