program Project2;
  {Определите сколько различных литер входит в заданный текст, содержащий
  не более 100 литер и оканчивающийся точкой(сама точка в текст не входит}
{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

var i, count:integer;
    Text:String;
    m:set of char;



begin
  SetConsoleCP(1251);
  SetConsoleOutPutCP(1251);

  writeln('Введите строку длиной не более 100 символов, в конце точка');
  readln(Text);

  count := 0;
  m:= [];

  for i := 1 to length(Text)-1 do
        if not(Text[i] in m)
        then
          begin
            count := count + 1;
            m := m + [Text[i]];
          end;

  writeln('Количество различных литер = ', count);
  readln;
end.
