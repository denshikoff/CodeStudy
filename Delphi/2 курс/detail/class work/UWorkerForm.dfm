object WorkerForm: TWorkerForm
  Left = 1432
  Top = 632
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Worker'
  ClientHeight = 344
  ClientWidth = 303
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object LFIO: TLabel
    Left = 16
    Top = 32
    Width = 17
    Height = 13
    Caption = 'FIO'
  end
  object LAge: TLabel
    Left = 16
    Top = 72
    Width = 18
    Height = 13
    Caption = 'age'
  end
  object LGender: TLabel
    Left = 8
    Top = 128
    Width = 33
    Height = 13
    Caption = 'gender'
  end
  object LExperience: TLabel
    Left = 8
    Top = 176
    Width = 52
    Height = 13
    Caption = 'experience'
  end
  object LPosition: TLabel
    Left = 8
    Top = 216
    Width = 36
    Height = 13
    Caption = 'position'
  end
  object tbFIO: TEdit
    Left = 64
    Top = 32
    Width = 209
    Height = 21
    TabOrder = 0
  end
  object tbAge: TEdit
    Left = 64
    Top = 72
    Width = 209
    Height = 21
    TabOrder = 1
    OnKeyPress = tbAgeKeyPress
  end
  object rbMale: TRadioButton
    Left = 64
    Top = 128
    Width = 105
    Height = 17
    Caption = 'male'
    TabOrder = 2
  end
  object rbFemale: TRadioButton
    Left = 176
    Top = 128
    Width = 97
    Height = 17
    Caption = 'female'
    Checked = True
    TabOrder = 3
    TabStop = True
  end
  object tbExperience: TEdit
    Left = 64
    Top = 168
    Width = 209
    Height = 21
    TabOrder = 4
  end
  object tbPosition: TEdit
    Left = 64
    Top = 216
    Width = 209
    Height = 21
    TabOrder = 5
  end
  object Button1: TButton
    Left = 16
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 6
    OnClick = Button1Click
  end
end
