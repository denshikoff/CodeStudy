program nummer21d;

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

function pr(var st:Tstr):real;
var i:integer;
    pros:real;
begin
  pros := 1;
  for i := 1 to m do
    if (abs(st[i]) >= 1) and (abs(st[i]) <= 1.5)
    then
      pros := pros * sqr(st[i]);
  pr := pros;
end;

procedure make(var mt:Tmatr; func:Tfunc);
var i:integer;
begin
  for i := 1 to n do
    writeln(func(mt[i]):8:3);
end;

begin
  read_mt(MT);
  make(MT,pr);
  readln;
end.
