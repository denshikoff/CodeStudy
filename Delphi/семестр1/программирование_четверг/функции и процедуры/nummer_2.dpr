program nummer_2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const maxn = 5;
type Tarray = array[1..maxn] of integer;
var A1, A2, A3:Tarray;
    n1, n2, n3, count, i:integer;
    sum_a2, pr_a3: integer;

function read_n:integer;
  var n:integer;
  begin
    repeat
      writeln('read: ');
      readln(n);
      if (n < 1) or (n > maxn)
      then
        writeln('error');
    until (n >= 1) and (n <= maxn);
    read_n := n;
  end;

procedure read_mas(var ar:Tarray; n:integer);
  var i:integer;
  begin
    for i := 1 to n do
      read(ar[i]);
    readln;
  end;

function sum(var ar:Tarray; n:integer): integer;
  var s, i : integer;
  begin
    s := 0;
    for i := 1 to n do
      s := s + ar[i];
    sum := s;
  end;

function pr(var ar:Tarray; n: integer) : integer;
  var p, i: integer;
  begin
    p:= 1;
    for i := 1 to n do
      p := p * ar[i];
    pr := p;
  end;

begin
  count:= 0;
  n1 := read_n;
  n2 := read_n;
  n3 := read_n;

  
  read_mas(A1, n1);
  read_mas(A2, n2);
  read_mas(A3, n3);

  sum_a2 := sum(A2, n2);
  pr_a3 := pr(A3, n3);
  for i := 1 to n1 do
    if (A1[i] > sum_a2) and (A1[i] mod pr_a3 = 0)
    then
    count := count + 1;

  if count <> 0
  then
    begin
    writeln(count);
    readln;
    end
  else
    begin
    writeln('No');
    readln;
    end;
end.
