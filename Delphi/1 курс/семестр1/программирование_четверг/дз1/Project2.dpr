rogram Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const n = 3; m = 5; k = 3;
var A:array[1..n, 1..m] of integer;
    a:array[1..k] of boolean;
    i, j: integer;
    OK: boolean;
begin
  for i:= 1 to n do
    for j:= 1 to m do
      read(A[i,j]);
      readln;
  j := 1;
  OK := true;
  for i:= 1 to n do
    begin
    while(j < m) do
      if A[i,j] < 0
      then
        begin
        a[i] := OK;
        j := j + 1;
        end;
      else
        a[i] := not OK;


    end;

end.
