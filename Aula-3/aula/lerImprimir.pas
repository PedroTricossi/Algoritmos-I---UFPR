program lerEImprimir;
var
    numero, i: integer;

begin
    i := 1;
    while i <= 30 do
    begin
        read(numero);
        if numero > 0 then
            writeln(numero)
        else
            writeln(numero * numero);
        
        i := i + 1;
    end;
end.