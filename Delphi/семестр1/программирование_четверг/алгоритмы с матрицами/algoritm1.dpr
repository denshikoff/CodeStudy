{����� ������������ ����� �����}
program algoritm1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const n = 3; m = 5; 
var A: array[1..n, 1..m] of integer;
    s, i,j, max: integer;
begin
  for i := 1 to n do
    for j := 1 to m do
      read(A[i, j]);
  readln;

  max := 0;     //������ ����������� ����� ��� ����� ������ ������ �������
  for j := 1 to m do
    max := max + A[1, j];

  for i := 2 to n do       //������� ���� ������������ �� �������
    begin
      s:= 0;
      for j := 1 to m do
        s := s + A[i, j];  //���������� ���� ����� ����� ������
      if s > max           //���������� ������������ ����� � ����������
      then max := s
    end;
  writeln(max);
  readln;
end.
 