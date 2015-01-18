object FormGraph: TFormGraph
  Left = 257
  Top = 350
  Width = 549
  Height = 365
  HorzScrollBar.Tracking = True
  BorderStyle = bsSizeToolWin
  Caption = 'FormGraph'
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
  object ImageGraph: TImage
    Left = 0
    Top = 72
    Width = 17
    Height = 193
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 541
    Height = 28
    AutoSize = True
    BandBorderStyle = bsNone
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 26
        Width = 539
      end>
    Color = clWhite
    EdgeOuter = esNone
    FixedOrder = True
    ParentColor = False
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 535
      Height = 26
      AutoSize = True
      BorderWidth = 1
      Caption = 'ToolBar1'
      EdgeBorders = []
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      Images = FormMainFSH.ImageList2
      TabOrder = 0
      object ToTime: TDateTimePicker
        Left = 0
        Top = 0
        Width = 97
        Height = 22
        Date = 37774.675323101850000000
        Time = 37774.675323101850000000
        DateMode = dmUpDown
        MaxDate = 2593224.000000000000000000
        MinDate = 2.000000000000000000
        TabOrder = 1
        OnChange = ToTimeChange
      end
      object FromTime: TDateTimePicker
        Left = 97
        Top = 0
        Width = 97
        Height = 22
        Date = 37774.675323101850000000
        Time = 37774.675323101850000000
        DateMode = dmUpDown
        MaxDate = 2593224.000000000000000000
        MinDate = 2.000000000000000000
        TabOrder = 0
        OnChange = FromTimeChange
      end
    end
  end
end
