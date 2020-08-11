{Dadas as populações Pa e Pb de duas cidades A e B (no ano atual) e suas respectivas taxas de crescimento anual Ta e Tb, faça um programa Pascal que que receba 4 números reais como entrada (Pa, Pb, Ta, Tb) representando estas informações e determine se a população da cidade de menor população ultrapassará a de maior população e se sim, imprima em quantos anos que isto ocorrerá. Caso contrário, imprima 0.}
program crescimentoIdade;
var 
    Pa, Pb, Ta, Tb, varIntermed, t: real;

begin
    read(Pa, Pb, Ta,Tb);

    if Pa > Pb then
    begin
        varIntermed := Pa;
        Pa := Pb;
        Pb := varIntermed;

        varIntermed := Ta;
        Ta := Tb;
        Tb := varIntermed;
    end;

    if Ta > Tb then
    begin
        Ta := Ta + 1; Tb := Tb + 1;
        t:=0;
        while Pa < Pb do begin
            Pa:= Pa * Ta;
            Pb:= Pb * Tb;
            t := t + 1;
        end;
        
        writeln(t);
    end
    else
    begin
        writeln(0);
    end;

end.