
program lab7_27;

{$APPTYPE CONSOLE}
{создайте телефонный справочник, где по ФИО можно найти адрес
и номер телефона владельца
Денщиков}
uses
  SysUtils,Windows;
const count = 2;
type
{тип записи в телефонной книге}
    TrecBook = record
                FIO: string [100];
                Address: string [100];
                Phone:string[40];
              end;
{тип телефонной книги}
    TBookFile = File of TrecBook;

var bookf:TBookFile;
    books:TrecBook;
    f:textfile;
    i,n,k:integer;
    name:string;

//Вывод текущей записи на экран
  procedure print_Rec (var BookFile:TBookFile);
  var rec:TrecBook;
  begin
    read(Bookfile, rec);
    with rec do
      begin
        writeln('ФИО:',FIO);
        writeln('Адрес', Address);
        writeln('телефон:', Phone:11);
      end;
  end;


  //Чтение записи с клавиатуры
procedure read_rec_from_kb(var rec:TrecBook);
  begin
    writeln('***Ввод записи***');
    with rec do
      begin
        writeln('Введите ФИО:');
        readln(FIO);
        writeln('Введите адрес' );
        readln(Address);
        writeln('Введите номер телефона: ');
        readln(Phone);
      end;
  end;

procedure read_namef(var name:string);    //ввод названия файла
begin
  write('Введите имя файла: ');
    readln(name);
  while name = '' do
   begin
    write('Имя файла пусто! Повторите ввод: ');
    readln(name);
   end;
  while not fileexists(name) do
   begin
    write('Такого файла нет! Повторите ввод: ');
    readln(name);
   end;
end;


procedure Read_book_from_text(var ft:TextFile; var tel:TrecBook);
//Ввод данных контакта записной книги из файла
begin
  with tel do
    begin
      Readln(ft, FIO);
      Readln(ft, Address);
      Readln(ft, Phone);
    end;
end;


//считывает запись с клавиатуры и добавляет в файл
 procedure Add_Rec_from_kb(var BookFile:TBookFile);
 var rec: TrecBook;
   begin
     read_rec_from_kb(rec);
     write(BookFile, rec);
  end;

 //нахождения нужных данных из консоли
 procedure FindInPhoneBook(var Book:TBookFile);
 var fio:string[50];
     found:boolean;
     rec:TrecBook;
 begin
  writeln('Введите ФИО которые нужно найти ');
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
            writeln('Данные не найдены');
        end;
 end;

  //нахождения нужных данных из файла
procedure Print_contact_Output(var tel:TrecBook);
var s:string[40];
    OK:Boolean;
    c:char;
begin
  repeat
    OK:=False;
    Writeln('Введите ФИО');
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
      Writeln('Таких контактов нет!');
    Writeln('Повторить ввод');
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
  writeln('Выберете как будет создана телефонная книга. С помощью файла нажмите 1, вручную намжите 2');
  readln(k);
  if k = 1 then
    begin
      read_namef(name);   //чтение имени файла
      assignfile(f, name);  //связывание с файловой переменной
      reset(f);           //открытие файла для чтения
      Read_book_from_text(f,books); //процедура чтение записей из файла
      Print_contact_Output(books);  //основная задача
      readln;
    end
  else
    begin
      write('Введите количество создаваемых записей:'); readln(n);
      writeln('Создание записей файла');
      for i:=1 to n do
        Add_Rec_from_kb(BookF);
      writeln('Создание телефонной книги завершено.Нажмите Enter...');
      FindInPhoneBook(BookF);
      readln;
    end;
  readln;
end.
 