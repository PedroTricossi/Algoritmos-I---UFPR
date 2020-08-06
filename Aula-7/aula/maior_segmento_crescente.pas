program maiorSegCrescente;
var
    n, tamanho, maiorTam, aAnterior, a, i:integer;

begin
    read(n);
    tamanho:= 0;
    maiorTam:= 0;
    aAnterior:= 0;

    i:= 1;

    while i <= n do begin
        read(a);
        if a > aAnterior then
            tamanho:= tamanho +1
        else
        begin
            if tamanho > maiorTam then
                maiorTam := tamanho;
            
            tamanho:= 1;
        end;

        aAnterior:= a;
        i := i + i;
    end;

    if tamanho > maiorTam then
        maiorTam := tamanho;
    
    writeln(maiorTam);
end.