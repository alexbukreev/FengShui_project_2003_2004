object FormGoodDay: TFormGoodDay
  Left = 205
  Top = 277
  Width = 509
  Height = 272
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderStyle = bsSizeToolWin
  Caption = '12 '#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#1080#1081
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 17
    Width = 501
    Height = 228
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 10
      Height = 228
      Align = alLeft
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
    end
    object RichEdit1: TRichEdit
      Left = 10
      Top = 0
      Width = 491
      Height = 228
      Align = alClient
      BevelOuter = bvNone
      BorderStyle = bsNone
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 501
    Height = 17
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 1
  end
end
