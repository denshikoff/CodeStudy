unit UMain;

interface
//��������� �������� �� ������ ����������������
uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ExtCtrls, ComCtrls, QDialogs, Grids, UNodeTree, Utree;

type
  TMainForm = class(TForm)
    rgAction: TRadioGroup;
    ButtonDoAction: TButton;
    ButtonClose: TButton;
    TreeView: TTreeView;
    SpinEdit: TSpinEdit;
    LabelElement: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure rgActionClick(Sender: TObject);
    procedure ButtonCloseClick(Sender: TObject);
    procedure ButtonDoActionClick(Sender: TObject);
  private
    Tree:TTree;
  public
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tree.Destroy;
end;

//��� ���� ������� ����� ���� ����� �����
procedure TMainForm.rgActionClick(Sender: TObject);
begin
  SpinEdit.Visible:=rgAction.ItemIndex in [1..3];
  LabelElement.Visible := SpinEdit.Visible;
end;

//������������� ������ ��� �������� �����
procedure TMainForm.FormCreate(Sender: TObject);
begin
  Randomize;
  SpinEdit.MinValue := MinElem;
  SpinEdit.MaxValue := MaxElem;
  Tree := TTree.Create;
  rgActionClick(sender);
end;

procedure TMainForm.ButtonCloseClick(Sender: TObject);
begin
  Close;
end;

//������ � ������������� ��� ������� ������ "���������"
procedure TMainForm.ButtonDoActionClick(Sender: TObject);
var N:integer;
begin
  n := 10;
  case rgAction.ItemIndex of
  0: if InputQuery('��������� ������', '������� ���������� ���������', n) then
        tree.Random(n);
  1:Tree.Add(StrToInt(SpinEdit.Text));
  2:if tree.Find(strtoint(SpinEdit.text)) then
      ShowMessage('������� ������')
    else
      ShowMessage('������� �� ������');
  3: if not Tree.Delete(strtoint(SpinEdit.Text))then
      ShowMessage('������� �� ������');
  4: tree.Clear;
  //�������� ������
  5: ShowMessage('����� ��������� ����� '+inttostr(tree.SumInfix));
  end;
  tree.Show(TreeView);
end;
end.
