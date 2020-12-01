{ѕусть дано натуральное число n. ѕолучите наименьшее число вида 2^k, превосход€щее n.}
program book53_nummer12;

{$APPTYPE CONSOLE}



uses
  SysUtils,
  Windows;


var n, k, p:integer;

begin

  //переход на верную кодировку
  SetConsoleCP(1251);
  SetConsoleOutputCP(1251);

  //ввод€тс€ данные
  write('¬ведите число n: ');
  readln(n);
  k:= 0;
  p:= 1;

  //находитс€ минимум среди необходимых чисел
  while p <= n do begin
    k:= k + 1;
    p:= p * 2;
  end;

  //выводитс€ минимум
  writeln('');
  writeln('наименьшее число вида 2^',k,': ', p);
  readln;
end.
