program Test_tusk;
{��������� ������������ ����������� ������ 3-� ����� � ���������.}
{$APPTYPE CONSOLE}

uses
  SysUtils, UStack, Windows;
const
  open = ['(', '[', '{'];
  close = [')', ']', '}'];


var
  S : String;
  Res : Integer;
 
//��� ����������� ������ ���������� ��������������� ����������� ������.
function GetOpen(const aCh : Char) : Char;
begin
  GetOpen := #0;
  case aCh of
    ')' : GetOpen := '(';
    ']' : GetOpen := '[';
    '}' : GetOpen := '{';
  else
    Writeln('function GetOpen. ������.');
  end;
end;


//������������ ������ �� ������� ��������������� ������.
function ParsePh(const aStr : String) : Integer;
var
  Stack : TStack;
  i, Res : Integer;
  Ch : Char;
begin
  //�������������� ����.
  Stack.top := 0;

  Res := 0;
  for i := 1 to Length(aStr) do
    if aStr[i] in open then begin
      //����� ����������� ������ - ��������� � � ����
      if not PushStack(Stack, aStr[i]) then begin
        //-2 ������������ �����
        Res := -2;
        Break;
      end;
    end else if aStr[i] in close then begin;
      //����� ���������� ������ - ���� ������� �� ������� �����.
      if PopStack(Stack, Ch) and then begin
        //���� �� ����
        if Ch <> GetOpen(aStr[i]) then begin
          {������ �� ������� ����� ������ �� ������������� ������� ����������� ������.
          ��������������� ��������.
          (Res > 0) - ��������� �����������, Res ����� ������� ������� (������) �� �������
          ��������� ��������� ��������������� ������. }
          Res := i;
          Break;
        end;
      end else begin
          {���� ����. ������ ��� ������������ ��� ������� ����������� ������.
          ��������������� ��������.
          (Res > 0) - ��������� �����������, Res ����� ������� ������� (������) �� �������
          ��������� ��������� ��������������� ������.     }
        Res := i;
        Break;
      end;
    end;

   //���� ���� ���� - ������ �����������. ����� - �� �����������.
   //-1 - �� ������� ����������� ������.
  if (res = 0)and (PopStack(Stack, Ch)) then Res := -1;
 
  ParsePh := Res;
end;


begin
  SetConsoleCP(1251);
  SetConsoleOutputCp(1251);
  repeat
    Writeln('������� ������:');
    Readln(S);
 
    Res := ParsePh(S);
    case Res of
      -2 : Writeln('������!������������ �����.');
      -1 : Writeln('�� ������� ������������� ������.');
      0  : Writeln('������ �����������.');
      else
        Writeln('�������� �������������');
    end;

    Writeln('��������� - Enter, ����� ����� ������ ������ + Enter.');
    Readln(S);
  until S <> '';
end.
