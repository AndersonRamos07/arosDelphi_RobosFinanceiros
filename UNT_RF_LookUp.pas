unit UNT_RF_LookUp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.DBGrids, Vcl.DBCtrls,
  DM_RobosFinanceiros, UNT_RF_Selecao;

type
  TFRM_LookUp = class(TForm)
    P_TABELA: TPanel;
    SB_AdicionarValor: TSpeedButton;
    SB_AceitarValor: TSpeedButton;
    SB_CancelarValor: TSpeedButton;
    DBGrid1: TDBGrid;
    procedure SB_AceitarValorClick(Sender : TObject);
    procedure PreencherDBEdits(Tabela: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_LookUp: TFRM_LookUp;

implementation

{$R *.dfm}

procedure TFRM_LookUp.SB_AceitarValorClick(Sender : TObject);
var
  Tabela : String;
begin
Tabela := P_Tabela.Caption;
PreencherDBEdits(Tabela);
end;

procedure TFRM_LookUp.PreencherDBEdits(Tabela: String);
var
  ID_DBEdit, DE_DBEdit, ATE_DBEdit, NOTA_DBEdit: TDBEdit;
  Nome_do_Campo, id, de, ate, nota : String;
begin
  //if (Tabela <> 'DD_FINANCEIRO') and (Tabela <> 'RELACAO_LUCROXPERDA') then
  if (Tabela = 'DD_FINANCEIRO') then
  begin
      Nome_do_Campo := 'ID_DD';
  end
  else if (Tabela = 'RELACAO_LUCROXPERDA') then
  begin
      Nome_do_Campo := 'ID_RL_X_P';
  end
  else
  begin
      Nome_do_Campo := 'ID_' + Tabela;
  end;
    //ID_DBEdit.Name := 'ID_' + Tabela;
    //UNT_RF_Selecao.FRM_RF_Selecao.ID_DBEdit := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName(Nome_do_Campo).AsString;
    id := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName(Nome_do_Campo).AsString;
    Nome_do_Campo := 'DE';
    de := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName(Nome_do_Campo).AsString;
    Nome_do_Campo := 'ATE';
    ate := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName(Nome_do_Campo).AsString;
    Nome_do_Campo := 'NOTA';
    nota := DM_Robos_Financeiros.FDQ_LOOKUP.FieldByName(Nome_do_Campo).AsString;

    showMessage(id + ' ' + de + ' ' + ate + ' ' + nota);
end;
end.
