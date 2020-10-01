program lav5_19;
{ Денщиков ПММ 1 курс 10 группа
Даны комплексное число Z (пара вещественных чисел) и вещественное число EPS>0.
Вычислить с точностью EPS значение следующей комплексной функции:
 E^Z=1+Z/1!+Z^2/2!+Z^3/3!+...+Z^N/N!}
{$APPTYPE CONSOLE}

uses
  SysUtils, Windows;

type complex = record          //запись комплексного числа
                re, im: real
                end;
                
var z, x, e: complex;
    eps: real;
    n: integer;
    fact:integer;



procedure read_eps(var eps:real); //процедура ввода eps
begin
  repeat
    write('Введите точность вычисления (eps > 0): ');
    readln(eps);
  until eps > 0;
end;

procedure sum(var f: complex; var g: complex); //процедура суммы комплексных чисел
begin
  f.re := f.re + g.re;
  f.im := f.im + g.im;
end;

procedure pr(var f, g: complex); //процедура произведения комплексных чисел
begin
      f.re := f.re * g.re - f.im * g.im;
      f.im := g.re * f.im + f.re * g.im;
end;


function modul(var f:complex):real; //процедура модуля комплексного числа
begin
  modul := sqrt(sqr(f.re) + sqr(f.im))
end;

procedure del(var f:complex; var x:integer);
begin
  f.re := f.re / x;
  f.im := f.im / x;
end;



procedure make_complex(var x,e:complex; var n:integer; var eps:real; var fact:integer);  //вычисление с точность eps
begin
 while modul(x) >= eps do
    begin
      inc(n);
      fact := fact * n;              //накапливание факториала
      sum(e,x);      //добавление сумму в e
      del(x,fact);
      pr(x,z); //возведение в степень
    end;
end;


procedure print_complex(var e:complex);   //вывод
begin
 with e do
  begin
    write('E^Z = ', re);
    if im >= 0 then
      write(' + ')
    else
      write(' -');
    write(abs(im), ' * i');
  end;
end;





begin
  SetConsoleCP(1251);
  SetConsoleOutputCp(1251);

  read_eps(eps);
  write('Re(Z) = ');  //ввод реальной части
  readln(z.re);
  write('Im(Z) = ');  //ввод мнимой части
  readln(z.im);

  e.re := 1;
  e.im :=0;
  x := z;
  n := 0;
  fact := 1;

  while modul(x) >= eps do
    begin
      inc(n);
      fact := fact * n;              //накапливание факториала
      sum(e,x);       //добавление сумму в e
      pr(x,z);   //умножение
      del(x,fact);          //деление на число
    end;

  //make_complex(x,e,n,eps, fact);
  print_complex(e);
  readln;
end.
