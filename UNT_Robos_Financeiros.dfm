object FRM_RobosFinanceiros: TFRM_RobosFinanceiros
  Left = 194
  Top = 37
  Align = alClient
  Caption = 'Robos Financeiros'
  ClientHeight = 670
  ClientWidth = 941
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PC_Principal: TPageControl
    Left = 0
    Top = 0
    Width = 941
    Height = 705
    ActivePage = Setup
    Align = alTop
    TabOrder = 0
    OnChange = PC_PrincipalChange
    object TS_Analise: TTabSheet
      Caption = 'An'#225'lise'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object P_Analise: TPanel
        Left = 0
        Top = 0
        Width = 933
        Height = 129
        Align = alTop
        TabOrder = 0
        object SB_ImportaExcel: TSpeedButton
          Left = 40
          Top = 56
          Width = 153
          Height = 39
          Caption = 'Importar Planilha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          OnClick = SB_ImportaExcelClick
        end
        object DBN_ANALISES: TDBNavigator
          Left = 0
          Top = 10
          Width = 240
          Height = 25
          DataSource = DM_Robos_Financeiros.DS_ANALISES
          TabOrder = 0
          OnClick = DBN_ANALISESClick
        end
      end
      object PC_Analise: TPageControl
        Left = 0
        Top = 129
        Width = 933
        Height = 548
        ActivePage = TS_Detalhes
        Align = alClient
        TabOrder = 1
        object TS_Analise_Lista: TTabSheet
          Caption = 'Lista'
          object L_LISTA_ANALISES: TLabel
            Left = 10
            Top = 20
            Width = 93
            Height = 13
            Caption = 'Lista de an'#225'lises'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DB_ANALISES: TDBGrid
            Left = 10
            Top = 50
            Width = 695
            Height = 295
            DataSource = DM_Robos_Financeiros.DS_ANALISES
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_ANALISE'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TITULO_DA_ANALISE'
                Width = 178
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO_DO_PERIODO'
                Width = 190
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERIODO_EM_ANOS'
                Width = 105
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SALDO_INICIAL'
                Visible = True
              end>
          end
        end
        object TS_Detalhes: TTabSheet
          Caption = 'Detalhes'
          ImageIndex = 1
          object L_Descricao_Analise: TLabel
            Left = 327
            Top = 108
            Width = 55
            Height = 13
            Caption = 'Descri'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object L_SaldoInicial_Analise: TLabel
            Left = 548
            Top = 30
            Width = 68
            Height = 13
            Caption = 'Saldo Inicial'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object L_PeriodoEmAnos_Analise: TLabel
            Left = 294
            Top = 30
            Width = 104
            Height = 13
            Caption = 'Per'#237'odo (em anos)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object L_Identificador_Analise: TLabel
            Left = 29
            Top = 30
            Width = 73
            Height = 13
            Caption = 'Identificador'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object L_TituloDaAnalise_Analise: TLabel
            Left = 28
            Top = 108
            Width = 92
            Height = 13
            Caption = 'T'#237'tulo da an'#225'lise'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBE_SALDO_INICIAL: TDBEdit
            Left = 548
            Top = 60
            Width = 121
            Height = 21
            DataField = 'SALDO_INICIAL'
            DataSource = DM_Robos_Financeiros.DS_ANALISES
            TabOrder = 0
          end
          object DBE_PERIODO_EM_ANOS: TDBEdit
            Left = 294
            Top = 60
            Width = 121
            Height = 21
            DataField = 'PERIODO_EM_ANOS'
            DataSource = DM_Robos_Financeiros.DS_ANALISES
            TabOrder = 1
          end
          object DBE_ID_ANALISE: TDBEdit
            Left = 29
            Top = 60
            Width = 91
            Height = 21
            DataField = 'ID_ANALISE'
            DataSource = DM_Robos_Financeiros.DS_ANALISES
            Enabled = False
            ReadOnly = True
            TabOrder = 2
          end
          object DBE_TITULO_DA_ANALISE: TDBEdit
            Left = 28
            Top = 138
            Width = 276
            Height = 21
            DataField = 'TITULO_DA_ANALISE'
            DataSource = DM_Robos_Financeiros.DS_ANALISES
            TabOrder = 3
          end
          object DBE_DESCRICAO: TDBEdit
            Left = 327
            Top = 138
            Width = 334
            Height = 21
            DataField = 'DESCRICAO_DO_PERIODO'
            DataSource = DM_Robos_Financeiros.DS_ANALISES
            TabOrder = 4
          end
        end
      end
      object SG_Importar_Planilha: TStringGrid
        Left = 552
        Top = 504
        Width = 320
        Height = 120
        TabOrder = 2
        Visible = False
      end
    end
    object Robo: TTabSheet
      Caption = 'Robo'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object P_Robo: TPanel
        Left = 0
        Top = 0
        Width = 933
        Height = 129
        Align = alTop
        TabOrder = 0
        object Label4: TLabel
          Left = 330
          Top = 10
          Width = 73
          Height = 13
          Caption = 'Identificador'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label32: TLabel
          Left = 440
          Top = 10
          Width = 92
          Height = 13
          Caption = 'T'#237'tulo da an'#225'lise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBN_ROBOS: TDBNavigator
          Left = 0
          Top = 10
          Width = 240
          Height = 25
          DataSource = DM_Robos_Financeiros.DS_ROBOS
          TabOrder = 0
          OnClick = DBN_ROBOSClick
        end
        object DBE_IDENTIFICADOR_RA: TDBEdit
          Left = 330
          Top = 30
          Width = 91
          Height = 21
          DataField = 'ID_ANALISE'
          DataSource = DM_Robos_Financeiros.DS_ANALISES
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBE_TITULO_DA_ANALISE_RA: TDBEdit
          Left = 440
          Top = 30
          Width = 276
          Height = 21
          DataField = 'TITULO_DA_ANALISE'
          DataSource = DM_Robos_Financeiros.DS_ANALISES
          Enabled = False
          ReadOnly = True
          TabOrder = 2
        end
      end
      object PC_Robo: TPageControl
        Left = 0
        Top = 129
        Width = 933
        Height = 548
        ActivePage = TS_Robo_Detalhes
        Align = alClient
        TabOrder = 1
        object TS_Robo_Lista: TTabSheet
          Caption = 'Lista'
          object Label8: TLabel
            Left = 20
            Top = 20
            Width = 79
            Height = 13
            Caption = 'Lista de robos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DB_ROBOS: TDBGrid
            Left = 20
            Top = 50
            Width = 277
            Height = 301
            DataSource = DM_Robos_Financeiros.DS_ROBOS
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_ROBO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_ANALISE'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_DO_ROBO'
                Visible = True
              end>
          end
        end
        object TS_Robo_Detalhes: TTabSheet
          Caption = 'Detalhes'
          ImageIndex = 1
          object L_Identificador_Robo: TLabel
            Left = 20
            Top = 30
            Width = 73
            Height = 13
            Caption = 'Identificador'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object L_AnaliseID_Robo: TLabel
            Left = 209
            Top = 30
            Width = 57
            Height = 13
            Caption = 'An'#225'lise ID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object L_NomeDoRobo_Robo: TLabel
            Left = 20
            Top = 102
            Width = 81
            Height = 13
            Caption = 'Nome do Robo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBE_ID_ROBO: TDBEdit
            Left = 20
            Top = 60
            Width = 91
            Height = 21
            Ctl3D = True
            DataField = 'ID_ROBO'
            DataSource = DM_Robos_Financeiros.DS_ROBOS
            Enabled = False
            ParentCtl3D = False
            TabOrder = 0
          end
          object DBE_ID_ANALISE_R: TDBEdit
            Left = 209
            Top = 60
            Width = 121
            Height = 21
            DataField = 'ID_ANALISE'
            DataSource = DM_Robos_Financeiros.DS_ROBOS
            Enabled = False
            TabOrder = 1
          end
          object DBE_NOME_DO_ROBO: TDBEdit
            Left = 20
            Top = 132
            Width = 310
            Height = 21
            DataField = 'NOME_DO_ROBO'
            DataSource = DM_Robos_Financeiros.DS_ROBOS
            TabOrder = 2
          end
        end
      end
    end
    object Setup: TTabSheet
      Caption = 'Setup'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object P_Setup: TPanel
        Left = 0
        Top = 0
        Width = 933
        Height = 129
        Align = alTop
        TabOrder = 0
        object L_IdentificadorRobo_Setup: TLabel
          Left = 330
          Top = 60
          Width = 73
          Height = 13
          Caption = 'Identificador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object L_NomeDoRobo_Setup: TLabel
          Left = 440
          Top = 60
          Width = 81
          Height = 13
          Caption = 'Nome do Robo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object L_IdentificadorAnalise_Setup: TLabel
          Left = 330
          Top = 10
          Width = 73
          Height = 13
          Caption = 'Identificador'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object L_TituloDaAnalise_Setup: TLabel
          Left = 440
          Top = 10
          Width = 92
          Height = 13
          Caption = 'T'#237'tulo da an'#225'lise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBN_SETUPS: TDBNavigator
          Left = 0
          Top = 10
          Width = 240
          Height = 25
          DataSource = DM_Robos_Financeiros.DS_SETUPS
          TabOrder = 0
          OnClick = DBN_SETUPSClick
        end
        object DBE_IDENTIFICADOR_SR: TDBEdit
          Left = 330
          Top = 80
          Width = 91
          Height = 21
          Ctl3D = True
          DataField = 'ID_ROBO'
          DataSource = DM_Robos_Financeiros.DS_ROBOS
          Enabled = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBE_NOME_DO_ROBO_SR: TDBEdit
          Left = 440
          Top = 80
          Width = 276
          Height = 21
          DataField = 'NOME_DO_ROBO'
          DataSource = DM_Robos_Financeiros.DS_ROBOS
          Enabled = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBE_IDENTIFICADOR_SA: TDBEdit
          Left = 330
          Top = 30
          Width = 91
          Height = 21
          DataField = 'ID_ANALISE'
          DataSource = DM_Robos_Financeiros.DS_ANALISES
          Enabled = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBE_TITULO_DA_ANALISE_SA: TDBEdit
          Left = 440
          Top = 30
          Width = 276
          Height = 21
          DataField = 'TITULO_DA_ANALISE'
          DataSource = DM_Robos_Financeiros.DS_ANALISES
          Enabled = False
          ReadOnly = True
          TabOrder = 4
        end
      end
      object PC_Setup: TPageControl
        Left = 0
        Top = 129
        Width = 933
        Height = 548
        ActivePage = TS_Setup_Detalhes
        Align = alClient
        TabOrder = 1
        object TS_Setup_Lista: TTabSheet
          Caption = 'Lista'
          object Label11: TLabel
            Left = 10
            Top = 20
            Width = 85
            Height = 13
            Caption = 'Lista de setups'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DB_SETUPS: TDBGrid
            Left = 10
            Top = 50
            Width = 1118
            Height = 308
            DataSource = DM_Robos_Financeiros.DS_SETUPS
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_SETUP'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_ROBO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MAGIC'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_DO_SETUP'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LUCRO_BRUTO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LUCRO_LIQUIDO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERDA_BRUTA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PAY_OFF'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FATOR_LUCRO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FATOR_RECUPERACAO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SHARPE'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CORRELACAO_LR'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DD_FINANCEIRO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CALMAR_R'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CAGR____'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RESULTADO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INDICE_L_X_P'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MEDIA_LUCRO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MEDIA_PREJUIZO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RELACAO_MEDL_X_MEDP'
                Visible = True
              end>
          end
        end
        object TS_Setup_Detalhes: TTabSheet
          Caption = 'Detalhes'
          ImageIndex = 1
          object L_Identificador_Setup: TLabel
            Left = 20
            Top = 30
            Width = 73
            Height = 13
            Caption = 'Identificador'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object L_RoboID_Setup: TLabel
            Left = 160
            Top = 30
            Width = 45
            Height = 13
            Caption = 'Robo ID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object L_Magic_Setup: TLabel
            Left = 450
            Top = 100
            Width = 38
            Height = 13
            Caption = 'MAGIC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object L_NomeDoSetup_Setup: TLabel
            Left = 20
            Top = 100
            Width = 85
            Height = 13
            Caption = 'Nome do Setup'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object L_LucroBruto_Setup: TLabel
            Left = 20
            Top = 200
            Width = 65
            Height = 13
            Caption = 'Lucro Bruto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object L_LucroLiquido_Setup: TLabel
            Left = 160
            Top = 200
            Width = 74
            Height = 13
            Caption = 'Lucro L'#237'quido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object L_PerdaBruta_Setup: TLabel
            Left = 450
            Top = 200
            Width = 67
            Height = 13
            Caption = 'Perda Bruta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object L_PayOff_Setup: TLabel
            Left = 310
            Top = 200
            Width = 47
            Height = 13
            Caption = 'PAY-OFF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object L_FatorLucro_Setup: TLabel
            Left = 20
            Top = 380
            Width = 64
            Height = 13
            Caption = 'Fator Lucro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object L_FatorRecuperacao_Setup: TLabel
            Left = 20
            Top = 300
            Width = 107
            Height = 13
            Caption = 'Fator Recupera'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object L_Sharpe_Setup: TLabel
            Left = 160
            Top = 300
            Width = 40
            Height = 13
            Caption = 'Sharpe'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object L_CorrelacaoLR_Setup: TLabel
            Left = 300
            Top = 300
            Width = 78
            Height = 13
            Caption = 'Correla'#231#227'o LR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object L_DDFinanceiro_Setup: TLabel
            Left = 450
            Top = 300
            Width = 77
            Height = 13
            Caption = 'DD Financeiro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object L_CalmarR_Setup: TLabel
            Left = 300
            Top = 380
            Width = 51
            Height = 13
            Caption = 'Calmar R'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object L_Resultado_Setup: TLabel
            Left = 450
            Top = 380
            Width = 57
            Height = 13
            Caption = 'Resultado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object L_IndiceLucroXPrejuizo_Setup: TLabel
            Left = 160
            Top = 380
            Width = 128
            Height = 13
            Caption = #205'ndice Lucro x Preju'#237'zo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object L_MediaLucro_Setup: TLabel
            Left = 20
            Top = 450
            Width = 68
            Height = 13
            Caption = 'M'#233'dia Lucro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object L_MediaPrejuizo_Setup: TLabel
            Left = 160
            Top = 450
            Width = 83
            Height = 13
            Caption = 'M'#233'dia Preju'#237'zo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object L_RelacaoMediaMLXMP_Setup: TLabel
            Left = 312
            Top = 450
            Width = 205
            Height = 13
            Caption = 'Rela'#231#227'o M'#233'dia (MLucro x MPreju'#237'zo)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBE_ID_SETUP: TDBEdit
            Left = 20
            Top = 60
            Width = 91
            Height = 21
            DataField = 'ID_SETUP'
            DataSource = DM_Robos_Financeiros.DS_SETUPS
            Enabled = False
            TabOrder = 2
          end
          object DBE_ID_ROBO_S: TDBEdit
            Left = 160
            Top = 60
            Width = 91
            Height = 21
            DataField = 'ID_ROBO'
            DataSource = DM_Robos_Financeiros.DS_SETUPS
            Enabled = False
            TabOrder = 14
          end
          object DBE_MAGIC: TDBEdit
            Left = 450
            Top = 130
            Width = 91
            Height = 21
            DataField = 'MAGIC'
            DataSource = DM_Robos_Financeiros.DS_SETUPS
            TabOrder = 1
          end
          object DBE_NOME_DO_SETUP: TDBEdit
            Left = 20
            Top = 130
            Width = 381
            Height = 21
            DataField = 'NOME_DO_SETUP'
            DataSource = DM_Robos_Financeiros.DS_SETUPS
            TabOrder = 0
          end
          object DBE_LUCRO_BRUTO: TDBEdit
            Left = 20
            Top = 230
            Width = 91
            Height = 21
            DataField = 'LUCRO_BRUTO'
            DataSource = DM_Robos_Financeiros.DS_SETUPS
            TabOrder = 3
          end
          object DBE_LUCRO_LIQUIDO: TDBEdit
            Left = 160
            Top = 230
            Width = 91
            Height = 21
            DataField = 'LUCRO_LIQUIDO'
            DataSource = DM_Robos_Financeiros.DS_SETUPS
            TabOrder = 4
          end
          object DBE_PERDA_BRUTA: TDBEdit
            Left = 450
            Top = 230
            Width = 91
            Height = 21
            Color = clGradientInactiveCaption
            DataField = 'PERDA_BRUTA'
            DataSource = DM_Robos_Financeiros.DS_SETUPS
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 13
          end
          object DBE_PAY_OFF: TDBEdit
            Left = 310
            Top = 230
            Width = 91
            Height = 21
            DataField = 'PAY_OFF'
            DataSource = DM_Robos_Financeiros.DS_SETUPS
            TabOrder = 5
          end
          object DBE_FATOR_LUCRO: TDBEdit
            Left = 20
            Top = 410
            Width = 91
            Height = 21
            DataField = 'FATOR_LUCRO'
            DataSource = DM_Robos_Financeiros.DS_SETUPS
            TabOrder = 10
          end
          object DBE_FATOR_RECUPERACAO: TDBEdit
            Left = 20
            Top = 330
            Width = 91
            Height = 21
            DataField = 'FATOR_RECUPERACAO'
            DataSource = DM_Robos_Financeiros.DS_SETUPS
            TabOrder = 6
          end
          object DBE_SHARPE: TDBEdit
            Left = 160
            Top = 330
            Width = 91
            Height = 21
            DataField = 'SHARPE'
            DataSource = DM_Robos_Financeiros.DS_SETUPS
            TabOrder = 7
          end
          object DBE_CORRELACAO: TDBEdit
            Left = 300
            Top = 330
            Width = 91
            Height = 21
            DataField = 'CORRELACAO_LR'
            DataSource = DM_Robos_Financeiros.DS_SETUPS
            TabOrder = 8
          end
          object DBE_DD_FINANCEIRO: TDBEdit
            Left = 450
            Top = 330
            Width = 91
            Height = 21
            DataField = 'DD_FINANCEIRO'
            DataSource = DM_Robos_Financeiros.DS_SETUPS
            TabOrder = 9
          end
          object DBE_CALMAR_R: TDBEdit
            Left = 300
            Top = 410
            Width = 91
            Height = 21
            Color = clGradientInactiveCaption
            DataField = 'CALMAR_R'
            DataSource = DM_Robos_Financeiros.DS_SETUPS
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 15
          end
          object DBE_RESULTADO: TDBEdit
            Left = 450
            Top = 410
            Width = 91
            Height = 21
            Color = clGradientInactiveCaption
            DataField = 'RESULTADO'
            DataSource = DM_Robos_Financeiros.DS_SETUPS
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 16
          end
          object DBE_INDICE_L_X_P: TDBEdit
            Left = 160
            Top = 410
            Width = 91
            Height = 21
            Color = clGradientInactiveCaption
            DataField = 'INDICE_L_X_P'
            DataSource = DM_Robos_Financeiros.DS_SETUPS
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 17
          end
          object DBE_MEDIA_LUCRO: TDBEdit
            Left = 20
            Top = 480
            Width = 91
            Height = 21
            DataField = 'MEDIA_LUCRO'
            DataSource = DM_Robos_Financeiros.DS_SETUPS
            TabOrder = 11
          end
          object DBE_MEDIA_PREJUIZO: TDBEdit
            Left = 152
            Top = 480
            Width = 91
            Height = 21
            DataField = 'MEDIA_PREJUIZO'
            DataSource = DM_Robos_Financeiros.DS_SETUPS
            TabOrder = 12
          end
          object DBE_RELACAO_MEDIA_ML_X_MP: TDBEdit
            Left = 310
            Top = 480
            Width = 91
            Height = 21
            Color = clGradientInactiveCaption
            DataField = 'RELACAO_MEDL_X_MEDP'
            DataSource = DM_Robos_Financeiros.DS_SETUPS
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 18
          end
        end
      end
    end
  end
  object DS_ANALISES: TDataSource
    Left = 736
    Top = 72
  end
  object OD_Importar_Planilha: TOpenDialog
    Left = 204
    Top = 96
  end
  object OD_Importar_BD: TOpenDialog
    Left = 364
    Top = 65520
  end
end
