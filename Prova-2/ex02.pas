program ex02;
type vetor = array[1..200] of integer;
var
UMC, i, j, decimal:integer;
v:vetor;

{---------------------------------------------------------------------------}
{Essa função divide a entrada em algarismos, e adiciona esses algarismos a um vetor v}
function transforma_UMC_vetor(var v:vetor; UMC:integer):vetor;
var unidade, dezena, centena, milhar, dezena_milhar: integer;
begin
    unidade:= UMC mod 10;
    dezena:= (UMC mod 100) div 10;
    centena:= (UMC div 100) mod 10;
    milhar:= (UMC div 1000) mod 10;
    dezena_milhar:= (UMC div 1000) div 10;

    v[1]:= unidade;
    v[2]:= dezena;
    v[3]:= centena;
    v[4]:= milhar;
    v[5]:= dezena_milhar;

    transforma_UMC_vetor:= v;
end;

{---------------------------------------------------------------------------}
{Essa dunção pega o vetor reotrnado da função anterior e aplica a formula descrita no exercicio para retornar o numero decimal}
function calcula_decimal(var v:vetor):integer;
var i, j:integer;
begin
    i:=1;
    j:= 1;
    while i <= 5 do begin
        calcula_decimal:= calcula_decimal + v[i] * j;
        i:= 1 + i;
        j:= j * i;
    end;
end;

{---------------------------------------------------------------------------}

begin
    read(UMC);

    transforma_UMC_vetor(v, UMC);

    decimal:=calcula_decimal(v);

    i:= 5;

    {Como o numero não tem 0 a esquerda, esse while define a posição em que o numero começa realmente}
    while v[i] = 0 do begin
        i:= i - 1;
    end;

    {Resultado é impresso}
    write(decimal, ' = ');
    for j:= i downto 1 do begin
        write(v[j], 'x', j, '! + ')
    end;
end.
