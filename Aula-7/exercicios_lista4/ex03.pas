{A definição de uma série de pares Valor-Quadrado em Matemática é dada pela presença de elementos numéricos, organizados em sequências dois-a-dois, em que cada número é seguido de seu quadrado exatamente uma vez (veja os exemplos abaixo). Faça um programa Pascal que leia do teclado uma sequência com uma quantidade arbitrária de valores inteiros positivos. A sequência termina com o valor 0, que serve para indicar o final da entrada de dados e não deverá ser processado. O programa deve determinar e imprimir se a série é ou não do tipo Valor-Quadrado imprimindo 1 caso seja e 0 caso não seja.}

program valorQuadrado;
var
    n, nQuadrado, listaCerta:int64;
    contRun: boolean;

begin
    read(n, nQuadrado);

    listaCerta := 1;
    contRun := true;

    while contRun do begin
        if (nQuadrado <> (n * n)) then
            listaCerta:= 0;
        
        read(n);

        if n <> 0 then
            read(nQuadrado)
        else
        begin
            contRun := false;
        end;
    end;

    writeln(listaCerta);
end.