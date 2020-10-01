program HelloWorld;
	{$APPTYPE CONSOLE}
uses
  SysUtils,
  Windows,
  UList,
  UDate in 'UDate.pas';

var
	List: TList;
begin
	Init(List);
    Add(List, '123');
    Add(List, '456');
    Add(List, '789');
    Writeln(ToString(List));
    Writeln(List.count);
    Writeln(Contains(List, '456'));
    Delete(List, '456');
    Writeln(List.count);
    Writeln(Contains(List, '456'));
    Writeln(ToString(List));
    Clear(List);
    Writeln(ToString(List));
    readln;
end.