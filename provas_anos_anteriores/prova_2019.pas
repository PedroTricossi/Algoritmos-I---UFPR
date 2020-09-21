program prova;
type vetor= array[0..200] of integer;
var
    v: vetor;

procedure ler_vetor(var v:vetor);
var i: integer;
begin
    for i:=1 to 10 do 
        read(v[i]);
end;

function retorna_tamanho(n:integer):integer;
var s: string;
begin
    
end;

begin
    ler_vetor(v);
end.