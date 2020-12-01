unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UConverter, UnitRus, UnitEN, StdCtrls;

type
  TFormMain = class(TForm)
    edtDigit: TEdit;
    edtText: TEdit;
    btnConvert: TButton;
    rbRussian: TRadioButton;
    rbEnglish: TRadioButton;
    btnConvertBack: TButton;
    ButtonClear: TButton;
    procedure btnConvertClick(Sender: TObject);
    procedure btnConvertBackClick(Sender: TObject);
    procedure MyIdle(sender: TObject; var Done: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure ButtonClearClick(Sender: TObject);
  private
    converter:Tconverter;  { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}
// Обработчик простоя программы (когда ничего не выполняется)
// Этот метод хорошо использовать для изменения доступности компонентов
// так как он отрабатывает практически постоянно.
procedure TFormMain.MyIdle(sender: TObject; var Done: Boolean);
begin
  Done:=True;
  btnConvert.Enabled := Length(Trim(edtDigit.Text)) > 0;
  btnConvertBack.Enabled := Length(Trim(edtText.Text)) > 0 ;
  // А эта логика позволяет в "Реальном" времени поменять используемый конверт
  // Здесь используется принцип полиморфизма. Так как все наши конвертеры являются
  // наследниками TConverter, то нашему полю converter мы можем присвоить любого наследника.
  // Благодаря этому, в остальных местах мы можем не думать о том, какой конвертер у нас выбран.
   if rbRussian.Checked
    then
      begin
        if (converter = nil) or (converter is TconvecterEN) then
          begin
            if (converter <> nil) then converter.Destroy;
             converter := TconvecterRU.Create()
          end;
      end

    else
    if (converter = nil) or (converter is TconvecterRU) then
          begin
            if (converter <> nil) then converter.Destroy;
            converter := TconvecterEN.Create()
          end;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
   // Добавляем обработчик события Idle - простоя программы
  Application.OnIdle:=MyIdle;
end;

procedure TFormMain.btnConvertClick(Sender: TObject);
begin
  // О чем и говорилось выше. Просто вызываем метод для конвертации (не задумываясь о языке)
  edtText.Text := converter.NumberTextTo(StrToInt(edtDigit.Text));
end;

procedure TFormMain.btnConvertBackClick(Sender: TObject);
begin
  // О чем и говорилось выше. Просто вызываем метод для конвертации (не задумываясь о языке)
  edtDigit.Text := IntToStr(converter.TextToNumber(edtText.Text));
end;

procedure TFormMain.ButtonClearClick(Sender: TObject);
begin
  edtDigit.Text := '';
  edtText.Text := '';
end;

end.
