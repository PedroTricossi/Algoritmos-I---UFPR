program mediaPonderada;
var
    n, i, soma: longint;

begin
    read(n);
    
    soma := 0;

    while i <= n do
    begin
        soma := soma + (i * i * i);

        i := i + 1;
    end;

    writeln(soma);
end.