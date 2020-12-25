object TransferForm: TTransferForm
  Left = 547
  Top = 136
  Width = 317
  Height = 411
  Caption = #1055#1077#1088#1077#1074#1086#1076
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
    Left = 8
    Top = 56
    Width = 66
    Height = 13
    Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100
  end
  object Label2: TLabel
    Left = 8
    Top = 144
    Width = 59
    Height = 13
    Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100
  end
  object Label3: TLabel
    Left = 8
    Top = 232
    Width = 26
    Height = 13
    Caption = #1044#1072#1090#1072
  end
  object Label4: TLabel
    Left = 208
    Top = 48
    Width = 34
    Height = 13
    Caption = #1057#1091#1084#1084#1072
  end
  object EditSend: TEdit
    Left = 8
    Top = 88
    Width = 113
    Height = 21
    TabOrder = 0
  end
  object EditGet: TEdit
    Left = 8
    Top = 176
    Width = 113
    Height = 21
    TabOrder = 1
  end
  object EditDate: TEdit
    Left = 8
    Top = 264
    Width = 113
    Height = 21
    TabOrder = 2
    OnKeyPress = EditDateKeyPress
  end
  object EditSum: TEdit
    Left = 168
    Top = 72
    Width = 113
    Height = 21
    TabOrder = 3
    OnKeyPress = EditSumKeyPress
  end
  object Button1: TButton
    Left = 176
    Top = 192
    Width = 89
    Height = 33
    Caption = 'ok'
    TabOrder = 4
    OnClick = Button1Click
  end
end
