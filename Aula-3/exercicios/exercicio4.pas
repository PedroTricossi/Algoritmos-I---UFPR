{Fa¸ca um programa em Pascal que leia uma sequˆencia de pares de n´umeros inteiros quaisquer, sendo dois inteiros por linha de entrada. A entrada de dados termina quando os dois n´umeros lidos forem nulos. Este par de zeros n˜ao deve ser processado e servem para marcar o t´ermino da entrada de dados. Para cada par A, B de n´umeros lidos, se B for maior do que A, imprima a sequˆencia A, A+1,... , B−1, B. Caso contr´ario, imprima a sequˆencia B, B+1,... , A−1, A.}
program sequencia;
var
    a, b, varIntermed: integer;

begin
    read(a, b);

    if a > b then
    begin
        varIntermed := b;
        b := a;
        a := varIntermed;
    end;

    while a <= b do
    begin
        write(a, ' ');
        a := a + 1;
    end;
end.