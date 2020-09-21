program CombinacaoNumerica;
var
    n, i1, i2:integer;

begin
    write('Entre um numero maior que 1:');
    read(n);

    {sabendo que [(i - 1) + 1] = n,
                 [(i - 2) + 2] = n ...}

    i1 := (n - 1);
    i2 := 1;

    while i1 >= 1 do begin
        writeln(i2, ' e ', i1);

        i1:= i1 - 1;
        i2:= i2 + 1;
    end;
end.