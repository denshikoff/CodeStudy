program nummer1;
 uses
  SysUtils;

{$APPTYPE CONSOLE}
const maxn = 10;
type Tarray = array[1..maxn] of real;
var A1, A2, A3: Tarray;
    l1, l2, l3: integer;
     A1_max, t: real;

function read_n:integer;
  var n:integer;
  begin
    repeat
      writeln('¬ведите границу массива');
      readln(n);
      if (n < 1) and (n > maxn)
      then
        writeln('ошибка');
      until (n >= 1) and (n <= maxn);
      read_n := n;       м
  end;

procedure read_mas(var ar:Tarray; n:integer);
  var i:integer;
  begin
    for i := 1 to n do
      read(ar[i]);
    readln;
  end;

function min(var ar:Tarray; n:integer):real;
  var min_el:real;
      i: integer;
  begin
    min_el := ar[1];
    for i:= 2 to n do
      if ar[i] < min_el
      then
        min_el := ar[i];
    min := min_el;
  end;

function max(var ar:Tarray; n:integer): real;
  var max_el: real;
      i: integer;
  begin
    max_el := ar[1];
    for i:= 2 to n do
      if ar[i] > max_el
      then
        max_el := ar[i];
     max := max_el;
  end;



begin
  l1 := read_n;
  l2 := read_n;
  l3 := read_n;

  read_mas(A1, l1);
  read_mas(A2, l2);
  read_mas(A3, l3);

  A1_max := max(A2, l2);

  if A1_max > 2
  then
    t := min(A1, l1) + max(A3, l3)
  else
    t := sqr(A1_max) + 1;

  writeln(t);
  readln
end.
 