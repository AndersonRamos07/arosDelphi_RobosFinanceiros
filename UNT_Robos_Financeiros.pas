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
    TS_Analise: TTabSheet;
    Robo: TTabSheet;
    Setup: TTabSheet;
    P_Analise: TPanel;
    P_Robo: TPanel;
    PC_Robo: TPageControl;
    TS_Robo_Lista: TTabSheet;
    TS_Robo_Detalhes: TTabSheet;
    DB_ROBOS: TDBGrid;
    Label8: TLabel;
    L_Identificador_Robo: TLabel;
    DBE_ID_ROBO: TDBEdit;
    DBE_ID_ANALISE_R: TDBEdit;
    L_AnaliseID_Robo: TLabel;
    P_Setup: TPanel;
    PC_Setup: TPageControl;
    TS_Setup_Lista: TTabSheet;
    TS_Setup_Detalhes: TTabSheet;
    DB_SETUPS: TDBGrid;
    Label11: TLabel;
    L_Identificador_Setup: TLabel;
    L_RoboID_Setup: TLabel;
    L_Magic_Setup: TLabel;
    L_NomeDoSetup_Setup: TLabel;
    L_LucroBruto_Setup: TLabel;
    L_LucroLiquido_Setup: TLabel;
    L_PerdaBruta_Setup: TLabel;
    L_PayOff_Setup: TLabel;
    L_FatorLucro_Setup: TLabel;
    L_FatorRecuperacao_Setup: TLabel;
    L_Sharpe_Setup: TLabel;
    L_CorrelacaoLR_Setup: TLabel;
    L_DDFinanceiro_Setup: TLabel;
    L_CalmarR_Setup: TLabel;
    L_Resultado_Setup: TLabel;
    L_IndiceLucroXPrejuizo_Setup: TLabel;
    L_MediaLucro_Setup: TLabel;
    L_MediaPrejuizo_Setup: TLabel;
    L_RelacaoMediaMLXMP_Setup: TLabel;
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
    L_NomeDoRobo_Robo: TLabel;
    DBE_NOME_DO_ROBO: TDBEdit;
    PC_Analise: TPageControl;
    TS_Analise_Lista: TTabSheet;
    L_LISTA_ANALISES: TLabel;
    DB_ANALISES: TDBGrid;
    TS_Detalhes: TTabSheet;
    DS_ANALISES: TDataSource;
    L_Descricao_Analise: TLabel;
    L_SaldoInicial_Analise: TLabel;
    DBE_SALDO_INICIAL: TDBEdit;
    L_PeriodoEmAnos_Analise: TLabel;
    DBE_PERIODO_EM_ANOS: TDBEdit;
    L_Identificador_Analise: TLabel;
    DBE_ID_ANALISE: TDBEdit;
    L_TituloDaAnalise_Analise: TLabel;
    DBE_TITULO_DA_ANALISE: TDBEdit;
    DBE_DESCRICAO: TDBEdit;
    DBN_ROBOS: TDBNavigator;
    DBN_SETUPS: TDBNavigator;
    Label4: TLabel;
    DBE_IDENTIFICADOR_RA: TDBEdit;
    Label32: TLabel;
    DBE_TITULO_DA_ANALISE_RA: TDBEdit;
    DBE_IDENTIFICADOR_SR: TDBEdit;
    L_IdentificadorRobo_Setup: TLabel;
    L_NomeDoRobo_Setup: TLabel;
    DBE_NOME_DO_ROBO_SR: TDBEdit;
    L_IdentificadorAnalise_Setup: TLabel;
    DBE_IDENTIFICADOR_SA: TDBEdit;
    L_TituloDaAnalise_Setup: TLabel;
    DBE_TITULO_DA_ANALISE_SA: TDBEdit;
    DBN_ANALISES: TDBNavigator;
    SB_ImportaExcel: TSpeedButton;
    OD_Importar_Planilha: TOpenDialog;
    SG_Importar_Planilha: TStringGrid;
    OD_Importar_BD: TOpenDialog;
    SpeedButton1: TSpeedButton;
    procedure PC_PrincipalChange(Sender: TObject);
    procedure DBN_ANALISESClick(Sender: TObject; Button: TNavigateBtn);
    procedure DBN_ROBOSClick(Sender: TObject; Button: TNavigateBtn);
    procedure DBN_SETUPSClick(Sender: TObject; Button: TNavigateBtn);
    procedure SB_ImportaExcelClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);

  private
    function XlsToStringGrid(XStringGrid: TStringGrid; xFileXLS: string): Boolean;

  public
    function GeneratorIncrementado(qGenerator:String) : Integer;

  end;

