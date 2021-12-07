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
    P_ADD_LOOKUP: TPanel;
    E_ID: TEdit;
    E_DE: TEdit;
    E_ATE: TEdit;
    E_NOTA: TEdit;
    SB_InserirValor: TSpeedButton;
    L_ID: TLabel;
    L_DE: TLabel;
    L_ATE: TLabel;
    L_NOTA: TLabel;
    SP_Ocultar: TSpeedButton;
    procedure SB_AceitarValorClick(Sender : TObject);
    procedure PreencherEdits(Tabela: String);
    procedure SB_AdicionarValorClick(Sender: TObject);
    procedure SB_InserirValorClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SP_OcultarClick(Sender: TObject);
    procedure PreencherOsEdits(Tabela: String);
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
PreencherOsEdits(Tabela);
Close();
end;
{$endregion}

{$region ''}
procedure TFRM_LookUp.SB_AdicionarValorClick(Sender: TObject);
begin
  FRM_LookUp.Width := 540;
  with P_ADD_LOOKUP do
  begin
  BringToFront;
  Visible := True;
  end;
  FocusControl(E_DE);
end;

{$endregion}

procedure TFRM_LookUp.SB_InserirValorClick(Sender: TObject);
var
  tabela: String;
begin
  tabela := P_TABELA.Caption;
  with DM_Robos_Financeiros.FDQ_GLOBAL, SQL do
   begin
   Close;
   Clear;
   Add('INSERT INTO ');
   Add(tabela);
   Add(' (ID_' + tabela + ', DE, ATE, NOTA) ');
   Add(' VALUES (:ID_' + tabela + ', :DE, :ATE, :NOTA)');

   Params[0].AsInteger  := (StrToInt(E_ID.Text) + 1);
   Params[1].AsFloat    := StrToFloat(E_DE.Text);
   Params[2].AsFloat    := StrToFloat(E_ATE.Text);
   Params[3].AsFloat    := StrToFloat(E_NOTA.Text);

   Prepare;
   ExecSQL;
   Close;
   end;
   DM_Robos_Financeiros.SELECT_ALL_FROM_TABLE(tabela);
end;



procedure TFRM_LookUp.SP_OcultarClick(Sender: TObject);
begin
  FRM_LookUp.Width := 430;
  P_ADD_LOOKUP.Visible := False;
end;

{$region 'PreencherEdits()'}
procedure TFRM_LookUp.FormCreate(Sender: TObject);
begin
  Width := 430;
