program nummer5;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var i, count: integer;

begin
  count := 0;
  for i := 100 downto 1 do
  begin
  write(i, ' ');
  count := count + 1;
  if count mod 6 = 0
  then
  writeln(' ');
  end;
readln(count);
end.
 