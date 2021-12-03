object FRM_LookUp: TFRM_LookUp
  Left = 480
  Top = 170
  Caption = 'FRM_LookUp'
  ClientHeight = 393
  ClientWidth = 417
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
    Left = 16
    Top = 49
    Width = 57
    Height = 49
  end
  object SpeedButton2: TSpeedButton
    Left = 184
    Top = 49
    Width = 57
    Height = 49
  end
  object SpeedButton3: TSpeedButton
    Left = 342
    Top = 49
    Width = 59
    Height = 49
  end
  object P_TABELA: TPanel
    Left = 16
    Top = 8
    Width = 385
    Height = 41
    Caption = 'P_TABELA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 104
    Width = 385
    Height = 273
    DataSource = DM_Robos_Financeiros.DS_LOOKUP
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