end;

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
      E_ID_PAYOFF.Text    := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('ID_PAYOFF').AsString;
      E_DE_PAYOFF.Text    := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('DE').AsString;
      E_ATE_PAYOFF.Text   := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('ATE').AsString;
      E_NOTA_PAYOFF.Text  := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('NOTA').AsString;
      end;
  end
  else if (Tabela = 'FATOR_LUCRO') then
  begin
      with FRM_RF_Selecao do
      begin
      E_ID_FATOR_LUCRO.Text    := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('ID_FATOR_LUCRO').AsString;
      E_DE_FATOR_LUCRO.Text    := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('DE').AsString;
      E_ATE_FATOR_LUCRO.Text   := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('ATE').AsString;
      E_NOTA_FATOR_LUCRO.Text  := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('NOTA').AsString;
      end;
  end
  else if (Tabela = 'FATOR_RECUPERACAO') then
  begin
      with FRM_RF_Selecao do
      begin
      E_ID_FATOR_RECUPERACAO.Text    := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('ID_FATOR_RECUPERACAO').AsString;
      E_DE_FATOR_RECUPERACAO.Text    := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('DE').AsString;
      E_ATE_FATOR_RECUPERACAO.Text   := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('ATE').AsString;
      E_NOTA_FATOR_RECUPERACAO.Text  := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('NOTA').AsString;
      end;
  end
  else if (Tabela = 'SHARPE') then
  begin
      with FRM_RF_Selecao do
      begin
      E_ID_SHARPE.Text    := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('ID_SHARPE').AsString;
      E_DE_SHARPE.Text    := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('DE').AsString;
      E_ATE_SHARPE.Text   := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('ATE').AsString;
      E_NOTA_SHARPE.Text  := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('NOTA').AsString;
      end;
  end
  else if (Tabela = 'CORRELACAO') then
  begin
      with FRM_RF_Selecao do
      begin
      E_ID_CORRELACAO.Text    := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('ID_CORRELACAO').AsString;
      E_DE_CORRELACAO.Text    := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('DE').AsString;
      E_ATE_CORRELACAO.Text   := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('ATE').AsString;
      E_NOTA_CORRELACAO.Text  := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('NOTA').AsString;
      end;
  end
  else if (Tabela = 'CALMAR') then
  begin
      with FRM_RF_Selecao do
      begin
      E_ID_CALMAR.Text    := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('ID_CALMAR').AsString;
      E_DE_CALMAR.Text    := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('DE').AsString;
      E_ATE_CALMAR.Text   := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('ATE').AsString;
      E_NOTA_CALMAR.Text  := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('NOTA').AsString;
      end;
  end
  else if (Tabela = 'CAGR') then
  begin
      with FRM_RF_Selecao do
      begin
      E_ID_CAGR.Text    := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('ID_CAGR').AsString;
      E_DE_CAGR.Text    := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('DE').AsString;
      E_ATE_CAGR.Text   := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('ATE').AsString;
      E_NOTA_CAGR.Text  := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('NOTA').AsString;
      end;
  end
  else if (Tabela = 'DD_FINANCEIRO') then
  begin
      with FRM_RF_Selecao do
      begin
      E_ID_DD_FINANCEIRO.Text    := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('ID_DD_FINANCEIRO').AsString;
      E_DE_DD_FINANCEIRO.Text    := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('DE').AsString;
      E_ATE_DD_FINANCEIRO.Text   := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('ATE').AsString;
      E_NOTA_DD_FINANCEIRO.Text  := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('NOTA').AsString;
      end;
  end
  else if (Tabela = 'RELACAO_LUCROXPERDA') then
  begin
      with FRM_RF_Selecao do
      begin
      E_ID_RELACAO_LUCROXPERDA.Text    := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('ID_RELACAO_LUCROXPERDA').AsString;
      E_DE_RELACAO_LUCROXPERDA.Text    := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('DE').AsString;
      E_ATE_RELACAO_LUCROXPERDA.Text   := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('ATE').AsString;
      E_NOTA_RELACAO_LUCROXPERDA.Text  := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('NOTA').AsString;
      end;
  end;
end;
{$endregion}

{$region 'PreencherOsEdits'}
procedure TFRM_LookUp.PreencherOsEdits(Tabela: String);
var
  Edit : TEdit;
  Edit_ID, Edit_DE, Edit_ATE, Edit_NOTA, v_ID : String;

begin
  Edit_ID := 'E_ID_' + Tabela;
  v_ID := 'ID_' + Tabela;
  Edit := FRM_RF_Selecao.GET_EDIT_BY_NAME(Edit_ID);
  Edit.Text := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName(v_ID).AsString;

  Edit_DE := 'E_DE_' + Tabela;
  Edit := FRM_RF_Selecao.GET_EDIT_BY_NAME(Edit_DE);
  Edit.Text := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('DE').AsString;

  Edit_ATE := 'E_ATE_' + Tabela;
  Edit := FRM_RF_Selecao.GET_EDIT_BY_NAME(Edit_ATE);
  Edit.Text := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('ATE').AsString;

  Edit_NOTA := 'E_NOTA_' + Tabela;
  Edit := FRM_RF_Selecao.GET_EDIT_BY_NAME(Edit_NOTA);
  Edit.Text := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('NOTA').AsString;
end;
{$endregion}

end.

//  FormAdd := TForm.Create(nil);
//  with FormAdd do
//  begin
//  // Label
//  LabelDE := TLabel.Create(FormAdd);
//
//  with LabelDE do
//    begin
//      Parent  := FormAdd;
//      Name    := 'LabelDE';
//      Caption := 'DE';
//      Left    := 16;
//      Top     := 12;
//      Width   := 233;
//    end;
//
//  // Edit
//  EditDE := TEdit.Create(FormAdd);
//
//  with EditDE do
//    begin
//      Parent  := FormAdd;
//      Name    := 'DE';
//      Left    := 16;
//      Top     := 32;
//      Width   := 233;
//    end;
//  end;
