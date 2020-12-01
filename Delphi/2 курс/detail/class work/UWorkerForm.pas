unit UWorkerForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,
  UWorker,
  Unit3,
  Unit4,
  UPerson;

type
  TWorkerForm = class(TForm)
    tbFIO: TEdit;
    tbAge: TEdit;
    rbMale: TRadioButton;
    rbFemale: TRadioButton;
    tbExperience: TEdit;
    tbPosition: TEdit;
    LFIO: TLabel;
    LAge: TLabel;
    LGender: TLabel;
    LExperience: TLabel;
    LPosition: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure tbAgeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    function GetWorker: TWorker;
  end;

var
  WorkerForm: TWorkerForm;

implementation

{$R *.dfm}

function TWorkerForm.GetWorker: TWorker;
var
  pol: Tpol;
begin
  if rbmale.Checked then
    pol := male
  else
    pol := female;

  Result := TWorker.Create(tbFIO.text, tbPosition.text, StrToInt(tbAge.text), StrToInt(tbExperience.text), pol);
end;

procedure TWorkerForm.Button1Click(Sender: TObject);
begin
  if (trim(tbFIO.Text) <> '') and (tbAge)
  ModalResult := mrOK;
end;

procedure TWorkerForm.tbAgeKeyPress(Sender: TObject; var Key: Char);
begin
  if not((key in ['0'..'9']) or (key = #8)) then
    key := #0
end;

end.
