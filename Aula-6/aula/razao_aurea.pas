program numero_aureo;
const PRECISAO=0.00000000000001
var 
    ultimo, penultimo, soma: integer;
    naureo, naureoAnterior: real;

begin
    ultimo:= 1;
    penultimo:= 1;
    naureoAnterior:= -1;
    naureo:= 1;
    writeln(naureo:15:14);

    while abs(naureo - naureoAnterior) >= PRECISAO do 
    begin
        soma:= penultimo + ultimo;

        naureoAnterior := naureo;
        naureo:= soma / ultimo;

        writeln(naureo:15:14);
        
        penultimo:= ultimo;
        ultimo:=soma;
    end;
end;