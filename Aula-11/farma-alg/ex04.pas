program ex_04;
type matriz = array[1..100, 1..100]of integer;
var 
    n:integer;
    m: matriz;

procedure ler_matriz(var n:integer; var m:matriz);
var i, j:integer;
begin
    for i:=1 to n do begin
        for j:=1 to n do begin
            read(m[i, j]);
        end;
    end;
end;

function matriz_permutacao(var n:integer; var m:matriz):boolean;
var i, j, contador:integer;

begin
    matriz_permutacao:= true;

    for i:=1 to n do begin
        for j:=1 to n do begin
            if (m[i, j] <> 1) AND (m[i, j] <> 0)then 
                matriz_permutacao:= false;
        end;
    end;

    if matriz_permutacao = true then begin
        for i:=1 to n do begin
            contador:= 0;
            for j:=1 to n do begin
                if m[i, j] = 1 then
                    contador:= contador +1;
            end;

            if contador > 1 then 
                matriz_permutacao:= false;
        end;
    end;

    if matriz_permutacao = true then begin
        for i:=1 to n do begin
            contador:= 0;
            for j:=1 to n do begin
                if m[j, i] = 1 then
                    contador:= contador +1;
            end;

            if contador > 1 then 
                matriz_permutacao:= false;
        end;
    end;
end;

begin
    read(n);

    ler_matriz(n, m);

    if matriz_permutacao(n, m) then 
        writeln('sim')
    else
    begin
        writeln('nao')
    end;
end.