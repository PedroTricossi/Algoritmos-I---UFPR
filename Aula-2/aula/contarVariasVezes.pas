program contarVariasVezes;

var a, b: integer;

begin
    read(a);
    read(b);

    while (a <> 0) or (b <> 0) do
    begin
        writeln(a+b);
        
        read(a);
        read(b);
    end;
end.