program SomaParImpar;
var
    numero, somaPar, somaImpar: integer;

begin
    somaPar := 0;
    SomaImpar := 0;

    read(numero);

    while numero <> 0 do
    begin
        if numero MOD 2 = 0 then
            SomaPar := somaPar + numero
        else
            somaImpar := somaImpar + numero;
        read(numero);
    end;

    writeln(somaPar, ' ', somaImpar);
end.