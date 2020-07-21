{Faça um programa em Pascal que leia um número n do teclado e decida se ele é positivo ou negativo. Seu programa deve imprimir a mensagem “par” ou “impar” conforme o caso}

program parOuImpar;
var
    numero, par: Integer;

begin
    read(numero);

    par := numero MOD 2;

    if par = 0 then
        writeln('par')
    else
        writeln('impar');
end.