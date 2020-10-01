program six;
{Создайте файл Телефонный справочник. Найдите по ФИО номера телефонов и адреса абонентов
 Сычев В.К.}

{$APPTYPE CONSOLE}

uses
  SysUtils, Windows;

type
  Tadress=record
            street:string[20];
            house:string[4];
            number:string[3];
          end;

  Ttel=record
         fio:string[40];
         adress:Tadress;
         Telephone:string[6];
       end;
  Tfile=file of Ttel;

var  namef:string;


procedure Open_Write_Catalog(var g:Tfile);
//Проверка файла для записи записной книги
var name:string;
    ok:Boolean;
    y:Integer;
begin
  repeat
    Writeln('Введите путь к файлу в который нужно записать записную книгу');
    Readln(name);
    ok:=FileExists(name);
    if not ok then
      begin
        writeln('Файла нет на диске. Введите 1 если хотите создать его, введите любую другую цифру если хотите ввести другой путь');
        Readln(y);
        if y=1 then ok:=True;
      end
    else
      begin
        Writeln('Этот файл уже существует. Введите 1 если хотите перезаписать его, введите любую другую цифру если хотите ввести другой путь');
        Readln(y);
        if y<>1 then
          ok:=false;
      end;
  until ok;
  AssignFile(g, name);
  Rewrite(g);
end;


procedure Open_TextFile(var f:TextFile);
//Проверка текстового файла для записи в записную книгу
var name: string; ok:Boolean;
begin
  repeat
    Writeln('Введите путь к файлу с которого нужно считать записную книгу');
    Readln(name);
    ok:=FileExists(name);
    if not ok then
      writeln('Файла нет на диске, повторите ввод')
  until ok;
  AssignFile(f, name);
  Reset(f);
end;


procedure Open_TextFile_rewrite(var tf:TextFile);
//Открытие текстового файла для записи
var name: string; OK: Boolean;

begin
  Writeln('Введите путь к файлу, в который нужно записать записную книгу или контакт');
  Readln(name);
  ok:=FileExists(name);
  if not ok then
    writeln('Создан новый файл');
  AssignFile(tf, name);
  Rewrite(tf);
end;


procedure Read_book_from_KB(var tel:Ttel);
//Ввод данных контакта записной книги с клавиатуры

begin
  with tel do
    begin
      Writeln('Введите ФИО');
      Readln(fio);
      with adress do
        begin
          Writeln('Введите название улицы');
          Readln(street);
          Writeln('Введите номер дома');
          Readln(house);
          Writeln('Введите номер квартиры');
          Readln(number);
        end;
      Writeln('Введите номер телефона');
      Readln(Telephone);
      Writeln('Ввод данных завершен');
    end;
end;


procedure Read_book_from_text(var ft:TextFile; var tel:Ttel);
//Ввод данных контакта записной книги из файла

begin
  with tel do
    begin
      Readln(ft, fio);
      with adress do
        begin
          Readln(ft, street);
          Readln(ft, house);
          Readln(ft, number);
        end;
      Readln(ft, Telephone);
    end;
end;


procedure Open_Catalog(var f:Tfile);
//Открытие записной книги
var ok:Boolean;

begin
  repeat
    Writeln('Введите путь к записной книге');
    Readln(namef);
    ok:=FileExists(namef);
    if not ok then
      writeln('Файла нет на диске, повторите ввод')
  until ok;
  AssignFile(f, namef);
  Reset(f);
end;


procedure Print_rec(var f:TextFile; var tel:Ttel);
//Печать данных контакта записной книги

begin
  with tel do
    begin
      writeln(f);
      Writeln(f, fio);
      Writeln(f, Telephone);
      with adress do
        begin
          Write(f, street,' ');
          Write(f, house,' ');
          Writeln(f, number);
        end;
      Writeln(f);
    end;
  writeln(f);
end;


procedure Delete_record(var f:Tfile; n:Integer);
//Удаление записи
var i:integer;
    tel:Ttel;

begin
  If n=FileSize(f) then
    begin
      Seek(f, filesize(f)-1);
      Truncate(f);
    end
  else
    begin
      Seek(f, filesize(f)-1);
      read(f, tel);
      Seek(f, n-1);
      write(f, tel);
      Seek(f, filesize(f)-1);
      Truncate(f);
    end;
end;


procedure Open_Write_TextFile(var g:TextFile);
//Проверка текстового файла для вывода результата
var name: string; ok:Boolean; y:Integer;

