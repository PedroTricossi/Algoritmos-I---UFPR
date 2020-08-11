{Faça um programa Pascal que leia um número inteiro positivo N do teclado. Depois disso, o programa deve calcular e imprimir todos os arranjos de dois números inteiros positivos A, B, ambos menores que N, de forma que quando somados (A + B), resultam no número N. Cada arranjo A, B deve ser impresso em uma linha de saída.}
program arranjos;
var
    n, a, b: integer;

begin
    read(n);

    a := 1;
    b := (n - 1);

    while b >= 1 do begin
        writeln(a, ' ', b);
        
        a := a + 1;
        b := b - 1;
    end;
end.