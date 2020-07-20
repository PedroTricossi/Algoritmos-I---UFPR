{Fa¸ca um programa em Pascal que leia 6 valores reais para as variáveis A, B, C, D, E, F
e imprima o valor de X após o cálculo da seguinte express˜ao aritmética: [(A+B)/(C-D)]*E/[(F/AB)+E]}

program calculadora;
var A, B ,C, D, E, F, parteCima, ParteBaixo, Resultado: real;

begin
    read(A);
    read(B);
    read(C);
    read(D);
    read(E);
    read(F);

    parteCima := (((A+B)/(C+D))*E);

    ParteBaixo := ((F/(A*B))+E);

    Resultado := parteCima / ParteBaixo;

    write(Resultado:4:2);

end.