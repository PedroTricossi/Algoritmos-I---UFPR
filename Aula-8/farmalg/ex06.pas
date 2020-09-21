program compara_datas;
var dia1, mes1, ano1, dia2, mes2, ano2: longint;

function eh_anterior(dia1, mes1, ano1, dia2, mes2, ano2: integer):boolean;
begin
    if ano1 < ano2 then begin
        eh_anterior:= true;
    end
    else
        eh_anterior:= false;
    
    if ano1 = ano2 then begin
        if mes1 < mes2 then begin
            eh_anterior:= true;
        end
        else
            eh_anterior:= false;
    end;

    if (ano1 = ano2) AND (mes1 = mes2) then begin
        if dia1 < dia2 then begin
            eh_anterior:= true;
        end
        else
            eh_anterior:= false;
        
    end;
end;

begin
    read (dia1, mes1, ano1, dia2, mes2, ano2);
    if eh_anterior (dia1, mes1, ano1, dia2, mes2, ano2) then
        writeln ('a primeira data eh anterior')
    else
        writeln ('a primeira data nao eh anterior');
end.