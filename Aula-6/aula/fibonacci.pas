program Fibonacci;
const max = 93;
var ultimo, penultimo, soma, cont: integer;
begin
    ultimo := 1;
    penultimo := 1;

    writeln('1', penultimo);
    writeln('2', ultimo);

    cont := 3;

    while cont <= max do 
    begin
        soma := ultimo + penultimo;
        writeln(cont, ' ', soma);

        penultimo := ultimo;
        ultimo := soma;

        cont := cont + 1;
    end;
end.