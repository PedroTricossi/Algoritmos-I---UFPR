{Faça um programa Pascal que receba uma sequência de números reais terminada em zero representando o saldo bancário de alguns clientes de um banco e imprima aqueles que são negativos. O valor zero serve para indicar o final da entrada de dados e não deve ser processado.}
program arranjos;
var
    saldoBancario: real;
    

begin
    read(saldoBancario);

    while saldoBancario <> 0 do begin
        if saldoBancario < 0 then
            writeln(saldoBancario:0:2);
        
        read(saldoBancario);
    end;
end.