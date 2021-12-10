unit UNT_GLOBAL;

interface
uses
{$region 'USES : IMPORTS'}
  IBX.IBDatabase, Data.DB,
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes, StrUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.VCLUI.Wait,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls,
  DateUtils,    // para realizar a captura da Data Atual
  ComObj,       // para realizar a exportação para arquivo *.XLS
  IniFiles;     // para realizar a leitura do arquivo *.INI
{$endregion}
type
  TFRM_GLOBAL = class(TForm)
{$region 'GLOBAIS'}
  private
  public
  procedure SELECT_ALL_FROM_TABLE(pTabela: String);
  procedure EXPORT_EXCEL(pQuantidade: Integer; pQuery: TFDQuery);

  function FILTRAR_VALORES(pDE_PAYOFF, pATE_PAYOFF, pDE_FATOR_LUCRO, pATE_FATOR_LUCRO ,pDE_FATOR_RECUPERACAO, pATE_FATOR_RECUPERACAO,
pDE_SHARPE, pATE_SHARPE, pDE_CORRELACAO, pATE_CORRELACAO, pDE_CALMAR, pATE_CALMAR, pDE_CAGR, pATE_CAGR, pDE_DD_FINANCEIRO, pATE_DD_FINANCEIRO,
pDE_RELACAO_LUCROXPERDA, pATE_RELACAO_LUCROXPERDA: String): Boolean;

  function FILTRAR_VALORES2(pDE_PAYOFF, pATE_PAYOFF, pDE_FATOR_LUCRO, pATE_FATOR_LUCRO ,pDE_FATOR_RECUPERACAO, pATE_FATOR_RECUPERACAO,
pDE_SHARPE, pATE_SHARPE, pDE_CORRELACAO, pATE_CORRELACAO, pDE_CALMAR, pATE_CALMAR, pDE_CAGR, pATE_CAGR, pDE_DD_FINANCEIRO, pATE_DD_FINANCEIRO: String): Boolean;

  function GET_EDIT_BY_NAME(pForm: TForm; pNomeDoEdit: String): TEdit;
{$endregion}
{$region 'IMPORTADAS'}
  function GeneratorIncrementado(qGenerator:String) : Integer;
  procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  procedure MakeRounded(Control: TWinControl);
{$endregion}
  end;

var
  FRM_GLOBAL: TFRM_GLOBAL;

implementation

uses

DM_RobosFinanceiros;

{ ******* GLOBAIS ******* }

{$region 'SELECT_ALL_FROM_TABLE'}
procedure TFRM_GLOBAL.SELECT_ALL_FROM_TABLE(pTabela: String);
begin
  with DM_Robos_Financeiros.FDQ_GLOBAL, SQL do
   begin
   Close;
   Clear;
   Add('SELECT * FROM ');
   Add(pTabela);
   Open;
   end;
end;
{$endregion}

{$region 'GET_EDIT_BY_NAME'}
function TFRM_GLOBAL.GET_EDIT_BY_NAME(pForm: TForm; pNomeDoEdit: String): TEdit;
var
i: Integer;
EndEdit: TEdit;
begin
for i := 0 to pForm.ComponentCount - 1 do
  begin
    if (pForm.Components[i] is TEdit) and (TComponent(pForm.Components[i]).Name = pNomeDoEdit) then
      EndEdit := TEdit(pForm.Components[i]);
      Result := EndEdit;
  end;
end;
{$endregion}

