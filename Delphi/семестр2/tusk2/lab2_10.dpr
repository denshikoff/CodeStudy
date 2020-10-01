program lab2_10;

{$APPTYPE CONSOLE}
{R+}
uses
  SysUtils,
  Windows;

var
  str1,str2:String;

function count_f(str1, str2 : string ) : integer;
var
  i: integer;
begin
  result := 0;
  i := 1;
  while i<=length(Str1) do    //идЄм по первой строке
    begin
      if Copy(str1,i,length(Str2)) = Str2 then  //провер€ем, есть ли str2 в str1
        begin
         inc(result);
         i := i + length(Str2);   //сдвигаемс€ на длину str2
        end
      else i := i + 1;
    end;
end;

function count(str1,str2:string):integer;
 var
  i,j:integer;
  ok:boolean;
  k:integer;
 begin
  i:=0;
  k:=0;
  while i<length(str1) do         //идЄм по str1
    begin
      ok:=true;
      j := 1;
      while (j<=length(str2))and ok do     //проверка на совпадение строк
        if str1[i+j]<>str2[j] then
        ok:=false
        else
          inc(j);

      if ok then
        begin
          inc(k);
          i:=i + length(str2);  //сдвигаемс€ на длину str2
        end
      else
        inc(i);
   end;
  count:=k;
 end;

begin
  SetConsoleCP(1251);
  SetConsoleOutputCP(1251);
  writeln('¬ведите первую строку:');
  readln(str1);
  writeln('¬ведите вторую строку:');
  readln(str2);
  writeln(count_f(str1,str2));
  writeln(count(str1,str2));
  readln;
end.
