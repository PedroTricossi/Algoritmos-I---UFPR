program eh_primo_v1
var
    n, cont, i:integer;

begin
    read(n);

    cont := 0;
    i := 2;

    while i <= n-1 do
    begin
        if n mod i = 0 then
            cont := cont + 1;
        i := i + 1; 
    end;

    if cont = 0 then
        writeln(n, 'eh primo')
end.