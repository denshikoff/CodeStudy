program varian2;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

const maxn = 100;
type Tarray=array[1..maxn] of char;
var x,n,i,j, count:integer;
    Text:Tarray;
    Textnew:Tarray;
    OK:boolean;

procedure read_mas(var txt:Tarray);
begin
  writeln('������� ������ ������ �� ����� 100 ��������, � ����� ����� ');
  repeat
    n := n + 1;
    read(txt[n]);
  until (n = maxn) or eoln;
end;

procedure print(var txt:Tarray);
var i:integer;
begin
  for i := 1 to n do
    write(txt[i]);
end;

begin
  SetConsoleCP(1251);
  SetConsoleOutPutCP(1251);

  n := 0;
  read_mas(Text);

  count :=0;

  for i := 1 to n do
    Textnew[i] := ' ';

  for i := 1 to n-1 do
    OK := true;
    j := 1;
    while (j <= n) and OK do
    if Textnew[j] <> Text[i]
    then
      begin
        count := count + 1;
        Textnew[i] := Text[i];
        OK := false;
      end
    else
      j := j + 1;
      
  writeln;
  writeln(count);
  readln(x);
end.
 