object DM_Robos_Financeiros: TDM_Robos_Financeiros
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 142
  Top = 188
  Height = 650
  Width = 977
  object FDC_RobosFinanceiros: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=localhost'
      'Port=3050'
      'DriverID=FB')
    LoginPrompt = False
    Left = 37
    Top = 11
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files (x86)\Firebird\Firebird_2_5\bin\fbclient.dll'
    Left = 157
    Top = 11
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    ScreenCursor = gcrHourGlass
    Left = 157
    Top = 75
  end
  object FDQ_RobosFinanceiros_A: TFDQuery
    Connection = FDC_RobosFinanceiros
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.GeneratorName = 'NOVO_ID_ANALISE'
    UpdateOptions.AutoIncFields = 'ID_ANALISE'
    SQL.Strings = (
      'SELECT * FROM ANALISES')
    Left = 285
    Top = 11
    object FDQ_RobosFinanceiros_AID_ANALISE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_ANALISE'
      Origin = 'ID_ANALISE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQ_RobosFinanceiros_ATITULO_DA_ANALISE: TStringField
      FieldName = 'TITULO_DA_ANALISE'
      Origin = 'TITULO_DA_ANALISE'
      Size = 30
    end
    object FDQ_RobosFinanceiros_ADESCRICAO_DO_PERIODO: TStringField
      FieldName = 'DESCRICAO_DO_PERIODO'
      Origin = 'DESCRICAO_DO_PERIODO'
      Size = 30
    end
    object FDQ_RobosFinanceiros_APERIODO_EM_ANOS: TIntegerField
      FieldName = 'PERIODO_EM_ANOS'
      Origin = 'PERIODO_EM_ANOS'
    end
    object FDQ_RobosFinanceiros_ASALDO_INICIAL: TBCDField
      FieldName = 'SALDO_INICIAL'
      Origin = 'SALDO_INICIAL'
      Precision = 18
      Size = 2
    end
  end
  object FDQ_RobosFinanceiros_R: TFDQuery
    IndexFieldNames = 'ID_ANALISE'
    MasterSource = DS_ANALISES
    MasterFields = 'ID_ANALISE'
    DetailFields = 'ID_ANALISE'
    Connection = FDC_RobosFinanceiros
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'NOVO_ID_ROBO'
    UpdateOptions.AutoIncFields = 'ID_ROBO'
    SQL.Strings = (
      'SELECT * FROM ROBOS WHERE ID_ANALISE = :"ID_ANALISE"')
    Left = 285
    Top = 75
    ParamData = <
      item
        Name = 'ID_ANALISE'
        IsCaseSensitive = True
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 1
      end>
    object FDQ_RobosFinanceiros_RID_ROBO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_ROBO'
      Origin = 'ID_ROBO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQ_RobosFinanceiros_RID_ANALISE: TIntegerField
      FieldName = 'ID_ANALISE'
      Origin = 'ID_ANALISE'
    end
    object FDQ_RobosFinanceiros_RNOME_DO_ROBO: TStringField
      FieldName = 'NOME_DO_ROBO'
      Origin = 'NOME_DO_ROBO'
    end
  end
  object FDQ_RobosFinanceiros_S: TFDQuery
    AfterPost = FDQ_RobosFinanceiros_SAfterPost
    IndexFieldNames = 'ID_ROBO'
    MasterSource = DS_ROBOS
    MasterFields = 'ID_ROBO'
    DetailFields = 'ID_ROBO'
    Connection = FDC_RobosFinanceiros
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'NOVO_ID_SETUP'
    UpdateOptions.AutoIncFields = 'ID_SETUP'
    SQL.Strings = (
      'SELECT * FROM SETUPS WHERE ID_ROBO = :"ID_ROBO"')
    Left = 288
    Top = 144
    ParamData = <
      item
        Name = 'ID_ROBO'
        IsCaseSensitive = True
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 1
      end>
    object FDQ_RobosFinanceiros_SID_SETUP: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_SETUP'
      Origin = 'ID_SETUP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQ_RobosFinanceiros_SID_ROBO: TIntegerField
      FieldName = 'ID_ROBO'
      Origin = 'ID_ROBO'
    end
    object FDQ_RobosFinanceiros_SMAGIC: TStringField
      FieldName = 'MAGIC'
      Origin = 'MAGIC'
    end
    object FDQ_RobosFinanceiros_SNOME_DO_SETUP: TStringField
      FieldName = 'NOME_DO_SETUP'
      Origin = 'NOME_DO_SETUP'
      Size = 30
    end
    object FDQ_RobosFinanceiros_SLUCRO_BRUTO: TBCDField
      FieldName = 'LUCRO_BRUTO'
      Origin = 'LUCRO_BRUTO'
      Precision = 18
      Size = 2
    end
    object FDQ_RobosFinanceiros_SLUCRO_LIQUIDO: TBCDField
      FieldName = 'LUCRO_LIQUIDO'
      Origin = 'LUCRO_LIQUIDO'
      Precision = 18
      Size = 2
    end
    object FDQ_RobosFinanceiros_SPERDA_BRUTA: TBCDField
      FieldName = 'PERDA_BRUTA'
      Origin = 'PERDA_BRUTA'
      Precision = 18
      Size = 2
    end
    object FDQ_RobosFinanceiros_SPAY_OFF: TBCDField
      FieldName = 'PAY_OFF'
      Origin = 'PAY_OFF'
      Precision = 18
      Size = 2
    end
    object FDQ_RobosFinanceiros_SFATOR_LUCRO: TBCDField
      FieldName = 'FATOR_LUCRO'
      Origin = 'FATOR_LUCRO'
      Precision = 18
      Size = 2
    end
    object FDQ_RobosFinanceiros_SFATOR_RECUPERACAO: TBCDField
      FieldName = 'FATOR_RECUPERACAO'
      Origin = 'FATOR_RECUPERACAO'
      Precision = 18
      Size = 2
    end
    object FDQ_RobosFinanceiros_SSHARPE: TBCDField
      FieldName = 'SHARPE'
      Origin = 'SHARPE'
      Precision = 18
      Size = 2
    end
    object FDQ_RobosFinanceiros_SCORRELACAO_LR: TBCDField
      FieldName = 'CORRELACAO_LR'
      Origin = 'CORRELACAO_LR'
      Precision = 18
      Size = 2
    end
    object FDQ_RobosFinanceiros_SDD_FINANCEIRO: TBCDField
      FieldName = 'DD_FINANCEIRO'
      Origin = 'DD_FINANCEIRO'
      Precision = 18
      Size = 2
    end
    object FDQ_RobosFinanceiros_SCALMAR_R: TBCDField
      FieldName = 'CALMAR_R'
      Origin = 'CALMAR_R'
      Precision = 18
    end
    object FDQ_RobosFinanceiros_SRESULTADO: TBCDField
      FieldName = 'RESULTADO'
      Origin = 'RESULTADO'
      Precision = 18
      Size = 2
    end
    object FDQ_RobosFinanceiros_SMEDIA_LUCRO: TBCDField
      FieldName = 'MEDIA_LUCRO'
      Origin = 'MEDIA_LUCRO'
      Precision = 18
      Size = 2
    end
    object FDQ_RobosFinanceiros_SMEDIA_PREJUIZO: TBCDField
      FieldName = 'MEDIA_PREJUIZO'
      Origin = 'MEDIA_PREJUIZO'
      Precision = 18
      Size = 2
    end
    object FDQ_RobosFinanceiros_SRELACAO_MEDL_X_MEDP: TBCDField
      FieldName = 'RELACAO_MEDL_X_MEDP'
      Origin = 'RELACAO_MEDL_X_MEDP'
      Precision = 18
    end
    object FDQ_RobosFinanceiros_SCAGR: TBCDField
      FieldName = 'CAGR'
      Origin = 'CAGR'
      Precision = 18
      Size = 2
    end
    object FDQ_RobosFinanceiros_SINDICE_L_X_P: TBCDField
      FieldName = 'INDICE_L_X_P'
      Origin = 'INDICE_L_X_P'
      Precision = 18
      Size = 2
    end
  end
  object DS_ANALISES: TDataSource
    DataSet = FDQ_RobosFinanceiros_A
    Left = 400
    Top = 16
  end
  object DS_ROBOS: TDataSource
    DataSet = FDQ_RobosFinanceiros_R
    Left = 400
    Top = 80
  end
  object DS_SETUPS: TDataSource
    DataSet = FDQ_RobosFinanceiros_S
    Left = 400
    Top = 144
  end
  object IBTransactionAuxiliar: TIBTransaction
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 512
    Top = 16
  end
  object FDQ_RF_PAYOFF: TFDQuery
    Connection = FDC_RobosFinanceiros
    SQL.Strings = (
      'SELECT * FROM PAYOFF')
    Left = 40
    Top = 232
  end
  object FDQ_RF_FATOR_LUCRO: TFDQuery
    Connection = FDC_RobosFinanceiros
    SQL.Strings = (
      'SELECT * FROM FATOR_LUCRO')
    Left = 160
    Top = 232
  end
  object FDQ_RF_FATOR_RECUPERACAO: TFDQuery
    Connection = FDC_RobosFinanceiros
    SQL.Strings = (
      'SELECT * FROM FATOR_RECUPERACAO')
    Left = 312
    Top = 232
  end
  object FDQ_RF_SHARPE: TFDQuery
    Connection = FDC_RobosFinanceiros
    SQL.Strings = (
      'SELECT * FROM SHARPE')
    Left = 456
    Top = 232
  end
  object FDQ_RF_CORRELACAO: TFDQuery
    Connection = FDC_RobosFinanceiros
    SQL.Strings = (
      'SELECT * FROM CORRELACAO')
    Left = 576
    Top = 232
  end
  object FDQ_RF_CALMAR: TFDQuery
    Connection = FDC_RobosFinanceiros
    SQL.Strings = (
      'SELECT * FROM CALMAR')
    Left = 40
    Top = 352
  end
  object FDQ_RF_CAGR: TFDQuery
    Connection = FDC_RobosFinanceiros
    SQL.Strings = (
      'SELECT * FROM CAGR')
    Left = 272
    Top = 352
  end
  object FDQ_RF_DD_FINANCEIRO: TFDQuery
    Connection = FDC_RobosFinanceiros
    SQL.Strings = (
      'SELECT * FROM DD_FINANCEIRO')
    Left = 160
    Top = 352
  end
  object FDQ_RF_RELACAO_LUCRO_X_PERDA: TFDQuery
    Connection = FDC_RobosFinanceiros
    SQL.Strings = (
      'SELECT * FROM RELACAO_LUCROXPERDA')
    Left = 416
    Top = 352
  end
  object DS_PAYOFF: TDataSource
    DataSet = FDQ_RF_PAYOFF
    Left = 40
    Top = 280
  end
  object DS_FATOR_LUCRO: TDataSource
    DataSet = FDQ_RF_FATOR_LUCRO
    Left = 160
    Top = 280
  end
  object DS_FATOR_RECUPERACAO: TDataSource
    DataSet = FDQ_RF_FATOR_RECUPERACAO
    Left = 312
    Top = 280
  end
  object DS_SHARPE: TDataSource
    DataSet = FDQ_RF_SHARPE
    Left = 456
    Top = 280
  end
  object DS_CORRELACAO: TDataSource
    DataSet = FDQ_RF_CORRELACAO
    Left = 576
    Top = 280
  end
  object DS_CALMAR: TDataSource
    DataSet = FDQ_RF_CALMAR
    Left = 40
    Top = 400
  end
  object DS_CAGR: TDataSource
    DataSet = FDQ_RF_CAGR
    Left = 272
    Top = 400
  end
  object DS_DD_FINANCEIRO: TDataSource
    DataSet = FDQ_RF_DD_FINANCEIRO
    Left = 160
    Top = 400
  end
  object DS_RELACAO_LUCROXPERDA: TDataSource
    DataSet = FDQ_RF_RELACAO_LUCRO_X_PERDA
    Left = 416
    Top = 400
  end
  object DS_GLOBAL: TDataSource
    AutoEdit = False
    DataSet = FDQ_GLOBAL
    Left = 208
    Top = 496
  end
  object FDQ_GLOBAL: TFDQuery
    Connection = FDC_RobosFinanceiros
    Left = 144
    Top = 496
  end
end
