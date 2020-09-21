program prova2018;
type vetor = array[1..200] of integer;
var 
    tam_repetido, posicao_repetida, tam_sem_repeticao:integer;
    v, v_sem_repeticao, n_repeticao:vetor;

procedure ler_vetor(var v:vetor; var n:integer);
var i: integer;
begin
    i:= 1;
    read(v[i]);

    while v[i] <> 0 do begin
        i:=i + 1;
        read(v[i]);
    end;

    n:= (i - 1);
end;

function retorna_posicao_elemento_repetido(var v:vetor; var tam_sem_repeticao: integer):integer;
var i, j, posicao:integer;
begin
    posicao:= -1;
    for i:=1 to tam_sem_repeticao do begin
        for j:= i + 1 to tam_sem_repeticao do begin
            if v[i] = v[j] then begin
                posicao:= j;
            end;
        end;
        retorna_posicao_elemento_repetido:= posicao;
    end;
end;

procedure remove_vetor(var v:vetor; var posicao_removida, tam_sem_repeticao: integer);
var i: integer;
begin
    for i:=posicao_removida to tam_sem_repeticao - 1 do 
        v[i]:= v[i + 1];
    
    tam_sem_repeticao:= tam_sem_repeticao-1;
end;

procedure conta_repeticao(var v, v_sem_repeticao, n_repeticao:vetor; tam_repetido, tam_sem_repeticao:integer);
var i, j, conta_repeticao:integer;
begin
    for i:= 1 to tam_sem_repeticao do begin
        conta_repeticao:= 0;
        for j:= 1 to tam_repetido do begin
            if v_sem_repeticao[i] = v[j] then begin
                conta_repeticao:= conta_repeticao + 1
            end;
        end;

        n_repeticao[i]:= conta_repeticao;
    end;
end;

procedure imprime_vetor(var v_sem_repeticao, n_repeticao:vetor; var tam_sem_repeticao:integer);
var i:integer;
begin
    for i:=1 to tam_sem_repeticao do 
        writeln(v_sem_repeticao[i], ':', n_repeticao[i], ' vezes');
end;

begin
    ler_vetor(v, tam_repetido);

    v_sem_repeticao:= v;
    tam_sem_repeticao:= tam_repetido;

    posicao_repetida:= retorna_posicao_elemento_repetido(v_sem_repeticao, tam_sem_repeticao);

    while posicao_repetida <> -1 do begin
        remove_vetor(v_sem_repeticao, posicao_repetida, tam_sem_repeticao);
        posicao_repetida:= retorna_posicao_elemento_repetido(v_sem_repeticao, tam_sem_repeticao);
    end;

    conta_repeticao(v, v_sem_repeticao, n_repeticao, tam_repetido, tam_sem_repeticao);

    imprime_vetor(v_sem_repeticao, n_repeticao, tam_sem_repeticao)
end.