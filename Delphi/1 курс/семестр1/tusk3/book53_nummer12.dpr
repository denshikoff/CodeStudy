{����� ���� ����������� ����� n. �������� ���������� ����� ���� 2^k, ������������� n.}
program book53_nummer12;

{$APPTYPE CONSOLE}



uses
  SysUtils,
  Windows;


var n, k, p:integer;

begin

  //������� �� ������ ���������
  SetConsoleCP(1251);
  SetConsoleOutputCP(1251);

  //�������� ������
  write('������� ����� n: ');
  readln(n);
  k:= 0;
  p:= 1;

  //��������� ������� ����� ����������� �����
  while p <= n do begin
    k:= k + 1;
    p:= p * 2;
  end;

  //��������� �������
  writeln('');
  writeln('���������� ����� ���� 2^',k,': ', p);
  readln;
end.
