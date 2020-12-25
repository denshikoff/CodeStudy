unit UPackageForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Usend, Upackage;

type
  TPackageForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EditSend: TEdit;
    EditGet: TEdit;
    EditDate: TEdit;
    EditWeight: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure EditDateKeyPress(Sender: TObject; var Key: Char);
    procedure EditWeightKeyPress(Sender: TObject; var Key: Char);
  private

  public
   function getPackage:Tpackage;
  end;

var
  PackageForm: TPackageForm;

implementation

{$R *.dfm}
function TPackageForm.getPackage:Tpackage;

begin
  result := Tpackage.create(EditSend.Text, EditGet.Text, strtoint(EditDate.Text), strtoint(EditWeight.text));
end;

procedure TPackageForm.Button1Click(Sender: TObject);
begin
  if ((trim(EditSend.Text) <> '') and (trim(EditGet.Text) <> '') and
    (trim(EditDate.Text) <> '')) then
    ModalResult := mrOk;
end;

procedure TPackageForm.EditDateKeyPress(Sender: TObject; var Key: Char);
begin
if not((key in ['0'..'9']) or (key = #8)) then
    key := #0;
end;

procedure TPackageForm.EditWeightKeyPress(Sender: TObject; var Key: Char);
begin
if not((key in ['0'..'9']) or (key = #8)) then
    key := #0;
end;

end.
