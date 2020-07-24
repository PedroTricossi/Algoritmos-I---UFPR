{Faça um programa em Pascal que, dados dois números inteiros positivos imprima o valor da maior potência do primeiro que divide o segundo. Se o primeiro não divide o segundo, a maior potência é definida como sendo igual a 1. Por exemplo, a maior potência de 3 que divide 45 é 9.}
program dividePotencia;
var 
    numero, numeroPotencia: integer;

begin
    read(numeroPotencia, numero);

    if numero MOD numeroPotencia  = 0 then
    begin

        while numero MOD (numeroPotencia * numeroPotencia) = 0 do
        begin
            numeroPotencia := numeroPotencia * numeroPotencia;
        end;

        writeln(numeroPotencia);
    end
    else
        write('1');
end.