program PostOffice;

uses
  Forms,
  UMainForm in 'UMainForm.pas' {MainForm},
  ULetterForm in 'ULetterForm.pas' {LetterForm},
  UPackageForm in 'UPackageForm.pas' {PackageForm},
  UTransferForm in 'UTransferForm.pas' {TransferForm},
  UReadDate in '..\..\OneDrive\���������\GitHub\CodeStudy\Delphi\2 ����\Computer\UReadDate.pas' {FormRead};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TLetterForm, LetterForm);
  Application.CreateForm(TPackageForm, PackageForm);
  Application.CreateForm(TTransferForm, TransferForm);
  Application.CreateForm(TFormRead, FormRead);
  Application.Run;
end.
