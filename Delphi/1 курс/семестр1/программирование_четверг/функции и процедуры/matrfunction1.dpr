program matrfunction1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const n = 3; //������
      m = 5;   //�������
type Tmatr = array[1..n,1..m] of integer;
var A:Tmatr;
    i, count:integer;

//���� �������
procedure read_matr(var MT: Tmatr);
var i,j:integer;
begin
  for i := 1 to n do
    for j := 1 to m do
      read(MT[i, j]);
    readln;
end;

//�������� ��� ����� ������� ������� 
function progress(var MT:Tmatr; nst:integer): boolean;
var r,j:integer;
    OK: boolean;
begin
  r := MT[nst,2] - MT[nst,1];
  OK := true;
  j := 3;
  while OK and (j <= m) do
    if MT[nst,j+1] - MT[nst, j] = r
    then
      j := j + 1
    else
      OK := false;
  progress := OK;
end;

begin
  count := 0;
  read_matr(A);

  for i := 1 to n do
    if progress(A, i)
    then
      count := count + 1;
  writeln(count);
  readln;
end.
 