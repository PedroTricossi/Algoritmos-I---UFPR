{Um número inteiro positivo é dito triangular se seu valor é o produto de três números naturais consecutivos. Por exemplo, o número 120 é triangular porque 120 = 4 x 5 x 6 . Faça um programa Pascal que leia do teclado um número inteiro positivo n e verifique se ele é triangular ou não. Se for, imprima 1 e se não for, imprima 0.}

program numeroTringular;
var
    n:integer;

begin
    read(n);

    if (n mod 2 = 0) AND (n mod 3 = 0) then
        writeln('1')
    else
        writeln('0');
end.