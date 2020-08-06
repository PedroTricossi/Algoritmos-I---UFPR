{Faça um programa Pascal que leia dois números n e outro m (0 <= n <= 9) e conte quantos dígitos n existem em m. Se não existir nenhum dígito correspondente, a mensagem "NAO" deve ser exibida. Caso contrário imprima o resultado do seu cálculo.}
program arranjos;
var
    n, m, contaDigitos: longint;
    
begin
    read(n, m);

    if m > 10000 then
    begin
    if m div 10000 = n then
        contaDigitos := contaDigitos + 1;
    
    if (m div 1000) mod 10 = n then
        contaDigitos := contaDigitos + 1;
    
    if (m div 100) mod 10 = n then
        contaDigitos := contaDigitos + 1;
    
    if m mod 10 = n then
        contaDigitos := contaDigitos + 1;
    end
    else
    begin
    if (m div 1000) mod 10 = n then
        contaDigitos := contaDigitos + 1;
    
    if (m div 100) mod 10 = n then
        contaDigitos := contaDigitos + 1;
    
    if m mod 10 = n then
        contaDigitos := contaDigitos + 1;
    end;

    
    if contaDigitos = 0 then
        writeln('NAO')
    else
    begin
        writeln(contaDigitos);
    end;
    
end.