{$region 'FILTRAR_VALORES'}
function TFRM_GLOBAL.FILTRAR_VALORES(pDE_PAYOFF, pATE_PAYOFF, pDE_FATOR_LUCRO, pATE_FATOR_LUCRO ,pDE_FATOR_RECUPERACAO, pATE_FATOR_RECUPERACAO,
pDE_SHARPE, pATE_SHARPE, pDE_CORRELACAO, pATE_CORRELACAO, pDE_CALMAR, pATE_CALMAR, pDE_CAGR, pATE_CAGR, pDE_DD_FINANCEIRO, pATE_DD_FINANCEIRO,
pDE_RELACAO_LUCROXPERDA, pATE_RELACAO_LUCROXPERDA: String): Boolean;
var
v_Qtde: Integer;
begin
  v_Qtde  := 0;
  try
    with DM_Robos_Financeiros.FDQ_GLOBAL, SQL do
    begin
      Close;
      Clear;
      Add('SELECT * FROM SETUPS ');
      Add('WHERE PAY_OFF > :DE_PAYOFF AND PAY_OFF < :ATE_PAYOFF');
      Add('AND FATOR_LUCRO > :DE_FATOR_LUCRO AND FATOR_LUCRO < :ATE_FATOR_LUCRO');
      Add('AND FATOR_RECUPERACAO > :DE_FATOR_RECUPERACAO AND FATOR_RECUPERACAO < :ATE_FATOR_RECUPERACAO');
      Add('AND SHARPE > :DE_SHARPE AND SHARPE < :ATE_SHARPE');
      Add('AND CORRELACAO_LR > :DE_CORRELACAO AND CORRELACAO_LR < :ATE_CORRELACAO');
      Add('AND CALMAR_R > :DE_CALMAR AND CALMAR_R < :ATE_CALMAR');
      Add('AND CAGR > :DE_CAGR AND CAGR < :ATE_CAGR');
      Add('AND DD_FINANCEIRO > :DE_DD_FINANCEIRO AND DD_FINANCEIRO < :ATE_DD_FINANCEIRO');
      Add('AND RELACAO_LUCROXPERDA > :DE_RELACAO_LUCROXPERDA AND RELACAO_LUCROXPERDA < :ATE_RELACAO_LUCROXPERDA');

      ParamByName('DE_PAYOFF').Value := StrToFloat(pDE_PAYOFF);
      ParamByName('ATE_PAYOFF').Value := StrToFloat(pATE_PAYOFF);
      ParamByName('DE_FATOR_LUCRO').Value := StrToFloat(pDE_FATOR_LUCRO);
      ParamByName('ATE_FATOR_LUCRO').Value := StrToFloat(pATE_FATOR_LUCRO);
      ParamByName('DE_FATOR_RECUPERACAO').Value := StrToFloat(pDE_FATOR_RECUPERACAO);
      ParamByName('ATE_FATOR_RECUPERACAO').Value := StrToFloat(pATE_FATOR_RECUPERACAO);
      ParamByName('DE_SHARPE').Value := StrToFloat(pDE_SHARPE);
      ParamByName('ATE_SHARPE').Value := StrToFloat(pATE_SHARPE);
      ParamByName('DE_CORRELACAO').Value := StrToFloat(pDE_CORRELACAO);
      ParamByName('ATE_CORRELACAO').Value := StrToFloat(pATE_CORRELACAO);
      ParamByName('DE_CALMAR').Value := StrToFloat(pDE_CALMAR);
      ParamByName('ATE_CALMAR').Value := StrToFloat(pATE_CALMAR);
      ParamByName('DE_CAGR').Value := StrToFloat(pDE_CAGR);
      ParamByName('ATE_CAGR').Value := StrToFloat(pATE_CAGR);
      ParamByName('DE_DD_FINANCEIRO').Value := StrToFloat(pDE_DD_FINANCEIRO);
      ParamByName('ATE_DD_FINANCEIRO').Value := StrToFloat(pATE_DD_FINANCEIRO);
      ParamByName('DE_RELACAO_LUCROXPERDA').Value := StrToFloat(pDE_RELACAO_LUCROXPERDA);
      ParamByName('ATE_RELACAO_LUCROXPERDA').Value := StrToFloat(pATE_RELACAO_LUCROXPERDA);

      Prepare;
      Open;
      v_Qtde := DM_Robos_Financeiros.FDQ_GLOBAL.RecordCount;
      Close;
    end;
  finally
    if v_Qtde > 0  then
      Result := True
//     showMessage('1 ou mais registros encontrados!')

     else
      Result := False;
//      showMessage('Nenhum registro encontrado!');
  end;
end;
{$endregion}