var
  FRM_RobosFinanceiros: TFRM_RobosFinanceiros;

implementation

{$R *.dfm}

uses DM_RobosFinanceiros,
  ComObj,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.IBBase;

{$region 'Setando o primeiro imput do registro'}
procedure TFRM_RobosFinanceiros.DBN_ANALISESClick(Sender: TObject; Button: TNavigateBtn);
begin
  if Button in [nbInsert, nbEdit] then
  begin
    PC_Analise.ActivePage := TS_Detalhes;
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

{$region 'Selecionando o arquivo/planilha Excel'}
procedure TFRM_RobosFinanceiros.SB_ImportaExcelClick(Sender: TObject);
begin
  OD_Importar_Planilha.Title := 'Selecione o Excel';
  OD_Importar_Planilha.FileName := 'Arquivo Excel';
  OD_Importar_Planilha.Filter := '*.xls|*.xlsx';
  if OD_Importar_Planilha.Execute = True then
   XlsToStringGrid(SG_Importar_Planilha, OD_Importar_Planilha.FileName);
end;
{$endregion}

{$region 'Importando os dados da planilha'}
Function TFRM_RobosFinanceiros.XlsToStringGrid(xStringGrid: TStringGrid; xFileXLS: string): Boolean;
const
   xlCellTypeLastCell = $0000000B;
var
   XLSAplicacao, AbaXLS: OLEVariant;
   RangeMatrix: Variant;
   x, y, k, r: Integer;

   vQuery_A : TFDQuery;
   resultado, vTituloDaAnalise, vDescricaoDoPeriodo, vQuantosAnos, vSaldoInicial: String;
   A, vPeriodoEmAnos, lFound, Lnh: Integer;
   ClickedOK: Boolean;
begin

    vQuantosAnos := '';
    ClickedOK := InputQuery('Definição do período ','Digite o período em anos', vQuantosAnos);
    vSaldoInicial := '';
    ClickedOK := InputQuery('Definição do saldo ','Digite o saldo inicial', vSaldoInicial);

   Result := False;
   XLSAplicacao := CreateOleObject('Excel.Application');

   try
    XLSAplicacao.Visible := False;
    XLSAplicacao.Workbooks.Open(xFileXLS);
    XLSAplicacao.WorkSheets[1].Activate;

    AbaXLS := XLSAplicacao.Workbooks[ExtractFileName(xFileXLS)].WorkSheets[1];
    AbaXLS.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;

    x := XLSAplicacao.ActiveCell.Row;
    y := XLSAplicacao.ActiveCell.Column;

    XStringGrid.RowCount := x;
    XStringGrid.ColCount := y;

    RangeMatrix := XLSAplicacao.Range['A1', XLSAplicacao.Cells.Item[x, y]].Value;
    k := 1;

{$region 'irá percorrer a planilha inserindo os dados nas variáveis'}

