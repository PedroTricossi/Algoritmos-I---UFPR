{Faça um programa em Pascal que leia dois números inteiros representando respectivamente as populações PA e PB de duas cidades A e B em 2009, e outros dois números inteiros representando respectivamente suas taxas percentuais de crescimento anuais XA e XB. Com estas informações seu programa deve imprimir sim se a população da cidade de menor população ultrapassará a de maior população e nao em caso contrário. Adicionalmente, em caso afirmativo, também deve imprimir o ano em que isto ocorrer´a. Fa¸ca todas as contas usando operadores inteiros.}

program cidades;
var
    populacaoA, populacaoB, taxaCrescimentoA, taxaCrescimentoB, varIntermed: integer;
    crescimentoA, crescimentoB : real;
begin
    read(populacaoA, populacaoB, taxaCrescimentoA, taxaCrescimentoB);

    if populacaoA > populacaoB then {Garantindo que a população B sempre será a maior.}
    begin
        varIntermed := populacaoB;
        populacaoB := populacaoA;
        populacaoA := varIntermed;
    end;

    crescimentoA := (populacaoA * ((taxaCrescimentoA / 100) + 1)) - populacaoA;
    crescimentoB := (populacaoB * ((taxaCrescimentoB / 100) + 1)) - populacaoB;

    if crescimentoA < crescimentoB then
        writeln('passará')
    else
        writeln('nao');
end.
