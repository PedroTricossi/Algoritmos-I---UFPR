program baskara(input, output);
var a, b, c, raizdiscriminante: real;

begin
    write('Insira o valor de A:');
    readln(a);

    write('Insira o valor de B:');
    readln(b);

    write('Insira o valor de C:');
    readln(c);

    raizdiscriminante := sqrt(b*b -4*a*c);

    write('O valor da primeira raíz de X é:', (b - raizdiscriminante)/2*a);
    write('O valor da segunda raíz de X é:', (b + raizdiscriminante)/2*a);

end.