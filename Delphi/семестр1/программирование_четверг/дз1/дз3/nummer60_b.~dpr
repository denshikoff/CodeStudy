program nummer60_b;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
    m = 10;

var
    arr: array[1..m] of integer;
    i, j, k: integer;

 
begin
    randomize;
 
    write ('read m ');
    for i := 1 to m do begin
        arr[i] := random(256);
        write (arr[i]:4);
    end;
    writeln; writeln;
 
 
    for i := 1 to m-1 do
        for j := 1 to m-i do
            if arr[j] > arr[j+1] then begin
                k := arr[j];
                arr[j] := arr[j+1];
                arr[j+1] := k
            end;
 
    write ('write ');
    for i := 1 to m do
        write (arr[i]:4);
 
    writeln;
 
readln
end.

 