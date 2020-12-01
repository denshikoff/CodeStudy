program nummer21a;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const n = 3;
      m = 5;
type Tstr = array[1..m] of integer;
     Ttab = array[1..n] of Tstr;
     Tfunc = function(var st:Tstr):integer;
var MT:Ttab;

procedure read_mt(var mt:Ttab);
var i,j:integer;
begin
  for i := 1 to n do
    for j := 1 to m do
      read(mt[i,j]);
  readln;
end;

function max(var st:Tstr):integer;
var i:integer;
    maxm:integer;
begin
  maxm := st[1];
  for i := 2 to m do
    if st[i] > maxm
    then
      maxm := st[i];
  max := maxm;
end;

procedure make(var tab:Ttab; func:Tfunc);
var i:integer;
begin
  for i := 1 to n do
    writeln(func(tab[i]));
end;

begin
  read_mt(MT);
  make(MT,max);
  readln;
end.
 