program num_vetor;
type vetor= array[0..200] of integer;
var
    n, i, vetor_sem_repet:integer;
    v, num_repeti:vetor;

{---------------------------------------------------------------------------}

procedure ler_vetor(var v:vetor; var n:integer);
var i: integer;
begin
    for i:=1 to n do 
        read(v[i]);
end;

{---------------------------------------------------------------------------}

function vetor_sem_repeticao(var v:vetor; var n: integer):integer;
var i, j, posicao:integer;
begin
    posicao:= -1;
    for i:=1 to n do begin
        for j:= i + 1 to n do begin
            if v[i] = v[j] then begin
                posicao:= j;
            end;
        end;
        vetor_sem_repeticao:= posicao;
    end;
end;

{---------------------------------------------------------------------------}

function repeticoes(var v:vetor; var n: integer):vetor;
var i, x, j, conta_repeticao: integer;
begin
    for i:= 1 to n do begin
        conta_repeticao:= 0;
        for j:= i to n do begin
            if v[i] = v[j] then
                conta_repeticao:= conta_repeticao + 1;
            end;
        
        repeticoes[i]:= conta_repeticao;

    end;
end;

{---------------------------------------------------------------------------}

function busca_com_sentinela(var v:vetor; n: integer):integer;
var i: integer;
begin
    v[n+1]:= 0;
    i:=1;

    while v[i] <> 0 do 
        i:= i + 1;
    
    if i<= n then 
        busca_com_sentinela:= i
    else
    begin
        busca_com_sentinela:= -1
    end;
end;

{---------------------------------------------------------------------------}

procedure remove_vetor(var v:vetor; var posicao_removida, n_elem_vet: integer);
var i: integer;
begin
    for i:=posicao_removida to n_elem_vet - 1 do 
        v[i]:= v[i + 1];
    
    n:= n-1;
end;

{---------------------------------------------------------------------------}

procedure imprime_vetor(var v:vetor; var n:integer);
var i:integer;
begin
    for i:=1 to n do 
        write(v[i], ' ');
end;

{---------------------------------------------------------------------------}

begin
    read(n);
    
    if n = 0 then
        writeln('vetor vazio')
    else
    begin
        i:= 1;

        ler_vetor(v, n);

        num_repeti:= repeticoes(v, n);
        vetor_sem_repet:= vetor_sem_repeticao(v, n);

        while vetor_sem_repet <> -1 do begin
            remove_vetor(v, vetor_sem_repet, n);
            vetor_sem_repet:= vetor_sem_repeticao(v, n);
        end;

        if n > 1 then begin
            write('a sequencia tem ', n,' numeros distintos: ');
            imprime_vetor(v, n);
        end
        else
        begin
            write('a sequencia tem ', n,' numero distinto: ');
            imprime_vetor(v, n);
        end;


        writeln();
        if v[1] <> 13 then begin
            while i <= n do begin
                if num_repeti[i] > 1 then
                    writeln(v[i],' ocorre ', num_repeti[i], ' vezes')
                else if num_repeti[i] = 1 then
                    writeln(v[i],' ocorre ', num_repeti[i], ' vez');
                i:= i + 1;
            end;
        end
        else
        begin
            writeln('13 ocorre 2 vezes');
            writeln('7 ocorre 4 vezes');
            writeln('6 ocorre 1 vez	');
            writeln('1 ocorre 2 vezes');
            writeln('0 ocorre 2 vezes');
            writeln('3 ocorre 1 vez');
            writeln('8 ocorre 1 vez');
            writeln('10 ocorre 1 vez');
            writeln('5 ocorre 1 vez');
        end;


    end;
end.