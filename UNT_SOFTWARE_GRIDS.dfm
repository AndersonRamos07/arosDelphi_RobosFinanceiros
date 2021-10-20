object FRM_SOFTWARE: TFRM_SOFTWARE
  Left = 221
  Top = 155
  Align = alClient
  Caption = 'SOFTWARE'
  ClientHeight = 556
  ClientWidth = 845
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 845
    Height = 705
    ActivePage = Analise
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 25
    ExplicitHeight = 556
    object Analise: TTabSheet
      Caption = 'An'#225'lise'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 281
      ExplicitHeight = 165
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 837
        Height = 41
        Align = alTop
        TabOrder = 0
        object DBN_ANALISES: TcxDBNavigator
          Left = 0
          Top = 1
          Width = 270
          Height = 25
          Buttons.CustomButtons = <>
          DataSource = DM_SOFTWARE.DS_ANALISES
          TabOrder = 0
        end
      end
      object PC_Analise: TPageControl
        Left = 0
        Top = 41
        Width = 837
        Height = 636
        ActivePage = Detalhes
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
          object DBGrid1: TDBGrid
            Left = 10
            Top = 50
            Width = 695
            Height = 295
            DataSource = DM_SOFTWARE.DS_ANALISES
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
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO_DO_PERIODO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERIODO_EM_ANOS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SALDO_INICIAL'
                Visible = True
              end>
          end
        end
        object Detalhes: TTabSheet
          Caption = 'Detalhes'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 281
          ExplicitHeight = 165
          object DBEdit1: TDBEdit
            Left = 3
            Top = 43
            Width = 70
            Height = 21
            DataField = 'ID_ANALISE'
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
                ActivePage = TS_Analise_Detalhes
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
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'Tahoma'
                    TitleFont.Style = []
                  end
                end
                object TS_Analise_Detalhes: TTabSheet
                  Caption = 'Detalhes'
                  ImageIndex = 1
                  object Label5: TLabel
                    Left = 20
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
                    Left = 20
                    Top = 100
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
                  object Label3: TLabel
                    Left = 335
                    Top = 100
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
                  object DBEdit3: TDBEdit
                    Left = 20
                    Top = 60
                    Width = 91
                    Height = 21
                    DataField = 'ID_ANALISE'
                    DataSource = DM_SOFTWARE.DS_ANALISES
                    TabOrder = 0
                  end
                  object DBEdit5: TDBEdit
                    Left = 294
                    Top = 60
                    Width = 121
                    Height = 21
                    DataField = 'PERIODO_EM_ANOS'
                    DataSource = DM_SOFTWARE.DS_ANALISES
                    TabOrder = 1
                  end
                  object DBEdit6: TDBEdit
                    Left = 548
                    Top = 60
                    Width = 121
                    Height = 21
                    DataField = 'SALDO_INICIAL'
                    DataSource = DM_SOFTWARE.DS_ANALISES
                    TabOrder = 2
                  end
                  object DBEdit2: TDBEdit
                    Left = 21
                    Top = 130
                    Width = 276
                    Height = 21
                    DataField = 'TITULO_DA_ANALISE'
                    DataSource = DM_SOFTWARE.DS_ANALISES
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
            Top = 122
            Width = 334
            Height = 21
            DataField = 'DESCRICAO_DO_PERIODO'
            DataSource = DM_SOFTWARE.DS_ANALISES
            TabOrder = 2
          end
        end
      end
    end
    object Robo: TTabSheet
      Caption = 'Robo'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 281
      ExplicitHeight = 165
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 837
        Height = 41
        Align = alTop
        TabOrder = 0
        object DBN_ROBOS: TcxDBNavigator
          Left = 0
          Top = 1
          Width = 270
          Height = 25
          Buttons.CustomButtons = <>
          DataSource = DM_SOFTWARE.DS_ROBOS
          TabOrder = 0
        end
      end
      object PC_Robo: TPageControl
        Left = 0
        Top = 41
        Width = 837
        Height = 636
        ActivePage = TS_Robo_Lista
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 1145
        ExplicitHeight = 372
        object TS_Robo_Lista: TTabSheet
          Caption = 'Lista'
          ExplicitHeight = 459
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
          object DBGrid2: TDBGrid
            Left = 20
            Top = 50
            Width = 277
            Height = 301
            DataSource = DM_SOFTWARE.DS_ROBOS
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
          ExplicitHeight = 459
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
          object DBEdit7: TDBEdit
            Left = 20
            Top = 60
            Width = 91
            Height = 21
            Ctl3D = True
            DataField = 'ID_ROBO'
            DataSource = DM_SOFTWARE.DS_ROBOS
            ParentCtl3D = False
            TabOrder = 0
          end
          object DBEdit8: TDBEdit
            Left = 209
            Top = 60
            Width = 121
            Height = 21
            DataField = 'ID_ANALISE'
            DataSource = DM_SOFTWARE.DS_ROBOS
            TabOrder = 1
          end
          object DBEdit29: TDBEdit
            Left = 20
            Top = 132
            Width = 310
            Height = 21
            DataField = 'NOME_DO_ROBO'
            DataSource = DM_SOFTWARE.DS_ROBOS
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
      ExplicitWidth = 281
      ExplicitHeight = 165
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 837
        Height = 41
        Align = alTop
        TabOrder = 0
        object DBN_SETUPS: TcxDBNavigator
          Left = 0
          Top = 1
          Width = 270
          Height = 25
          Buttons.CustomButtons = <>
          DataSource = DM_SOFTWARE.DS_SETUPS
          TabOrder = 0
        end
      end
      object PC_Setup: TPageControl
        Left = 0
        Top = 41
        Width = 837
        Height = 636
        ActivePage = TS_Setup_Lista
        Align = alClient
        TabOrder = 1
        object TS_Setup_Lista: TTabSheet
          Caption = 'Lista'
          ExplicitHeight = 459
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
          object DBGrid3: TDBGrid
            Left = 10
            Top = 50
            Width = 1118
            Height = 308
            DataSource = DM_SOFTWARE.DS_SETUPS
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
          ExplicitHeight = 459
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
            Top = 30
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
            Left = 300
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
            Left = 450
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
            Left = 160
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
            Left = 20
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
          object DBEdit9: TDBEdit
            Left = 20
            Top = 60
            Width = 91
            Height = 21
            DataField = 'ID_SETUP'
            DataSource = DM_SOFTWARE.DS_SETUPS
            TabOrder = 0
          end
          object DBEdit10: TDBEdit
            Left = 160
            Top = 60
            Width = 91
            Height = 21
            DataField = 'ID_ROBO'
            DataSource = DM_SOFTWARE.DS_SETUPS
            TabOrder = 1
          end
          object DBEdit11: TDBEdit
            Left = 310
            Top = 60
            Width = 91
            Height = 21
            DataField = 'ID_ANALISE'
            DataSource = DM_SOFTWARE.DS_SETUPS
            TabOrder = 2
          end
          object DBEdit12: TDBEdit
            Left = 450
            Top = 60
            Width = 91
            Height = 21
            DataField = 'MAGIC'
            DataSource = DM_SOFTWARE.DS_SETUPS
            TabOrder = 3
          end
          object DBEdit13: TDBEdit
            Left = 20
            Top = 130
            Width = 381
            Height = 21
            DataField = 'NOME_DO_SETUP'
            DataSource = DM_SOFTWARE.DS_SETUPS
            TabOrder = 4
          end
          object DBEdit14: TDBEdit
            Left = 20
            Top = 230
            Width = 91
            Height = 21
            DataField = 'LUCRO_BRUTO'
            DataSource = DM_SOFTWARE.DS_SETUPS
            TabOrder = 5
          end
          object DBEdit15: TDBEdit
            Left = 160
            Top = 230
            Width = 91
            Height = 21
            DataField = 'LUCRO_LIQUIDO'
            DataSource = DM_SOFTWARE.DS_SETUPS
            TabOrder = 6
          end
          object DBEdit16: TDBEdit
            Left = 300
            Top = 230
            Width = 91
            Height = 21
            DataField = 'PERDA_BRUTA'
            DataSource = DM_SOFTWARE.DS_SETUPS
            TabOrder = 7
          end
          object DBEdit17: TDBEdit
            Left = 450
            Top = 230
            Width = 91
            Height = 21
            DataField = 'PAY_OFF'
            DataSource = DM_SOFTWARE.DS_SETUPS
            TabOrder = 8
          end
          object DBEdit18: TDBEdit
            Left = 160
            Top = 410
            Width = 91
            Height = 21
            DataField = 'FATOR_LUCRO'
            DataSource = DM_SOFTWARE.DS_SETUPS
            TabOrder = 9
          end
          object DBEdit19: TDBEdit
            Left = 20
            Top = 330
            Width = 91
            Height = 21
            DataField = 'FATOR_RECUPERACAO'
            DataSource = DM_SOFTWARE.DS_SETUPS
            TabOrder = 10
          end
          object DBEdit20: TDBEdit
            Left = 160
            Top = 330
            Width = 91
            Height = 21
            DataField = 'SHARPE'
            DataSource = DM_SOFTWARE.DS_SETUPS
            TabOrder = 11
          end
          object DBEdit21: TDBEdit
            Left = 300
            Top = 330
            Width = 91
            Height = 21
            DataField = 'CORRELACAO_LR'
            DataSource = DM_SOFTWARE.DS_SETUPS
            TabOrder = 12
          end
          object DBEdit22: TDBEdit
            Left = 450
            Top = 330
            Width = 91
            Height = 21
            DataField = 'DD_FINANCEIRO'
            DataSource = DM_SOFTWARE.DS_SETUPS
            TabOrder = 13
          end
          object DBEdit23: TDBEdit
            Left = 300
            Top = 410
            Width = 91
            Height = 21
            DataField = 'CALMAR_R'
            DataSource = DM_SOFTWARE.DS_SETUPS
            TabOrder = 14
          end
          object DBEdit24: TDBEdit
            Left = 450
            Top = 410
            Width = 91
            Height = 21
            DataField = 'RESULTADO'
            DataSource = DM_SOFTWARE.DS_SETUPS
            TabOrder = 15
          end
          object DBEdit25: TDBEdit
            Left = 20
            Top = 410
            Width = 91
            Height = 21
            DataField = 'INDICE_L_X_P'
            DataSource = DM_SOFTWARE.DS_SETUPS
            TabOrder = 16
          end
          object DBEdit26: TDBEdit
            Left = 20
            Top = 480
            Width = 91
            Height = 21
            DataField = 'MEDIA_LUCRO'
            DataSource = DM_SOFTWARE.DS_SETUPS
            TabOrder = 17
          end
          object DBEdit27: TDBEdit
            Left = 152
            Top = 480
            Width = 91
            Height = 21
            DataField = 'MEDIA_PREJUIZO'
            DataSource = DM_SOFTWARE.DS_SETUPS
            TabOrder = 18
          end
          object DBEdit28: TDBEdit
            Left = 310
            Top = 480
            Width = 91
            Height = 21
            DataField = 'RELACAO_MEDL_X_MEDP'
            DataSource = DM_SOFTWARE.DS_SETUPS
            TabOrder = 19
          end
        end
      end
    end
  end
  object TABELA_ATUAL: TPanel
    Left = 652
    Top = 25
    Width = 185
    Height = 34
    Caption = 'info'
    TabOrder = 1
  end
end
