program tusk1;
{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows,
  UComplex in 'UComplex.pas';

var z, a, copyA, e: complex;
    n,k,f: integer;
    eps:real;
begin
  SetConsoleCP(1251);
  SetConsoleOutputCp(1251);
  
  repeat
    write('¬ведите точность вычислений (eps > 0): ');
    readln(eps);
  until eps > 0;

  write('Re(Z) = ');
  readln(z.re);
  write('Im(Z) = ');
  readln(z.im);


  e.re := 1;
  e.im :=0;

  mul(z,z,a);
  copyA := a;
  f := 2; //факториал в знаменателе
  n := 2; //счетчик
  k := -1; //знак элемента

  while (modul(a)/f) >= eps do
    begin
      copyA.im := copyA.im * k;
      dif(copyA,f,copyA);
      sum(e,copyA,e);
      inc(n,2);
      mul(z,z,a);
      copyA := a;
      f := f*(n-1)*n;
      k:=k*(-1);
    end;


  print_complex(e);
  readln
end.
