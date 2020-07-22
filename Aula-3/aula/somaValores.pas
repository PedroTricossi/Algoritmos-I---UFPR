program somaValores;
const max=5;
var
    numero, i, soma: integer;

begin
    soma := 0;
    i := 1;

    while i <= max do
    begin
        read(numero);

        soma := soma + numero;
        i := i + 1;
    end;

    writeln(soma);
end.
