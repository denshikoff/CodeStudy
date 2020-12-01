{ѕусть дано натуральное число n. Ќайдите наименьшее среди чисел: k^3 * sin(n + k/n), где k = 1, 2, 3... n}
program book51_16;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

var n, k: integer;
    t, min: real;

begin
  //переход на верную кодировку
  SetConsoleCP(1251);
  SetConsoleOutputCP(1251);

  //¬вод данных
  writeln('¬ведите число n: ');
  readln(n);

  //первое число k задаЄтс€ начальным минимумом
  k:= 1;
  min:= k*k*k*sin(n+n/k);

  //находитс€ в цикле наименьшее среди чисел
  for k:=2 to n do
    begin
      t:=k*k*k*sin(n+n/k);
      if t < min
      then
        min:=t;
    end;

  //выводим полученные значени€
  writeln('ћинимальное число: ', min:5:2, 'при k = ', k);
  readln;

end.
