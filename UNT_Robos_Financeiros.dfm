object FRM_RobosFinanceiros: TFRM_RobosFinanceiros
  Left = 229
  Top = 16
  Align = alClient
  Caption = 'Robos Financeiros'
  ClientHeight = 645
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
    ActivePage = tsAnalise
    Align = alTop
    TabOrder = 0
    OnChange = PC_PrincipalChange
    object tsAnalise: TTabSheet
      Caption = 'An'#225'lise'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 933
        Height = 129
        Align = alTop
        TabOrder = 0
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
        ActivePage = TS_Analise_Lista
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
                Width = 115
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO_DO_PERIODO'
                Width = 143
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERIODO_EM_ANOS'
                Width = 108
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SALDO_INICIAL'
                Visible = True
              end>
          end
        end
        object tsDetalhes: TTabSheet
          Caption = 'Detalhes'
          ImageIndex = 1
          object Label3: TLabel
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
          object Label7: TLabel
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
          object Label2: TLabel
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
          object Label5: TLabel
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
          object Label6: TLabel
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
            TabOrder = 0
          end
          object DBE_PERIODO_EM_ANOS: TDBEdit
            Left = 294
            Top = 60
            Width = 121
            Height = 21
            DataField = 'PERIODO_EM_ANOS'
            TabOrder = 1
          end
          object DBE_ID_ANALISE: TDBEdit
            Left = 29
            Top = 60
            Width = 91
            Height = 21
            DataField = 'ID_ANALISE'
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
            TabOrder = 3
          end
          object DBE_DESCRICAO: TDBEdit
            Left = 327
            Top = 138
            Width = 334
            Height = 21
            DataField = 'DESCRICAO_DO_PERIODO'
            TabOrder = 4
          end
        end
      end
    end
    object Robo: TTabSheet
      Caption = 'Robo'
      ImageIndex = 1
      object Panel3: TPanel
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
        object DBEdit1: TDBEdit
          Left = 330
          Top = 30
          Width = 91
          Height = 21
          DataField = 'ID_ANALISE'
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 440
          Top = 30
          Width = 276
          Height = 21
          DataField = 'TITULO_DA_ANALISE'
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
        ActivePage = TS_Robo_Lista
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
          object Label9: TLabel
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
          object Label10: TLabel
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
          object Label1: TLabel
            Left = 20
            Top = 102
            Width = 74
            Height = 13
            Caption = 'Nom do Robo'
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
            Enabled = False
            TabOrder = 1
          end
          object DBE_NOME_DO_ROBO: TDBEdit
            Left = 20
            Top = 132
            Width = 310
            Height = 21
            DataField = 'NOME_DO_ROBO'
            TabOrder = 2
          end
        end
      end
    end
    object Setup: TTabSheet
      Caption = 'Setup'
      ImageIndex = 2
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 933
        Height = 129
        Align = alTop
        TabOrder = 0
        object Label33: TLabel
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
        object Label34: TLabel
          Left = 440
          Top = 60
          Width = 74
          Height = 13
          Caption = 'Nom do Robo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label35: TLabel
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
        object Label36: TLabel
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
        object DBEdit3: TDBEdit
          Left = 330
          Top = 80
          Width = 91
          Height = 21
          Ctl3D = True
          DataField = 'ID_ROBO'
          Enabled = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 440
          Top = 80
          Width = 276
          Height = 21
          DataField = 'NOME_DO_ROBO'
          Enabled = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 330
          Top = 30
          Width = 91
          Height = 21
          DataField = 'ID_ANALISE'
          Enabled = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit6: TDBEdit
          Left = 440
          Top = 30
          Width = 276
          Height = 21
          DataField = 'TITULO_DA_ANALISE'
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
        ActivePage = TS_Setup_Lista
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
                FieldName = 'ID_ANALISE'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERIODO_EM_ANOS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MAGIC'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_DO_SETUP'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LUCRO_BRUTO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LUCRO_LIQUIDO'
                Width = 64
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
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FATOR_LUCRO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FATOR_RECUPERACAO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SHARPE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CORRELACAO_LR'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DD_FINANCEIRO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CALMAR_R'
                Width = 64
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
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INDICE_L_X_P'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MEDIA_LUCRO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MEDIA_PREJUIZO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RELACAO_MEDL_X_MEDP'
                Width = 64
                Visible = True
              end>
          end
        end
        object TS_Setup_Detalhes: TTabSheet
          Caption = 'Detalhes'
          ImageIndex = 1
          object Label12: TLabel
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
          object Label13: TLabel
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
          object Label14: TLabel
            Left = 310
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
          object Label15: TLabel
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
          object Label16: TLabel
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
          object Label17: TLabel
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
          object Label18: TLabel
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
          object Label19: TLabel
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
          object Label20: TLabel
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
          object Label21: TLabel
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
          object Label22: TLabel
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
          object Label23: TLabel
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
          object Label24: TLabel
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
          object Label25: TLabel
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
          object Label26: TLabel
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
          object Label27: TLabel
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
          object Label28: TLabel
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
          object Label29: TLabel
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
          object Label30: TLabel
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
          object Label31: TLabel
            Left = 310
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
            TabOrder = 3
          end
          object DBE_LUCRO_LIQUIDO: TDBEdit
            Left = 160
            Top = 230
            Width = 91
            Height = 21
            DataField = 'LUCRO_LIQUIDO'
            TabOrder = 4
          end
          object DBE_PERDA_BRUTA: TDBEdit
            Left = 450
            Top = 230
            Width = 91
            Height = 21
            DataField = 'PERDA_BRUTA'
            Enabled = False
            TabOrder = 13
          end
          object DBE_PAY_OFF: TDBEdit
            Left = 310
            Top = 230
            Width = 91
            Height = 21
            DataField = 'PAY_OFF'
            TabOrder = 5
          end
          object DBE_FATOR_LUCRO: TDBEdit
            Left = 20
            Top = 410
            Width = 91
            Height = 21
            DataField = 'FATOR_LUCRO'
            TabOrder = 10
          end
          object DBE_FATOR_RECUPERACAO: TDBEdit
            Left = 20
            Top = 330
            Width = 91
            Height = 21
            DataField = 'FATOR_RECUPERACAO'
            TabOrder = 6
          end
          object DBE_SHARPE: TDBEdit
            Left = 160
            Top = 330
            Width = 91
            Height = 21
            DataField = 'SHARPE'
            TabOrder = 7
          end
          object DBE_CORRELACAO: TDBEdit
            Left = 300
            Top = 330
            Width = 91
            Height = 21
            DataField = 'CORRELACAO_LR'
            TabOrder = 8
          end
          object DBE_DD_FINANCEIRO: TDBEdit
            Left = 450
            Top = 330
            Width = 91
            Height = 21
            DataField = 'DD_FINANCEIRO'
            TabOrder = 9
          end
          object DBE_CALMAR_R: TDBEdit
            Left = 300
            Top = 410
            Width = 91
            Height = 21
            DataField = 'CALMAR_R'
            Enabled = False
            TabOrder = 15
          end
          object DBE_RESULTADO: TDBEdit
            Left = 450
            Top = 410
            Width = 91
            Height = 21
            DataField = 'RESULTADO'
            Enabled = False
            TabOrder = 16
          end
          object DBE_INDICE_L_X_P: TDBEdit
            Left = 160
            Top = 410
            Width = 91
            Height = 21
            DataField = 'INDICE_L_X_P'
            Enabled = False
            TabOrder = 17
          end
          object DBE_MEDIA_LUCRO: TDBEdit
            Left = 20
            Top = 480
            Width = 91
            Height = 21
            DataField = 'MEDIA_LUCRO'
            TabOrder = 11
          end
          object DBE_MEDIA_PREJUIZO: TDBEdit
            Left = 152
            Top = 480
            Width = 91
            Height = 21
            DataField = 'MEDIA_PREJUIZO'
            TabOrder = 12
          end
          object DBE_RELACAO_MEDIA_ML_X_MP: TDBEdit
            Left = 310
            Top = 480
            Width = 91
            Height = 21
            DataField = 'RELACAO_MEDL_X_MEDP'
            Enabled = False
            TabOrder = 18
          end
          object DBEdit7: TDBEdit
            Left = 310
            Top = 60
            Width = 91
            Height = 21
            DataField = 'ID_ANALISE'
            DataSource = DM_Robos_Financeiros.DS_SETUPS
            Enabled = False
            ReadOnly = True
            TabOrder = 19
          end
        end
      end
    end
  end
  object DS_ANALISES: TDataSource
    Left = 736
    Top = 72
  end
end