begin
  repeat
    Writeln('Введите путь к файлу в который нужно записать данные');
    Readln(name);
    ok:=FileExists(name);
    if not ok
    then
      begin
        writeln('Файла нет на диске. Введите 1 если хотите создать его, введите любую другую цифру если хотите ввести другой путь');
        Readln(y);
        if y=1 then ok:=True;
      end
    else
      begin
        Writeln('Этот файл уже существует. Введите 1 если хотите перезаписать его, введите любую другую цифру если хотите ввести другой путь');
        Readln(y);
        if y<>1 then ok:=false;
      end;
  until ok;
  AssignFile(g, name);
  Rewrite(g);
end;


procedure Create_File_From_KB;
//Создание записной книги с клавиатуры
var c: char; tel:TTel; f:Tfile;

begin
  Open_Write_Catalog(f);
  repeat
    Writeln('Введите данные записной книги:');
    Writeln;
    Read_Book_From_KB(tel);
    write(f, tel);
    Writeln('Ввести еще? 1 - нет');
    Readln(c);
  until c = '1';
  CloseFile(f);
  Writeln;
  Writeln('Записная книга записана');
  Writeln;
end;


procedure Create_File_From_Text;
//Создание записной книги из текстового файла
var ft:TextFile; tel:TTel; f:Tfile;

begin
  Open_Write_Catalog(f);
  Open_TextFile(ft);
  while not Eof(ft) do
    begin
        Read_Book_From_Text(ft, tel);
        if not Eof(ft)
        then Readln(ft);
        write(f, tel);
    end;
  CloseFile(f);
  CloseFile(ft);
  Writeln;
  Writeln('Записная книга записана');
  Writeln;
end;



procedure View_File;
//Просмотр файла
var f:Tfile; tel: TTel;

begin
  Open_Catalog(f);
  while not Eof(f) do
    begin
        read(f, tel);
        Print_Rec(Output, tel);
    end;
  CloseFile(f)
end;


function Edit_Rec(title:string; g:LongInt):integer;
//Проверка наличия контакта в файле
var n:Integer;

begin
  repeat
      Writeln(title);
      readln(n);
      if not (n in [0..g]) then Writeln('Ошибка. повторите ввод');
  until n in [0..g];
  Result:=n;
end;


procedure Upgrade_Book;
//Изменение контакта записной книги
var  f:tfile; tel: ttel; n,g: LongInt; c:char;

begin
  AssignFile(f, namef);
  Reset(f);
  g:=FileSize(F);
  repeat
    n:=Edit_Rec('Введите номер контакта, который хотите изменить', g);
    Writeln('Старый контакт');
    Seek(f,n-1);
    read(f,tel);
    Print_Rec(output, tel);
    Writeln('Введите новый контакт');
    Read_Book_From_KB(tel);
    Seek(f,n-1);
    write(f, tel);
    Writeln('Изменить ещё? 1 - нет');
    readln(c);

  until c = '1';
  Writeln;
  Writeln('Изменение завершено');
  Writeln;
  CloseFile(f);
end;


procedure Delete_Book;
//Удаление контакта записной книги
var f:Tfile; n,g:LongInt; tel:ttel; c:Char;

begin
  AssignFile(f, namef);
  Reset(f);
  g:=FileSize(F);
  repeat
    n:=Edit_Rec('Введите номер контакта, который хотите удалить',g);
    Writeln('Удалить этот контакт? 1 - да');
    Seek(f,n-1);
    read(f,tel);
    Print_Rec(output, tel);
    readln(c);
    if c = '1'
    then Delete_record(f,n);
    Writeln('Удалить еще? 1 - нет');
    readln(c);
  until c = '1';
  Writeln;
  Writeln('Удаление завершено');
  Writeln;
  CloseFile(f);
end;


procedure Add_Book_From_KB;
//Добавление контактов с клавиатуры
var f:Tfile; tel:TTel; c:Char;

begin
  AssignFile(f, namef);
  Reset(f);
  Seek(f, FileSize(f));
  repeat
      Read_Book_From_KB(tel);
      write(f, tel);
      Writeln('Ввести ещё? 1 - нет');
      Readln(c);
  until c = '1';
  CloseFile(f);
  Writeln;
  Writeln('Добавление завершено');
  Writeln;
end;


procedure Print_contact_Output;
//Вывод определенных контактов на экран
var f:Tfile;
    tel:Ttel;
    s:string[40];
    OK:Boolean;
    c:char;

