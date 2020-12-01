program nummer_3;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

const maxn = 10;
type Tarray = array[1..maxn] of char;
var Ch1, Ch2, Ch3: Tarray;
    count1, count2, count3:integer;




//ввод текста
procedure read_ch(var ar: Tarray);
var i:integer;
begin
  write('¬ведите текст ');
  for i := 1 to maxn do
    read(ar[i]);
    readln;
end;

function countch(var ar:Tarray):integer;
var count, i:integer;
begin
  count := 0;
  for i := 1 to maxn do
    if ar[i] = '1'
    then
      inc(count);
  countch := count;
end;

function max(var k1, k2, k3:integer):integer;
begin
if (k1 > k2) and (k1 > k3)
  then
    max := k1
  else
    if (k2 > k3) and (k2 > k1)
    then
      max := k2
    else
      max := k3;
end;

begin
  SetConsoleCP(1251);
  SetConsoleOutPutCp(1251);

  read_ch(Ch1);
  read_ch(Ch2);
  read_ch(Ch3);

  count1 := countch(Ch1);
  count2 := countch(Ch2);
  count3 := countch(Ch3);

  writeln(max(count1, count2, count3));

readln;
end.
