program eh_primo_v4;
var 
    n, i:integer;
    ehPrimo: boolean;

begin
    read(n);
    ehPrimo := true;

    if n mod 2 = 0 then
        if n <> 2 then
            ehPrimo := false
        else ehPrimo := true
    
    else
    begin
        i := 3;

        while (i <= trunc(sqrt(n))) AND ehPrimo do
        begin
            if (n mod i = 0) then 
                ehPrimo := false;
            
            i := i + 2;
        end;
    end;

    if ehPrimo then 
        writeln('SIM')
    else
        writeln('NAO')
end.