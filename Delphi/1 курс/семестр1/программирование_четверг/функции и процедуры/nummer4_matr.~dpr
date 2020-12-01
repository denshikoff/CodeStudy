program nummer4_matr;
{проверить правда ли матрица нулевая}
{$APPTYPE CONSOLE}

uses
  SysUtils;

const n = 3;
      m = 5;
type MTarray = array[1..n,1..m] of integer;
var OK:boolean;
    i:integer;
    A:MTarray;

procedure read_mas(var Ar:MTarray);
var i,j:integer;
begin
  for i := 1 to n do
    for j := 1 to m do
      read(Ar[i,j]);
    readln;
end;

procedure zero(var Ar:MTarray; nst:integer);
  var j:integer;
  begin
    j := 1;
    while OK and (j <= m) do
      if A[nst,j] = 0
      then
        j := j + 1
      else
        OK := false;
  end;

begin
  read_mas(A);
  i := 1;
  OK := true;
  while OK and (i <= n) do
    begin
      zero(A,i);
      i := i + 1;
    end;
  if OK
  then
    writeln('YES')
  else
    writeln('NO');
  readln;
end.
 