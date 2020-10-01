program nummer2_matr;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const n = 3;
      m = 5;
type MTarray = array[1..n,1..m] of integer;
var i, count:integer;
    A:MTarray;

procedure read_mas(var Ar:MTarray);
var i, j:integer;
begin
  for i := 1 to n do
    for j := 1 to m do
      read(Ar[i,j]);
    readln;
end;

function pr(var Ar:MTarray; nst:integer): boolean;
var OK:boolean;
    j:integer;
begin
  OK := true;
  j := 1;
  while OK and (j <= m) do
    if A[nst, j] < A[nst, j+1]
    then
      j := j + 1
    else
      OK := false;
  pr := OK;
end;

begin
  count := 0;
  read_mas(A);
  for i := 1 to n do
    if pr(A, i) 
    then
      count := count + 1;
  writeln(count);
  readln;
end.
 