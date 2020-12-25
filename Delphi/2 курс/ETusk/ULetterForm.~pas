unit ULetterForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, USend, ULetter;

type
  TLetterForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CheckBox: TCheckBox;
    EditSend: TEdit;
    EditGet: TEdit;
    EditDate: TEdit;
    Edittext: TEdit;
    Button: TButton;
    procedure ButtonClick(Sender: TObject);
    procedure EditDateKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    function getLetter:Tletter;
  end;

var
  LetterForm: TLetterForm;

implementation

{$R *.dfm}
function TLetterForm.getLetter:Tletter;
var ch:boolean;
begin
 if CheckBox.Checked then
    ch := true
 else
    ch := false;
 result := Tletter.create(EditSend.Text, EditGet.Text, strtoint(EditDate.Text), EditText.Text, ch);
end;

procedure TLetterForm.ButtonClick(Sender: TObject);
begin
  if ((trim(EditSend.Text) <> '') and (trim(EditGet.Text) <> '') and
    (trim(EditDate.Text) <> '')) then
    ModalResult := mrOk;
end;

procedure TLetterForm.EditDateKeyPress(Sender: TObject; var Key: Char);
begin
if not((key in ['0'..'9']) or (key = #8)) then
    key := #0;
end;

end.
