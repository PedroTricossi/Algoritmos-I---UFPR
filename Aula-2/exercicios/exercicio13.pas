{Faça um programa em Pascal que leia dois números n, m do teclado e decida se ele o primeiro é maior do que o segundo. Seu programa deve imprimir a mensagem “primeiro eh maior” ou “segundo eh maior ou igual” conforme o
caso.}

program maiorQue;
var
    m, n: Integer;

begin
    read(n);
    read(m);

    if n > m then
        writeln('primeiro eh maior')
    else
        writeln('segundo eh maior ou igual');
end.
