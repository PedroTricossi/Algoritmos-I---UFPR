program insert_delete;
type vetor = array[0..200] of real;
var
n, i, i_busca:integer;
numero_removido:real;
v: vetor;
{---------------------------------------------------------------------------}

procedure le_vetor(var v:vetor; var tamanho_vet:integer);
begin
    read(v[tamanho_vet]);
end;


procedure selecao(var v:vetor; var n:integer);
var i, j, pos_menor, aux:integer;
begin
    for i:= 1 to n-1 do begin
        pos_menor:= i;
        
        for j:= i+1 to n do begin
            if v[j] < v[pos_menor] then 
                pos_menor:= j;
            
            aux:= v[pos_menor];
            v[pos_menor]:= v[i];
            v[i]:= aux;
        end;
    end;
end;

{---------------------------------------------------------------------------}

procedure imprime_vetor(var v:vetor; var i:integer);
var j:integer;
begin
    for j:= 1 to i do begin
        write(v[j]:0:1, ' ');
    end;
end;

{---------------------------------------------------------------------------}

function busca_binaria(n_busca:real; v:vetor; fim:integer):integer;
var inicio, meio: integer;
begin
    inicio:= 1;
    meio:= (inicio + fim) div 2;
    busca_binaria:= 0;

    while (v[meio] <> n_busca) AND (fim >= meio) do begin
        if v[meio] > n_busca then 
            fim:= meio - 1
        else
            inicio:= meio + 1;
        
        meio:= (inicio + fim) div 2;
    end;

    if v[meio] = n_busca then 
        busca_binaria:= meio
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

begin
    read(n);

    i:= 1;
    while (n <> 0) AND (i < 200) do begin
        if n = 1 then begin
            le_vetor(v, i);
            selecao(v, i);
            imprime_vetor(v, i);

        end
        else if n = 2 then begin
            read(numero_removido);
            i_busca:= busca_binaria(numero_removido, v, i);

            writeln(i_busca);
        end;
            
        i:= i + 1;
        read(n);
    end;

    if i >= 200 then
        writeln('erro')
end.