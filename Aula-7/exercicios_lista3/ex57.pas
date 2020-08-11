{Faça um programa Pascal que leia do teclado uma quantidade arbitrária de números inteiros positivos terminada em zero e identifique o maior múltiplo de 7 (sete) entre esses números. Depois da leitura dos dados, o maior múltiplo de 7 encontrado deve ser impresso. O número zero serve para indicar o final da entrada e não deverá ser processado.}
program arranjos;
var
    n, maiorDivisor: longint;
    
begin
    read(n);

    while n <> 0 do begin
        if n mod 7 = 0 then
        begin
            if n > maiorDivisor then
                maiorDivisor := n;
        end;
        read(n);
    end;

    writeln(maiorDivisor);

end.