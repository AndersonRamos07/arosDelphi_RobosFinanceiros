unit UNT_SOFTWARE_GRIDS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Stan.Intf, FireDAC.Comp.UI,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.StdCtrls,
  cxNavigator, cxDBNavigator, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TFRM_SOFTWARE = class(TForm)
    PageControl1: TPageControl;
    tsAnalise: TTabSheet;
    Robo: TTabSheet;
    Setup: TTabSheet;
    Panel1: TPanel;
    Panel3: TPanel;
    PC_Robo: TPageControl;
    TS_Robo_Lista: TTabSheet;
    TS_Robo_Detalhes: TTabSheet;
    DBGrid2: TDBGrid;
    Label8: TLabel;
    Label9: TLabel;
    DBE_ID_ROBO: TDBEdit;
    DBE_ID_ANALISE_R: TDBEdit;
    Label10: TLabel;
    Panel4: TPanel;
    PC_Setup: TPageControl;
    TS_Setup_Lista: TTabSheet;
    TS_Setup_Detalhes: TTabSheet;
    DBGrid3: TDBGrid;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DBE_ID_SETUP: TDBEdit;
    DBE_ID_ROBO_S: TDBEdit;
    DBE_ID_ANALISE_S: TDBEdit;
    DBE_MAGIC: TDBEdit;
    DBE_NOME_DO_SETUP: TDBEdit;
    DBE_LUCRO_BRUTO: TDBEdit;
    DBE_LUCRO_LIQUIDO: TDBEdit;
    DBE_PERDA_BRUTA: TDBEdit;
    DBE_PAY_OFF: TDBEdit;
    DBE_FATOR_LUCRO: TDBEdit;
    DBE_FATOR_RECUPERACAO: TDBEdit;
    DBE_SHARPE: TDBEdit;
    DBE_CORRELACAO: TDBEdit;
    DBE_DD_FINANCEIRO: TDBEdit;
    DBE_CALMAR_R: TDBEdit;
    DBE_RESULTADO: TDBEdit;
    DBE_INDICE_L_X_P: TDBEdit;
    DBE_MEDIA_LUCRO: TDBEdit;
    DBE_MEDIA_PREJUIZO: TDBEdit;
    DBE_RELACAO_MEDIA_ML_X_MP: TDBEdit;
    Label1: TLabel;
    DBE_NOME_DO_ROBO: TDBEdit;
    TABELA_ATUAL: TPanel;
    PC_Analise: TPageControl;
    TS_Analise_Lista: TTabSheet;
    L_LISTA_ANALISES: TLabel;
    DBGrid1: TDBGrid;
    tsDetalhes: TTabSheet;
    DS_ANALISES: TDataSource;
    DBN_ANALISES: TDBNavigator;
    Label3: TLabel;
    Label7: TLabel;
    DBE_SALDO_INICIAL: TDBEdit;
    Label2: TLabel;
    DBE_PERIODO_EM_ANOS: TDBEdit;
    Label5: TLabel;
    DBE_ID_ANALISE: TDBEdit;
    Label6: TLabel;
    DBE_TITULO_DA_ANALISE: TDBEdit;
    DBE_DESCRICAO: TDBEdit;
    DBN_ROBOS: TDBNavigator;
    DBN_SETUPS: TDBNavigator;
    procedure FormActivate(Sender: TObject);
    procedure DS_ANALISESDataChange(Sender: TObject; Field: TField);
    procedure PageControl1Change(Sender: TObject);
    procedure DBN_ANALISESClick(Sender: TObject; Button: TNavigateBtn);
    procedure DBN_ROBOSClick(Sender: TObject; Button: TNavigateBtn);
    procedure DBN_SETUPSClick(Sender: TObject; Button: TNavigateBtn);
//    procedure TFRM_SOFTWARE.DBN_ROBOSClick(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_SOFTWARE: TFRM_SOFTWARE;

implementation

{$R *.dfm}

uses DMSOFTWARE;

procedure TFRM_SOFTWARE.DBN_ANALISESClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button in [nbInsert, nbEdit] then
  begin
    PC_Analise.ActivePage := tsDetalhes;
    DBE_TITULO_DA_ANALISE.SetFocus;
  end;
end;

procedure TFRM_SOFTWARE.DBN_ROBOSClick(Sender: TObject; Button: TNavigateBtn);
begin
  if Button in [nbInsert, nbEdit] then
  begin
    PC_Robo.ActivePage := TS_Robo_Detalhes;
    DBE_NOME_DO_ROBO.SetFocus;
  end;
end;

procedure TFRM_SOFTWARE.DBN_SETUPSClick(Sender: TObject; Button: TNavigateBtn);
begin
  if Button in [nbInsert, nbEdit] then
  begin
    PC_Setup.ActivePage := TS_Setup_Detalhes;
    DBE_NOME_DO_SETUP.SetFocus;
  end;
end;

procedure TFRM_SOFTWARE.DS_ANALISESDataChange(Sender: TObject; Field: TField);
begin
  tabela_atual.Caption := 'ID Análise: ' + DM_SOFTWARE.FDQ_SOFTWARE_AID_ANALISE.AsString + #13
                          + ';  Título: ' + DM_SOFTWARE.FDQ_SOFTWARE_ATITULO_DA_ANALISE.AsString + #13
                          + ';  Descrição: ' + DM_SOFTWARE.FDQ_SOFTWARE_ADESCRICAO_DO_PERIODO.AsString;
end;

procedure TFRM_SOFTWARE.FormActivate(Sender: TObject);
begin
  TABELA_ATUAL.Visible   := PageControl1.ActivePage <> tsAnalise;
  DM_SOFTWARE.FDQ_SOFTWARE_A.Open;
  DM_SOFTWARE.FDQ_SOFTWARE_R.Open;
  DM_SOFTWARE.FDQ_SOFTWARE_S.Open;
end;

procedure TFRM_SOFTWARE.PageControl1Change(Sender: TObject);
begin
  TABELA_ATUAL.Visible   := PageControl1.ActivePage <> tsAnalise;
end;

end.
