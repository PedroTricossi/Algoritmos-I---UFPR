program media_alunos;
var i, n, p1, p2, p3, media: longint;

function media_ponderada(p1, p2, p3: longint):longint;
begin
    media_ponderada:= (p1 + 2*p2 + 3*p3) div 6
end;

function aprovado (media:longint): boolean;
begin
    aprovado:= true;

    if media < 50 then 
        aprovado := false;    
end;


begin
    read (n);
    for i:= 1 to n do
    begin
        read (p1, p2, p3);
        media:= media_ponderada (p1, p2, p3);
        if aprovado (media) then
            writeln ('aluno ',i,' aprovado com media: ', media)
        else
            writeln ('aluno ',i,' reprovado com media: ', media);
    end;
end.