object LetterForm: TLetterForm
  Left = 739
  Top = 212
  Width = 349
  Height = 347
  Caption = #1055#1080#1089#1100#1084#1086
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
    Left = 40
    Top = 24
    Width = 66
    Height = 13
    Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100
  end
  object Label2: TLabel
    Left = 32
    Top = 112
    Width = 59
    Height = 13
    Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100
  end
  object Label3: TLabel
    Left = 24
    Top = 184
    Width = 26
    Height = 13
    Caption = #1044#1072#1090#1072
  end
  object Label4: TLabel
    Left = 208
    Top = 24
    Width = 30
    Height = 13
    Caption = #1058#1077#1082#1089#1090
  end
  object CheckBox: TCheckBox
    Left = 192
    Top = 128
    Width = 97
    Height = 17
    Caption = #1079#1072#1082#1072#1079#1085#1086#1077
    TabOrder = 0
  end
  object EditSend: TEdit
    Left = 24
    Top = 64
    Width = 129
    Height = 21
    TabOrder = 1
  end
  object EditGet: TEdit
    Left = 24
    Top = 136
    Width = 129
    Height = 21
    TabOrder = 2
  end
  object EditDate: TEdit
    Left = 24
    Top = 208
    Width = 129
    Height = 21
    TabOrder = 3
    OnKeyPress = EditDateKeyPress
  end
  object Edittext: TEdit
    Left = 176
    Top = 56
    Width = 129
    Height = 21
    TabOrder = 4
  end
  object Button: TButton
    Left = 176
    Top = 192
    Width = 89
    Height = 33
    Caption = 'ok'
    TabOrder = 5
    OnClick = ButtonClick
  end
end
