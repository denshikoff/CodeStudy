{��������� ��������� ���������� ������� f(x) (x*x - x) <= 1 ==> x := x*x*x - 3 * x + 8 ����� x := 1 / (x*x*x - 3 * x + 8) }
program book_5a;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

var x, y:real;

begin
  //������� �� ������ ���������
  SetConsoleCP(1251);
  SetConsoleOutputCP(1251);

  //�������� �������� x
  writeln('������� �������� ���������');
  readln(x);

  //���������� ����������� �������
  if (x*x - x) <= 1
  then
    y := sqr(x) * x - 3 * x + 8
  else
    y := 1 / (sqr(x) * x - 3 * x + 8);

  //������� �������� �������
  writeln('�������� �������: ', y:5:3);
  readln;
end.
