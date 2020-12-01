{����� ���� ����������� ����� n. ������� ���������� ����� �����: k^3 * sin(n + k/n), ��� k = 1, 2, 3... n}
program book51_16;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

var n, k: integer;
    t, min: real;

begin
  //������� �� ������ ���������
  SetConsoleCP(1251);
  SetConsoleOutputCP(1251);

  //���� ������
  writeln('������� ����� n: ');
  readln(n);

  //������ ����� k ������� ��������� ���������
  k:= 1;
  min:= k*k*k*sin(n+n/k);

  //��������� � ����� ���������� ����� �����
  for k:=2 to n do
    begin
      t:=k*k*k*sin(n+n/k);
      if t < min
      then
        min:=t;
    end;

  //������� ���������� ��������
  writeln('����������� �����: ', min:5:2, '��� k = ', k);
  readln;

end.
