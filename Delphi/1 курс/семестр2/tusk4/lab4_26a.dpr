program lab4_26a;
{���� ����������� ����� Z (���� ������������ �����) � ������������ ����� EPS>0.
��������� � ��������� EPS �������� ��������� ����������� �������:
E^Z=1+Z/1!+Z^2/2!+Z^3/3!+...+Z^N/N!}
{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows,
  UComplex in 'UComplex.pas';


var z, a, e: complex;
    eps: real;
    n: integer;
begin
  SetConsoleCP(1251);
  SetConsoleOutputCp(1251);
  repeat
    write('������� �������� ���������� (eps > 0): ');
    readln(eps);
  until eps > 0;

  write('Re(Z) = ');
  readln(z.re);
  write('Im(Z) = ');
  readln(z.im);

  e.re := 1;
  e.im :=0;
  a := z;
  n := 1;

  while modul(a) >= eps do
    begin
      inc(n);
      summ(e,a);
      pr(a,z);
      dif(a,n);
    end;

  print_complex(e);
  readln
end.
