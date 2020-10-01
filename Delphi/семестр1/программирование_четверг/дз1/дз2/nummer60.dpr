program nummer60;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;
var a: real;
    n: integer;
begin
  SetConsoleCP(1251);
  SetConsoleOutputCP(1251);
  writeln('Read n');
  readln(n);
  a := 0;
  a := a + (n-1)/(n+1) + sin((n-1) * (n-1) * (n-1) / (n+1));
  writeln('Значение числа:', a:1:4);
  readln(a);
end.
