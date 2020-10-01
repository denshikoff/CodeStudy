program nummer1_matr;
{найти максимальную сумму элементов строки}
{$APPTYPE CONSOLE}

uses
  SysUtils;

const n = 3;  //количество строк
      m = 5;  //количество столбцов
type TMarray = array[1..n,1..m] of integer;
var i:integer;
    Ar:TMarray;
    maxstr:integer;

procedure read_mas(var MT:TMarray);
var i, j:integer;
begin
  for i := 1 to n do    //потом переход на следующую строку
    for j := 1 to m do //вначале по всей строке
      read(MT[i,j]);
    readln;
end;

function sum_max(var A:TMarray; nst:integer):integer;
var s, max, j:integer;
begin
  max := 0;
  s := 0;
  for j := 1 to m do
    max := max + A[1,j]; //сумма первой строки

  for j := 1 to m do
    begin
    s := s + A[nst,j];
    if s > max
    then
      max := s;
    end;
  sum_max := max;
end;




begin
  read_mas(Ar);

  for i := 1 to n do
     maxstr := sum_max(Ar, i);

  writeln(maxstr);
  readln;
end.
