program quadrado;
type matriz = array[1..100, 1..100] of integer;
var 
    l, c: integer;
    m:matriz;

procedure ler_matriz(var m:matriz; var l:integer);
var i, j: integer;
begin
    for i:= 1 to l do begin
        for j:= 1 to l do begin
            read(m[i, j]);
        end;
    end;
end;

procedure e_magico(var m:matriz; var l:integer);
var i, j, soma1, soma2:integer;
    bol: boolean;
begin

    i:=2;
    j:=1;
    bol:= true;

    while (i <= l) AND bol = true do begin
        soma1:= 0;
        soma2:= 0;

        while j <= l do begin
            soma1:= soma1 + m[i- 1, j];
            soma2:= soma2 + m[i, j];

            j:= j +1;
        end;

        if soma1 = soma2 then 
            bol:= true
        else
        begin
            bol:= false;
        end;

        i:= i +1;
    end;

   if bol then 
        writeln('sim')
    else
    begin
        writeln('nao');
    end;
end;

begin
    read(l);

    ler_matriz(m, l);

    e_magico(m, l);    
end.

3
8 0 7
4 9 6
3 10 2