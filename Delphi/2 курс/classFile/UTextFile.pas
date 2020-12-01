unit UTextFile;

interface
uses UFile, SysUtils;
  type
    FileText = class(Tfile)
      private
        fText:textfile;
      public
        constructor Create;
        procedure openFileRead; override;
        procedure openFileWrite; override;
        destructor Destroy; override;
    end;
implementation
constructor FileText.Create;
begin
  inherited Create;
end;

destructor FileText.Destroy;
begin
 CloseFile(fText);
 inherited Create;
end;

procedure FileText.openFileRead;
var name: string; ok:Boolean;
begin
  repeat
    writeln('Read filename for reset');
    Readln(name);
    ok:=FileExists(name);
    if not ok then
      writeln('Error, File not found! Repeat.')
  until ok;
  AssignFile(fText, name);
  Reset(fText);
end;

procedure FileText.openFileWrite;
var name: string; OK: Boolean;
begin
  Writeln('Read filename for rewrite');
  Readln(name);
  ok:=FileExists(name);
  if not ok then
    writeln('A new file was created here');

  AssignFile(fText, name);
  Rewrite(fText);
end;
end.
