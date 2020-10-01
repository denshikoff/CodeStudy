program lab3_2;

{$APPTYPE CONSOLE}
{$R+}
uses
  SysUtils,
  Windows;

type Tcolor=(white,black,green,blue,red,undefined);
     Tfigure=(circle, square, triangle, rectangle, trapezoid);
     Tcount=array[Tcolor] of integer;
     Tarray=array[Tfigure] of Tcolor;
const color:array[Tcolor] of string[15]=('белый','черный',
'зеленый','синий','красный','неопределенный');
      figure:array[Tfigure] of string[20]=('окружности','квадрата','треугольника',
      'пр€моугольника','трапеции');


var figures:Tarray;
    count:Tcount;
   // f:Tfigure;

function read_color:Tcolor;  //функци€ ввода цветов через case
var cl:integer;
begin
  writeln('¬ведите цвет: ');
  writeln('1-белый');
  writeln('2-черный');
  writeln('3-зеленый');
  writeln('4-синий');
  writeln('5-красный');
  readln(cl);

  case cl of
  1: read_color:=white;
  2: read_color:=black;
  3: read_color:=green;
  4: read_color:=blue;
  5: read_color:=red;
  else
    read_color:=undefined;
  end;
end;

procedure make_read(var fg:Tarray);       //удобный ввод
var f:Tfigure;
begin
  for f := circle to trapezoid do
    begin
      writeln('¬ведите цвет дл€ ',figure[f]);
      fg[f] := read_color;
    end;
end;

procedure init_count(var ct:Tcount); //обнуление счетчика цветов
var c:Tcolor;
begin
  for c := white to undefined do
    ct[c]:=0;
end;

procedure make_count(var ct:Tcount);    //процедура вывода
var c:Tcolor;
    ok:boolean;
begin
  ok := false;
  writeln('цвета, которые встречаютс€ один раз:');
  for c := white to undefined do
    if count[c]=1 then
      begin
        writeln(color[c]);
        ok:=true;
      end;
  if not(ok) then
    writeln('цветов не найдено');
end;

procedure count_color(var count:Tcount);
var f:Tfigure;
begin
  for f := circle to trapezoid do
    count[figures[f]] := count[figures[f]] + 1;
end;

begin
  SetConsoleCP(1251);
  SetConsoleOutputCP(1251);


  make_read(figures);
  init_count(count);
  count_color(count);
  make_count(count);
  readln;
end.