//          XStringGrid.Cells[r, k] := RangeMatrix[k, r];
          vTituloDaAnalise := RangeMatrix[2,1];       //XLSAplicacao.Range['A1', XLSAplicacao.Cells.Item[1, 0]].Value;
          vDescricaoDoPeriodo := RangeMatrix[6,4]; //XLSAplicacao.Range['A1', XLSAplicacao.Cells.Item[5, 3]].Value; // XStringGrid.Cells[3, 5];
  vQuery_A := DM_Robos_Financeiros.FDQ_RobosFinanceiros_A;
      with vQuery_A do
      begin
       Close;
       SQL.Clear;
       SQL.Add('INSERT INTO ANALISES(ID_ANALISE,TITULO_DA_ANALISE, DESCRICAO_DO_PERIODO, PERIODO_EM_ANOS, SALDO_INICIAL)');
       SQL.Add('VALUES (:ID_ANALISE,:TITULO_DA_ANALISE, :DESCRICAO_DO_PERIODO, :PERIODO_EM_ANOS, :SALDO_INICIAL)');

       ParamByName('ID_ANALISE').Value := GeneratorIncrementado('NOVO_ID_ANALISE');
       ParamByName('TITULO_DA_ANALISE').Value := vTituloDaAnalise;
       ParamByName('DESCRICAO_DO_PERIODO').Value := vDescricaoDoPeriodo;
       ParamByName('PERIODO_EM_ANOS').Value := StrToInt(vQuantosAnos);
       ParamByName('SALDO_INICIAL').Value := StrToFloat(vSaldoInicial);

       Prepare;
       ExecSQL;

       Close;
       Open;
      end;

    A := 0;
//    repeat
////      for r := 1 to y do
////        begin
//           XStringGrid.Cells[0, (k - 1)] := RangeMatrix[k, r];
//           if XStringGrid.Cells[0, (k - 1)] = 'Qualidade do histórico:' then
//            begin
////              repeat
//                for Lnh := 1 to x do
//                begin
//                lFound := r + Lnh;
//                  if (XStringGrid.Cells[ lFound , k ] <> '') then
//                    vDescricaoDoPeriodo := XStringGrid.Cells[ (lFound - 1) , k ];
//                    vTituloDaAnalise := '-1 e -1! ' + IntToStr(k) + ' , ' + IntToStr(lFound) + ' e o r é: ' + IntToStr(r);
//                    Abort;
//                end;
//                Inc(Lnh, 1);
////              until Lnh > 20;
//            end;
////           if XStringGrid.Cells[(r - 1), (k - 1) = 'anderson' then
////             begin
////              vDescricaoDoPeriodo := 'r = ' + IntToStr(r) + ' e k= ' + IntToStr(k);
//              vPeriodoEmAnos := A;
//            Inc(A, 1);
////        end;
//        Inc(k, 1);
//    until k > x;
    RangeMatrix := Unassigned;
    finally
{$region 'Inserindo dados na Tabela BD'}
{$endregion}
   end;
      if not VarIsEmpty(XLSAplicacao) then
      begin
        XLSAplicacao.Quit;
        XLSAplicacao := Unassigned;
        AbaXLS := Unassigned;
        Result := True;
      end;
{$endregion}

   {$endregion}
end;


{
function inserir em analise(valor, id, )

begin
   star transaction.
   insert into analises (234523452345  ) values (:asdf asdf asdf );.
   Param bay n ame id_analise := generator incrementado
   parma bauy n
   param bay
   prepare
   execquery
   commitretaineg
end;
}

procedure TFRM_RobosFinanceiros.SpeedButton1Click(Sender: TObject);
begin
{
   fdminhatabela da analise: = insert
 //  fdminhaanalise.id_analise := generatorincrementado('novi_id_analise');
    fdminhaanlsie.id_na lise := 77;
   fdminha anlsie.descricaç~] := 'asbasdoip';
   fd.post;
   }
end;

{$region 'Função Importada "GeneratorIncrementado()"'}
function TFRM_RobosFinanceiros.GeneratorIncrementado(qGenerator:String) : Integer;
var
   vMinhaQuery : TFDQuery;
begin
   vMinhaQuery := TFDQuery.Create(Application);
   vMinhaQuery.Connection := DM_Robos_Financeiros.FDC_RobosFinanceiros;
   Result := 0;
   with vMinhaQuery, SQL do
   begin
      Close;
      Clear;
      Add('SELECT GEN_ID(');
      Add(qGenerator);
      Add(',1) FROM RDB$DATABASE');
      Open;
      Result := Fields[0].AsInteger;
   end;
   vMinhaQuery.Free;
end;
{$endregion}

end.

