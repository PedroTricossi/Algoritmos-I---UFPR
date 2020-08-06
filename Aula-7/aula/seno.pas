program seno;
var
    i, sig:integer;
    den: int64;
    x, sum, num: extended;

begin
    read(x);

    num := x; den:= 1; sig:= 1; sum:= 0.0;

    i:= 1;

    while (i < 40) do begin
        sum := sum + sig * num / den;
        num := num * x * x;
        den := den * (i + 1) * (i + 2);
        sig := sig * (-1);

        i := i + 2;
    end;

    writeln(sum:10:6);
end.