{Faça um programa Pascal que leia do teclado uma sequência de números inteiros até que seja lido um número que seja o dobro ou a metade do anteriormente lido. O programa deve imprimir na saída a quantidade de números lidos, a soma dos números lidos e os dois valores que forçaram a parada do programa.}
program muitasCondicoes;
var 
    n, nAnterior, soma, i: real;
    contRun: boolean;

begin
    read(n);

    nAnterior := 0;
    contRun:= true;
    soma:= 0;
    i:= 1;

    while contRun do begin
        if ((n <> 0)) AND ((n / 2 = nAnterior) OR (n*2 = nAnterior)) then
            contRun:= false

        else
        begin
            i := i + 1;
            soma := soma + n;
            nAnterior:= n;
            read(n);
        end;
        end;

    soma := soma + n;

    writeln(i:0:0, ' ', soma:0:0, ' ', nAnterior:0:0, ' ', n:0:0);
end.