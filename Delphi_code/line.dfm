object FormLine: TFormLine
  Left = 322
  Top = 422
  BorderStyle = bsToolWindow
  Caption = #1043#1077#1086#1084#1072#1085#1090#1080#1095#1077#1089#1082#1072#1103' '#1083#1080#1085#1077#1081#1082#1072
  ClientHeight = 75
  ClientWidth = 542
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
    Left = 509
    Top = 41
    Width = 27
    Height = 13
    Caption = '('#1084#1084')'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Line: TImage
    Left = 5
    Top = 38
    Width = 434
    Height = 20
  end
  object Riska: TShape
    Left = 5
    Top = 32
    Width = 1
    Height = 30
    Pen.Color = clMaroon
  end
  object Label2: TLabel
    Left = 5
    Top = 7
    Width = 39
    Height = 13
    Caption = 'Label2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EditLine: TEdit
    Left = 443
    Top = 37
    Width = 38
    Height = 21
    MaxLength = 4
    TabOrder = 0
    Text = '0'
    OnChange = EditLineChange
    OnClick = EditLineClick
  end
  object UpDown1: TUpDown
    Left = 481
    Top = 37
    Width = 26
    Height = 21
    Associate = EditLine
    Min = 0
    Max = 9999
    Orientation = udHorizontal
    Position = 0
    TabOrder = 1
    Thousands = False
    Wrap = False
  end
end
