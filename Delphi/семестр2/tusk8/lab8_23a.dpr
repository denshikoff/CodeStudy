program lab8_23a;  {��������� � ������������� ��������������
����� ����������� � ���� ������, ������ ���� � = 0 �� ����� � ������ �� �����������
�������� �������, ������� ��������� �������� ���������� � ����� x}


{$APPTYPE CONSOLE}

uses
  SysUtils,
  windows, math;
type

  Tinf = record
          index:integer;
          number:real;
         end;

  Tptr = ^Tlist;

  Tlist = record
            inf:Tinf;
            next:Tptr;
          end;

var head:Tptr;
    n:integer;
    res,x:real;

{���������� ������}
procedure create_list(var h:Tptr; var n:integer);
var p,q:Tptr;
begin
  h := nil;
  while n >= 0 do   //��������� �������������
      begin
        New(p);
        writeln('������� ����� ');
        readln(p^.inf.number);
        if h = nil  then
          begin
            h := p;
            p^.inf.index := n;
          end
        else
          begin
            p^.inf.index := n;
            q^.next := p;
          end;
        dec(n);
        if p^.inf.number <> 0 then
          q:=p;
      end;
  q^.next:=nil;
end;


{�������� �������}
function value(h:Tptr; var x:real):real;
var sum:real;
begin
  sum := 0;
  while h <> nil do
    begin
      sum := sum + h^.inf.number * power(x,h^.inf.index);
      h := h^.next;
    end;
  value := sum;
end;


{�������� ��������}
procedure kill_list(var h:Tptr);
var p:Tptr;
  begin
    while h<>nil do
      begin
        p:=h;
        h:=h^.next;
        dispose(p);
      end;
  end;

{������ ������}
procedure print_list(h:Tptr);
begin
  writeln;
  write(h^.inf.number:2:1, '*', 'x^', h^.inf.index, ' + ');
  repeat
    begin
      write(h^.inf.number:2:1, '*', 'x^', h^.inf.index);
      if h
      h:=h^.next;

    end;
  until h = nil ;
  writeln;
end;

begin
  SetConsoleCP(1251);
  SetConsoleOutputCP(1251);
  n := 0;
  writeln('������� ����������� n ');
  readln(n);
  create_list(head,n);
  print_list(head);
  writeln('������� x');
  readln(x);
  res := value(head,x);
  writeln('���������: ', res:2:1);
  kill_list(head);
  readln;
end.
