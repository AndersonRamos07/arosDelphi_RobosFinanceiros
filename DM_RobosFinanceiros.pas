unit DM_RobosFinanceiros;

interface

uses
{$region 'USES : IMPORTS'}
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.VCLUI.Wait, IBX.IBDatabase,
  Vcl.StdCtrls,
  IniFiles;     // para realizar a leitura do arquivo *.INI
{$endregion}

type
  TDM_Robos_Financeiros = class(TDataModule)
  {$region 'ATRIBUTOS'}
    FDC_RobosFinanceiros: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDQ_RobosFinanceiros_A: TFDQuery;
    FDQ_RobosFinanceiros_R: TFDQuery;
    FDQ_RobosFinanceiros_S: TFDQuery;
    FDQ_RobosFinanceiros_AID_ANALISE: TIntegerField;
    FDQ_RobosFinanceiros_ATITULO_DA_ANALISE: TStringField;
    FDQ_RobosFinanceiros_ADESCRICAO_DO_PERIODO: TStringField;
    FDQ_RobosFinanceiros_APERIODO_EM_ANOS: TIntegerField;
    FDQ_RobosFinanceiros_ASALDO_INICIAL: TBCDField;
    FDQ_RobosFinanceiros_RID_ROBO: TIntegerField;
    FDQ_RobosFinanceiros_RID_ANALISE: TIntegerField;
    FDQ_RobosFinanceiros_SID_SETUP: TIntegerField;
    FDQ_RobosFinanceiros_SID_ROBO: TIntegerField;
    FDQ_RobosFinanceiros_SMAGIC: TStringField;
    FDQ_RobosFinanceiros_SNOME_DO_SETUP: TStringField;
    FDQ_RobosFinanceiros_SLUCRO_BRUTO: TBCDField;
    FDQ_RobosFinanceiros_SLUCRO_LIQUIDO: TBCDField;
    FDQ_RobosFinanceiros_SPERDA_BRUTA: TBCDField;
    FDQ_RobosFinanceiros_SPAY_OFF: TBCDField;
    FDQ_RobosFinanceiros_SFATOR_LUCRO: TBCDField;
    FDQ_RobosFinanceiros_SFATOR_RECUPERACAO: TBCDField;
    FDQ_RobosFinanceiros_SSHARPE: TBCDField;
    FDQ_RobosFinanceiros_SCORRELACAO_LR: TBCDField;
    FDQ_RobosFinanceiros_SDD_FINANCEIRO: TBCDField;
    FDQ_RobosFinanceiros_SCALMAR_R: TBCDField;
    FDQ_RobosFinanceiros_SRESULTADO: TBCDField;
    FDQ_RobosFinanceiros_SMEDIA_LUCRO: TBCDField;
    FDQ_RobosFinanceiros_SMEDIA_PREJUIZO: TBCDField;
    FDQ_RobosFinanceiros_SRELACAO_MEDL_X_MEDP: TBCDField;
    DS_ANALISES: TDataSource;
    DS_ROBOS: TDataSource;
    DS_SETUPS: TDataSource;
    FDQ_RobosFinanceiros_RNOME_DO_ROBO: TStringField;
    FDQ_RobosFinanceiros_SCAGR: TBCDField;
    IBTransactionAuxiliar: TIBTransaction;
    FDQ_RobosFinanceiros_SINDICE_L_X_P: TBCDField;
    FDQ_RF_PAYOFF: TFDQuery;
    FDQ_RF_FATOR_LUCRO: TFDQuery;
    FDQ_RF_FATOR_RECUPERACAO: TFDQuery;
    FDQ_RF_SHARPE: TFDQuery;
    FDQ_RF_CORRELACAO: TFDQuery;
    FDQ_RF_CALMAR: TFDQuery;
    FDQ_RF_CAGR: TFDQuery;
    FDQ_RF_DD_FINANCEIRO: TFDQuery;
    FDQ_RF_RELACAO_LUCRO_X_PERDA: TFDQuery;
    DS_PAYOFF: TDataSource;
    DS_FATOR_LUCRO: TDataSource;
    DS_FATOR_RECUPERACAO: TDataSource;
    DS_SHARPE: TDataSource;
    DS_CORRELACAO: TDataSource;
    DS_CALMAR: TDataSource;
    DS_CAGR: TDataSource;
    DS_DD_FINANCEIRO: TDataSource;
    DS_RELACAO_LUCROXPERDA: TDataSource;
    DS_GLOBAL: TDataSource;
    FDQ_GLOBAL: TFDQuery;
  {$endregion}
  {$region 'PROCEDURES'}
    procedure DataModuleCreate(Sender: TObject);
    procedure FDQ_RobosFinanceiros_SAfterPost(DataSet: TDataSet);
    procedure FDQ_RF_PAYOFFBeforePost(DataSet: TDataSet);
    procedure FDQ_RF_FATOR_LUCROBeforePost(DataSet: TDataSet);
    procedure FDQ_RF_FATOR_RECUPERACAOBeforePost(DataSet: TDataSet);
    procedure FDQ_RF_SHARPEBeforePost(DataSet: TDataSet);
    procedure FDQ_RF_CORRELACAOBeforePost(DataSet: TDataSet);
    procedure FDQ_RF_CALMARBeforePost(DataSet: TDataSet);
    procedure FDQ_RF_CAGRBeforePost(DataSet: TDataSet);
    procedure FDQ_RF_DD_FINANCEIROBeforePost(DataSet: TDataSet);
    procedure FDQ_RF_RELACAO_LUCRO_X_PERDABeforePost(DataSet: TDataSet);
  private
  public
    user, porta, ip, fBD, conexao, conexaoFB : String;
    procedure CodificarINI();
      {$endregion}

  end;