{$region 'FILTRAR_VALORES2'}
function TFRM_GLOBAL.FILTRAR_VALORES2(pDE_PAYOFF, pATE_PAYOFF, pDE_FATOR_LUCRO, pATE_FATOR_LUCRO ,pDE_FATOR_RECUPERACAO, pATE_FATOR_RECUPERACAO,
pDE_SHARPE, pATE_SHARPE, pDE_CORRELACAO, pATE_CORRELACAO, pDE_CALMAR, pATE_CALMAR, pDE_CAGR, pATE_CAGR, pDE_DD_FINANCEIRO, pATE_DD_FINANCEIRO: String): Boolean;
var
v_Qtde: Integer;
begin
  v_Qtde  := 0;
  try
    with DM_Robos_Financeiros.FDQ_GLOBAL, SQL do
    begin
      Close;
      Clear;
      Add('SELECT * FROM SETUPS ');
      Add('WHERE PAY_OFF > :DE_PAYOFF AND PAY_OFF < :ATE_PAYOFF');
      Add('AND FATOR_LUCRO > :DE_FATOR_LUCRO AND FATOR_LUCRO < :ATE_FATOR_LUCRO');
      Add('AND FATOR_RECUPERACAO > :DE_FATOR_RECUPERACAO AND FATOR_RECUPERACAO < :ATE_FATOR_RECUPERACAO');
      Add('AND SHARPE > :DE_SHARPE AND SHARPE < :ATE_SHARPE');
      Add('AND CORRELACAO_LR > :DE_CORRELACAO AND CORRELACAO_LR < :ATE_CORRELACAO');
      Add('AND CALMAR_R > :DE_CALMAR AND CALMAR_R < :ATE_CALMAR');
      Add('AND CAGR > :DE_CAGR AND CAGR < :ATE_CAGR');
      Add('AND DD_FINANCEIRO > :DE_DD_FINANCEIRO AND DD_FINANCEIRO < :ATE_DD_FINANCEIRO');

      ParamByName('DE_PAYOFF').Value := StrToFloat(pDE_PAYOFF);
      ParamByName('ATE_PAYOFF').Value := StrToFloat(pATE_PAYOFF);
      ParamByName('DE_FATOR_LUCRO').Value := StrToFloat(pDE_FATOR_LUCRO);
      ParamByName('ATE_FATOR_LUCRO').Value := StrToFloat(pATE_FATOR_LUCRO);
      ParamByName('DE_FATOR_RECUPERACAO').Value := StrToFloat(pDE_FATOR_RECUPERACAO);
      ParamByName('ATE_FATOR_RECUPERACAO').Value := StrToFloat(pATE_FATOR_RECUPERACAO);
      ParamByName('DE_SHARPE').Value := StrToFloat(pDE_SHARPE);
      ParamByName('ATE_SHARPE').Value := StrToFloat(pATE_SHARPE);
      ParamByName('DE_CORRELACAO').Value := StrToFloat(pDE_CORRELACAO);
      ParamByName('ATE_CORRELACAO').Value := StrToFloat(pATE_CORRELACAO);
      ParamByName('DE_CALMAR').Value := StrToFloat(pDE_CALMAR);
      ParamByName('ATE_CALMAR').Value := StrToFloat(pATE_CALMAR);
      ParamByName('DE_CAGR').Value := StrToFloat(pDE_CAGR);
      ParamByName('ATE_CAGR').Value := StrToFloat(pATE_CAGR);
      ParamByName('DE_DD_FINANCEIRO').Value := StrToFloat(pDE_DD_FINANCEIRO);
      ParamByName('ATE_DD_FINANCEIRO').Value := StrToFloat(pATE_DD_FINANCEIRO);

      Prepare;
      Open;
      v_Qtde := DM_Robos_Financeiros.FDQ_GLOBAL.RecordCount;
      Close;
    end;
  finally
    if v_Qtde > 0  then
    begin
      Result := True;
      FRM_GLOBAL.EXPORT_EXCEL(v_Qtde, DM_Robos_Financeiros.FDQ_GLOBAL);
//    showMessage('1 ou mais registros encontrados!')
    end
     else
      Result := False;
//      showMessage('Nenhum registro encontrado!');
  end;
end;
{$endregion}

{$region 'EXPORT_EXCEL'}
procedure TFRM_GLOBAL.EXPORT_EXCEL(pQuantidade: Integer; pQuery: TFDQuery);
var
ObjExcel, Planilha, Chart, s : Variant;
cTitulo : string;
i : integer;
begin
{$region 'EXCEL'}
cTitulo := 'Robos Financeiros';
ObjExcel := CreateOleObject('Excel.Application');
ObjExcel.Visible := True;
ObjExcel.Caption := cTitulo;
{$endregion}
{$region 'PLANILHA'}
ObjExcel.Workbooks.Add;
ObjExcel.Workbooks[1].Sheets.Add;
ObjExcel.Workbooks[1].WorkSheets[1].Name := cTitulo;
Planilha := objExcel.Workbooks[1].WorkSheets[cTitulo];
{$endregion}
{$region 'CABEÇALHO'}
Planilha.Range['A1'] := 'Robos Financeiros - ' + FormatDateTime('dd/mm/yyyy', Today);//'10/12/2021';//DateToStr(Now);

