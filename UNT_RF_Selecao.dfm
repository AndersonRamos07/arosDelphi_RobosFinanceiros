object Form3: TForm3
  Left = 123
  Top = 125
  Caption = 'Form3'
  ClientHeight = 441
  ClientWidth = 912
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMinimized
  PixelsPerInch = 96
  TextHeight = 13
  object P_Principal: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 441
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 496
    ExplicitTop = 192
    ExplicitWidth = 185
    ExplicitHeight = 41
    object SB_FILTRAR: TSpeedButton
      Left = 376
      Top = 648
      Width = 129
      Height = 46
      Caption = 'FILTRAR'
    end
    object SB_CANCELAR: TSpeedButton
      Left = 816
      Top = 648
      Width = 129
      Height = 46
      Caption = 'CANCELAR'
    end
    object GB_R_L_X_P: TGroupBox
      Left = 1
      Top = 561
      Width = 910
      Height = 70
      Align = alTop
      Caption = 'RELA'#199#195'O LUCRO X PERDA'
      TabOrder = 0
      ExplicitTop = 351
      ExplicitWidth = 1364
      object Label48: TLabel
        Left = 250
        Top = 15
        Width = 88
        Height = 13
        Caption = 'IDENTIFICADOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label49: TLabel
        Left = 400
        Top = 15
        Width = 98
        Height = 13
        Caption = 'MAIOR QUE 19,99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label50: TLabel
        Left = 550
        Top = 15
        Width = 113
        Height = 13
        Caption = 'ENTRE 15,00 A 19,98'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label51: TLabel
        Left = 700
        Top = 15
        Width = 113
        Height = 13
        Caption = 'ENTRE 10,00 A 14,99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label52: TLabel
        Left = 850
        Top = 15
        Width = 91
        Height = 13
        Caption = 'MENOR QUE 9,99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label53: TLabel
        Left = 1000
        Top = 15
        Width = 30
        Height = 13
        Caption = 'NOTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton9: TSpeedButton
        Left = 150
        Top = 20
        Width = 30
        Height = 30
      end
    end
    object GB_CORRELACAO: TGroupBox
      Left = 1
      Top = 281
      Width = 910
      Height = 70
      Align = alTop
      Caption = 'CORRELA'#199#195'O'
      TabOrder = 1
      ExplicitWidth = 1364
      object Label24: TLabel
        Left = 250
        Top = 15
        Width = 88
        Height = 13
        Caption = 'IDENTIFICADOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 400
        Top = 15
        Width = 98
        Height = 13
        Caption = 'MAIOR QUE 19,99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label26: TLabel
        Left = 550
        Top = 15
        Width = 113
        Height = 13
        Caption = 'ENTRE 15,00 A 19,98'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label27: TLabel
        Left = 700
        Top = 15
        Width = 113
        Height = 13
        Caption = 'ENTRE 10,00 A 14,99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 850
        Top = 15
        Width = 91
        Height = 13
        Caption = 'MENOR QUE 9,99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label29: TLabel
        Left = 1000
        Top = 15
        Width = 30
        Height = 13
        Caption = 'NOTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton5: TSpeedButton
        Left = 150
        Top = 20
        Width = 30
        Height = 30
      end
    end
    object GB_SHARPE: TGroupBox
      Left = 1
      Top = 211
      Width = 910
      Height = 70
      Align = alTop
      Caption = 'SHARPE'
      TabOrder = 2
      ExplicitWidth = 1364
      object Label18: TLabel
        Left = 250
        Top = 15
        Width = 88
        Height = 13
        Caption = 'IDENTIFICADOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 400
        Top = 15
        Width = 98
        Height = 13
        Caption = 'MAIOR QUE 19,99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 550
        Top = 15
        Width = 113
        Height = 13
        Caption = 'ENTRE 15,00 A 19,98'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 700
        Top = 15
        Width = 113
        Height = 13
        Caption = 'ENTRE 10,00 A 14,99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 850
        Top = 15
        Width = 91
        Height = 13
        Caption = 'MENOR QUE 9,99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 1000
        Top = 15
        Width = 30
        Height = 13
        Caption = 'NOTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton4: TSpeedButton
        Left = 150
        Top = 20
        Width = 30
        Height = 30
      end
    end
    object GB_FATOR_R: TGroupBox
      Left = 1
      Top = 141
      Width = 910
      Height = 70
      Align = alTop
      Caption = 'FATOR RECUPERA'#199#195'O'
      TabOrder = 3
      ExplicitWidth = 1364
      object Label12: TLabel
        Left = 250
        Top = 15
        Width = 88
        Height = 13
        Caption = 'IDENTIFICADOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 400
        Top = 15
        Width = 98
        Height = 13
        Caption = 'MAIOR QUE 19,99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 550
        Top = 15
        Width = 113
        Height = 13
        Caption = 'ENTRE 15,00 A 19,98'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 700
        Top = 15
        Width = 113
        Height = 13
        Caption = 'ENTRE 10,00 A 14,99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 850
        Top = 15
        Width = 91
        Height = 13
        Caption = 'MENOR QUE 9,99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 1000
        Top = 15
        Width = 30
        Height = 13
        Caption = 'NOTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton3: TSpeedButton
        Left = 150
        Top = 20
        Width = 30
        Height = 30
      end
    end
    object GB_FATOR_L: TGroupBox
      Left = 1
      Top = 71
      Width = 910
      Height = 70
      Align = alTop
      Caption = 'FATOR LUCRO'
      TabOrder = 4
      ExplicitWidth = 1364
      object Label6: TLabel
        Left = 250
        Top = 15
        Width = 88
        Height = 13
        Caption = 'IDENTIFICADOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 400
        Top = 15
        Width = 98
        Height = 13
        Caption = 'MAIOR QUE 19,99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 550
        Top = 15
        Width = 113
        Height = 13
        Caption = 'ENTRE 15,00 A 19,98'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 700
        Top = 15
        Width = 113
        Height = 13
        Caption = 'ENTRE 10,00 A 14,99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 850
        Top = 15
        Width = 91
        Height = 13
        Caption = 'MENOR QUE 9,99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 1000
        Top = 15
        Width = 30
        Height = 13
        Caption = 'NOTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton2: TSpeedButton
        Left = 150
        Top = 20
        Width = 30
        Height = 30
      end
    end
    object GB_PAYOFF: TGroupBox
      Left = 1
      Top = 1
      Width = 910
      Height = 70
      Align = alTop
      Caption = 'PAY-OFF'
      TabOrder = 5
      ExplicitWidth = 1364
      object SpeedButton1: TSpeedButton
        Left = 150
        Top = 20
        Width = 30
        Height = 30
      end
      object L_ID: TLabel
        Left = 250
        Top = 15
        Width = 88
        Height = 13
        Caption = 'IDENTIFICADOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 400
        Top = 15
        Width = 98
        Height = 13
        Caption = 'MAIOR QUE 19,99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 550
        Top = 15
        Width = 113
        Height = 13
        Caption = 'ENTRE 15,00 A 19,98'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 700
        Top = 15
        Width = 113
        Height = 13
        Caption = 'ENTRE 10,00 A 14,99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 850
        Top = 15
        Width = 91
        Height = 13
        Caption = 'MENOR QUE 9,99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 1000
        Top = 15
        Width = 30
        Height = 13
        Caption = 'NOTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GB_DD: TGroupBox
      Left = 1
      Top = 491
      Width = 910
      Height = 70
      Align = alTop
      Caption = 'DD FINANCEIRO'
      TabOrder = 6
      ExplicitTop = 351
      ExplicitWidth = 1364
      object Label42: TLabel
        Left = 250
        Top = 15
        Width = 88
        Height = 13
        Caption = 'IDENTIFICADOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label43: TLabel
        Left = 400
        Top = 15
        Width = 98
        Height = 13
        Caption = 'MAIOR QUE 19,99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label44: TLabel
        Left = 550
        Top = 15
        Width = 113
        Height = 13
        Caption = 'ENTRE 15,00 A 19,98'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label45: TLabel
        Left = 700
        Top = 15
        Width = 113
        Height = 13
        Caption = 'ENTRE 10,00 A 14,99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label46: TLabel
        Left = 850
        Top = 15
        Width = 91
        Height = 13
        Caption = 'MENOR QUE 9,99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label47: TLabel
        Left = 1000
        Top = 15
        Width = 30
        Height = 13
        Caption = 'NOTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton8: TSpeedButton
        Left = 150
        Top = 20
        Width = 30
        Height = 30
      end
    end
    object GB_CAGR: TGroupBox
      Left = 1
      Top = 421
      Width = 910
      Height = 70
      Align = alTop
      Caption = 'CAGR'
      TabOrder = 7
      ExplicitTop = 351
      ExplicitWidth = 1364
      object Label36: TLabel
        Left = 250
        Top = 15
        Width = 88
        Height = 13
        Caption = 'IDENTIFICADOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label37: TLabel
        Left = 400
        Top = 15
        Width = 98
        Height = 13
        Caption = 'MAIOR QUE 19,99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label38: TLabel
        Left = 550
        Top = 15
        Width = 113
        Height = 13
        Caption = 'ENTRE 15,00 A 19,98'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label39: TLabel
        Left = 700
        Top = 15
        Width = 113
        Height = 13
        Caption = 'ENTRE 10,00 A 14,99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label40: TLabel
        Left = 850
        Top = 15
        Width = 91
        Height = 13
        Caption = 'MENOR QUE 9,99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label41: TLabel
        Left = 1000
        Top = 15
        Width = 30
        Height = 13
        Caption = 'NOTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton7: TSpeedButton
        Left = 150
        Top = 20
        Width = 30
        Height = 30
      end
    end
    object GB_CALMAR: TGroupBox
      Left = 1
      Top = 351
      Width = 910
      Height = 70
      Align = alTop
      Caption = 'CALMA R'
      TabOrder = 8
      ExplicitWidth = 1364
      object Label30: TLabel
        Left = 250
        Top = 15
        Width = 88
        Height = 13
        Caption = 'IDENTIFICADOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label31: TLabel
        Left = 400
        Top = 15
        Width = 98
        Height = 13
        Caption = 'MAIOR QUE 19,99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label32: TLabel
        Left = 550
        Top = 15
        Width = 113
        Height = 13
        Caption = 'ENTRE 15,00 A 19,98'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label33: TLabel
        Left = 700
        Top = 15
        Width = 113
        Height = 13
        Caption = 'ENTRE 10,00 A 14,99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label34: TLabel
        Left = 850
        Top = 15
        Width = 91
        Height = 13
        Caption = 'MENOR QUE 9,99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label35: TLabel
        Left = 1000
        Top = 15
        Width = 30
        Height = 13
        Caption = 'NOTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton6: TSpeedButton
        Left = 150
        Top = 20
        Width = 30
        Height = 30
      end
    end
  end
end
