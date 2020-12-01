program nummer14_char;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

const n = 10;

var text: array[1..n] of char;
c: char;
    i, j: integer;

begin
  {$R+}
  SetConsoleCP(1251);
  SetConsoleOutputCP(1251);

  writeln('¬ведите текст: ');
  for i := 1 to n do
    read(text[i]);
  readln;

  

  for i := 2 to n do
    if(text[i-1] = 'c') and (text[i] = 'b')
    then
      for j:= i to n - 1 do
        text[j]:= text[j+1];

  for i := 1 to n do
    write(text[i]);
  readln;
end.
