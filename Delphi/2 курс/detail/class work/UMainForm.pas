unit UMainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Unit2,
  UWorker,
  Unit3,
  Unit4,
  UWorkerForm,
  UPerson;

type
  TMainForm = class(TForm)
    MWorkerList: TMemo;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Edit1: TMenuItem;
    Add1: TMenuItem;
    Worker1: TMenuItem;
    Student1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Add1Click(Sender: TObject);
  private
    list: Tlist;
    procedure ShowWorkers;
  public

  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
begin
  list := Tlist.Create
end;

procedure TMainForm.Add1Click(Sender: TObject);
var
  worker: TWorkerForm;
begin
  worker := TWorkerForm.Create(self);
  if worker.ShowModal = mrOK then
    list.Add(worker.GetWorker);
  ShowWorkers
end;

procedure TMainForm.ShowWorkers;
var
  a: integer;
begin
  MWorkerList.Lines.Clear;
  for a := 0 to list.count - 1 do
    begin
      MWorkerList.Lines.Add(list.Get(a).toString)
    end;
end;

end.
