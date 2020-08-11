{No tabuleiro de xadrez, a casa na linha 1, coluna 1 (canto superior esquerdo) é sempre branca e as cores das casas se alternam entre branca e preta, de acordo com o padrão conhecido como... xadrez! Dessa forma, como o tabuleiro tradicional tem oito linhas e oito colunas, a casa na linha 8, coluna 8 (canto inferior direito) será também branca. Neste problema, entretanto, queremos saber a cor da casa no canto inferior direito de um tabuleiro com dimensões quaisquer: L linhas e C colunas. Faça um programa Pascal que leia do teclado dois números naturais positivos representando respectivamente o número de linhas L e colunas C do tabuleiro e verifique se a cor da casa no canto inferior direito desse tabuleiro será branca ou preta.}
program casasNoTabuleiro;
var
    L, C: integer;

begin
    read(L, C);

    if L mod 2 = 0 then
    begin
        if C mod 2 = 0 then 
            writeln('BRANCA')
        else
            writeln('PRETA');
    end
    else
    begin
        if C mod 2 = 0 then 
            writeln('PRETA')
        else
            writeln('BRANCA');
    end;
end.