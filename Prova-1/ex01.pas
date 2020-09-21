program EquacaoReta;
var
    x, y: real;

begin
    read(x, y);

    {ponto sobre o eixo x ou y, ou sobre a reta}
    if ((x = 0) OR (y = 0)) OR ((x = 2 - y)) then begin
        writeln('nenhuma das regioes')
    end
    { O ponto estará em A se y > e x < 0}
    else if (y > 4) AND (x < 0) then begin
        writeln('regiao A');
    end

    { O ponto estara em b, se 0 < y < 4 e 0 < x < 2}
    else if (y < 4) AND (y > 0) AND (x > 0) AND (x < 2) then begin
        writeln('regiao B');
    end

    {O ponto estara em C, se y < 0 e x > 2}
    else if (y < 0) AND (x > 2) then begin
        writeln('regiao C');
    end

    {Se os pontos não estiverem em nenhuma região, nem sobre os eixos, nem sobre a reta}
    else
    begin
        writeln('nenhum das regioes');
    end;
end.