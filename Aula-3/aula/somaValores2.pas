program somaValores;
var
    numero, soma: integer;

begin
    soma := 0;

    read (numero);

    while numero <> 0 do
    begin
        soma := soma + numero;
        
        read(numero);
    end;

    writeln(soma);

end.