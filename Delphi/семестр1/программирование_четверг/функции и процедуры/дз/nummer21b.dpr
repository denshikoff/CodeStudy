program nummer21b;

{$APPTYPE CONSOLE}

uses
  SysUtils;
const n = 3;
      m = 5;
type Tstr=array[1..m] of real;
     Tmatr=array[1..n] of Tstr;
     Tfunc = function(var st:Tstr):real;
var MT:Tmatr;

procedure read_mt(var MT:Tmatr);
var i,j:integer;
begin
  for i := 1 to n do
    for j := 1 to m do
      read(MT[i,j]);
  readln;
end;

function max(var st:Tstr):real;
var maxm:real;
    i:integer;
begin
  maxm := st[1];
  for i := 2 to m do
    if maxm < st[i]
    then
      maxm := st[i];
  max := maxm;
end;

function min(var st:Tstr):real;
var i:integer;
    minm:real;
begin
  minm := st[1];
  for i := 2 to m do
    if st[i] < minm
    then
      minm := st[i];
  min := minm;
end;

procedure make(var mt:Tmatr; func1:Tfunc; func2:Tfunc);
var i:integer;
    s:real;
begin
  s := 0;
  for i := 1 to n do
    begin
      s := s + func1(mt[i]) + func2(mt[i]);
      writeln(s:8:3);
      s := 0;
    end;
  readln;
end;

begin
  read_mt(MT);
  make(MT,max,min);
end.
