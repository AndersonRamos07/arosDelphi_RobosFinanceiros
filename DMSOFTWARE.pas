unit DMSOFTWARE;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Comp.UI, FireDAC.Phys.IBBase;

type
  TDM_SOFTWARE = class(TDataModule)
    FDC_SOFTWARE: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDQ_SOFTWARE_A: TFDQuery;
    FDQ_SOFTWARE_R: TFDQuery;
    FDQ_SOFTWARE_S: TFDQuery;
    FDQ_SOFTWARE_AID_ANALISE: TIntegerField;
    FDQ_SOFTWARE_ATITULO_DA_ANALISE: TStringField;
    FDQ_SOFTWARE_ADESCRICAO_DO_PERIODO: TStringField;
    FDQ_SOFTWARE_APERIODO_EM_ANOS: TIntegerField;
    FDQ_SOFTWARE_ASALDO_INICIAL: TBCDField;
    FDQ_SOFTWARE_RID_ROBO: TIntegerField;
    FDQ_SOFTWARE_RID_ANALISE: TIntegerField;
    FDQ_SOFTWARE_SID_SETUP: TIntegerField;
    FDQ_SOFTWARE_SID_ROBO: TIntegerField;
    FDQ_SOFTWARE_SID_ANALISE: TIntegerField;
    FDQ_SOFTWARE_SPERIODO_EM_ANOS: TIntegerField;
    FDQ_SOFTWARE_SMAGIC: TStringField;
    FDQ_SOFTWARE_SNOME_DO_SETUP: TStringField;
    FDQ_SOFTWARE_SLUCRO_BRUTO: TBCDField;
    FDQ_SOFTWARE_SLUCRO_LIQUIDO: TBCDField;
    FDQ_SOFTWARE_SPERDA_BRUTA: TBCDField;
    FDQ_SOFTWARE_SPAY_OFF: TBCDField;
    FDQ_SOFTWARE_SFATOR_LUCRO: TBCDField;
    FDQ_SOFTWARE_SFATOR_RECUPERACAO: TBCDField;
    FDQ_SOFTWARE_SSHARPE: TBCDField;
    FDQ_SOFTWARE_SCORRELACAO_LR: TBCDField;
    FDQ_SOFTWARE_SDD_FINANCEIRO: TBCDField;
    FDQ_SOFTWARE_SCALMAR_R: TBCDField;
    FDQ_SOFTWARE_SCAGR____: TBCDField;
    FDQ_SOFTWARE_SRESULTADO: TBCDField;
    FDQ_SOFTWARE_SINDICE_L_X_P: TBCDField;
    FDQ_SOFTWARE_SMEDIA_LUCRO: TBCDField;
    FDQ_SOFTWARE_SMEDIA_PREJUIZO: TBCDField;
    FDQ_SOFTWARE_SRELACAO_MEDL_X_MEDP: TBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_SOFTWARE : TDM_SOFTWARE;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
