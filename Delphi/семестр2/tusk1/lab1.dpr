program lab1;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;
var a,b:real;
    n:integer;
    res:real;


function stepen(x:real; n:integer):real;
var i:integer;
    st:real;
begin
st:=1;
 for i:=1 to n do
  st:=st*x;
stepen := st;
end;

function recurs(x:real; n:integer):real;
begin
  if n = 0 then
    recurs := x
  else
   if n = 1 then
    recurs := ln(sin(x/2)/cos(x/2))
   else
    if n >= 2 then
      recurs := -1/(n-1) * cos(x)/ stepen(sin(x), n-1) + (n-2/(n-1)) * recurs(x,n-2)
end;

begin
 SetConsoleCP(1251);
 SetConsoleOutputCP(1251);

 writeln('¬введите границы интегрировани€ а и b');
 readln(a,b);
 writeln('¬ведите неотрицательный параметр n');
 readln(n);

 res := recurs(b,n)-recurs(a,n);

 writeln('«начение интеграла равно: ',  res:0:5);
 readln;
end.
