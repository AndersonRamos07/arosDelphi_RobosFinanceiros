object FRM_LookUp: TFRM_LookUp
  Left = 265
  Top = 166
  Caption = 'FRM_LookUp'
  ClientHeight = 441
  ClientWidth = 912
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 672
    Top = 8
    Width = 57
    Height = 49
  end
  object SpeedButton2: TSpeedButton
    Left = 752
    Top = 8
    Width = 57
    Height = 46
  end
  object SpeedButton3: TSpeedButton
    Left = 832
    Top = 8
    Width = 57
    Height = 46
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 185
    Height = 41
    Caption = 'Panel1'
    TabOrder = 0
  end
  object PageControl1: TPageControl
    Left = 72
    Top = 64
    Width = 601
    Height = 305
    ActivePage = TabSheet1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object StringGrid1: TStringGrid
        Left = -200
        Top = -12
        Width = 793
        Height = 289
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
    end
  end
end
