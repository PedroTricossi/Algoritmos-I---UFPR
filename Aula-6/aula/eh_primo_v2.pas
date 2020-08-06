program ehPrimo_v2
var
    n, i: integer;
    ehPrimo: boolean;

begin
    read(n);
    ehPrimo := true;
    i := 2;

    while (i <= n-1) AND ehPrimo do 
    begin
        if n mod i = 0 then
            ehPrimo := false
        i := i + 1;
    end;

    if ehPrimo then 
        whiteln(n, 'eh primo');
end.