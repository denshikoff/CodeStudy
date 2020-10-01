program yla;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const maxn = 10;
type Tarray=array[1..maxn] of integer;
var A:Tarray;
    New:Tarray;
    i, j, t, count:integer;

begin
{$R+}
  for i := 1 to maxn do
    read(A[i]);
  readln;
  writeln;

  for i := 1 to maxn-1 do
    for j:= 1 to maxn-i do
      if A[j] > A[j+1]
      then
        begin
        t := A[j+1];
        A[j+1] := A[j];
        A[j] := t;
        end;


  for i := 1 to maxn do
    write(A[i]);
    writeln;
    writeln;

  count := 2;
  for i := 2 to maxn do
    if ((A[i] = A[i-1]) and (New[count-1] <> A[i])) or ((A[i] = A[i-1]) and (count = 0))
    then
      begin
      New[count] := A[i];
      count := count + 1;
      end;

  for i := 2 to count-1 do
      write(New[i]);
    readln;


end.
