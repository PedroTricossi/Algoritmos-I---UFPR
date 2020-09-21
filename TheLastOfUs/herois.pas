program vingadores;

const max = 101;

type 
     elemento = longint;
     conjunto = array [0..MAX+1] of elemento;
     heroes = array[0..MAX+1] of elemento;
 
var
     super, super_2, equipe , equipe_2, habilidade, equipe_ok, herois, team, intersec:conjunto;
     i, k:integer;
     num, num_2, num_3, cardi_anterior, melhor_time:longint;

procedure inicializar_conjunto (var c: conjunto);
(* 
  cria as estruturas necessarias para o tipo conjunto.
  custo: constante.
*)
begin
     c[0]:= 0;
end;

function eh_vazio (c: conjunto): boolean;
(* 
  retorna true se o conjunto c eh vazio.
  custo: constante.
*)
begin
     eh_vazio:= c[0] = 0;
end;

function cardinalidade (c: conjunto): longint;
(* 
  retorna a cardinalidade do conjunto c 
  custo: constante.
*)
begin
     cardinalidade:= c[0];
end;

function pertence (x: elemento; c: conjunto): boolean;
(* 
  retorna true se x pertence ao conjunto c e false caso contrario.
  como a estrutura esta ordenada Ã© feita uma busca binÃ¡ria.
  custo: proporcial ao logaritmo do tamanho do conjunto.
*)
var ini, fim, meio: longint;
begin
     ini:= 1;
     fim:= c[0];
     meio:= (ini + fim) div 2;
     while (ini <= fim) and (x <> c[meio]) do
     begin
          if x < c[meio] then
               fim:= meio - 1
          else
               ini:= meio + 1;
          meio:= (ini + fim) div 2;
     end;
     if ini <= fim then
          pertence:= true
     else
          pertence:= false;
end;

procedure uniao (c1, c2: conjunto; var uni: conjunto);
(* 
  obtem a uniao dos conjuntos c1 e c2. Lembrar que eles estao ordenados.
  custo: proporcial a soma dos tamanhos dos vetores (tem que percorrer os dois).
*)
var i,j,k,l: longint;
begin
     i:= 1;
     j:= 1;
     k:= 0;
     while (i <= c1[0]) and (j <= c2[0]) do
     begin
          if c1[i] < c2[j] then
          begin
               k:= k + 1;
               uni[k]:= c1[i];
               i:= i + 1;
          end
          else 
               if c1[i] > c2[j] then 
               begin
                    k:= k + 1;
                    uni[k]:= c2[j];
                    j:= j + 1;
               end
               else (* descarta um dos repetidos *)
               begin
                    k:= k + 1;
                    uni[k]:= c1[i];
                    i:= i + 1;
                    j:= j + 1;
               end;
     end; (* while *)
     (* acrescenta o que sobrou do maior conjunto *)
     for l:= i to c1[0] do
     begin
          k:= k + 1;
          uni[k]:= c1[i];
          i:= i + 1;
     end;
     for l:= j to c2[0] do
     begin
          k:= k + 1;
          uni[k]:= c2[j];
          j:= j + 1;
     end;
     uni[0]:= k;
end;

procedure intersecao (c1, c2: conjunto; var intersec: conjunto);
(* 
  obtem a intersecao dos conjuntos c1 e c2. Lembrar que eles estao ordenados.
  custo: proporcional ao tamanho do vetor c1. 
  obs.: voce pode depois modificar para que o custo seja proporcional ao 
        tamanho do menor conjunto.
*)
var i,j,k: longint;
begin
     i:= 1;
     j:= 1;
     k:= 0;
     while (i <= c1[0]) and (j <= c2[0]) do
          if c1[i] < c2[j] then
               i:= i + 1
          else 
               if c1[i] > c2[j] then 
                    j:= j + 1
               else (* elemento nos dois conjuntos *)
               begin
                    k:= k + 1;
                    intersec[k]:= c1[i];
                    i:= i + 1;
                    j:= j + 1;
               end;
     intersec[0]:= k; 
end;

function contido (c1, c2: conjunto): boolean;
(* 
  retorna true se o conjunto c1 esta contido no conjunto c2 e false caso contrario.
  custo: proporcional ao tamanho do conjunto c1.
*)
var i,j: longint;
    ok: boolean;
begin
     if c1[0] > c2[0] then
          contido:= false
     else
     begin
          ok:= true;
          i:= 1;
          j:= 1;
          while (i <= c1[0]) and (j <= c2[0] ) and ok do
               if c1[i] < c2[j] then
                    ok:= false
               else if c1[i] > c2[j] then
                    j:= j + 1
               else
               begin
                    i:= i + 1;
                    j:= j + 1;
               end;
          if not ok then
               contido:= false
          else
               if i > c1[0] then
                    contido:= true
               else
                    contido:= false;
     end;
end;

procedure inserir (x: elemento; var c: conjunto);
(* 
  insere o elemento x no conjunto c, mantem os elementos ordenados.
  custo: para garantir o conjunto ordenado, proporcional ao tamanho do conjunto.
*)
var i: longint;
begin
     if not pertence (x,c) then
     begin
          i:= c[0];
          while (i >= 1) and (x <= c[i]) do
          begin
               c[i+1]:= c[i];
               i:= i - 1;
          end;
          (* agora pode inserir x *)
          c[i+1]:= x;
          c[0]:= c[0] + 1;
     end;
end;

