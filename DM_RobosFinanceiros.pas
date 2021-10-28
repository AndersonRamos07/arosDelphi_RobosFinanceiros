unit DM_RobosFinanceiros;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.VCLUI.Wait, IBX.IBDatabase;

type
  TDM_Robos_Financeiros = class(TDataModule)
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
    FDQ_RobosFinanceiros_SINDICE_L_X_P: TBCDField;
    FDQ_RobosFinanceiros_SMEDIA_LUCRO: TBCDField;
    FDQ_RobosFinanceiros_SMEDIA_PREJUIZO: TBCDField;
    FDQ_RobosFinanceiros_SRELACAO_MEDL_X_MEDP: TBCDField;
    DS_ANALISES: TDataSource;
    DS_ROBOS: TDataSource;
    DS_SETUPS: TDataSource;
    FDQ_RobosFinanceiros_RNOME_DO_ROBO: TStringField;
    FDQ_RobosFinanceiros_SCAGR: TBCDField;
    IBTransactionAuxiliar: TIBTransaction;

    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Robos_Financeiros : TDM_Robos_Financeiros;

implementation

uses
  Vcl.Dialogs;

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

procedure TDM_Robos_Financeiros.DataModuleCreate(Sender: TObject);
begin
  FDQ_RobosFinanceiros_A.Open;
  FDQ_RobosFinanceiros_R.Open;
  FDQ_RobosFinanceiros_S.Open;
end;

{$region 'Deprecated'}
{
procedure TDM_Robos_Financeiros.FDQ_RobosFinanceiros_RBeforeInsert(DataSet: TDataSet);
begin
 // showMessage('BeforeInsert - R');
end;

procedure TDM_Robos_Financeiros.FDQ_RobosFinanceiros_RBeforePost(DataSet: TDataSet);
begin
 // showMessage('BeforePost - R');
end;

procedure TDM_Robos_Financeiros.FDQ_RobosFinanceiros_SBeforeInsert(DataSet: TDataSet);
begin
 // showMessage('BeforeInsert');
end;

procedure TDM_Robos_Financeiros.FDQ_RobosFinanceiros_SBeforePost(DataSet: TDataSet);
begin
 // showMessage('BeforePost');
end;
}
{$endregion}


end.
