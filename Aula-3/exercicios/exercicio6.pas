{Faça um programa em Pascal que leia uma sequência de números inteiros terminada em zero e imprima os dois maiores números lidos. Seu programa deve considerar que o usuário que digita os números vai sempre digitar pelo menos dois números diferentes de zero no início. Como sempre, o zero não deve ser processado pois serve para marcar o final da entrada de dados.}
program maiorDaSequencia;
var 
    numero1, numero2: integer;

begin
    read(numero1, numero2);

    while numero1 <> 0 do
    begin
        if numero1 > numero2 then 
            numero2 := numero1;
        
        read(numero1);
    end;

    writeln('O maior numero eh:', numero2);
end.