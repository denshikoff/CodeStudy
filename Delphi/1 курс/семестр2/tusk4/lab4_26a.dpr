program lab4_26a;
{Даны комплексное число Z (пара вещественных чисел) и вещественное число EPS>0.
Вычислить с точностью EPS значение следующей комплексной функции:
E^Z=1+Z/1!+Z^2/2!+Z^3/3!+...+Z^N/N!}
{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

type complex = record re, im: real end;
var z, a, e: complex;
    eps: real;
    n: integer;

//процедура суммы комплексных чисел
procedure summ(var f,g:complex);
begin
   f.re := f.re + g.re;
   f.im := f.im + g.im;
end;

//функция модуля комплексного числа
function modul(var f:complex):real;
begin
  modul := sqrt(sqr(a.re) + sqr(a.im))
end;

//процедура произведения комплексных чисел
procedure pr(var f,g:complex);
begin
  f.re := f.re * g.re - f.im * g.im;
  f.im := f.im * g.re + f.re * g.im;
end;
//процедура деления на число
procedure dif(var f:complex; var n:integer);
begin
  f.re := f.re / n;
  f.im := f.im / n;
end;
//процедура печати
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
    write('Введите точность вычислений (eps > 0): ');
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