begin
  AssignFile(f, namef);
  Reset(f);
  repeat
    Seek(f,0);
    OK:=False;
    Writeln('Введите ФИО');
    readln(s);
    while not Eof(f) do
      begin
        read(f,tel);
        if tel.fio = s
        then
          begin
            Print_Rec(Output, tel);
            OK:=True;
          end;
      end;
    if not OK then Writeln('Таких контактов нет');
    Writeln('Вывести еще? 1 - нет');
    readln(c);
  until c = '1';
  Writeln;
  Writeln('Вывод завершен');
  Writeln;
  CloseFile(f);
end;


procedure Print_Contact_to_file;
//Печать определенных контактов в файл
var f:Tfile; s:string; tel:Ttel; tf:TextFile; OK:Boolean; c:Char;

begin
  AssignFile(f, namef);
  Reset(f);
  Open_textfile_rewrite(tf);
  repeat
    Seek(f,0);
    OK:=False;
    Writeln('Введите ФИО');
    readln(s);
    while not Eof(f) do
      begin
        read(f,tel);
        if tel.fio = s
        then
          begin
            Print_Rec(tf, tel);
            OK:=True;
          end;
      end;
    if not OK then Writeln('Таких контактов нет');
    Writeln('Вывести еще? 1 - нет');
    readln(c);
  until c = '1';
  Writeln;
  Writeln('Вывод завершен');
  Writeln;
  CloseFile(f);
  Closefile(tf);
end;


procedure Print_all_book_to_file;
//Печать телефонной книги в файл
var f:Tfile;
    tel:Ttel;
    tf:TextFile;

begin
  AssignFile(f, namef);
  Reset(f);
  Open_TextFile_rewrite(tf);
  while not Eof(f) do
  begin
    read(f,tel);
    Print_Rec(tf, tel);
  end;
  Writeln;
  Writeln('Вывод завершен');
  Writeln;
  CloseFile(f);
  CloseFile(tf);
end;


procedure Add_book_from_txt;
//Добавление контактов из файла
var f:Tfile; ft:TextFile; tel: Ttel;
begin
  AssignFile(f, namef);
  reset(f);
  Seek(f, FileSize(f));
  Open_TextFile(ft);
  while not Eof(ft) do
    begin
        Read_book_from_text(ft, tel);
        if not Eof(ft) then
          Readln(ft);
        write(f, tel);
    end;
  CloseFile(f);
  CloseFile(ft);
  Writeln;
  Writeln('Добавление завершено');
  Writeln;
end;


procedure Menu;
var c:integer; ok:boolean;
begin
  OK:=false;
  repeat
    begin
      Writeln('Нажмите:');
      Writeln('1 - создать записную книгу с клавиатуры');
      Writeln('2 - создать записную книгу из файла');
      Writeln('3 - открыть записную книга');
      Writeln('0 - выход');
      Readln(c);
      case c of
        1: create_file_from_KB;
        2: create_file_from_text;
        3:  begin
                View_File;
                OK:=True;
            end;
      else
        Writeln('Работа завершена');
      end;
    end;
  until OK or (not(c in [1..3]));

  if OK
  then
    begin
      repeat
        Writeln('Нажмите:');
        Writeln('1 - создать записную книгу с клавиатуры');
        Writeln('2 - создать записную книгу из файла');
        Writeln('3 - открыть записную книгу');
        Writeln('4 - изменить контакт записной книги');
        Writeln('5 - удалить контакт записной книги');
        Writeln('6 - добавить контакты с клавиатуры');
        Writeln('7 - вывести записную книгу в файл');
        Writeln('8 - вывести определенный контакт на экран');
        Writeln('9 - вывести определенный контакт в файл');
        Writeln('10 - считать контакты из текстового файла');
        Writeln('0 - Выход');
        Readln(c);
        case c of
          1: create_file_from_KB;
          2: create_file_from_text;
          3: View_file;
          4: Upgrade_book;
          5: Delete_book;
          6: Add_book_from_KB;
          7: Print_all_book_to_file;
          8: Print_contact_Output;
          9: Print_Contact_to_file;
          10: Add_book_from_txt
        else
          Writeln('Работа завершена');
        end;
      until not(c in [1..10]);
    end;
end;

begin
  SetConsoleCP(1251);
  SetConsoleOutputCP(1251);
  Menu;
  readln
end.
