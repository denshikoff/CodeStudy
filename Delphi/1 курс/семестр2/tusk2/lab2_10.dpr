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
  while i<=length(Str1) do    //��� �� ������ ������
    begin
      if Copy(str1,i,length(Str2)) = Str2 then  //���������, ���� �� str2 � str1
        begin
         inc(result);
         i := i + length(Str2);   //���������� �� ����� str2
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
  while i<length(str1) do         //��� �� str1
    begin
      ok:=true;
      j := 1;
      while (j<=length(str2))and ok do     //�������� �� ���������� �����
        if str1[i+j]<>str2[j] then
        ok:=false
        else
          inc(j);

      if ok then
        begin
          inc(k);
          i:=i + length(str2);  //���������� �� ����� str2
        end
      else
        inc(i);
   end;
  count:=k;
 end;

begin
  SetConsoleCP(1251);
  SetConsoleOutputCP(1251);
  writeln('������� ������ ������:');
  readln(str1);
  writeln('������� ������ ������:');
  readln(str2);
  writeln(count_f(str1,str2));
  writeln(count(str1,str2));
  readln;
end.
