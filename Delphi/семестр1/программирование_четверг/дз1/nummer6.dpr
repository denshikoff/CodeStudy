program nummer6;

{$APPTYPE CONSOLE}

uses
  SysUtils;
const N = 50;
var   i, k: integer;
  a: array [1..N] of integer;
   // Количество элементов в массиве


begin
k := 0;

  for i:=1 to N do
  a[i] := Random(100);

  for i := 1 to N do
  begin
  if a[i] <> a[N]
  then
  k := k + 1;
  end;
writeln(k);
readln(k);
end.
