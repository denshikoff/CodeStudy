object PackageForm: TPackageForm
  Left = 786
  Top = 187
  Width = 314
  Height = 297
  Caption = #1055#1086#1089#1099#1083#1082#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 66
    Height = 13
    Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100
  end
  object Label2: TLabel
    Left = 24
    Top = 104
    Width = 59
    Height = 13
    Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100
  end
  object Label3: TLabel
    Left = 32
    Top = 160
    Width = 26
    Height = 13
    Caption = #1044#1072#1090#1072
  end
  object Label4: TLabel
    Left = 176
    Top = 80
    Width = 19
    Height = 13
    Caption = #1042#1077#1089
  end
  object EditSend: TEdit
    Left = 16
    Top = 56
    Width = 89
    Height = 21
    TabOrder = 0
  end
  object EditGet: TEdit
    Left = 16
    Top = 128
    Width = 89
    Height = 21
    TabOrder = 1
  end
  object EditDate: TEdit
    Left = 8
    Top = 184
    Width = 89
    Height = 21
    TabOrder = 2
    OnKeyPress = EditDateKeyPress
  end
  object EditWeight: TEdit
    Left = 168
    Top = 104
    Width = 89
    Height = 21
    TabOrder = 3
    OnKeyPress = EditWeightKeyPress
  end
  object Button1: TButton
    Left = 168
    Top = 160
    Width = 89
    Height = 25
    Caption = 'ok'
    TabOrder = 4
    OnClick = Button1Click
  end
end
