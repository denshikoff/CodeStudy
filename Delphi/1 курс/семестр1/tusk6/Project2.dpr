program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils,windows;

const n = 5;
      k = 3;
var
     A:array[1..k*n] of real;
     Min:array[1..n] of real;
     max:real;
     i,j:integer;
begin
  SetConsoleCP(1251);
  SetConsoleOutPutCP(1251);
  Randomize;
  Writeln('�������� ������������������:');
  readln;

  for i:=1 to k*n do
    begin
      A[i] := random * 99;
      write(A[i]:8:3);

      if i mod k = 0
      then
        writeln;
    end;
    readln;
    Writeln(' ����������� �������� ',n,' ������� �� ',k,' � ������:');
    readln;

  for i:=1 to n do
    begin
      Min[i] := A[(i-1)*k+1];
      for j := 2 to k do
        if A[(i-1)*k+j] < Min[i]
        then
          Min[i] := A[(i-1)*k+j];
      write(min[i]:8:3);
    end;
    readln;
    writeln;
  Max := Min[1];
  for i := 2 to n do
    if Min[i] > Max
    then
      Max := Min[i];
  writeln(' ������������ �����:', Max:8:3);
  readln;
end.
