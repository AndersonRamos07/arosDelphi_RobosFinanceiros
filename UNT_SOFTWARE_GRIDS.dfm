object FRM_SOFTWARE: TFRM_SOFTWARE
  Left = -8
  Top = -8
  Align = alClient
  Caption = 'SOFTWARE'
  ClientHeight = 705
  ClientWidth = 1366
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1366
    Height = 705
    ActivePage = Setup
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 78
    ExplicitWidth = 1188
    ExplicitHeight = 483
    object TabSheet1: TTabSheet
      Caption = 'An'#225'lise'
      ExplicitWidth = 281
      ExplicitHeight = 165
      object PageControl2: TPageControl
        Left = 0
        Top = 41
        Width = 1358
        Height = 636
        ActivePage = TabSheet4
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 761
        ExplicitHeight = 262
        object TabSheet4: TTabSheet
          Caption = 'Lista'
          ExplicitWidth = 281
          ExplicitHeight = 165
          object Label1: TLabel
            Left = 3
            Top = 16
            Width = 78
            Height = 13
            Caption = 'Lista de an'#225'lises'
          end
          object DBGrid1: TDBGrid
            Left = 3
            Top = 48
            Width = 678
            Height = 293
            DataSource = DS_SOFTWARE_ANALISES
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
        end
        object Detalhes: TTabSheet
          Caption = 'Detalhes'
          ImageIndex = 1
          ExplicitWidth = 281
          ExplicitHeight = 165
          object DBEdit1: TDBEdit
            Left = 3
            Top = 43
            Width = 70
            Height = 21
            DataField = 'ID_ANALISE'
            DataSource = DS_SOFTWARE_ANALISES
            TabOrder = 0
          end
          object PageControl3: TPageControl
            Left = -16
            Top = -97
            Width = 1153
            Height = 441
            ActivePage = TabSheet2
            TabOrder = 1
            object TabSheet2: TTabSheet
              Caption = 'An'#225'lise'
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 281
              ExplicitHeight = 165
              object PageControl4: TPageControl
                Left = 0
                Top = 41
                Width = 1145
                Height = 372
                ActivePage = TabSheet5
                Align = alClient
                TabOrder = 0
                ExplicitWidth = 761
                ExplicitHeight = 262
                object TabSheet3: TTabSheet
                  Caption = 'Lista'
                  object Label4: TLabel
                    Left = 3
                    Top = 16
                    Width = 78
                    Height = 13
                    Caption = 'Lista de an'#225'lises'
                  end
                  object DBGrid4: TDBGrid
                    Left = 3
                    Top = 48
                    Width = 678
                    Height = 120
                    DataSource = DS_SOFTWARE_ANALISES
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'Tahoma'
                    TitleFont.Style = []
                  end
                end
                object TabSheet5: TTabSheet
                  Caption = 'Detalhes'
                  ImageIndex = 1
                  ExplicitLeft = 12
                  ExplicitTop = 32
                  object Label5: TLabel
                    Left = 30
                    Top = 24
                    Width = 95
                    Height = 13
                    Caption = 'Identificador'
                  end
                  object Label6: TLabel
                    Left = 21
                    Top = 104
                    Width = 111
                    Height = 13
                    Caption = 'T'#237'tulo da an'#225'lise'
                  end
                  object Label2: TLabel
                    Left = 278
                    Top = 24
                    Width = 121
                    Height = 13
                    Caption = 'Per'#237'odo (em anos)'
                  end
                  object Label3: TLabel
                    Left = 335
                    Top = 104
                    Width = 80
                    Height = 13
                    Caption = 'Descri'#231#227'o'
                  end
                  object Label7: TLabel
                    Left = 557
                    Top = 24
                    Width = 90
                    Height = 13
                    Caption = 'Saldo Inicial'
                  end
                  object DBEdit3: TDBEdit
                    Left = 21
                    Top = 43
                    Width = 91
                    Height = 21
                    DataField = 'ID_ANALISE'
                    DataSource = DS_SOFTWARE_ANALISES
                    TabOrder = 0
                  end
                  object DBEdit5: TDBEdit
                    Left = 278
                    Top = 43
                    Width = 121
                    Height = 21
                    DataField = 'PERIODO_EM_ANOS'
                    DataSource = DS_SOFTWARE_ANALISES
                    TabOrder = 1
                  end
                  object DBEdit6: TDBEdit
                    Left = 548
                    Top = 43
                    Width = 121
                    Height = 21
                    DataField = 'SALDO_INICIAL'
                    DataSource = DS_SOFTWARE_ANALISES
                    TabOrder = 2
                  end
                  object DBEdit2: TDBEdit
                    Left = 21
                    Top = 123
                    Width = 308
                    Height = 21
                    DataField = 'TITULO_DA_ANALISE'
                    DataSource = DS_SOFTWARE_ANALISES
                    TabOrder = 3
                  end
                end
              end
              object Panel2: TPanel
                Left = 0
                Top = 0
                Width = 1145
                Height = 41
                Align = alTop
                Caption = 'Panel1'
                TabOrder = 1
                object cxDBNavigator2: TcxDBNavigator
                  Left = 0
                  Top = 1
                  Width = 270
                  Height = 25
                  Buttons.CustomButtons = <>
                  DataSource = DS_SOFTWARE_ANALISES
                  TabOrder = 0
                end
              end
            end
            object TabSheet6: TTabSheet
              Caption = 'Robo'
              ImageIndex = 1
            end
            object TabSheet7: TTabSheet
              Caption = 'Setup'
              ImageIndex = 2
            end
          end
          object DBEdit4: TDBEdit
            Left = 327
            Top = 115
            Width = 334
            Height = 21
            DataField = 'DESCRICAO_DO_PERIODO'
            DataSource = DS_SOFTWARE_ANALISES
            TabOrder = 2
          end
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1358
        Height = 41
        Align = alTop
        TabOrder = 1
        ExplicitLeft = 24
        ExplicitWidth = 489
        object DBN_ANALISES: TcxDBNavigator
          Left = 0
          Top = 1
          Width = 270
          Height = 25
          Buttons.CustomButtons = <>
          DataSource = DS_SOFTWARE_ANALISES
          TabOrder = 0
        end
      end
    end
    object Robo: TTabSheet
      Caption = 'Robo'
      ImageIndex = 1
      ExplicitWidth = 281
      ExplicitHeight = 165
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1358
        Height = 41
        Align = alTop
        TabOrder = 0
        ExplicitTop = 8
        ExplicitWidth = 1145
        object DBN_ROBOS: TcxDBNavigator
          Left = 0
          Top = 1
          Width = 270
          Height = 25
          Buttons.CustomButtons = <>
          DataSource = DS_SOFTWARE_ROBOS
          TabOrder = 0
        end
      end
      object PageControl5: TPageControl
        Left = 0
        Top = 41
        Width = 1358
        Height = 636
        ActivePage = TabSheet9
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 1145
        ExplicitHeight = 372
        object TabSheet8: TTabSheet
          Caption = 'Lista'
          ExplicitWidth = 281
          ExplicitHeight = 165
          object Label8: TLabel
            Left = 3
            Top = 13
            Width = 67
            Height = 13
            Caption = 'Lista de robos'
          end
          object DBGrid2: TDBGrid
            Left = 3
            Top = 40
            Width = 150
            Height = 301
            DataSource = DS_SOFTWARE_ROBOS
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
        end
        object TabSheet9: TTabSheet
          Caption = 'Detalhes'
          ImageIndex = 1
          ExplicitWidth = 1137
          ExplicitHeight = 344
          object Label9: TLabel
            Left = 38
            Top = 32
            Width = 61
            Height = 13
            Caption = 'Identificador'
          end
          object Label10: TLabel
            Left = 286
            Top = 32
            Width = 48
            Height = 13
            Caption = 'An'#225'lise ID'
          end
          object DBEdit7: TDBEdit
            Left = 29
            Top = 51
            Width = 91
            Height = 21
            DataField = 'ID_ROBO'
            DataSource = DS_SOFTWARE_ROBOS
            TabOrder = 0
          end
          object DBEdit8: TDBEdit
            Left = 286
            Top = 51
            Width = 121
            Height = 21
            DataField = 'ID_ANALISE'
            DataSource = DS_SOFTWARE_ROBOS
            TabOrder = 1
          end
        end
      end
    end
    object Setup: TTabSheet
      Caption = 'Setup'
      ImageIndex = 2
      ExplicitWidth = 281
      ExplicitHeight = 165
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1358
        Height = 41
        Align = alTop
        TabOrder = 0
        ExplicitTop = 8
        ExplicitWidth = 1145
        object DBN_SETUPS: TcxDBNavigator
          Left = 0
          Top = 1
          Width = 270
          Height = 25
          Buttons.CustomButtons = <>
          DataSource = DS_SOFTWARE_ROBOS
          TabOrder = 0
        end
      end
      object PageControl6: TPageControl
        Left = 0
        Top = 41
        Width = 1358
        Height = 636
        ActivePage = TabSheet11
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 112
        ExplicitTop = 72
        ExplicitWidth = 289
        ExplicitHeight = 193
        object Lista: TTabSheet
          Caption = 'Lista'
          ExplicitWidth = 281
          ExplicitHeight = 165
          object Label11: TLabel
            Left = 3
            Top = 18
            Width = 72
            Height = 13
            Caption = 'Lista de setups'
          end
          object DBGrid3: TDBGrid
            Left = 3
            Top = 37
            Width = 1118
            Height = 308
            DataSource = DS_SOFTWARE_SETUPS
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
        end
        object TabSheet11: TTabSheet
          Caption = 'Detalhes'
          ImageIndex = 1
          ExplicitWidth = 281
          ExplicitHeight = 165
          object Label12: TLabel
            Left = 56
            Top = 40
            Width = 61
            Height = 13
            Caption = 'Identificador'
          end
          object Label13: TLabel
            Left = 200
            Top = 40
            Width = 39
            Height = 13
            Caption = 'Robo ID'
          end
          object Label14: TLabel
            Left = 344
            Top = 40
            Width = 48
            Height = 13
            Caption = 'An'#225'lise ID'
          end
          object Label15: TLabel
            Left = 480
            Top = 40
            Width = 33
            Height = 13
            Caption = 'MAGIC'
          end
          object Label16: TLabel
            Left = 632
            Top = 40
            Width = 73
            Height = 13
            Caption = 'Nome do Setup'
          end
          object Label17: TLabel
            Left = 56
            Top = 112
            Width = 55
            Height = 13
            Caption = 'Lucro Bruto'
          end
          object Label18: TLabel
            Left = 200
            Top = 112
            Width = 62
            Height = 13
            Caption = 'Lucro L'#237'quido'
          end
          object Label19: TLabel
            Left = 344
            Top = 112
            Width = 57
            Height = 13
            Caption = 'Perda Bruta'
          end
          object Label20: TLabel
            Left = 480
            Top = 112
            Width = 43
            Height = 13
            Caption = 'PAY-OFF'
          end
          object Label21: TLabel
            Left = 632
            Top = 112
            Width = 55
            Height = 13
            Caption = 'Fator Lucro'
          end
          object Label22: TLabel
            Left = 36
            Top = 184
            Width = 92
            Height = 13
            Caption = 'Fator Recupera'#231#227'o'
          end
          object Label23: TLabel
            Left = 200
            Top = 184
            Width = 34
            Height = 13
            Caption = 'Sharpe'
          end
          object Label24: TLabel
            Left = 334
            Top = 184
            Width = 67
            Height = 13
            Caption = 'Correla'#231#227'o LR'
          end
          object Label25: TLabel
            Left = 480
            Top = 184
            Width = 66
            Height = 13
            Caption = 'DD Financeiro'
          end
          object Label26: TLabel
            Left = 632
            Top = 184
            Width = 43
            Height = 13
            Caption = 'Calmar R'
          end
          object Label27: TLabel
            Left = 56
            Top = 256
            Width = 48
            Height = 13
            Caption = 'Resultado'
          end
          object Label28: TLabel
            Left = 176
            Top = 256
            Width = 108
            Height = 13
            Caption = #205'ndice Lucro x Preju'#237'zo'
          end
          object Label29: TLabel
            Left = 344
            Top = 256
            Width = 57
            Height = 13
            Caption = 'M'#233'dia Lucro'
          end
          object Label30: TLabel
            Left = 480
            Top = 256
            Width = 69
            Height = 13
            Caption = 'M'#233'dia Preju'#237'zo'
          end
          object Label31: TLabel
            Left = 584
            Top = 256
            Width = 172
            Height = 13
            Caption = 'Rela'#231#227'o M'#233'dia (MLucro x MPreju'#237'zo)'
          end
          object DBEdit9: TDBEdit
            Left = 37
            Top = 59
            Width = 91
            Height = 21
            DataField = 'ID_SETUP'
            DataSource = DS_SOFTWARE_SETUPS
            TabOrder = 0
          end
          object DBEdit10: TDBEdit
            Left = 171
            Top = 59
            Width = 91
            Height = 21
            DataField = 'ID_ROBO'
            DataSource = DS_SOFTWARE_SETUPS
            TabOrder = 1
          end
          object DBEdit11: TDBEdit
            Left = 320
            Top = 59
            Width = 91
            Height = 21
            DataField = 'ID_ANALISE'
            DataSource = DS_SOFTWARE_SETUPS
            TabOrder = 2
          end
          object DBEdit12: TDBEdit
            Left = 458
            Top = 59
            Width = 91
            Height = 21
            DataField = 'MAGIC'
            DataSource = DS_SOFTWARE_SETUPS
            TabOrder = 3
          end
          object DBEdit13: TDBEdit
            Left = 614
            Top = 59
            Width = 91
            Height = 21
            DataField = 'NOME_DO_SETUP'
            DataSource = DS_SOFTWARE_SETUPS
            TabOrder = 4
          end
          object DBEdit14: TDBEdit
            Left = 37
            Top = 131
            Width = 91
            Height = 21
            DataField = 'LUCRO_BRUTO'
            DataSource = DS_SOFTWARE_SETUPS
            TabOrder = 5
          end
          object DBEdit15: TDBEdit
            Left = 171
            Top = 131
            Width = 91
            Height = 21
            DataField = 'LUCRO_LIQUIDO'
            DataSource = DS_SOFTWARE_SETUPS
            TabOrder = 6
          end
          object DBEdit16: TDBEdit
            Left = 320
            Top = 131
            Width = 91
            Height = 21
            DataField = 'PERDA_BRUTA'
            DataSource = DS_SOFTWARE_SETUPS
            TabOrder = 7
          end
          object DBEdit17: TDBEdit
            Left = 458
            Top = 131
            Width = 91
            Height = 21
            DataField = 'PAY_OFF'
            DataSource = DS_SOFTWARE_SETUPS
            TabOrder = 8
          end
          object DBEdit18: TDBEdit
            Left = 614
            Top = 131
            Width = 91
            Height = 21
            DataField = 'FATOR_LUCRO'
            DataSource = DS_SOFTWARE_SETUPS
            TabOrder = 9
          end
          object DBEdit19: TDBEdit
            Left = 37
            Top = 203
            Width = 91
            Height = 21
            DataField = 'FATOR_RECUPERACAO'
            DataSource = DS_SOFTWARE_SETUPS
            TabOrder = 10
          end
          object DBEdit20: TDBEdit
            Left = 171
            Top = 203
            Width = 91
            Height = 21
            DataField = 'SHARPE'
            DataSource = DS_SOFTWARE_SETUPS
            TabOrder = 11
          end
          object DBEdit21: TDBEdit
            Left = 320
            Top = 203
            Width = 91
            Height = 21
            DataField = 'CORRELACAO_LR'
            DataSource = DS_SOFTWARE_SETUPS
            TabOrder = 12
          end
          object DBEdit22: TDBEdit
            Left = 458
            Top = 203
            Width = 91
            Height = 21
            DataField = 'DD_FINANCEIRO'
            DataSource = DS_SOFTWARE_SETUPS
            TabOrder = 13
          end
          object DBEdit23: TDBEdit
            Left = 614
            Top = 203
            Width = 91
            Height = 21
            DataField = 'CALMAR_R'
            DataSource = DS_SOFTWARE_SETUPS
            TabOrder = 14
          end
          object DBEdit24: TDBEdit
            Left = 37
            Top = 275
            Width = 91
            Height = 21
            DataField = 'RESULTADO'
            DataSource = DS_SOFTWARE_SETUPS
            TabOrder = 15
          end
          object DBEdit25: TDBEdit
            Left = 171
            Top = 275
            Width = 91
            Height = 21
            DataField = 'INDICE_L_X_P'
            DataSource = DS_SOFTWARE_SETUPS
            TabOrder = 16
          end
          object DBEdit26: TDBEdit
            Left = 320
            Top = 275
            Width = 91
            Height = 21
            DataField = 'MEDIA_LUCRO'
            DataSource = DS_SOFTWARE_SETUPS
            TabOrder = 17
          end
          object DBEdit27: TDBEdit
            Left = 458
            Top = 275
            Width = 91
            Height = 21
            DataField = 'MEDIA_PREJUIZO'
            DataSource = DS_SOFTWARE_SETUPS
            TabOrder = 18
          end
          object DBEdit28: TDBEdit
            Left = 614
            Top = 275
            Width = 91
            Height = 21
            DataField = 'RELACAO_MEDL_X_MEDP'
            DataSource = DS_SOFTWARE_SETUPS
            TabOrder = 19
          end
        end
      end
    end
  end
  object DS_SOFTWARE_ANALISES: TDataSource
    DataSet = DM_SOFTWARE.FDQ_SOFTWARE_A
    Left = 40
    Top = 624
  end
  object DS_SOFTWARE_ROBOS: TDataSource
    DataSet = DM_SOFTWARE.FDQ_SOFTWARE_R
    Left = 177
    Top = 624
  end
  object DS_SOFTWARE_SETUPS: TDataSource
    DataSet = DM_SOFTWARE.FDQ_SOFTWARE_S
    Left = 312
    Top = 624
  end
end
