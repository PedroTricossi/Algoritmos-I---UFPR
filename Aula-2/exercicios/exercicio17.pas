{Faça um programa em Pascal que leia uma massa de dados onde cada linha da entrada contém um número par. Para cada número lido, calcule o seu sucessor par, imprimindo-os dois a dois em listagem de saída. A última linha de dados contém o número zero, o qual não deve ser processado e serve apenas para indicar o final da leitura dos dados.}
program sucessorPar;
var
    numero, sucessor: Integer;

begin
    read(numero);
    while numero <> 0 do
        begin
            sucessor := numero + 2;

            writeln(numero,' ', sucessor);

            read(numero);
        end;
end.