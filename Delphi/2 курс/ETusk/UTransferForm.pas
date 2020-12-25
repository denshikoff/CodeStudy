unit UTransferForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, USend,Utransit;

type
  TTransferForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EditSend: TEdit;
    EditGet: TEdit;
    EditDate: TEdit;
    EditSum: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure EditSumKeyPress(Sender: TObject; var Key: Char);
    procedure EditDateKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    function gettransfer:Ttransfer;
  end;

var
  TransferForm: TTransferForm;

implementation

{$R *.dfm}
function TTransferForm.gettransfer:Ttransfer;
begin
  result := Ttransfer.create(EditSend.Text, EditGet.Text, strtoint(EditDate.Text), strtoint(EditSum.Text));
end;

procedure TTransferForm.Button1Click(Sender: TObject);
begin
  if ((trim(EditSend.Text) <> '') and (trim(EditGet.Text) <> '') and
    (trim(EditDate.Text) <> '')) then
    ModalResult := mrOk;
end;



procedure TTransferForm.EditSumKeyPress(Sender: TObject; var Key: Char);
begin
if not((key in ['0'..'9']) or (key = #8)) then
    key := #0;
end;

procedure TTransferForm.EditDateKeyPress(Sender: TObject; var Key: Char);
begin
if not((key in ['0'..'9']) or (key = #8)) then
    key := #0;
end;

end.
