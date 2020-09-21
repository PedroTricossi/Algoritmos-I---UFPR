program ex_02;
type matriz = array[0..100, 0..100] of integer;
var
    linha, coluna, numero_l_nulas, numero_c_nulas:integer;
    m:matriz;

procedure ler_matriz(var linha, coluna:integer; var m:matriz);
var i, j:integer;
begin
    for i:=1 to linha do begin
        for j:=1 to coluna do begin
            read(m[i, j]);
        end;
    end;
end;

function linha_nula(linha, coluna:integer; var m:matriz):integer;
var i, j, conta_elementos:integer;
begin
    linha_nula:= 0;
    conta_elementos:= 0;

    for j:=1 to linha do begin
        for i:=1 to coluna do begin
            if m[j, i] = 0 then 
                conta_elementos:= conta_elementos + 1;
        end;

        if conta_elementos= coluna then 
            linha_nula:= linha_nula + 1;
        
            conta_elementos:= 0;
    end;

end;

function coluna_nula(linha, coluna:integer; var m:matriz):integer;
var i, j, conta_elementos:integer;
begin
    coluna_nula:= 0;
    conta_elementos:= 0;

    for j:=1 to linha do begin
        for i:=1 to coluna do begin
            if m[i, j] = 0 then 
                conta_elementos:= conta_elementos + 1;
        end;

        if conta_elementos= coluna then 
            coluna_nula:= coluna_nula + 1;
        
            conta_elementos:= 0;
    end;

end;

begin
    read(linha, coluna);
    ler_matriz(linha, coluna, m);
    numero_l_nulas:=  linha_nula(linha, coluna, m);

    writeln(numero_l_nulas);

    numero_c_nulas:=  coluna_nula(linha, coluna, m); 

    writeln(numero_c_nulas)
end.