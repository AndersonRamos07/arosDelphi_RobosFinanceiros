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
  IniFiles;     // para realizar a leitura do arquivo *.INI
{$endregion}
type
  TFRM_GLOBAL = class(TForm)
{$region 'GLOBAIS'}
  private
  public
  procedure SELECT_ALL_FROM_TABLE(pTabela: String);
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
      Result := True
//     showMessage('1 ou mais registros encontrados!')

     else
      Result := False;
//      showMessage('Nenhum registro encontrado!');
  end;
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
