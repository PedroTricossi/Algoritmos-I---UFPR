program quadrados;
var
    i: integer

begin
    i := 1
    while i <= 30 do 
    begin
        write(i, '', i*i)
        i := i*i
    end;
end