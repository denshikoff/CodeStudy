//не превысило ли произведение строки - x
program algoritm3;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const n = 3; m = 5;
var A:array[1..n, 1..m] of integer;
    i, j, p, x: integer;
    OK: boolean;
begin
  for i:= 1 to n do
    for j:= 1 to m do
      read(A[i, j]);
  readln;

  readln(x);
  OK := true;

  while OK and (i <= n) do
    begin
    p:= 1;
    for j:= 1 to m do
      p:= p * A[i, j];
      OK:= p <= x;
    end;
    if OK then
      writeln('Yes')
    else
      writeln('No');
      readln;
end.
 