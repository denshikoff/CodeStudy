program nummer_4;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

const maxn = 10;
type Tarray = array[1..maxn] of integer;
var A1, A2, A3, A4:Tarray;
    count:integer;

procedure read_mas(var ar:Tarray);
var i:integer;
begin
  write('������� ������ ');
  for i := 1 to maxn do
    read(ar[i]);
    readln;
end;

procedure invers(var ar1, arN: Tarray);
var i: integer;
    Ok: boolean;
begin
  Ok:= true;
  i := 1;
  while(i <= maxn) do
  if ar1[i] = arN[maxn-i+1]
  then
    inc(i)
  else
    Ok := false;
  if OK
  then
    inc(count);
end;

begin
  SetConsoleCP(1251);
  SetConsoleOutPutCp(1251);
  
 count := 0;
 read_mas(A1);
 read_mas(A2);
 read_mas(A3);
 read_mas(A4);

 invers(A1, A2);
 invers(A1, A3);
 invers(A1, A4);

 writeln(count);
 readln;

end.
