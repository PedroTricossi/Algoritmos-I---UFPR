{Faça um programa em Pascal que troque o conteúdo de duas variáveis}

program TrocaVar;

var
    var1, var2, varIntermed: Integer;

begin
    read(var1);
    read(var2);

    varIntermed := var1;
    var1 := var2;
    var2 := varIntermed;

    writeln(var1, ',',var2);
end.