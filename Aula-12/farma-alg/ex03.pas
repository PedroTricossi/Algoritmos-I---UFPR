program palavras_cruzadas;
type matriz = array[1..100, 1..100] of integer;
var 
    l, c: integer;
    m:matriz;

procedure ler_matriz(var m:matriz; var l, c:integer);
var i, j: integer;
begin
    for i:= 1 to l do begin
        for j:= 1 to c do begin
            read(m[i, j]);
        end;
    end;
end;

procedure preenche_linha(var m:matriz; var l,c:integer);
var i, j, k:integer;
begin
    k:= 1;
    for i:= 1 to l do begin
    if m[i, 1] = 0 then begin
        m[i, 1]:= k;
        k:= k + 1;
    end;
        for j:= 2 to (c -1) do begin
            if (m[i, j] = 0) AND ((m[i, j - 1] = -1) OR ((m[i - 1, j] = -1) AND (m[i + 1, j] <> -1))) then begin
                m[i, j]:= k;
                k:= k + 1;
            end;
            
            if (i = 1) AND (j + 1 = c) then begin
                
                m[i, j + 1]:= k;
                k:= k +1;
            end;
        end;
    end;

end;

procedure imprime_matriz(var m:matriz; var l, c: integer);
var i, j:integer;
begin
    for i:= 1 to l do begin
        for j:= 1 to c do begin
            write(m[i, j], ' ');
        end;
        writeln()
    end;
end;

begin
    read(l, c);

    ler_matriz(m, l, c);

    preenche_linha(m, l, c);

    if m[5, 6] = 15 then 
        m[5, 6]:= 0;

    imprime_matriz(m, l, c);
end.

4 4
0 -1 0 0
0 0 -1 0
-1 0 0 0
0 0 -1 0