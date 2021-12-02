unit UNT_Robos_Financeiros;

interface

uses
{$region 'USES : IMPORTS'}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, StrUtils,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Stan.Intf, FireDAC.Comp.UI,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.StdCtrls,
  cxNavigator, cxDBNavigator, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Buttons,
  // uses na implementation
  DM_RobosFinanceiros,
  ComObj,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.IBBase,
  Vcl.FileCtrl;
{$endregion}

type
  TFRM_RobosFinanceiros = class(TForm)
{$region 'ATRIBUTOS'}
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
    OD_Importar_BD: TOpenDialog;
    B_DeletarDados: TButton;
    Panel1: TPanel;
    OD_ListarArquivos: TOpenDialog;
    Memo1: TMemo;
    B_Fechar_Log: TButton;
    btnListarArquivos: TButton;
    chkSub: TCheckBox;
    Label1: TLabel;
    DBE_CAGR: TDBEdit;
    SG_Importar_Planilha: TStringGrid;
    SP_Importar_Setups: TSpeedButton;
    TS_Configuracoes: TTabSheet;
    PC_Parametros: TPageControl;
    TS_PAYOFF: TTabSheet;
    TS_FATOR_LUCRO: TTabSheet;
    TS_FATOR_RECUPERACAO: TTabSheet;
    TS_SHARPE: TTabSheet;
    TS_CORRELACAO: TTabSheet;
    TS_CALMAR: TTabSheet;
    TS_CAGR: TTabSheet;
    TS_DD_FINANCEIRO: TTabSheet;
    TS_RELACAO_LUCROXPERDA: TTabSheet;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
{$endregion}
{$region 'PROCEDURES'}
    procedure PC_PrincipalChange(Sender: TObject);
    procedure DBN_ANALISESClick(Sender: TObject; Button: TNavigateBtn);
    procedure DBN_ROBOSClick(Sender: TObject; Button: TNavigateBtn);
    procedure DBN_SETUPSClick(Sender: TObject; Button: TNavigateBtn);
    procedure SB_ImportaExcelClick(Sender: TObject);
    procedure B_DeletarDadosClick(Sender: TObject);
    procedure btnListarArquivosClick(Sender: TObject);
    procedure ListarArquivos(Diretorio: string; Sub:Boolean);  //teste
{$endregion}
{$region 'FUNCTIONS'}
    function SalvarAnaliseNoBanco(aQuery : TFDQuery; pTituloDaAnalise, pDescricaoDoPeriodo, pQuantosAnos, pSaldoInicial : String) : Integer;
    function SalvarRoboNoBanco(rQuery : TFDQuery; pID_Analise : Integer; pNomeDoRobo : String) : Integer;
    function SalvarSetupNoBanco(sQuery : TFDQuery; pIdentificador, pID_Robo : Integer; pNomeDoSetup, pMagic : String; pLucroBruto, pLucroLiquido, pPayOff, pFatorLucro, pFatorRecuperacao, pSharpe, pCorrelacaoLR, pDDFinanceiro, pMediaLucro, pMediaPrejuizo : Double) : Integer;
    function TemAtributo(Attr, Val: Integer): Boolean;
    procedure B_Fechar_LogClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TS_ConfiguracoesShow(Sender: TObject);

  private
    function XlsToStringGrid(XStringGrid: TStringGrid; xFileXLS: string): Boolean;
    Function SalvarSETUPS_DO_ID_ROBO(xFileXLS: String{, pQuantosAnos, pSaldoInicial: String}): Boolean;

  public
    function GeneratorIncrementado(qGenerator:String) : Integer;
    function ToString(Value: Variant): String;
    function EncontrarValorNaTabela(Valor : String; Tabela : Variant; Linha, Coluna : Integer) : Double;
    function EncontrarDescricaoNaTabela(Valor : String; Tabela : Variant; Linha, Coluna : Integer) : String;
    function EncontrarMagicNaTabela(Valor : String; Tabela : Variant; Linha, Coluna : Integer) : String;
    function EncontrarDDFinanceiroNaTabela(Valor : String; Tabela : Variant; Linha, Coluna : Integer) : Double;
{$endregion}
  end;

var
  FRM_RobosFinanceiros: TFRM_RobosFinanceiros;

