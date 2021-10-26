unit UNT_Robos_Financeiros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Stan.Intf, FireDAC.Comp.UI,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.StdCtrls,
  cxNavigator, cxDBNavigator, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Buttons;


type
  TFRM_RobosFinanceiros = class(TForm)
    PC_Principal: TPageControl;
    tsAnalise: TTabSheet;
    Robo: TTabSheet;
    Setup: TTabSheet;
    Panel1: TPanel;
    Panel3: TPanel;
    PC_Robo: TPageControl;
    TS_Robo_Lista: TTabSheet;
    TS_Robo_Detalhes: TTabSheet;
    DB_ROBOS: TDBGrid;
    Label8: TLabel;
    Label9: TLabel;
    DBE_ID_ROBO: TDBEdit;
    DBE_ID_ANALISE_R: TDBEdit;
    Label10: TLabel;
    Panel4: TPanel;
    PC_Setup: TPageControl;
    TS_Setup_Lista: TTabSheet;
    TS_Setup_Detalhes: TTabSheet;
    DB_SETUPS: TDBGrid;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
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
    PC_Analise: TPageControl;
    TS_Analise_Lista: TTabSheet;
    L_LISTA_ANALISES: TLabel;
    DB_ANALISES: TDBGrid;
    tsDetalhes: TTabSheet;
    DS_ANALISES: TDataSource;
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
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label32: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label33: TLabel;
    Label34: TLabel;
    DBEdit4: TDBEdit;
    Label35: TLabel;
    DBEdit5: TDBEdit;
    Label36: TLabel;
    DBEdit6: TDBEdit;
    DBN_ANALISES: TDBNavigator;
    SB_ImportaExcel: TSpeedButton;
    OD_Importar_Planilha: TOpenDialog;
    SG_Importar_Planilha: TStringGrid;
    procedure PC_PrincipalChange(Sender: TObject);
    procedure DBN_ANALISESClick(Sender: TObject; Button: TNavigateBtn);
    procedure DBN_ROBOSClick(Sender: TObject; Button: TNavigateBtn);
    procedure DBN_SETUPSClick(Sender: TObject; Button: TNavigateBtn);
    procedure SB_ImportaExcelClick(Sender: TObject);
  private
    function XlsToStringGrid(XStringGrid: TStringGrid; xFileXLS: string): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_RobosFinanceiros: TFRM_RobosFinanceiros;

implementation

{$R *.dfm}

uses DM_RobosFinanceiros,
  ComObj;                                                                             // trabalhar com o "Create Ole Object";

{$region 'Setando o primeiro imput do registro'}
procedure TFRM_RobosFinanceiros.DBN_ANALISESClick(Sender: TObject; Button: TNavigateBtn);
begin
  if Button in [nbInsert, nbEdit] then
  begin
    PC_Analise.ActivePage := tsDetalhes;
    DBE_TITULO_DA_ANALISE.SetFocus;
  end;
end;

procedure TFRM_RobosFinanceiros.DBN_ROBOSClick(Sender: TObject; Button: TNavigateBtn);
begin
  if Button in [nbInsert, nbEdit] then
  begin
    PC_Robo.ActivePage := TS_Robo_Detalhes;
    DBE_NOME_DO_ROBO.SetFocus;
  end;
end;

procedure TFRM_RobosFinanceiros.DBN_SETUPSClick(Sender: TObject; Button: TNavigateBtn);
begin
  if Button in [nbInsert, nbEdit] then
  begin
    PC_Setup.ActivePage := TS_Setup_Detalhes;
    DBE_NOME_DO_SETUP.SetFocus;
  end;
end;
{$endregion}

{$region 'Mostrando a Grid ao mudar a Page'}
procedure TFRM_RobosFinanceiros.PC_PrincipalChange(Sender: TObject);
begin
  if PC_Principal.ActivePageIndex = 0 then
  begin
    PC_Analise.ActivePage := TS_Analise_Lista;
  end;
  if PC_Principal.ActivePageIndex = 1 then
  begin
    PC_Robo.ActivePage := TS_Robo_Lista;
  end;
  if PC_Principal.ActivePageIndex = 2 then
  begin
    PC_Setup.ActivePage := TS_Setup_Lista;
  end;
end;
{$endregion}

{$region 'Importando Planilha Excel'}
procedure TFRM_RobosFinanceiros.SB_ImportaExcelClick(Sender: TObject);
begin
  if OD_Importar_Planilha.Execute then
    XlsToStringGrid(SG_Importar_Planilha, OD_Importar_Planilha.FileName)
end;

Function TFRM_RobosFinanceiros.XlsToStringGrid(xStringGrid: TStringGrid; xFileXLS: string): Boolean;
const
   xlCellTypeLastCell = $0000000B;
var
   XLSAplicacao, AbaXLS: OLEVariant;
   RangeMatrix: Variant;
   x, y, k, r: Integer;
   resultado: String;
begin
   Result := False;

   XLSAplicacao := CreateOleObject('Excel.Application');                              // Cria Excel- OLE Object
   try
    XLSAplicacao.Visible := False;                                                  // Esconde Excel
    XLSAplicacao.Workbooks.Open(xFileXLS);                                          // Abre o Workbook
                                                                                      {Selecione aqui a aba que você deseja abrir primeiro - 1,2,3,4....}
    XLSAplicacao.WorkSheets[1].Activate;                                            // abrir a aba

    AbaXLS := XLSAplicacao.Workbooks[ExtractFileName(xFileXLS)].WorkSheets[1];      {Selecione aqui a aba que você deseja ativar - começando sempre no 1 (1,2,3,4) }
    AbaXLS.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;

    x := XLSAplicacao.ActiveCell.Row;                                               // Pegar o número da última linha

    y := XLSAplicacao.ActiveCell.Column;                                            // Pegar o número da última coluna

    XStringGrid.RowCount := x;                                                      // Seta xStringGrid linha e coluna
    XStringGrid.ColCount := y;

    RangeMatrix := XLSAplicacao.Range['A1', XLSAplicacao.Cells.Item[x, y]].Value;   // Associaca a variant WorkSheet com a variant do Delphi
    k := 1;
    repeat                                                                          // Cria o loop para listar os registros no TStringGrid
      for r := 1 to y do
        XStringGrid.Cells[(r - 1), (k - 1)] := RangeMatrix[k, r];
        if XStringGrid.Cells[(r - 1), (k - 1)] = 'texto' then
             showMessage('Deu certo!');
        Inc(k, 1);
    until k > x;
    RangeMatrix := Unassigned;
    finally
      if not VarIsEmpty(XLSAplicacao) then                                      // Fecha o Microsoft Excel
      begin
        XLSAplicacao.Quit;
        XLSAplicacao := Unassigned;
        AbaXLS := Unassigned;
        Result := True;
      end;
   end;
end;
{$endregion}


end.
