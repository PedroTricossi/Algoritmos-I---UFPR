program ordem_vetor;
type vetor= array[1..200] of integer;
var
    n:integer;
    v:vetor;

{---------------------------------------------------------------------------}

procedure ler_vetor(var v:vetor; var n:integer);
var i: integer;
begin
    for i:=1 to n do 
        read(v[i]);
end;

{---------------------------------------------------------------------------}

function esta_crescente(var v:vetor; var n: integer):boolean;
var i:integer;
begin
    esta_crescente:= true;
    for i:=1 to n-1 do begin
        if v[i] > v[i+1] then 
            esta_crescente:= false;
    end;
end;

{---------------------------------------------------------------------------}

procedure imprime_ordem_inversa(var v:vetor; var n:integer);
var i:integer;
begin
    for i:=n downto 1 do 
        write(v[i], ' ');
end;

begin
    read(n);
    
    if n = 0 then
        writeln('vetor vazio')
    else
    begin
        ler_vetor(v, n);
        if esta_crescente(v, n) then begin
            writeln('sim');
            imprime_ordem_inversa(v, n);
        end

        else
        begin
            writeln('nao');
            imprime_ordem_inversa(v, n);
        end;

    end;
end.