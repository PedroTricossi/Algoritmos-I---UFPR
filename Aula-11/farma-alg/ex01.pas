program ex01;
type matriz = array[0..100, 0..100] of integer;
var
n: integer;
m:matriz;

procedure ler_matriz(var n: integer; var m:matriz);
var i, j:integer;
begin
    for i:=1 to n do begin
        for j:=1 to n do begin
            read(m[i, j]);
        end;
    end;
end;

function matriz_quadrada(var n:integer; var m:matriz):boolean;
var i, j:integer;
begin
    matriz_quadrada:= false;

    if m [1, n] = 0 then begin
        for j:= 2 to n do begin
        if m[1, j] = 0 then
            matriz_quadrada:= true;
        end;
    end
    else if m[n, 1] = 0 then
    begin
        for i:= 1 to (n-1) do begin
            if m[n, i] = 0 then 
                matriz_quadrada:= true;
        end;
    end;

end;



begin
    read(n);

    ler_matriz(n, m);

    if matriz_quadrada(n, m) then
        writeln('sim')
    else
        writeln('nao'); 
end.