Planilha.Range['A2'] := 'Nome do Robo';
Planilha.Range['B2'] := 'PayOff';
Planilha.Range['C2'] := 'Fator Lucro';
Planilha.Range['D2'] := 'Fator Recuperação';
Planilha.Range['E2'] := 'Sharpe';
Planilha.Range['F2'] := 'Correlação';
Planilha.Range['G2'] := 'Calmar R';
Planilha.Range['H2'] := 'CAGR';
Planilha.Range['I2'] := 'DD Financeiro';
Planilha.Range['J2'] := 'Relação Lucro x Perda';
{$endregion}
{$region 'CÉLULAS'}
with pQuery do
  begin
  Open;
  DisableControls;
  Application.ProcessMessages;
  First;
  i := 2;
  while not pQuery.eof do
    begin
    Inc(i, 1);
    Planilha.Cells[i,1] := pQuery.FieldByName('NOME_DO_SETUP').AsString;
    Planilha.Cells[i,2] := pQuery.FieldByName('PAY_OFF').AsString;
    Planilha.Cells[i,3] := pQuery.FieldByName('FATOR_LUCRO').AsString;
    Planilha.Cells[i,4] := pQuery.FieldByName('FATOR_RECUPERACAO').AsString;
    Planilha.Cells[i,5] := pQuery.FieldByName('SHARPE').AsString;
    Planilha.Cells[i,6] := pQuery.FieldByName('CORRELACAO_LR').AsString;
    Planilha.Cells[i,7] := pQuery.FieldByName('CALMAR_R').AsString;
    Planilha.Cells[i,8] := pQuery.FieldByName('CAGR').AsString;
    Planilha.Cells[i,9] := pQuery.FieldByName('DD_FINANCEIRO').AsString;
    Planilha.Cells[i,10] := pQuery.FieldByName('RELACAO_MEDL_X_MEDP').AsString;
    pQuery.Next;
    end;
  EnableControls;
  end;
{$endregion}
{$region 'FORMATANDO CABEÇALHO'}
Planilha.Range['A1 : J1'].Mergecells := True;                            //MESCLAR
Planilha.Range['A1','J1'].EntireColumn.AutoFit;                       //AUTO-AJUSTE_COLUNA
Planilha.Range['A1','J2'].Font.Bold := True;                           //NEGRITO
Planilha.Range['A1','J2'].Interior.Color := $CCE0A4;                  //COR_DE_FUNDO
Planilha.Range['A1','J' + IntToStr(i)].Borders.LineStyle := 1;         //GRADE
Planilha.Range['A1','J' + InttoStr(i)].RowHeight := 15;                //AJUSTE_LINHA
Planilha.Range['A1','J' + InttoStr(i)].HorizontalAlignment := 3;                    //CENTRALIZADO
{$endregion}
ObjExcel.Visible := True;
end;
{$endregion}

{ ******* IMPORTADAS ******* }

{$region 'Função Importada "GeneratorIncrementado"'}
function TFRM_GLOBAL.GeneratorIncrementado(qGenerator:String) : Integer;
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

{$region 'Procedure Importada "FormKeyDown"'}
procedure TFRM_GLOBAL.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_RETURN then
   perform(WM_NEXTDLGCTL,0,0);
end;
{$endregion}

{$region 'Procedure Importada "MakeRounded"'}

procedure TFRM_GLOBAL.MakeRounded(Control: TWinControl);
var
R: TRect;
Rgn: HRGN;
begin
  with Control do
  begin
   R := ClientRect;
   rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 20, 20);
   Perform(EM_GETRECT, 0, lParam(@r));
   InflateRect(r, - 5, - 5);
   Perform(EM_SETRECTNP, 0, lParam(@r));
   SetWindowRgn(Handle, rgn, True);
   Invalidate;
  end;
end;

{$endregion}
end.
