program repeatmatr;
  {Задана последовательность неквадратных матриц.
  Напечатать те из них, которые повторялись
  в исходном массиве только один раз(не повторялись}
{$APPTYPE CONSOLE}

uses
  SysUtils;

const n = 3;
      m = 5;
      k = 5;
type Tmatr=array[1..n,1..m] of integer;
     Tcount=array[1..k] of Tmatr; //количество матриц
var MT:Tcount;

procedure read_mas(var Mt:Tmatr);
var i,j:integer;
begin
  for i := 1 to n do
    for j := 1 to m do
      read(Mt[i,j]);
  readln;
end;

procedure print(var Mt:Tmatr);
var i,j:integer;
begin
  for i := 1 to n do
    begin
      for j := 1 to m do
        write(Mt[i,j]);
      writeln;
    end;
end;



begin
end.
 