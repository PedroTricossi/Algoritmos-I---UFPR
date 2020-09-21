program calcula_tangente;
var angulo: real;

function seno(angulo:real):real;
var
den, sig, i:integer;
sum, num: real;
begin
    num := angulo; den:= 1; sig:= 1; sum:= 0.0;

    i:= 1;

    while (i < 14) do begin
        sum := sum + sig * num / den;
        num := num * angulo * angulo;
        den := den * (i + 1) * (i + 2);
        sig := sig * (-1);

        i := i + 2;
    end;
    seno:= sum;
end;

Function cos(angulo : real):extended; {Retorna o Cosseno}
Var
i : integer;
a,b,soma,pot : extended;
tmp : longint;

Begin
    a:=1;
    soma:=1;
    pot:=1;
    for i:=1 to 7 do
    begin
        pot:=pot*angulo*angulo;
        tmp:=i+i;
        b:=pot/(tmp*tmp-tmp);
        a:=-a*b;
        soma:=soma+a
    end;
    cos:=soma;
End;

function tg(angulo:real):real;
begin
    tg:= seno(angulo) / cos(angulo);
end;

function existe_tangente(angulo:real):boolean;
begin
    existe_tangente:= true;
    if angulo = 3.14 then
        existe_tangente:= false;
end;


begin
    read (angulo);
    if existe_tangente(angulo) then
        writeln (tg(angulo):0:5)
    else
        writeln ('nao existe tangente de ',angulo:0:5);
end.