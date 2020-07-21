{Faça um programa em Pascal que leia um número n > 0 do teclado e imprima a tabuada de n de 1 até 10.}
program tabuada;
var
    numero, multiplicador: Integer;

begin
    read(numero);
    multiplicador := 1;

    while multiplicador <= 10 do 
        begin
            writeln(numero, 'X', multiplicador, '=', numero*multiplicador);
            multiplicador := multiplicador + 1;
        end;
end.