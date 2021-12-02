object FRM_LookUp: TFRM_LookUp
  Left = 351
  Top = 177
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
  object DS_PAYOFF: TDataSource
    Left = 24
    Top = 392
  end
  object DS_FATOR_LUCRO: TDataSource
    Left = 104
    Top = 392
  end
  object DS_FATOR_RECUPERACAO: TDataSource
    Left = 224
    Top = 392
  end
  object DS_SHARPE: TDataSource
    Left = 328
    Top = 392
  end
  object DS_CORRELACAO: TDataSource
    Left = 408
    Top = 392
  end
  object DS_CALMAR: TDataSource
    Left = 488
    Top = 392
  end
  object DS_CAGR: TDataSource
    Left = 552
    Top = 392
  end
  object DS_DD_FINANCEIRO: TDataSource
    Left = 632
    Top = 392
  end
  object DS_RELACAO_LUCROXPERDA: TDataSource
    Left = 760
    Top = 392
  end
end
