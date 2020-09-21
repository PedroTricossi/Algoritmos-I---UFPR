program prova_2018;
type vetor=array [1..200] of integer;
var
tam, pos, num:integer;
v:vetor;

procedure ler_vetor(var v:vetor; var n:integer);
var i: integer;
begin
    for i:=1 to n do 
        read(v[i]);
end;

procedure remove(var v:vetor; var tam, pos, num:integer);
var i:integer;
begin
    if (pos + num) > tam then begin
        for i:=1 to tam do
            v[i]:= v[i];
    end
    else
    begin
        for i:= pos to (tam - num) do 
            v[i]:= v[i + num];
    end;

        tam:= tam - num;
end;

procedure imprime_vetor(var v:vetor; var n:integer);
var i:integer;
begin
    for i:=1 to n do 
        write(v[i], ' ');
end;

begin
    read(tam);

    ler_vetor(v, tam);
    pos:= 3;
    num:=1;
    remove(v, tam, pos, num);
    imprime_vetor(v, tam);
end.