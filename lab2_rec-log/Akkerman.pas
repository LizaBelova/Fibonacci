program Akkerman;
var n,x,y: integer;
function Akk(n,x,y: integer): int64;
begin
    if n=0 then Akk:=x+1
    else if (n=1)  and (y=0)  then Akk:=x
    else if (n=2)  and (y=0)  then Akk:=0
    else if (n=3)  and (y=0)  then Akk:=1
    else if (n>=4) and (y=0)  then Akk:=2
    else if (n<>0) and (y<>0) then Akk:=Akk(n-1,y-1,x);
end;
Begin
    assign(input,'InAkk.txt');
    assign(output,'OutAkk.txt');
    rewrite(output);
    read(input,n,x,y);
    write(output,Akk(n,x,y));
    close(input);
    close(output);
End.