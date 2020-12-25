unit UMainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ULinkedList, UReadDate, Menus, StdCtrls, USend, Utransit, UTransferForm, UPackageForm, UPackage, ULetter, UletterForm;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    Edit: TMenuItem;
    Add: TMenuItem;
    Letter: TMenuItem;
    Package: TMenuItem;
    Transfer: TMenuItem;
    View: TMenuItem;
    Find: TMenuItem;
    ListSend: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure LetterClick(Sender: TObject);
    procedure ShowSend;
    procedure PackageClick(Sender: TObject);
    procedure TransferClick(Sender: TObject);
    procedure FindClick(Sender: TObject);
    procedure ViewClick(Sender: TObject);
  private
    list:Tlist;
  public
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

  procedure TMainForm.FormCreate(Sender: TObject);
  begin
   list := Tlist.create;
  end;

  procedure TMainForm.LetterClick(Sender: TObject);
  var letterSend:TLetterForm;
  begin
    letterSend := TLetterForm.Create(self);
    if letterSend.ShowModal = mrOk then
      list.Add(letterSend.getLetter);
    ShowSend;
  end;

  procedure TMainForm.ShowSend;
  var i:integer;
  begin
    ListSend.Lines.Clear;
    for i := 0 to list.count - 1 do
      ListSend.Lines.Add(list.get(i).toString);
  end;

  procedure TMainForm.PackageClick(Sender: TObject);
  var PackageSend:TPackageForm;
  begin
    PackageSend := TPackageForm.Create(self);
    if PackageSend.ShowModal = mrOk then
      list.Add(PackageSend.getPackage);
    ShowSend;
  end;


  procedure TMainForm.TransferClick(Sender: TObject);
  var TransferSend:TTransferForm;
  begin
   TransferSend := TTransferForm.Create(self);
   if TransferSend.ShowModal = mrOk then
      list.Add(TransferSend.getTransfer);
   ShowSend;
  end;

procedure TMainForm.FindClick(Sender: TObject);
var readDate:TFormRead;
    checkDate,i, countSend:integer;
    checkName:string;
begin
  countSend := 0;
  readDate := TFormRead.Create(self);
  ListSend.Lines.Clear;
  if readDate.ShowModal = mrOk then begin
    checkDate := readDate.getReadDate;
    checkName := readDate.getReadName;
  for i := 0 to list.count-1 do
    begin
      if (list.Get(i).nameSend = checkName) and (list.Get(i).date = checkDate) then
        inc(countSend);
    end;
  ListSend.Lines.Add('Количество переводов равно ' + inttostr(countSend));
end;
end;
procedure TMainForm.ViewClick(Sender: TObject);
begin
  ShowSend;
end;

end.


