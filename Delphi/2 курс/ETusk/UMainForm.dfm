object MainForm: TMainForm
  Left = 705
  Top = 196
  Width = 458
  Height = 320
  Caption = #1055#1086#1095#1090#1072' '#1056#1086#1089#1089#1080#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    442
    261)
  PixelsPerInch = 96
  TextHeight = 13
  object ListSend: TMemo
    Left = 0
    Top = 8
    Width = 441
    Height = 255
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 248
    Top = 48
    object Edit: TMenuItem
      Caption = 'Edit'
      object Add: TMenuItem
        Caption = 'Add'
        object Letter: TMenuItem
          Caption = 'Letter'
          OnClick = LetterClick
        end
        object Package: TMenuItem
          Caption = 'Package'
          OnClick = PackageClick
        end
        object Transfer: TMenuItem
          Caption = 'Transfer'
          OnClick = TransferClick
        end
      end
    end
    object View: TMenuItem
      Caption = 'View'
      OnClick = ViewClick
    end
    object Find: TMenuItem
      Caption = 'Find'
      OnClick = FindClick
    end
  end
end