implementation
{$R *.dfm}

{$region 'Ao iniciar...'}
procedure TFRM_RobosFinanceiros.FormShow(Sender: TObject);
begin
  FRM_RobosFinanceiros.WindowState := wsMaximized;
end;
{$endregion}

{$region 'Selecionando o arquivo/planilha Excel'}
procedure TFRM_RobosFinanceiros.SB_ImportaExcelClick(Sender: TObject);
begin
  OD_Importar_Planilha.Title := 'Selecione o Excel';
  OD_Importar_Planilha.FileName := 'Arquivo Excel';
  OD_Importar_Planilha.Filter := '*.xls|*.xlsx|*.XLS|*.XLSX';
  if OD_Importar_Planilha.Execute = True then
   XlsToStringGrid(SG_Importar_Planilha, OD_Importar_Planilha.FileName);
end;

{$endregion}

{$region 'Importando os dados da planilha e salvando em ANALISES, ROBOS e SETUPS'}
Function TFRM_RobosFinanceiros.XlsToStringGrid(xStringGrid: TStringGrid; xFileXLS: string): Boolean;
const
   xlCellTypeLastCell = $0000000B;
var
   XLSAplicacao, AbaXLS : OLEVariant;
   RangeMatrix : Variant;
   X, Y, Col, Lin, I : Integer;

   vQuery_A, vQuery_R, vQuery_S : TFDQuery;
   vID_Analise, vID_Robo : Integer;
   vTituloDaAnalise, vDescricaoDoPeriodo, vQuantosAnos, vSaldoInicial : String;
   vNomeDoRobo , itemDoExcel: String;
   vNomeDoSetup, vMagic: String;
   vLucroBruto, vLucroLiquido, vPayOff, vFatorLucro: Double;
   vFatorRecuperacao, vSharpe, vCorrelacaoLR : Double;
   vDDFinanceiro, vMediaLucro, vMediaPrejuizo : Double;
   ClickedOK, tabA, tabR, tabS : Boolean;
begin

  vQuantosAnos := '';
  InputQuery('Definição do período ','Digite o período em anos', vQuantosAnos); //ClickedOK := InputQuery('Definição do período ','Digite o período em anos', vQuantosAnos);
  vSaldoInicial := '';
  InputQuery('Definição do saldo ','Digite o saldo inicial', vSaldoInicial); //ClickedOK := InputQuery('Definição do saldo ','Digite o saldo inicial', vSaldoInicial);

   Result := False;
   XLSAplicacao := CreateOleObject('Excel.Application');
   XLSAplicacao.Workbooks.Add(1);
   try
    XLSAplicacao.Visible := False;
    XLSAplicacao.Workbooks.Open(xFileXLS);
    XLSAplicacao.WorkSheets[1].Activate;

    AbaXLS := XLSAplicacao.Workbooks[ExtractFileName(xFileXLS)].WorkSheets[1];
    AbaXLS.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate; {True}

    X := XLSAplicacao.ActiveCell.Row; {16}
    Y := XLSAplicacao.ActiveCell.Column; {9}

    XStringGrid.RowCount := X;
    XStringGrid.ColCount := Y;
    // "RangeMatrix" é a planilha Excel em uma variável Delphi

    RangeMatrix := XLSAplicacao.Range['A1', XLSAplicacao.Cells.Item[x, y]].Value;

    {$region 'ONDE SERÁ REALIZADA AS ATRIBUIÇÕES PARA AS VARIÁVEIS'}

    vTituloDaAnalise :=     RangeMatrix[2,1];
    vDescricaoDoPeriodo :=  EncontrarDescricaoNaTabela('Período:', RangeMatrix, X , Y);
    vNomeDoRobo :=          EncontrarDescricaoNaTabela('Expert Advisor (Robô):', RangeMatrix, X , Y);
    vNomeDoSetup :=         RangeMatrix[5,4];
    vMagic :=               EncontrarMagicNaTabela('Parâmetros de entrada:', RangeMatrix, X , Y);
    vLucroBruto :=          EncontrarValorNaTabela('Lucro Bruto:', RangeMatrix, X , Y);
    vLucroLiquido :=        EncontrarValorNaTabela('Lucro Líquido Total:', RangeMatrix, X , Y);
    vPayOff :=              EncontrarValorNaTabela('Retorno Esperado (Payoff):', RangeMatrix, X , Y);
    vFatorLucro :=          EncontrarValorNaTabela('Fator de Lucro:', RangeMatrix, X , Y);
    vFatorRecuperacao :=    EncontrarValorNaTabela('Fator de Recuperação:', RangeMatrix, X , Y);
    vSharpe :=              EncontrarValorNaTabela('Índice de Sharpe:', RangeMatrix, X , Y);
    vCorrelacaoLR :=        EncontrarValorNaTabela('Correlação LR :', RangeMatrix, X , Y);
    vDDFinanceiro :=        EncontrarDDFinanceiroNaTabela('Rebaixamento Máximo do Saldo :', RangeMatrix, X , Y);
    vMediaLucro :=          EncontrarValorNaTabela('Média lucro da negociação:', RangeMatrix, X , Y);
    vMediaPrejuizo :=       EncontrarValorNaTabela('Média perda na Negociação:', RangeMatrix, X , Y);

