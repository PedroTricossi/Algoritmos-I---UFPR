program testa_binario;
var n: longint;

function eh_binario(n: integer): boolean;
begin
    if n = 0 then
        eh_binario := true
    else
        eh_binario := false;
end;

begin
    read (n);
    if eh_binario (n) then
        writeln ('sim')
    else
        writeln ('nao');
end.