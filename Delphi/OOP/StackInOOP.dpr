program StackInOOP;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Stack in 'Stack.pas',
  linkedStack in 'linkedStack.pas',
  ArrayStack in 'ArrayStack.pas',
  LinkedList in 'Computer\ULinkedList.pas',
  UDatenStruktur in 'tusk6\UDatenStruktur.pas',
  UStack in 'tusk6\UStack.pas',
  UDetal in 'Computer\UDetal.pas';

var list:LinkedList;
    i:integer;
begin
  list := LinkedList.create;  //����� ������������ � �������� �������
  for i := 1 to 10 do
    list.Add(i);
  writeln(list.ToString);
  list.destroy;
  readln;
end.
