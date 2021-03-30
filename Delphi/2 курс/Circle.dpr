program Circle;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

const nmax=15;
var x,y,r:array[1..nmax] of real;
    n,i,j,k,f:byte;
    s:real;
begin
repeat
write('Количество окружностей до ',nmax,' n=');
readln(n);
until n in [1..nmax];
writeln('Ввдите параметры окружностей:');
for i:=1 to n do
 begin
  writeln('Окружность ',i);
  write(' x=');readln(x[i]);
  write(' y=');readln(y[i]);
  repeat
  write(' r>0 r=');readln(r[i]);
  until r[i]>0;
 end;

writeln('Окружности:');
write('X:');
for i:=1 to n do
write(x[i]:4:1);
writeln;
write('Y:');
for i:=1 to n do
write(y[i]:4:1);
writeln;
write('R:');
for i:=1 to n do
write(r[i]:4:1);
writeln;
k:=0;
for i:=1 to n do
 begin
  f:=0;
  for j:=1 to n do
    begin
     s:= sqrt(sqr(x[i]-x[j])+sqr(y[i]-y[j]));
     if (s<r[i]+r[j])and(s>abs(r[i]-r[j])) then
      begin
       f:=1;
       break;
      end;
    end;
  if f=1 then k:=k+1;
 end;
write('Число пересекающихся окружностей=',k);
readln
end.

