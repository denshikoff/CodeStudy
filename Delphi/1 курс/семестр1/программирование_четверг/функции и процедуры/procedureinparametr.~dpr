program procedureinparametr;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const n = 3;
      m = 5;

type Tstr = array[1..m] of integer;
     Ttab = array[1..n] of Tstr;
     Tproc = procedure(var st:Tstr);
var Table:Ttab;

procedure read_mt(var mt:Ttab);
var i,j:integer;
begin
  for i := 1 to n do
    for j := 1 to m do
      read(mt[i,j]);
  readln;

procedure sortUp(var st:Tstr); //процедура сортировки по возрастанию, принимает строку
var i,j, t:integer;
begin
  t:=0;
  for i := 1 to m-1 do
    for j := 1 to m-i do
      if st[j] > st[j+1]
      then
        begin
          t := st[j+1];
          st[j+1] := st[j];
          st[j] := t;
        end;
end;

procedure sortDown(var st:Tstr); //сортировка по убыванию
var j,t:integer;
begin
  t:=0;

  for j := 1 to m do
    if st[j] < st[j+1]
    then
      begin
        t := st[j];
        st[j] := st[j+1];
        st[j+1] := t;
      end;

procedure reverse(var st:Tstr); //инвертировать массив
var i,k,t:integer;
begin
  k := m div 2;
  for i := 1 to k do
    begin
      t := st[i];
      st[i] := st[m-i+1];
      st[m-i+1] := t;
    end;
end;

//вверху три равнозначных процедуры

//процедура вызова процедуры для каждой строки
procedure make(var tab:Ttab; pr:Tproc); //принимаем процедуру и все строки
var i:integer;
begin
  for i := 1 to n do //проходим по всем строкам и выполняем процедуру
    pr(tab[i]);
end;

//вывод матрицы с обработанными строками
procedure print(var tab:Ttab);
var i,j:integer;
begin
  for i := 1 to n do
    begin
      for j := 1 to m do
        write(tab[i,j]);
    readln;
    end;
end;

procedure intervase;
var k:integer;
begin
  repeat
  if k = '1'
  then
    make(Table,sortUp)
  else
    if k = '2'
    then
      make(Table,sortDown)
    else
      if k<>esc
      then
        make(Table,reverse);
    print(Table);
  until k = esc
end;



begin
read_mt(Table);
intervase;
readln;



end.
 