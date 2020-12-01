unit UTypeFile;

interface
uses UType, UFile, SysUtils;
  type
    TypeFile = class(Tfile)
      private
        fType:file of TfileType;
      public
        procedure openFileRead; override;
        procedure openFileWrite; override;
        destructor Destroy; override;
    end;
implementation
destructor TypeFile.Destroy;
begin
  CloseFile(fType);
  inherited Destroy;
end;

procedure TypeFile.openFileRead;
var ok:Boolean; nameF:String;
begin
  repeat
    Writeln('Enter the path to the file');
    Readln(namef);
    ok:=FileExists(namef);
    if not ok then
      writeln('The file is not on disk, please repeat')
  until ok;
  AssignFile(fType, namef);
  Reset(fType);
end;

procedure TypeFile.openFileWrite;
var name:string;
    ok:Boolean;
    y:Integer;
begin
  repeat
    Writeln('Read file name');
    Readln(name);
    ok:=FileExists(name);
    if not ok then
      begin
        writeln('The file is not on disk. Enter 1 if you want to create it, enter any other number if you want to enter a different path');
        Readln(y);
        if y=1 then ok:=True;
      end
    else
      begin
        Writeln('This file already exists. Enter 1 if you want to overwrite it, enter any other number if you want to enter a different path');
        Readln(y);
        if y<>1 then
          ok:=false;
      end;
  until ok;
  AssignFile(fType, name);
  Rewrite(fType);
end;
end.