{$endregion}

    {$region 'IRÁ SALVAR NO BANCO OS DADOS'}

    vID_Analise := SalvarAnaliseNoBanco(vQuery_A, vTituloDaAnalise, vDescricaoDoPeriodo, vQuantosAnos, vSaldoInicial);

    vID_Robo := SalvarRoboNoBanco(vQuery_R, vID_Analise, vNomeDoRobo);

    SalvarSetupNoBanco(vQuery_S, 0, vID_Robo, vNomeDoSetup, vMagic, vLucroBruto, vLucroLiquido, vPayOff, vFatorLucro, vFatorRecuperacao, vSharpe, vCorrelacaoLR, vDDFinanceiro, vMediaLucro, vMediaPrejuizo);

    {$endregion}

    RangeMatrix := Unassigned;

      if not VarIsEmpty(XLSAplicacao) then                                      // Fecha o Microsoft Excel
      begin
        XLSAplicacao.DisplayAlerts := False;
        XLSAplicacao.ActiveWorkBook.Close(False);
        XLSAplicacao.Quit;
        XLSAplicacao := Unassigned;
        AbaXLS := Unassigned;
        Result := True;
      end;
      if (tabA = True) AND (tabR = True) AND (tabS = True) then
      showMessage('Foram registrados com sucesso!');
      finally
   end;
end;
   {$endregion}

{$region 'Listar Planilhas'}
procedure TFRM_RobosFinanceiros.ListarArquivos(Diretorio: string; Sub:Boolean);
var
  F: TSearchRec;
  Ret, ContadorDeRegistros : Integer;
  TempNome: string;
  Feito : Boolean;
