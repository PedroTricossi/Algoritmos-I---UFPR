{Faça um programa Pascal que leia uma sequência de números reais terminada em 0 que representam a medida dos lados de um polígono e imprima "SIM" se ele é um polígono regular (todos os seus lados iguais) e "NAO" caso contrário.Note que um polígono precisa ter ao menos 3 lados para ser um polígono O número zero serve para indicar o final da entrada de dados e não deve ser processado.}
program Poligonos;
var
    numeroDeLados:integer;
    soma, lados:real;

begin
    read(lados);

    soma:= 0; numeroDeLados := 0;

    while lados <> 0 do begin
        numeroDeLados := numeroDeLados + 1;
        soma := soma + lados;
        read(lados);
    end;

    if numeroDeLados < 3 then
        writeln('NAO')

    else
    begin
        if (soma / numeroDeLados = numeroDeLados) then 
            writeln('SIM')
        else
        begin
            writeln('NAO');
        end;
    end;
end.