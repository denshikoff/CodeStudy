object FormMain: TFormMain
  Left = 528
  Top = 175
  Width = 534
  Height = 278
  Caption = #1050#1086#1085#1074#1077#1088#1090#1077#1088' '#1089#1083#1086#1074
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object edtDigit: TEdit
    Left = 48
    Top = 24
    Width = 433
    Height = 21
    TabOrder = 0
  end
  object edtText: TEdit
    Left = 48
    Top = 56
    Width = 433
    Height = 21
    TabOrder = 1
  end
  object btnConvert: TButton
    Left = 48
    Top = 120
    Width = 113
    Height = 33
    Caption = 'Convert'
    TabOrder = 2
    OnClick = btnConvertClick
  end
  object rbRussian: TRadioButton
    Left = 48
    Top = 88
    Width = 113
    Height = 17
    Caption = 'Russian'
    Checked = True
    TabOrder = 3
    TabStop = True
  end
  object rbEnglish: TRadioButton
    Left = 176
    Top = 88
    Width = 113
    Height = 17
    Caption = 'English'
    TabOrder = 4
  end
  object btnConvertBack: TButton
    Left = 176
    Top = 120
    Width = 89
    Height = 33
    Caption = 'Convert Back'
    TabOrder = 5
    OnClick = btnConvertBackClick
  end
  object ButtonClear: TButton
    Left = 288
    Top = 120
    Width = 97
    Height = 33
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 6
    OnClick = ButtonClearClick
  end
end