procedure remover (x: elemento; var c: conjunto);
(* 
  remove o elemento x do conjunto c. 
  usa uma sentinela na posicao posterior a ultima.
  custo: para garantir o conjunto ordenado, proporcional ao tamanho do conjunto.
*) 
var i, indice: longint;
begin
     (* primeiro acha a posicao do elemento *)
     indice:= 1;
     c[c[0]+1]:= x;
     while x <> c[indice] do
          indice:= indice + 1;
     if indice < c[0] + 1 then (* achou o elemento *)
     begin
          (* compacta o vetor *)
          for i:= indice to c[0]-1 do
               c[i]:= c[i+1];
          c[0]:= c[0] - 1;
     end;
end;

procedure ler_conjunto (var c: conjunto);
(* 
  cria um conjunto, a posicao zero contem o tamanho dele.
  custo: proporcional ao tamanho do conjunto.
*)
var i: longint;
    x: elemento;
begin
     read (x);
     i:= 0;
     while x <> 0 do
     begin
          inserir (x,c);
          i:= i + 1;
          read (x);
     end;
end;

procedure imprimir_conjunto (c: conjunto);
(* 
  imprime um conjunto.
  custo: proporcional ao tamanho do conjunto.
*) 
var i: longint;
begin
     for i:= 1 to c[0]-1 do
          write (c[i],' ');
     writeln (c[c[0]]); 
end;

procedure copiar_conjunto (c1: conjunto; var c2: conjunto);
(*
  copia os elementos do conjunto c1 para o conjunto c2.
  custo: proporcional ao tamanho do conjunto c1.
*)
var i: longint;
begin
     for i:= 0 to c1[0] do
          c2[i]:= c1[i];
end;

function retirar_um_elemento (var c: conjunto): elemento;
(*
  escolhe um elemento qualquer do conjunto para ser removido, remove, e o retorna.
  se o vetor estiver vazio, retorna zero, que nao corresponde a nenhuma habilidade.
  custo: constante, pois optamos por devolver o ultimo elemento.
*)
begin
     if not eh_vazio(c) then
     begin
          retirar_um_elemento:= c[c[0]];
          c[0]:= c[0] - 1;
     end
     else
          retirar_um_elemento:= 0;
end;

procedure ler(var c: conjunto);
var i: longint;
    x: elemento;
begin
     read (x);
     i:= 1;
     c[0]:= 0;
     while x <> 0 do
     begin
          c[i]:= x;
          i:= i + 1;
          c[0]:= c[0] + 1;
          read (x);
     end;
end;

procedure insere_novo_heroi(var c1, c2:conjunto; var tam_1, tam_2:longint);
var i, j:longint;
begin
     i:= tam_1 + 1;
     j:= 1;

     while j <= tam_2 do begin
          c1[i]:= c2[j];

          c1[0]:= c1[0] + 1;

          i:= i + 1;
          j:=j + 1;
     end; 
end;

procedure faz_lista(var c1, c2, h: conjunto );
var  i:integer;
     vazio: boolean;
begin
     i:=1;
     h[0]:= 0;
     vazio:= false;
     ler(c2);

     copiar_conjunto(c2, c1);

     h[i]:= c1[0];
     h[0]:= h[0] + 1; 

     while vazio = false do begin
          inicializar_conjunto(c2);

          ler(c2);

          insere_novo_heroi(c1, c2, c1[0], c2[0]);

          vazio:= eh_vazio(c2);

          i := i + 1;
          h[i]:= c1[0];
          h[0]:= h[0] + 1; 
     end;

     remover(0, c1);
     h[0]:= h[0] - 1;
end;

procedure equipes_ok(var equipe, super, equipe_ok, herois:conjunto; i:integer);
var todos_poderes:conjunto;
     j, k, l: integer;
     vet_temp:conjunto;
begin
     inicializar_conjunto(vet_temp);
     for j:= team[i - 1] to team[i] do begin
          inserir(equipe[j], vet_temp);
     end;

     for k:= 1 to vet_temp[0] do begin
          for l:=herois[vet_temp[k]] to herois[vet_temp[k + 1]] do begin
               inserir(super[l], equipe_ok);
          end;
     end;

end;

procedure imprime_melhor(var equipe:conjunto; i:longint);
var todos_poderes:conjunto;
     j, k: integer;
     vet_temp:conjunto;
begin
     inicializar_conjunto(vet_temp);
     for j:= (team[i - 1] + 1) to (team[i]) do begin
          inserir(equipe[j], vet_temp);
     end;

     imprimir_conjunto(vet_temp)
end;


begin
     faz_lista(super, super_2, herois);

     ler(habilidade);

     faz_lista(equipe, equipe_2, team);

     cardi_anterior:= 100;
     melhor_time:= 0;

     i:= 2;

     inserir(1, team);

     while i <= team[0] do begin
          equipes_ok(equipe, super, equipe_ok, herois, i);

          intersecao(equipe_ok, habilidade, intersec);

          num:= cardinalidade(equipe_ok);
          num_2:= cardinalidade(intersec);
          num_3:= cardinalidade(habilidade);

          i:= i + 1;

          if num_2 = num_3 then begin
               if (num - num_2) < cardi_anterior then begin
                    cardi_anterior:= num;
                    melhor_time:= i;
               end;
          end;

          inicializar_conjunto(equipe_ok);
     end;
     melhor_time:= melhor_time - 1;

     imprime_melhor(equipe, melhor_time);
end.

2 3 4 5 6 7 8 9 10 11 12 13 14 0
2 4 6 8 10 12 14 0
1 3 5 7 9 11 13 0
1 2 3 5 7 11 13 0
3 6 9 0
5 10 0
6 12 0
0
1 5 12 0
1 2 3 0
4 5 6 0
7 0
2 3 4 0
3 7 0
1 2 3 4 5 6 7 0
0