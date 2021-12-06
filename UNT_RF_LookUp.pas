unit UNT_RF_LookUp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, StrUtils,
  DM_RobosFinanceiros, UNT_RF_Selecao;

type
  TFRM_LookUp = class(TForm)
    P_TABELA: TPanel;
    SB_AdicionarValor: TSpeedButton;
    SB_AceitarValor: TSpeedButton;
    SB_CancelarValor: TSpeedButton;
    DBGrid1: TDBGrid;
    procedure SB_AceitarValorClick(Sender : TObject);
    //procedure PreencherDBEdits(Tabela: String);
    procedure PreencherEdits(Tabela: String);
    procedure SB_AdicionarValorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_LookUp: TFRM_LookUp;

implementation

{$R *.dfm}

{$region 'SB_AceitarValor'}
procedure TFRM_LookUp.SB_AceitarValorClick(Sender : TObject);
var
  Tabela : String;
begin
Tabela := P_Tabela.Caption;
//PreencherDBEdits(Tabela);
PreencherEdits(Tabela);
Close();
end;
{$endregion}

{$region ''}
procedure TFRM_LookUp.SB_AdicionarValorClick(Sender: TObject);
var
  tabela: String;
  FormAdd: TForm;
  LabelDE, LabelATE, LabelNOTA: TLabel;
  EditDE, EditATE, EditNOTA: TEdit;
begin
  FormAdd := TForm.Create(nil);
  with FormAdd do
  begin
  // Label
  LabelDE := TLabel.Create(FormAdd);

  with LabelDE do
    begin
      Parent  := FormAdd;
      Name  := 'LabelDE';
      Caption := 'DE';
      Left    := 16;
      Top     := 12;
      Width   := 233;
    end;

  // Edit
  EditDE := TEdit.Create(FormAdd);

  with EditDE do
    begin
      Parent := FormAdd;
      Name  := 'DE';
      Left     := 16;
      Top     := 32;
      Width  := 233;
    end;
  end;
  tabela := P_TABELA.Caption;
  with DM_Robos_Financeiros.FDQ_LOOKUP, SQL do
   begin
   Close;
   Clear;
   Add('INSERT INTO ');
   Add(tabela);
   Add(' (ID_' + tabela + ', DE, ATE, NOTA) ');
   Add(' VALUES (:ID_' + tabela + ', :DE, :ATE, :NOTA)');

   ParamByName(':ID_' + tabela).Value := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('ID_' + tabela).AsInteger;
   ParamByName(':DE').Value := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('DE').AsFloat;
   ParamByName(':ATE').Value := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('ATE').AsFloat;
   ParamByName(':NOTA').Value := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('NOTA').AsFloat;

   Prepare;
   ExecSQL;

   Close;
   end;
  FRM_RF_Selecao.FILTRO_TABELA(tabela);
end;
{$endregion}

{$region 'PreencherEdits()'}
procedure TFRM_LookUp.PreencherEdits(Tabela: string);
var
  ID_DBEdit, DE_DBEdit, ATE_DBEdit, NOTA_DBEdit: TDBEdit;
  Nome_do_Campo, Nome_ID, Nome_DE, Nome_ATE, Nome_NOTA, Valor: String;
  i: Integer;

