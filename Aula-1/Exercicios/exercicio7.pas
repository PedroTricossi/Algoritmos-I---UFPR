{Faça um programa em Pascal que troque o conteúdo de duas variáveis inteiras sem utilizar variáveis auxiliares.}

program TrocaVar_v2;

var
    var1, var2: Integer;

begin
    read(var1);
    read(var2);

    var1 := var1 + var2;
    var2 := var1 - var2;
    var1 := var1 - var2;

    writeln(var1, ',',var2);
end.