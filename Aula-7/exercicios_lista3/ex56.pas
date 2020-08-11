{Faça um programa Pascal que leia dois números inteiros, um n e outro m. Seu programa deve imprimir a soma de todos os números pares entre n e m; sendo que, n e m não devem ser incluídos na soma.}
program somaPar_Denovo;
var
    n, m, proximoPar, soma:integer;

begin
    read(n, m);

    soma := 0;

    if n mod 2 = 0 then
    begin
        proximoPar := n + 2;

        while (proximoPar + 2) <= m do begin
            soma:= soma + proximoPar;

            proximoPar:= proximoPar + 2;
        end;
    end
    else
    begin
        proximoPar := n + 1;

        while (proximoPar + 1) <= m do begin
            soma:= soma + proximoPar;

            proximoPar:= proximoPar + 2;
        end;
        
    end;


    writeln(soma);
end.