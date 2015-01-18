object FormCombo: TFormCombo
  Left = 428
  Top = 313
  BorderStyle = bsToolWindow
  Caption = 'FormCombo'
  ClientHeight = 320
  ClientWidth = 238
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 5
    Top = 57
    Width = 32
    Height = 13
    Caption = 'Label1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 121
    Top = 57
    Width = 32
    Height = 13
    Caption = 'Label1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object RadioGroup1: TRadioGroup
    Left = 5
    Top = 70
    Width = 113
    Height = 217
    Color = clWhite
    Items.Strings = (
      '1 '#1073#1077#1083#1072#1103
      '2 '#1095#1077#1088#1085#1072#1103
      '3 '#1073#1080#1088#1102#1079#1086#1074#1072#1103
      '4 '#1073#1077#1083#1072#1103
      '5 '#1078#1077#1083#1090#1072#1103
      '6 '#1073#1077#1083#1072#1103
      '7 '#1072#1083#1072#1103
      '8 '#1073#1077#1083#1072#1103
      '9 '#1087#1091#1088#1087#1091#1088#1085#1072#1103)
    ParentColor = False
    TabOrder = 0
    OnClick = RadioGroup1Click
  end
  object RadioGroup2: TRadioGroup
    Left = 122
    Top = 70
    Width = 113
    Height = 217
    Items.Strings = (
      '1 '#1073#1077#1083#1072#1103
      '2 '#1095#1077#1088#1085#1072#1103
      '3 '#1073#1080#1088#1102#1079#1086#1074#1072#1103
      '4 '#1073#1077#1083#1072#1103
      '5 '#1078#1077#1083#1090#1072#1103
      '6 '#1073#1077#1083#1072#1103
      '7 '#1072#1083#1072#1103
      '8 '#1073#1077#1083#1072#1103
      '9 '#1087#1091#1088#1087#1091#1088#1085#1072#1103)
    TabOrder = 1
    OnClick = RadioGroup2Click
  end
  object Button1: TButton
    Left = 4
    Top = 290
    Width = 231
    Height = 25
    Caption = 'Button1'
    Enabled = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object RadioGroup3: TRadioGroup
    Left = 5
    Top = 3
    Width = 230
    Height = 45
    Caption = 'RadioGroup3'
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      #1062#1080#1082#1083#1099
      #1051#1077#1090#1103#1097#1080#1077' '#1079#1074#1077#1079#1076#1099)
    ParentFont = False
    TabOrder = 3
  end
end
