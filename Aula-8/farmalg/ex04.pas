program testa_se_primo;
var i: longint;

function eh_primo(n:integer): boolean;

var 
i:integer;

begin
    eh_primo:= true;
    if n mod 2 = 0 then
        if n <> 2 then
            eh_primo := false
        else 
            eh_primo := true  
    else
        begin
            i := 3;

            while (i <= trunc(sqrt(n))) AND eh_primo do
            begin
                if n mod i = 0 then 
                    eh_primo := false
                else
                    eh_primo := true;
                i := i + 2;
            end;
        end;
end;

begin
    for i:= 1 to 10000 do
    begin
        if eh_primo (i) then
            writeln (i);
    end;
end.