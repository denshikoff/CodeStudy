
program lab7_27;

{$APPTYPE CONSOLE}
{�������� ���������� ����������, ��� �� ��� ����� ����� �����
� ����� �������� ���������
��������}
uses
  SysUtils,Windows;
const count = 2;
type
{��� ������ � ���������� �����}
    TrecBook = record
                FIO: string [100];
                Address: string [100];
                Phone:string[40];
              end;
{��� ���������� �����}
    TBookFile = File of TrecBook;

var bookf:TBookFile;
    books:TrecBook;
    f:textfile;
    i,n,k:integer;
    name:string;

//����� ������� ������ �� �����
  procedure print_Rec (var BookFile:TBookFile);
  var rec:TrecBook;
  begin
    read(Bookfile, rec);
    with rec do
      begin
        writeln('���:',FIO);
        writeln('�����', Address);
        writeln('�������:', Phone:11);
      end;
  end;


  //������ ������ � ����������
procedure read_rec_from_kb(var rec:TrecBook);
  begin
    writeln('***���� ������***');
    with rec do
      begin
        writeln('������� ���:');
        readln(FIO);
        writeln('������� �����' );
        readln(Address);
        writeln('������� ����� ��������: ');
        readln(Phone);
      end;
  end;

procedure read_namef(var name:string);    //���� �������� �����
begin
  write('������� ��� �����: ');
    readln(name);
  while name = '' do
   begin
    write('��� ����� �����! ��������� ����: ');
    readln(name);
   end;
  while not fileexists(name) do
   begin
    write('������ ����� ���! ��������� ����: ');
    readln(name);
   end;
end;


procedure Read_book_from_text(var ft:TextFile; var tel:TrecBook);
//���� ������ �������� �������� ����� �� �����
begin
  with tel do
    begin
      Readln(ft, FIO);
      Readln(ft, Address);
      Readln(ft, Phone);
    end;
end;


//��������� ������ � ���������� � ��������� � ����
 procedure Add_Rec_from_kb(var BookFile:TBookFile);
 var rec: TrecBook;
   begin
     read_rec_from_kb(rec);
     write(BookFile, rec);
  end;

 //���������� ������ ������ �� �������
 procedure FindInPhoneBook(var Book:TBookFile);
 var fio:string[50];
     found:boolean;
     rec:TrecBook;
 begin
  writeln('������� ��� ������� ����� ����� ');
  readln(fio);
  reset(Book);
  read(Book, rec);
  found:=false;
  while (not found) and (not Eof(Book)) do
      with rec do
        begin
          if fio = FIO then
            found := true;

          if found then
            print_Rec(Book)
          else
            writeln('������ �� �������');
        end;
 end;

  //���������� ������ ������ �� �����
procedure Print_contact_Output(var tel:TrecBook);
var s:string[40];
    OK:Boolean;
    c:char;
begin
  repeat
    OK:=False;
    Writeln('������� ���');
    readln(s);
    while not Eof(f) do
      begin
        if tel.FIO = s then
          begin
            writeln(tel.Address);
            writeln(tel.Phone);
            OK:=True;
          end;
      end;
    if not OK then
      Writeln('����� ��������� ���!');
    Writeln('��������� ����');
    readln(c);
  until c = '1';
  Writeln;
  Writeln('????? ????????');
  Writeln;
  CloseFile(f);
end;








begin
  SetConsoleCP(1251);
  SetConsoleOutputCP(1251);
  assignfile(BookF, 'Phone.dat');

  rewrite(BookF);
  writeln('�������� ��� ����� ������� ���������� �����. � ������� ����� ������� 1, ������� ������� 2');
  readln(k);
  if k = 1 then
    begin
      read_namef(name);   //������ ����� �����
      assignfile(f, name);  //���������� � �������� ����������
      reset(f);           //�������� ����� ��� ������
      Read_book_from_text(f,books); //��������� ������ ������� �� �����
      Print_contact_Output(books);  //�������� ������
      readln;
    end
  else
    begin
      write('������� ���������� ����������� �������:'); readln(n);
      writeln('�������� ������� �����');
      for i:=1 to n do
        Add_Rec_from_kb(BookF);
      writeln('�������� ���������� ����� ���������.������� Enter...');
      FindInPhoneBook(BookF);
      readln;
    end;
  readln;
end.
 