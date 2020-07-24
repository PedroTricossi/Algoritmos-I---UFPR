{Faça um programa em Pascal que leia uma sequência de números inteiros do teclado terminada em zero e imprima os que forem ao mesmo tempo múltiplos de 3 maiores do que 50 e menores ou iguais a 201. O zero não deve ser processado pois serve para marcar o final da entrada de dados.}
program multiplos;
var
    numero: integer;

begin
    read(numero);

    while numero <> 0 do
        begin
            if (numero MOD 3 = 0) AND (numero > 50) AND (numero <= 201) then
                writeln(numero);

            read(numero);
        end;
end.