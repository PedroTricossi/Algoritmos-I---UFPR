program contar;

var i: integer;

begin
    i:=1;

    while i <=3000 do
    begin
        writeln(i);
        i := 1 + i;
    end;

end.