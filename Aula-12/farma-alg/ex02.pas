program eq_linear;
type vetor = array[1..100] of integer;
     matriz = array[1..100, 1..100] of integer;
var
m: matriz;
lado_direito, resultado: vetor;
resultado_certo: boolean;
l, c: integer;

procedure ler_vetor(var v:vetor; var i:integer);
var j:integer;
begin
    for j:= 1 to i do begin
        read(v[j]);
    end;
end;

procedure ler_matriz(var m:matriz; var l, c: integer);
var i, j: integer; 
begin
    for i:= 1 to l do begin
        for j:= 1 to c do begin
            read(m[i, j]);
        end;
    end;
end;

function resultado_coincide(var m:matriz; var lado_direito, resultado:vetor; var l, c: integer): boolean;
var i, j, soma: integer;
begin
    resultado_coincide:= false;
    soma:= 0;

    for i:= 2 to c do begin
        soma:= soma + m[1,i] * resultado[i];
    end;

        soma:= soma - lado_direito[1];

    if soma = -(m[1,1] * resultado[1]) then 
        resultado_coincide:= true;


end;

begin
    read(l, c);

    ler_vetor(resultado, l);

    ler_matriz(m, l, c);

    ler_vetor(lado_direito, c);

    resultado_certo:= resultado_coincide(m, lado_direito, resultado, l, c);

   if resultado_certo then begin
        writeln('sim');
    end
    else
    begin
        writeln('nao')
    end;

end.


