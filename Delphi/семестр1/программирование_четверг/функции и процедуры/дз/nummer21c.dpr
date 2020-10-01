program nummer21c;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const n = 3;
      m = 5;
type Tstr = array[1..m] of real;
     Tmatr =array[1..n] of Tstr;
     Tfunc = function(var st:Tstr):real;
var MT:Tmatr;

procedure read_mt(var mt:Tmatr);
var i,j:integer;
begin
  for i := 1 to n do
    for j := 1 to m do
      read(mt[i,j]);
  readln;
end;

function minus(var st:Tstr):real;
var i:integer;
    count:integer;
begin
  count := 0;
  for i := 1 to m do
    if st[i] < 0
    then
      count := count + 1;
  minus := count;
end;

procedure make(var mt:Tmatr; func:Tfunc);
var i:integer;
begin
  for i := 1 to n do
    writeln(func(mt[i]):8:3);
end;

begin
  read_mt(MT);
  make(MT,minus);
  readln;
end.
