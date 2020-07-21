{Faça um programa em Pascal que leia três números x, y, z do teclado e decida se x > y ou se y < z. Seu programa deve imprimir a mensagem “sim” em caso afirmativo e “nao” caso contrário. }
program intevalo;
var
    x, y, z: Integer;

begin
    read(x);
    read(y);
    read(z);

    if (x > y) or (y < z) then
        writeln('sim')
    else
        writeln('nao');
end.