var
  DM_Robos_Financeiros : TDM_Robos_Financeiros;

implementation

uses
{$region 'USES : IMPORTS II'}
 Winapi.Windows, Winapi.Messages, System.Variants, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxNavigator, cxDBNavigator, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Buttons,
  UNT_GLOBAL;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$endregion}
{$R *.dfm}

{$region 'CREATE DO DATAMODULE'}
procedure TDM_Robos_Financeiros.DataModuleCreate(Sender: TObject);
begin
 {$region 'Realizar a conexão conforme o que consta no arquivo INI'}
  conexao := ExtractFilePath(Application.ExeName) + 'BASE_DE_DADOS.FDB';
  FDC_RobosFinanceiros.Params.Database := conexao;
  {$endregion}

  FDQ_RobosFinanceiros_A.Open;
  FDQ_RobosFinanceiros_R.Open;
  FDQ_RobosFinanceiros_S.Open;

  FDQ_RF_PAYOFF.Open;
  FDQ_RF_FATOR_LUCRO.Open;
  FDQ_RF_FATOR_RECUPERACAO.Open;
  FDQ_RF_SHARPE.Open;
  FDQ_RF_CORRELACAO.Open;
  FDQ_RF_CALMAR.Open;
  FDQ_RF_DD_FINANCEIRO.Open;
  FDQ_RF_CAGR.Open;
  FDQ_RF_RELACAO_LUCRO_X_PERDA.Open;
end;
{$endregion}

{$region 'AFTER_POST'}

procedure TDM_Robos_Financeiros.FDQ_RobosFinanceiros_SAfterPost(DataSet: TDataSet);
begin
  FDQ_RobosFinanceiros_S.Close;
  FDQ_RobosFinanceiros_S.Open;
end;
{$endregion}

{$region 'Realizar a leitura do arquivo CONFIG.INI'}
procedure TDM_Robos_Financeiros.CodificarINI;
var
  arquivoIni : TIniFile;
begin
    arquivoIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Config.INI');
    user := arquivoIni.ReadString('Configuracoes', 'nomeUsuario', user);
    porta := arquivoIni.ReadString('Configuracoes', 'porta', porta);
    ip := arquivoIni.ReadString('Configuracoes', 'ip', ip);

    fBD := arquivoIni.ReadString('Configuracoes', 'nomeBD', fBD);
    conexaoFB := ExtractFilePath(Application.ExeName) + fBD;
    arquivoIni.Free;
end;
{$endregion}

{$region 'BEFORE_POST'}
procedure TDM_Robos_Financeiros.FDQ_RF_PAYOFFBeforePost(DataSet: TDataSet);
begin
  FRM_GLOBAL.GeneratorIncrementado('NOVO_ID_PAYOFF');
end;

procedure TDM_Robos_Financeiros.FDQ_RF_FATOR_LUCROBeforePost(DataSet: TDataSet);
begin
  FRM_GLOBAL.GeneratorIncrementado('NOVO_ID_FATOR_LUCRO');
end;

procedure TDM_Robos_Financeiros.FDQ_RF_FATOR_RECUPERACAOBeforePost(
  DataSet: TDataSet);
begin
  FRM_GLOBAL.GeneratorIncrementado('NOVO_ID_FATOR_RECUPERACAO');
end;

procedure TDM_Robos_Financeiros.FDQ_RF_SHARPEBeforePost(DataSet: TDataSet);
begin
  FRM_GLOBAL.GeneratorIncrementado('NOVO_ID_SHARPE');
end;

procedure TDM_Robos_Financeiros.FDQ_RF_CORRELACAOBeforePost(DataSet: TDataSet);
begin
  FRM_GLOBAL.GeneratorIncrementado('NOVO_ID_CORRELACAO');
end;

procedure TDM_Robos_Financeiros.FDQ_RF_CALMARBeforePost(DataSet: TDataSet);
begin
  FRM_GLOBAL.GeneratorIncrementado('NOVO_ID_CALMAR');
end;

procedure TDM_Robos_Financeiros.FDQ_RF_CAGRBeforePost(DataSet: TDataSet);
begin
  FRM_GLOBAL.GeneratorIncrementado('NOVO_ID_CAGR');
end;

procedure TDM_Robos_Financeiros.FDQ_RF_DD_FINANCEIROBeforePost(
  DataSet: TDataSet);
begin
  FRM_GLOBAL.GeneratorIncrementado('NOVO_ID_DD_FINANCEIRO');
end;

procedure TDM_Robos_Financeiros.FDQ_RF_RELACAO_LUCRO_X_PERDABeforePost(
  DataSet: TDataSet);
begin
  FRM_GLOBAL.GeneratorIncrementado('NOVO_ID_RELACAO_LUCRO_X_PERDA');
end;

{$endregion}


end.
