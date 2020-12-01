object MainForm: TMainForm
  Left = 1040
  Top = 233
  Width = 879
  Height = 383
  Caption = 'Our Program'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  DesignSize = (
    863
    324)
  PixelsPerInch = 96
  TextHeight = 13
  object MWorkerList: TMemo
    Left = 0
    Top = 8
    Width = 841
    Height = 273
    Anchors = [akLeft, akTop, akRight, akBottom]
    ReadOnly = True
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 232
    Top = 296
    object File1: TMenuItem
      Caption = 'File'
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
      object Add1: TMenuItem
        Caption = 'Add'
        OnClick = Add1Click
        object Worker1: TMenuItem
          Caption = 'Worker'
        end
        object Student1: TMenuItem
          Caption = 'Student'
        end
      end
    end
  end
end
