program exercicio_01;
type vetor= array[1..200] of integer;
var
    tam_vetor_1, tam_vetor_2, pos:integer;
    vetor_1, vetor_2:vetor;

{função le vetor}
procedure ler_vetor(var v:vetor; var tam:integer);
var i: integer;
begin
    i:=1;
    read(v[i]);

    while v[i] <> -1 do begin
        i:= i + 1;
        read(v[i]);
    end;

    tam:= (i - 1);
end;

{Retorna a posição de um elemento que seja igual no vetor 1 e no vetor 2}
function retorna_posicao_elemento_repetido(var vetor_1, vetor_2:vetor; var tam: integer):integer;
var i, j, posicao:integer;
begin
    posicao:= -1;
    for i:=1 to tam do begin
        for j:= 1 to tam do begin
            if (vetor_1[i] = vetor_2[j]) then begin
                posicao:= j;
            end;
        end;
    end;
    retorna_posicao_elemento_repetido:= posicao;
end;

{muda o numero que existe igual no vetor 2 para -1}
procedure muda_numero_vetor(var v:vetor; var posicao_removida: integer);
begin
    v[posicao_removida]:= -1;
end;

{compara se todos os valores do vetor 2 são -1, e só são se os vetores forem iguais}
function vetores_sao_iguais(var vetor_2:vetor; var tam_vetor_2:integer):boolean;
var i:integer;
begin
    vetores_sao_iguais:= true;
    for i:= 1 to tam_vetor_2 do begin
        if vetor_2[i] <> -1 then 
            vetores_sao_iguais:= false;
    end;
end;



begin
    write('digite os numeros do primeiro vetor (-1 implicara na parada de leitura):');
    ler_vetor(vetor_1, tam_vetor_1);

    write('digite os numeros do segundo vetor (-1 implicara a parada de leitura):');
    ler_vetor(vetor_2, tam_vetor_2);

    if tam_vetor_1 = tam_vetor_2 then begin
        
    pos:= retorna_posicao_elemento_repetido(vetor_1, vetor_2, tam_vetor_1);

    while pos <> -1 do begin
        muda_numero_vetor(vetor_2, pos);
        pos:= retorna_posicao_elemento_repetido(vetor_1, vetor_2, tam_vetor_1);
    end;

  if vetores_sao_iguais(vetor_2, tam_vetor_2) then
        writeln('sim')
    else
        writeln('nao');
    end

    else
        writeln('nao');

end.