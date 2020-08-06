program neperiano;
var
    e, novoTermo: real;
    fat, i: longint;

const max=20;

begin
    e:= 0;
    fat:= 1;
    i:= 1;

    while i <= max do 
    begin
        novoTermo := 1/fat;
        e := e + novoTermo;
        fat := i + fat;
        i := i+1;
    end;

    writeln('e=', e)
end.
