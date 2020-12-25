unit UReadDate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormRead = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    EditReadDate: TEdit;
    Label2: TLabel;
    EditReadName: TEdit;
    procedure EditReadDateKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    function getReadDate:integer;
    function getReadName:String;
  end;

var
  FormRead: TFormRead;

implementation

{$R *.dfm}

procedure TFormRead.EditReadDateKeyPress(Sender: TObject; var Key: Char);
begin
   if not((key in ['0'..'9']) or (key = #8)) then
    key := #0
end;

procedure TFormRead.Button1Click(Sender: TObject);
begin
  if trim(Editreaddate.Text) <> '' then
    ModalResult := mrOk;
end;
function TFormRead.getReadDate:integer;
begin
  result := strtoint(EditReadDate.Text);
end;

function TFormRead.getReadName:string;
begin
  result := EditReadName.Text;
end;
end.
