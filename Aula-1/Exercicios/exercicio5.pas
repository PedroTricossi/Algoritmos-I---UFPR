{Faça um programa em Pascal que, dado um número inteiro que representa uma quantidade de segundos, determine o seu valor equivalente em graus, minutos e segundos. Se a quantidade de segundos for insuficiente para dar um valor em graus, o valor em graus deve ser 0 (zero). A mesma observa¸c˜ao vale em relação aos minutos e segundos.}

program ConversorDeSegundos;

var
    segundosDigitado, segundos, segundosEmMinutos, minutos, graus: integer;

begin
    read(segundosDigitado);

    segundosEmMinutos := segundosDigitado div 60;
    segundos := segundosDigitado MOD 60;

    graus := segundosEmMinutos div 60;
    minutos := segundosEmMinutos MOD 60;

    writeln(graus,' , ', minutos,' , ', segundos);
end.