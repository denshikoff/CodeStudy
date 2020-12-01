program delete_x_y;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const maxn = 6;

var A: array [1..maxn] of integer;
    x, n, i, j, y: integer;
    OK: boolean;
begin
  for i := 1 to maxn do
    read(A[i]);
  readln;

  n := maxn;
  writeln('read x');
  readln(x, y);
  OK := false;
  i := 0;

  while i < n do
    if A[i] = x
    then
      begin
        A[i] := y;
      end
    else
        i := i + 1;

  for i:= 1 to n do
      write(A[i]:4);
readln;
end.
