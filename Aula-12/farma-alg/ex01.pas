program ex_04;
type matriz = array[1..100, 1..100]of integer;
     vetor = array[1..100] of integer;
var 
    m: matriz;
    n_toma, n_move: vetor;

procedure ler_matriz(var m:matriz);
var i, j:integer;
begin
    for i:=1 to 8 do begin
        for j:=1 to 8 do begin
            read(m[i, j]);
        end;
    end;
end;

function pode_tomar(var m:matriz):vetor;
var i, j, k:integer;

begin
    pode_tomar[1]:= 0;
    k:= 1;
    for i:= 1 to 8 do begin
        for j:= 1 to 8 do begin
            if m[i, j] = -1 then begin
                if (m[i+ 1, j + 1] = 1) OR (m[i+ 1, j - 1] = 1) then begin
                    pode_tomar[k]:= i;
                    pode_tomar[k + 1]:= j;

                    k:= k + 2;                    
                end;
            end;
        end;
    end;
end;

function pode_mover(var m:matriz):vetor;
var i, j, k:integer;

begin
    pode_mover[1]:= 0;
    k:= 1;
    for i:= 1 to 8 do begin
        for j:= 1 to 8 do begin
            if m[i, j] = -1 then begin
                if (m[i+ 1, j + 1] = 0) OR (m[i+ 1, j - 1] = 0) then begin
                    pode_mover[k]:= i;
                    pode_mover[k + 1]:= j;

                    k:= k + 2;                    
                end;
            end;
        end;
    end;
end;

procedure imprime_vetor(var v:vetor);
var i:integer;
begin
    i:=1;


    writeln();
end;

begin
    ler_matriz(m);

    n_toma:= pode_tomar(m);

    n_move:= pode_mover(m);

    imprime_vetor(n_move)

end.