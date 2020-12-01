program delete_x;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const maxn = 6;

var A: array [1..maxn] of integer;
    x, n, i, j: integer;
    OK: boolean;
begin
  for i := 1 to maxn do
    read(A[i]);
  readln;

  n := maxn;
  writeln('read x');
  readln(x);
  OK := false;
  i := 0;

  while i < n do
    if A[i] = x
    then
      begin
        for j := i to n do
          A[j] := A[j+1];
          n := n - 1;
      end
    else
        i := i + 1;

  for i:= 1 to n do
      write(A[i]:4);
readln;
end.
