program ex_03;
type matriz = array[1..100, 1..100]of integer;
var 
    linha, coluna:integer;
    m: matriz;

procedure ler_matriz(var linha, coluna:integer; var m:matriz);
var i, j:integer;
begin
    for i:=1 to linha do begin
        for j:=1 to coluna do begin
            read(m[i, j]);
        end;
    end;
end;

function elemento_repetido(linha, coluna:integer; var m:matriz):boolean;
var i, j, k, l,contador:integer;
begin
    elemento_repetido:= false;
    for i:= 1 to linha do begin
        for j:= 1 to coluna do begin
            contador:= 0;
            for k:= 1  to linha do begin
                for l:= 1 to coluna do begin
                    if m[i, j] = m[k, l] then 
                        contador:= contador + 1;
                end;
            end;

            if contador > 1 then    
                elemento_repetido:= true;
        end;
    end;
end;


begin
    read(linha, coluna);

    ler_matriz(linha, coluna, m);

    if elemento_repetido(linha, coluna, m) then
        writeln('sim')
    else
    begin
        writeln('nao')
    end;
end.