begin
   Nome_ID := 'ID';
   Nome_DE := 'DE';
   Nome_ATE := 'ATE';
   Nome_NOTA := 'NOTA';

  if (Tabela = 'PAYOFF') then
  begin
      with FRM_RF_Selecao do
      begin
      E_ID_PAYOFF.Text    := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('ID_PAYOFF').AsString;
      E_DE_PAYOFF.Text    := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('DE').AsString;
      E_ATE_PAYOFF.Text   := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('ATE').AsString;
      E_NOTA_PAYOFF.Text  := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('NOTA').AsString;
      end;
  end
  else if (Tabela = 'FATOR_LUCRO') then
  begin
      with FRM_RF_Selecao do
      begin
      E_ID_FATOR_LUCRO.Text    := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('ID_FATOR_LUCRO').AsString;
      E_DE_FATOR_LUCRO.Text    := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('DE').AsString;
      E_ATE_FATOR_LUCRO.Text   := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('ATE').AsString;
      E_NOTA_FATOR_LUCRO.Text  := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('NOTA').AsString;
      end;
  end
  else if (Tabela = 'FATOR_RECUPERACAO') then
  begin
      with FRM_RF_Selecao do
      begin
      E_ID_FATOR_RECUPERACAO.Text    := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('ID_FATOR_RECUPERACAO').AsString;
      E_DE_FATOR_RECUPERACAO.Text    := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('DE').AsString;
      E_ATE_FATOR_RECUPERACAO.Text   := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('ATE').AsString;
      E_NOTA_FATOR_RECUPERACAO.Text  := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('NOTA').AsString;
      end;
  end
  else if (Tabela = 'SHARPE') then
  begin
      with FRM_RF_Selecao do
      begin
      E_ID_SHARPE.Text    := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('ID_SHARPE').AsString;
      E_DE_SHARPE.Text    := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('DE').AsString;
      E_ATE_SHARPE.Text   := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('ATE').AsString;
      E_NOTA_SHARPE.Text  := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('NOTA').AsString;
      end;
  end
  else if (Tabela = 'CORRELACAO') then
  begin
      with FRM_RF_Selecao do
      begin
      E_ID_CORRELACAO.Text    := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('ID_CORRELACAO').AsString;
      E_DE_CORRELACAO.Text    := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('DE').AsString;
      E_ATE_CORRELACAO.Text   := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('ATE').AsString;
      E_NOTA_CORRELACAO.Text  := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('NOTA').AsString;
      end;
  end
  else if (Tabela = 'CALMAR') then
  begin
      with FRM_RF_Selecao do
      begin
      E_ID_CALMAR.Text    := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('ID_CALMAR').AsString;
      E_DE_CALMAR.Text    := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('DE').AsString;
      E_ATE_CALMAR.Text   := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('ATE').AsString;
      E_NOTA_CALMAR.Text  := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('NOTA').AsString;
      end;
  end
  else if (Tabela = 'CAGR') then
  begin
      with FRM_RF_Selecao do
      begin
      E_ID_CAGR.Text    := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('ID_CAGR').AsString;
      E_DE_CAGR.Text    := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('DE').AsString;
      E_ATE_CAGR.Text   := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('ATE').AsString;
      E_NOTA_CAGR.Text  := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('NOTA').AsString;
      end;
  end
  else if (Tabela = 'DD_FINANCEIRO') then
  begin
      with FRM_RF_Selecao do
      begin
      E_ID_DD_FINANCEIRO.Text    := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('ID_DD_FINANCEIRO').AsString;
      E_DE_DD_FINANCEIRO.Text    := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('DE').AsString;
      E_ATE_DD_FINANCEIRO.Text   := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('ATE').AsString;
      E_NOTA_DD_FINANCEIRO.Text  := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('NOTA').AsString;
      end;
  end
  else if (Tabela = 'RELACAO_LUCROXPERDA') then
  begin
      with FRM_RF_Selecao do
      begin
      E_ID_RELACAO_LUCROXPERDA.Text    := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('ID_RELACAO_LUCROXPERDA').AsString;
      E_DE_RELACAO_LUCROXPERDA.Text    := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('DE').AsString;
      E_ATE_RELACAO_LUCROXPERDA.Text   := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('ATE').AsString;
      E_NOTA_RELACAO_LUCROXPERDA.Text  := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName('NOTA').AsString;
      end;
  end;
end;
{$endregion}

{$region 'DBEDITS'}
//procedure TFRM_LookUp.PreencherDBEdits(Tabela: String);
//var
//  ID_DBEdit, DE_DBEdit, ATE_DBEdit, NOTA_DBEdit: TDBEdit;
//  Nome_do_Campo, Nome_ID, Nome_DE, Nome_ATE, Nome_NOTA, Valor: String;
//  i: Integer;
//
//  function getElementById(FieldName, EditName, Value : String);
//  begin
//    for i := 0 to FRM_RF_Selecao.ComponentCount - 1 do
//    begin
//      if (FRM_RF_Selecao.Components[i] is TEdit) and (TComponent(FRM_RF_Selecao.Components[i]).Name = EditName) then
//        TEdit(FRM_RF_Selecao.Components[i]).Text := Value;
//    end;
//  end;
//
//  function preencherCampo(Campo: String);
//  begin
//    case AnsiIndexStr(UpperCase(Campo), ['ID', 'DE','ATE', 'NOTA']) of
//      0 : getElementById('ID');
//      1 : showmessage('Opcao2');
//      2 : showmessage('Opcao3');
//      3 :
//    end;
//  end;
//
//begin
//   Nome_ID = 'ID';
//   Nome_DE = 'DE';
//   Nome_ATE = 'ATE';
//   Nome_NOTA = 'NOTA';
//
//  if (Tabela = 'DD_FINANCEIRO') then
//  begin
//      Nome_ID := 'ID_DD';
//      Nome_do_Campo := 'E_' + Nome_ID;
//      Valor := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName(Nome_ID).AsString;
//      getElementById(Nome_ID, Nome_do_Campo, Valor);
//  end
//  else if (Tabela = 'RELACAO_LUCROXPERDA') then
//  begin
//      Nome_ID := 'ID_RL_X_P';
//      Nome_do_Campo := 'E_' + Nome_ID;
//      Valor := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName(Nome_do_Campo).AsString;
//      getElementById(Nome_ID, Nome_do_Campo, Valor);
//  end
//  else
//  begin
//      Nome_ID := 'ID_' + Tabela;
//  end;
//    Nome_do_Campo := 'E_' + Nome_ID;
//    Valor := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName(Nome_do_Campo).AsString;
//    getElementById(Nome_ID, Nome_do_Campo, Valor);
//
//
//    //ID_DBEdit.Name := 'ID_' + Tabela;
//    //UNT_RF_Selecao.FRM_RF_Selecao.ID_DBEdit := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName(Nome_do_Campo).AsString;
//    //id := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName(Nome_do_Campo).AsString;
//    Nome_do_Campo := 'DE';
//    //Nome_DE := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName(Nome_do_Campo).AsString;
//    Nome_do_Campo := 'ATE';
//    //Nome_ATE := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName(Nome_do_Campo).AsString;
//    Nome_do_Campo := 'NOTA';
//    //Nome_NOTA := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName(Nome_do_Campo).AsString;
//
//    //showMessage(id + ' ' + de + ' ' + ate + ' ' + nota);
//end;
{$endregion}

end.
