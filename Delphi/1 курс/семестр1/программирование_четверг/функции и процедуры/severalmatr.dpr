program severalmatr;
{Задана последовательность неквадратных матриц.
Посчитать количество тех, которые являются инверсией первой}

{$APPTYPE CONSOLE}

uses
  SysUtils;

const n = 3;
      m = 5;
      k = 5; //количество матриц
type Tmatr=array[1..n,1..m] of integer;
     Tcount=array[1..k] of Tmatr;  //количество матриц в массиве
var count,i:integer;
    MT:Tcount;

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

function eqval(var mat1,mat2:Tmatr):boolean;
var i,j:integer;
    OK:boolean;
begin
  OK := true;
  i := 1;
  while OK and (i<=n) do
    begin
    j:=1;
    while OK and (j<=m) do
      begin
      if mat1[i,j] = mat2[i,j-m+1]
      then
        inc(j)
      else
        OK := false;
    end;
  eqval := OK;
end;


begin
  for i := 1 to k do
    begin
    writeln('N',i);
    read_mas(MT[i]);
    end;

  count := 0;
  for i := 2 to k do
    if eqval(MT[1],MT[i])
    then
      count := count + 1;
end.
