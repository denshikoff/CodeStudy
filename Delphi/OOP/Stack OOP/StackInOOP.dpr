program StackInOOP;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Stack in 'Stack.pas',
  linkedStack in 'linkedStack.pas',
  ArrayStack in 'ArrayStack.pas';
var s:TStack;
begin
  s := TarrayStack.create;
  s.push('Example');
  writeln(s.toString);
  s.Destroy;
  readln;
end.
