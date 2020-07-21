{Faça um programa em Pascal que leia uma massa de dados contendo a definição de várias equações do segundo grau da forma Ax2 + Bx + C = 0. Cada linha de dados contém a definição de uma equação por meio dos valores de A, B e C do conjunto dos números reais. A última linha informada ao sistema contém 3 (três) valores zero (exemplo 0.0 0.0 0.0). Após a leitura de cada linha o programa deve tentar calcular as duas raízes da equação. A listagem de saída, em cada linha, deverá conter os valores das duas raízes reais. Considere que o usuário
entrará somente com valores A, B e C tais que a equação garantidamente tenha duas raízes reais.}
program baskaraTunado;
var
    a, b, c, discriminante: real;

begin
    read(a);
    read(b);
    read(c);

    while not((a = 0) and (b = 0) and (c = 0)) do
        begin
            discriminante := sqrt(b*b - (4*a*c));

            write((-b + discriminante) / 2 * a);
            write((-b - discriminante) / 2 * a);

            read(a);
            read(b);
            read(c);

        end;
end.