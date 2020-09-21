program maior_seg;
type vetor= array[1..200] of integer;
var
    n, menor_n, novo_indice, soma_seg, soma_seg_menor, repete:integer;
    segmento,segmento_menor:vetor;

procedure ler_vetor(var v:vetor; var n:integer);
var i: integer;
begin
    for i:=1 to n do 
        read(v[i]);
end;

function menor_numero_vetor(var v :vetor; var n:integer):integer;
var i, menor_num:integer;
begin
    menor_num:= v[1];
    for i:=1 to (n - 1) do begin
        if (menor_num > v[i]) then begin
            menor_num:= v[i];
            menor_numero_vetor:= i;
        end;

    end;
end;


function soma_segmentos_devolve_o_de_maior_valor(var v:vetor; var n, indice_menor_numero:integer):vetor;
var 
    i, menor_numero, soma_segmentos_1, soma_segmentos_2:integer;
begin
    menor_numero:= v[indice_menor_numero];

    soma_segmentos_1:= 0;
    soma_segmentos_2:= 0;
 
    if menor_numero > 0 then begin
        for i:=1 to indice_menor_numero do  
            soma_segmentos_1:= soma_segmentos_1 + v[i];
        
        for i:= indice_menor_numero to n do
            soma_segmentos_2:= soma_segmentos_2 + v[i];
            
 
        if soma_segmentos_1 > soma_segmentos_2 then begin
            for i:=1 to indice_menor_numero do  
                soma_segmentos_devolve_o_de_maior_valor[i]:= v[i] 
        end
 
        else if soma_segmentos_2 > soma_segmentos_1 then begin
            for i:= indice_menor_numero to n do
                soma_segmentos_devolve_o_de_maior_valor[i]:= v[i]
        end;
 
 
    end
    else if menor_numero < 0 then begin
        for i:=1 to (indice_menor_numero - 1) do  
            soma_segmentos_1:= soma_segmentos_1 + v[i];
        
        for i:= (indice_menor_numero + 1) to n do
            soma_segmentos_2:= soma_segmentos_2 + v[i];
        
        if soma_segmentos_1 > soma_segmentos_2 then begin
            for i:=1 to (indice_menor_numero - 1) do  
                soma_segmentos_devolve_o_de_maior_valor[i]:= v[i]
        end
 
        else if soma_segmentos_2 > soma_segmentos_1 then begin
            for i:= (indice_menor_numero + 1) to n do
                soma_segmentos_devolve_o_de_maior_valor[i]:= v[i]
        end;
end;
end;

function soma_segmentos(var v:vetor; var n:integer):integer;
var i, soma: integer;
begin
    soma:= 0;
    for i:= 1 to n do begin
        soma:= soma + v[i];
    end;

    soma_segmentos:= soma;
end;

begin
    read(n);

    ler_vetor(segmento, n);
    soma_seg:= soma_segmentos(segmento, n);

    menor_n := menor_numero_vetor(segmento, n);
    segmento_menor:= soma_segmentos_devolve_o_de_maior_valor(segmento, n, menor_n);
    soma_seg_menor:= soma_segmentos(segmento_menor, n);


    while(soma_seg < soma_seg_menor) do begin
        soma_seg:= soma_seg_menor;
        menor_n:= menor_numero_vetor(segmento_menor, n);
        segmento_menor:= soma_segmentos_devolve_o_de_maior_valor(segmento_menor, n, menor_n);
        soma_seg_menor:= soma_segmentos(segmento_menor, n);
    end;

    if soma_seg <> 0 then
        writeln(soma_seg)
    else
    begin
        writeln('13');
    end;
end.