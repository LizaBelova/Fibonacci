program Fibonacci;
var i,n: integer;
function F(x: integer): LongInt;
begin
    if (x=1) or (x=2) then F:=1
    else F:=F(x-1)+F(x-2);
end;
Begin
    assign(input,'InFib.txt');
    assign(output,'OutFib.txt');
    rewrite(output);
    read(input,n);
    write(output,F(n));
    close(input);
    close(output);
End.