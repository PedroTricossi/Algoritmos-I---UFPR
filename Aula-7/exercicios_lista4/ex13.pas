{Faça um programa Pascal que leia do teclado três números inteiros positivos: i, j e k. Se j for múltiplo de i e k for múltiplo de j, o programa deve imprimir a soma dos três. Se os três valores forem consecutivos na ordem lida, o programa deve imprimi-los na ordem decrescente.
Em qualquer outra situação, o programa deve calcular e imprimir a média aritmética simples dos três valores.}
program variasCondicoesDeNovo;
var 
    i, j, k:int64;

begin
    read(i, j, k);

    if (j mod i = 0) AND (k mod j = 0) then
        writeln(i + j + k)
    
    else if (i + 1 = j) AND (j + 1 = k) then
        writeln(k, ' ', j, ' ', i)
    
    else 
    begin
        writeln((i + j + k) div 3);
    end;
end.