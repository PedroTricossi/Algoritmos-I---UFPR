program divide_vetor;
type vector = array [1..200] of real;
var 
    n: integer;
    divi: real;
    complete_vector: vector;


{----------------------------------------------------------------------}

procedure ler_vetor(var n:integer; var list:vector);
var i:integer;
begin
    for i:=1 to n do
        read(list[i]);
end;

{----------------------------------------------------------------------}
function soma_positivos_pares(n:integer; var list:vector): real;
var i:integer;
    soma:real;
begin
    i:= 2;
    soma:= 0;

    while i <= n do begin
        if list[i] > 0 then 
        soma:= soma + list[i];

        i:= i + 2;
    end;
        soma_positivos_pares:= soma

end;

{-----------------------------------------------------------------------}

function soma_negativos_impares(n:integer; var list:vector): real;
var i:integer;
    soma:real;
begin
    i:= 1;
    soma:= 0;

    while i <= n do begin
        if list[i] < 0 then 
        soma:= soma + list[i];

        i:= i + 2;
    end;
    if soma <> 0 then
        soma_negativos_impares:= soma
    else
        soma_negativos_impares:= 1;
end;


begin
    read(n);

    if n <> 0 then begin
        ler_vetor(n, complete_vector);
        if soma_negativos_impares(n, complete_vector) <> 1 then
        begin
            divi:= soma_positivos_pares(n, complete_vector) / soma_negativos_impares(n, complete_vector);
            writeln(divi);
        end
            
        else
        begin
            writeln('divisao por zero')
        end;
    end
    else
    begin
        writeln('vetor vazio')
    end;
end.