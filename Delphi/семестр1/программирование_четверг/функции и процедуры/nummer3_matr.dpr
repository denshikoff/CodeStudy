program nummer3_matr;
{��������� ������������ ������ �� ����������� ��������� �����}
{$APPTYPE CONSOLE}

uses
  SysUtils;

const n = 3;
      m = 5;
type MTarray = array[1..n,1..m] of integer;
var i, number:integer;
    A:MTarray;
    OK:boolean;

procedure read_mas(var Ar:MTarray);
var i,j:integer;
begin
  for i := 1 to n do
    for j := 1 to m do
      read(Ar[i,j]);
    readln;
end;

procedure pr(var Ar:MTarray; nst:integer; x:integer);
var j, p:integer;
begin
  p := 1;
  for j := 1 to m do
    p := p * A[nst,j];
  OK := p <= x;
end;

procedure OKAY(ok:boolean);
begin
   if OK
  then
    writeln('Yes')
  else
    writeln('No');
end;


begin
  writeln('Read x ');
  readln(number);
  read_mas(A);
  i := 1;
  OK := true;
  while OK and (i <= n) do
    begin
    pr(A, i, number);
    inc(i);
    end;
  OKAY(OK);
  readln;
end.