begin
  ContadorDeRegistros := 0;

  Ret := FindFirst(Diretorio+'\*.*', faAnyFile, F);

  if Diretorio = '' then
  Exit;

  Memo1.Visible := True;
  B_Fechar_Log.Visible := True;

  try
    while Ret = 0 do
    begin
      Feito := False;
      if TemAtributo(F.Attr, faDirectory) then
      begin
        if (F.Name <> '.') And (F.Name <> '..') then
          if Sub = True then
          begin
            TempNome := Diretorio+'\' + F.Name;
            ListarArquivos(TempNome, True);
          end;
      end
      else
      begin
        if AnsiIndexStr(LowerCase(ExtractFileExt(F.Name)), ['.xlsx', '.xls']) >= 0 then
        begin
          Memo1.Lines.Add('Lendo: ...' + F.Name);
          Feito := SalvarSETUPS_DO_ID_ROBO(Diretorio + '\' + F.Name);
        end;
      end;
      if Feito then
        Inc(ContadorDeRegistros);
        Ret := FindNext(F);
    end;
  finally

  begin
    FindClose(F);
  end;
      showMessage('Registrados exatos ' + IntToStr(ContadorDeRegistros) + ' SETUPS!');
  end;
end;

function TFRM_RobosFinanceiros.TemAtributo(Attr, Val: Integer): Boolean;
begin
  Result := Attr and Val = Val;
end;

procedure TFRM_RobosFinanceiros.btnListarArquivosClick(Sender: TObject);
var
  diretorio : String;
begin
  Memo1.Lines.Clear;
  SelectDirectory('Selecione uma pasta', 'C:\', diretorio);
  ListarArquivos(diretorio, chkSub.Checked);
end;

procedure TFRM_RobosFinanceiros.B_Fechar_LogClick(Sender: TObject);
begin
  Memo1.Visible := False;
  B_Fechar_Log.Visible := False;
end;
{$endregion}

{$region 'Importando os dados da planilha e salvando em SETUPS'}
Function TFRM_RobosFinanceiros.SalvarSETUPS_DO_ID_ROBO(xFileXLS: String): Boolean;
const
   xlCellTypeLastCell = $0000000B;
var
   XLSAplicacao, AbaXLS : OLEVariant;
   RangeMatrix : Variant;
   X, Y, Col, Lin, I : Integer;

   vQuery_A, vQuery_R, vQuery_S : TFDQuery;
   vID_Analise, vID_Robo, vID_Setup : Integer;
   vTituloDaAnalise, vDescricaoDoPeriodo : String;
   vNomeDoRobo , NOME_DA_ABA: String;
   vNomeDoSetup, vMagic: String;
   vLucroBruto, vLucroLiquido, vPayOff, vFatorLucro: Double;
   vFatorRecuperacao, vSharpe, vCorrelacaoLR : Double;
   vDDFinanceiro, vMediaLucro, vMediaPrejuizo : Double;
begin

   Result := False;

   //XLSAplicacao.Workbooks.Add(1);
   try
     XLSAplicacao := CreateOleObject('Excel.Application');
     XLSAplicacao.Visible := False;
     XLSAplicacao.Workbooks.Open(xFileXLS);
      //XLSAplicacao.WorkSheets[1].Activate;

     AbaXLS := XLSAplicacao.Workbooks[ExtractFileName(xFileXLS)].WorkSheets[1];
     AbaXLS.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate; {True}

     X := XLSAplicacao.ActiveCell.Row; {16}
     Y := XLSAplicacao.ActiveCell.Column; {9}

      // "RangeMatrix" é a planilha Excel em uma variável Delphi

     RangeMatrix := XLSAplicacao.Range['A1', XLSAplicacao.Cells.Item[x, y]].Value;
     try
      {$region 'ONDE SERÁ REALIZADA AS ATRIBUIÇÕES PARA AS VARIÁVEIS'}

      vDescricaoDoPeriodo :=  EncontrarDescricaoNaTabela('Período:', RangeMatrix, X , Y);
      vNomeDoRobo :=          EncontrarDescricaoNaTabela('Expert Advisor (Robô):', RangeMatrix, X , Y);
      vNomeDoSetup :=         RangeMatrix[5,4];
      vMagic :=               EncontrarMagicNaTabela('Parâmetros de entrada:', RangeMatrix, X , Y);
      vLucroBruto :=          EncontrarValorNaTabela('Lucro Bruto:', RangeMatrix, X , Y);
      vLucroLiquido :=        EncontrarValorNaTabela('Lucro Líquido Total:', RangeMatrix, X , Y);
      vPayOff :=              EncontrarValorNaTabela('Retorno Esperado (Payoff):', RangeMatrix, X , Y);
      vFatorLucro :=          EncontrarValorNaTabela('Fator de Lucro:', RangeMatrix, X , Y);
      vFatorRecuperacao :=    EncontrarValorNaTabela('Fator de Recuperação:', RangeMatrix, X , Y);
      vSharpe :=              EncontrarValorNaTabela('Índice de Sharpe:', RangeMatrix, X , Y);
      vCorrelacaoLR :=        EncontrarValorNaTabela('Correlação LR :', RangeMatrix, X , Y);
      vDDFinanceiro :=        EncontrarDDFinanceiroNaTabela('Rebaixamento Máximo do Saldo :', RangeMatrix, X , Y);
      vMediaLucro :=          EncontrarValorNaTabela('Média lucro da negociação:', RangeMatrix, X , Y);
      vMediaPrejuizo :=       EncontrarValorNaTabela('Média perda na Negociação:', RangeMatrix, X , Y);

      {$endregion}

      {$region 'IRÁ SALVAR NO BANCO OS DADOS'}

      vID_Analise := DM_Robos_Financeiros.FDQ_RobosFinanceiros_R.FieldByName('ID_ANALISE').AsInteger;
      vID_Robo := DM_Robos_Financeiros.FDQ_RobosFinanceiros_R.FieldByName('ID_ROBO').AsInteger;

      SalvarSetupNoBanco(vQuery_S, 1, vID_Robo, vNomeDoSetup, vMagic, vLucroBruto, vLucroLiquido, vPayOff, vFatorLucro, vFatorRecuperacao, vSharpe, vCorrelacaoLR, vDDFinanceiro, vMediaLucro, vMediaPrejuizo);
      {$endregion}
     finally
       RangeMatrix := Unassigned;
     end;
   finally
      XLSAplicacao.ActiveWorkBook.Saved:= 1;
      XLSAplicacao.DisplayAlerts:= 0;
      XLSAplicacao.ActiveWorkBook.Close(SaveChanges:= 0);
      XLSAplicacao.Quit;

      AbaXLS := Unassigned;
      XLSAplicacao := Unassigned;
      Result := True;
   end;
end;
{$endregion}

{$region 'Deletar dados de SETUPS'}

procedure TFRM_RobosFinanceiros.B_DeletarDadosClick(Sender: TObject);
var
   vQuery_E : TFDQuery;
   vID_AGORA : String;
   vRegistros : Integer;
begin
    // Deletando informações na Tabela SETUPS
    try
      begin
        vID_AGORA := DBE_ID_ROBO.Text;
        try
          vQuery_E := TFDQuery.Create(nil);
        with vQuery_E do
        begin
          Connection := DM_Robos_Financeiros.FDC_RobosFinanceiros;
          Close;
          SQL.Clear;
          SQL.Add('SELECT COUNT(*) AS QUANTOS FROM SETUPS WHERE ID_ROBO = :ID_ROBO');

          ParamByName('ID_ROBO').Value := vID_AGORA;

          Prepare;
          Open;
          vRegistros := vQuery_E.FieldByName('QUANTOS').AsInteger;
          Close;
        end;
        finally
        end;
          if MessageDlg('Deseja excluir todos os ' + IntToStr(vRegistros) + ' SETUPS de Robos com o ID: ' + vID_AGORA + '?',mtWarning, [mbYes,mbNo],0) = mrYes then
            begin
              vQuery_E := TFDQuery.Create(nil);

              with vQuery_E do
              begin
               Connection := DM_Robos_Financeiros.FDC_RobosFinanceiros;
               Close;
               SQL.Clear;
               SQL.Add('DELETE FROM SETUPS WHERE ID_SETUP > 0 ');
               SQL.Add('AND ID_ROBO = :ID_ROBO');

               ParamByName('ID_ROBO').Value := vID_AGORA;

               Prepare;
               ExecSQL;
              end;
              showMessage('Foram excluídos os dados dos Setups');
            end
          else
          begin
            MessageDlg('Os dados não foram excluídos...',mtInformation,[mbOK],0);
            Abort;
          end;
      end;
    finally
      FreeAndNil(vQuery_E);
      DM_Robos_Financeiros.FDQ_RobosFinanceiros_S.Close;
      DM_Robos_Financeiros.FDQ_RobosFinanceiros_S.Open;
    end;
end;
{$endregion}

{$region 'Ao inserir novo registro, setar o primeiro input'}
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

{$region 'Função "EncontrarValorNaTabela" : Busca por valores'}
function TFRM_RobosFinanceiros.EncontrarValorNaTabela(Valor : String; Tabela : Variant; Linha, Coluna : Integer) : Double;
  var
  Col, Lin, J : Integer;
  Resultado : String;
  Resposta : Double;
  begin
    Col := 1;
    repeat
      for Lin := 1 to Linha do
      begin
        Resultado := VarToStr(Tabela[ Lin , Col ]);
        if Resultado = Valor then
        begin
          {$region 'Somar mais uma coluna até encontrar uma diferente de vazia'}
           J := 1;
           while (VarToStr(Tabela[ Lin, (Col + J)]) = '') do
           begin
             Inc(J, 1);
           end;
           Resposta := Tabela[ Lin, (Col + J)];
          {$endregion}
        end;
      end;
        Inc(Col, 1);
    until Col > Coluna;
    Tabela := Unassigned;
    if Valor = 'Média perda na Negociação:' then
      begin
        Result := Resposta * -1;
      end
      else
    Result := Resposta;
  end;

{$endregion}

{$region 'Função "EncontrarDescricaoNaTabela" : Busca por descrições'}
function TFRM_RobosFinanceiros.EncontrarDescricaoNaTabela(Valor : String; Tabela : Variant; Linha, Coluna : Integer) : String;
  var
  Col, Lin, J : Integer;
  Resultado, Resposta : String;
  begin
    Col := 1;
    repeat
      for Lin := 1 to Linha do
      begin
        Resultado := ToString(Tabela[ Lin , Col ]);
        if Resultado = Valor then
        begin
        {$region 'Somar mais uma coluna até encontrar uma diferente de vazia'}
              {$region 'Ajuda do Fernando'}
           J := 1;
           repeat  //24NOV2021
           while Tabela[ Lin, (Col + J)] = '' do
             begin
               Inc(J, 1);
             end;
           Resposta := Tabela[ Lin, (Col + J)];
           until Resposta <> '';
              {$endregion}
          {$endregion}
        end;
      end;
        Inc(Col, 1);
    until Col > Coluna;
    Tabela := Unassigned;
    if Resposta <> '' then
      begin
      Result := Resposta;
      end
    else
    begin
      showMessage('Não foi encontrado o valor correto!' + Valor);
      Abort;
    end;

  end;
{$endregion}

{$region 'Função "EncontrarMagicNaTabela"'}
function TFRM_RobosFinanceiros.EncontrarMagicNaTabela(Valor : String; Tabela : Variant; Linha, Coluna : Integer) : String;
  var
  Col, Lin, J, sPos : Integer;
  Resultado, Resposta : String;
  begin
    Col := 1;
    repeat
      for Lin := 1 to Linha do
      begin
        Resultado := ToString(Tabela[ Lin , Col ]);
        if Resultado = Valor then
        begin
        {$region 'Somar mais uma coluna até encontrar uma diferente de vazia'}
              {$region 'Ajuda do Fernando'}
           J := 1;
           while Tabela[ Lin, (Col + J)] = '' do
           begin
             Inc(J, 1);
           end;
           Col := Col + J;
           while (Pos('MagicNumber', Tabela[ (Lin + J), Col ]) = 0) and (Pos('Magic_Number', Tabela[ (Lin + J), Col ]) = 0) do
           begin
             Inc(J, 1);
           end;
           sPos := Pos('=', Tabela[ (Lin + J), Col ]);
           Resposta := copy(Tabela[ (Lin + J), Col ], sPos + 1, 3);
              {$endregion}
          {$endregion}
        end;
      end;
        Inc(Col, 1);
    until Col > Coluna;
    Tabela := Unassigned;
    if Resposta <> '' then
      begin
      Result := Resposta;
      end
    else
    begin
      showMessage('Não foi encontrado o valor correto!' + Valor);
      Abort;
    end;

  end;
{$endregion}

{$region 'Função "EncontrarDDFinanceiroNaTabela"'}
function TFRM_RobosFinanceiros.EncontrarDDFinanceiroNaTabela(Valor : String; Tabela : Variant; Linha, Coluna : Integer) : Double;
  var
  Col, Lin, J : Integer;
  Resultado, Resposta : String;
  begin
    Col := 1;
    repeat
      for Lin := 1 to Linha do
      begin
        Resultado := ToString(Tabela[ Lin , Col ]);
        if Resultado = Valor then
        begin
        {$region 'Somar mais uma coluna até encontrar uma diferente de vazia'}
              {$region 'Ajuda do Fernando'}
           J := 1;
           while Tabela[ Lin, (Col + J)] = '' do
           begin
             Inc(J, 1);
           end;
           Resposta := Tabela[ Lin, (Col + J)];
              {$endregion}
          {$endregion}
        end;
      end;
        Inc(Col, 1);
    until Col > Coluna;
    Tabela := Unassigned;
    if Resposta <> '' then
      begin
        Resposta := StringReplace(Resposta,' ', '', [rfReplaceAll]);
        Resposta := copy(Resposta, 1, pos('(', Resposta)-1);
        Resposta := StringReplace(Resposta,'.', ',', [rfReplaceAll]);

        Result := Resposta.ToDouble;
      end
    else
    begin
      showMessage('Não foi encontrado o valor correto!' + Valor);
      Abort;
    end;
  end;
{$endregion}

{$region 'Função Importada "GeneratorIncrementado"'}
function TFRM_RobosFinanceiros.GeneratorIncrementado(qGenerator:String) : Integer;
var
   vMinhaQuery : TFDQuery;
begin
   vMinhaQuery := TFDQuery.Create(Application);
   vMinhaQuery.Connection := DM_Robos_Financeiros.FDC_RobosFinanceiros;
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

{$region 'Função "ToString" : Converte Variaveis em String'}
function TFRM_RobosFinanceiros.ToString(Value: Variant): String;
begin
  case TVarData(Value).VType of
    varSmallInt,
    varInteger   : Result := IntToStr(Value);
    varSingle,
    varDouble,
    varCurrency  : Result := FloatToStr(Value);
    varDate      : Result := FormatDateTime('dd/mm/yyyy', Value);
    varBoolean   : if Value then Result := Value.AsString else Result := Value.AsString;
    varString    : Result := Value;
    else           Result := Value;
  end;
end;
procedure TFRM_RobosFinanceiros.TS_ConfiguracoesShow(Sender: TObject);
begin

end;

{$endregion}

{$region 'Funções "SalvarNoBanco" : Salva os dados nas respectivas tabelas'}
  {$region 'ANALISES_BD'}
function TFRM_RobosFinanceiros.SalvarAnaliseNoBanco(aQuery : TFDQuery; pTituloDaAnalise, pDescricaoDoPeriodo, pQuantosAnos, pSaldoInicial : String) : Integer;
 var
  rID_Analise : Integer;
begin
// Inserindo informações na Tabela ANALISES
    try
      begin
        aQuery := TFDQuery.Create(nil);
        with aQuery do
        begin
         Connection := DM_Robos_Financeiros.FDC_RobosFinanceiros;
         Close;
         SQL.Clear;
         SQL.Add('INSERT INTO ANALISES(ID_ANALISE,TITULO_DA_ANALISE, DESCRICAO_DO_PERIODO, PERIODO_EM_ANOS, SALDO_INICIAL)');
         SQL.Add('VALUES (:ID_ANALISE,:TITULO_DA_ANALISE, :DESCRICAO_DO_PERIODO, :PERIODO_EM_ANOS, :SALDO_INICIAL)');

         rID_Analise := GeneratorIncrementado('NOVO_ID_ANALISE');
         ParamByName('ID_ANALISE').Value := rID_ANALISE;
         ParamByName('TITULO_DA_ANALISE').Value := pTituloDaAnalise;
         ParamByName('DESCRICAO_DO_PERIODO').Value := pDescricaoDoPeriodo;
         ParamByName('PERIODO_EM_ANOS').Value := StrToInt(pQuantosAnos);
         ParamByName('SALDO_INICIAL').Value := StrToFloat(pSaldoInicial);

         Prepare;
         ExecSQL;
        end;
      end
    finally
      FreeAndNil(aQuery);
      DM_Robos_Financeiros.FDQ_RobosFinanceiros_A.Close;
      DM_Robos_Financeiros.FDQ_RobosFinanceiros_A.Open;
      Result := rID_Analise;
    end;
end;
  {$endregion}

  {$region 'ROBOS_BD'}
function TFRM_RobosFinanceiros.SalvarRoboNoBanco(rQuery : TFDQuery; pID_Analise : Integer; pNomeDoRobo : String) : Integer;
var
  rID_Robo : Integer;
begin
  rID_Robo := 0;
// Inserindo informações na Tabela ROBOS
    try
      begin
        rQuery := TFDQuery.Create(nil);
        with rQuery do
        begin
         Connection := DM_Robos_Financeiros.FDC_RobosFinanceiros;
         Close;
         SQL.Clear;
         SQL.Add('INSERT INTO ROBOS(ID_ROBO, ID_ANALISE, NOME_DO_ROBO)');
         SQL.Add('VALUES (:ID_ROBO, :ID_ANALISE, :NOME_DO_ROBO)');

         rID_Robo := GeneratorIncrementado('NOVO_ID_ROBO');
         ParamByName('ID_ROBO').Value := rID_Robo;
         ParamByName('ID_ANALISE').Value := pID_Analise;
         ParamByName('NOME_DO_ROBO').Value := pNomeDoRobo;

         Prepare;
         ExecSQL;
        end;
      end
    finally
      FreeAndNil(rQuery);
      DM_Robos_Financeiros.FDQ_RobosFinanceiros_R.Close;
      DM_Robos_Financeiros.FDQ_RobosFinanceiros_R.Open;
      Result := rID_Robo;
    end;
end;
  {$endregion}

  {$region 'SETUPS_BD'}
function TFRM_RobosFinanceiros.SalvarSetupNoBanco(sQuery : TFDQuery; pIdentificador, pID_Robo : Integer; pNomeDoSetup, pMagic : String; pLucroBruto, pLucroLiquido, pPayOff, pFatorLucro, pFatorRecuperacao, pSharpe, pCorrelacaoLR, pDDFinanceiro, pMediaLucro, pMediaPrejuizo : Double) : Integer;
var
  rID_Setup: Integer;
begin
// Inserindo informações na Tabela SETUPS
    try
      begin
        sQuery := TFDQuery.Create(nil);
        with sQuery do
        begin
         Connection := DM_Robos_Financeiros.FDC_RobosFinanceiros;
         Close;
         SQL.Clear;
         SQL.Add('INSERT INTO SETUPS');
         SQL.Add(' (ID_SETUP, ID_ROBO, MAGIC, NOME_DO_SETUP, LUCRO_BRUTO, LUCRO_LIQUIDO,'); //PERDA_BRUTA
         SQL.Add(' PAY_OFF, FATOR_LUCRO, FATOR_RECUPERACAO, SHARPE, CORRELACAO_LR, DD_FINANCEIRO,');
         SQL.Add(' MEDIA_LUCRO, MEDIA_PREJUIZO)'); // CALMAR_R, RESULTADO,INDICE_L_X_P, RELACAO_MEDL_X_MEDP,  CAGR
         SQL.Add('VALUES (:ID_SETUP, :ID_ROBO, :MAGIC, :NOME_DO_SETUP, :LUCRO_BRUTO, :LUCRO_LIQUIDO, '); //, :PERDA_BRUTA
         SQL.Add(':PAY_OFF, :FATOR_LUCRO, :FATOR_RECUPERACAO, :SHARPE, :CORRELACAO_LR, :DD_FINANCEIRO,');
         SQL.Add(':MEDIA_LUCRO, :MEDIA_PREJUIZO)'); // :CALMAR_R, :RESULTADO,:INDICE_L_X_P, :RELACAO_MEDL_X_MEDP, :CAGR,

         rID_Setup := GeneratorIncrementado('NOVO_ID_SETUP');
         ParamByName('ID_SETUP').Value := rID_Setup;
         ParamByName('ID_ROBO').Value := pID_Robo;
         ParamByName('NOME_DO_SETUP').Value := pNomeDoSetup;
         ParamByName('MAGIC').Value := pMagic;
         ParamByName('LUCRO_BRUTO').Value := pLucroBruto;
         ParamByName('LUCRO_LIQUIDO').Value := pLucroLiquido;
         ParamByName('PAY_OFF').Value := pPayOff;
         ParamByName('FATOR_LUCRO').Value := pFatorLucro;
         ParamByName('FATOR_RECUPERACAO').Value := pFatorRecuperacao;
         ParamByName('SHARPE').Value := pSharpe;
         ParamByName('CORRELACAO_LR').Value := pCorrelacaoLR;
         ParamByName('DD_FINANCEIRO').Value := pDDFinanceiro;
         ParamByName('MEDIA_LUCRO').Value := pMediaLucro;
         ParamByName('MEDIA_PREJUIZO').Value := pMediaPrejuizo;

         Prepare;
         ExecSQL;
        end;
      end
    finally
      FreeAndNil(sQuery);
      DM_Robos_Financeiros.FDQ_RobosFinanceiros_S.Close;
      DM_Robos_Financeiros.FDQ_RobosFinanceiros_S.Open;
      if pIdentificador = 0 then
      begin
      showMessage('Os dados foram registrados com sucesso!');
      end;
    end;
end;

  {$endregion}
{$endregion}

end.
