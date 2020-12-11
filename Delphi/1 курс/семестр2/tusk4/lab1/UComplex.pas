unit UComplex;

interface
uses Math;
type complex = record
                re, im: real
               end;
procedure sum(x,y:complex; var z:complex);
procedure sub(x,y:complex; var z:complex);
procedure mul(x,y:complex; var z:complex);
procedure  dif(x:complex; n:integer; var z:complex);
procedure print_complex(var x:complex);
function modul(x:complex):real;

implementation
//процедура суммы комплексных чисел
procedure sum(x,y:complex; var z:complex);
begin
   z.re := x.re + y.re;
   z.im := y.im + x.im;
end;

//процедура вычитания комплексных чисел
procedure sub(x,y:complex; var z:complex);
begin
   z.re := x.re - y.re;
   z.im := y.im - x.im;
end;

//процедура произведение чисел
procedure mul(x,y:complex; var z:complex);
begin
  z.re := x.re * y.re - x.im * y.im;
  z.im := x.re * y.im + x.im * y.re;
end;

//функция модуля комплексного числа
function modul(x:complex):real;
begin
  modul := sqrt(sqr(x.re) + sqr(x.im))
end;

//процедура деления на число
procedure  dif(x:complex; n:integer; var z:complex);
begin
  z.re := x.re / n;
  z.im := x.im / n;
end;

//процедура печати
procedure print_complex(var x:complex);
begin
  write('cos(Z) = ', x.re:4:1);
  if x.im >= 0 then
    write(' +')
  else
    write(' -');
  write(abs(x.im):4:1, ' * i');
end;

end.
