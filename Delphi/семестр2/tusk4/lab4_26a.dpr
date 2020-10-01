program lab4_26a;
{���� ����������� ����� Z (���� ������������ �����) � ������������ ����� EPS>0.
��������� � ��������� EPS �������� ��������� ����������� �������:
E^Z=1+Z/1!+Z^2/2!+Z^3/3!+...+Z^N/N!}
{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

type complex = record re, im: real end;
var z, a, e: complex;
    eps: real;
    n: integer;

//��������� ����� ����������� �����
procedure summ(var f,g:complex);
begin
   f.re := f.re + g.re;
   f.im := f.im + g.im;
end;

//������� ������ ������������ �����
function modul(var f:complex):real;
begin
  modul := sqrt(sqr(a.re) + sqr(a.im))
end;

//��������� ������������ ����������� �����
procedure pr(var f,g:complex);
begin
  f.re := f.re * g.re - f.im * g.im;
  f.im := f.im * g.re + f.re * g.im;
end;
//��������� ������� �� �����
procedure dif(var f:complex; var n:integer);
begin
  f.re := f.re / n;
  f.im := f.im / n;
end;
//��������� ������
procedure print_complex(var f:complex);
begin
  write('E^Z = ', f.re:4:1);
  if f.im >= 0 then
    write(' +')
  else
    write(' -');
  write(abs(f.im):4:1, ' * i');
end;

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
