program contrario;
var n,m: longint;

function contrario(n, m:longint):boolean;
var unidade, dezena, centena, teste_m: longint;

begin
 if (n <> m) OR (n = 0) then begin
    centena:= n div 100;
    dezena:= (n mod 100) div 10;
    unidade:= (n mod 100) mod 10;

    teste_m:= (unidade * 100) + (dezena * 10) + centena;

    if teste_m = m then    
        contrario:= true
    else
        contrario:= false;
 end
 else
 begin
    contrario:= true;
 end;    
end;

begin
read (n,m);
if contrario (n,m) then
writeln (n,' eh o contrario de ',m)
else
writeln (n,' nao eh o contrario de ',m);
end.