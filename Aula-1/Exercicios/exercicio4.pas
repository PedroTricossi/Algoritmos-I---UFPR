{Fa¸ca um programa em Pascal que some duas horas. A entrada deve ser feita lendo-se dois inteiros por linha, em duas linhas}

program somaHoras;

var 
hora1, minuto1, hora2, minuto2, horaEmMinutos, minutoSoma, horaFinal, minutoFinal : integer;

begin
    read(hora1);
    read(minuto1);
    read(hora2);
    read(minuto2);

    minutoSoma:= (minuto1 + minuto2);
    horaEmMinutos := (hora1 + hora2) * 60;

    horaFinal := (horaEmMinutos + minutoSoma) div 60;
    minutoFinal := (horaEmMinutos + minutoSoma) MOD 60;

    writeln(hora1,':',minuto1, ' + ', hora2,':', minuto2, ' = ', horaFinal,':',minutoFinal);
end.