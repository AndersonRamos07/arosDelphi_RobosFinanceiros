unit UNT_RF_Selecao;

interface

uses
{$region 'USES : IMPORTS'}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  DM_RobosFinanceiros,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.IBBase, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls;
{$endregion}
type
  TFRM_RF_Selecao = class(TForm)
    {$region 'ATRIBUTOS'}
    P_Principal: TPanel;
    GB_R_L_X_P: TGroupBox;
    GB_CORRELACAO: TGroupBox;
    GB_SHARPE: TGroupBox;
    GB_FATOR_R: TGroupBox;
    GB_FATOR_L: TGroupBox;
    GB_PAYOFF: TGroupBox;
    GB_DD: TGroupBox;
    GB_CAGR: TGroupBox;
    SB_FILTRAR: TSpeedButton;
    SB_CANCELAR: TSpeedButton;
    SB_FILTRO_PO: TSpeedButton;
    SB_FILTRO_FL: TSpeedButton;
    SB_FILTRO_PR: TSpeedButton;
    SB_FILTRO_SH: TSpeedButton;
    SB_FILTRO_CO: TSpeedButton;
    SB_FILTRO_CG: TSpeedButton;
    SB_FILTRO_DD: TSpeedButton;
    SB_FILTRO_RLP: TSpeedButton;
    GB_CALMAR: TGroupBox;
    SB_FILTRO_CR: TSpeedButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    E_ID_PAYOFF: TEdit;
    E_DE_PAYOFF: TEdit;
    E_ATE_PAYOFF: TEdit;
    E_NOTA_PAYOFF: TEdit;
    E_ID_FATOR_LUCRO: TEdit;
    E_DE_FATOR_LUCRO: TEdit;
    E_ATE_FATOR_LUCRO: TEdit;
    E_NOTA_FATOR_LUCRO: TEdit;
    E_ID_FATOR_RECUPERACAO: TEdit;
    E_DE_FATOR_RECUPERACAO: TEdit;
    E_ATE_FATOR_RECUPERACAO: TEdit;
    E_NOTA_FATOR_RECUPERACAO: TEdit;
    E_ID_SHARPE: TEdit;
    E_DE_SHARPE: TEdit;
    E_ATE_SHARPE: TEdit;
    E_NOTA_SHARPE: TEdit;
    E_ID_CORRELACAO: TEdit;
    E_DE_CORRELACAO: TEdit;
    E_ATE_CORRELACAO: TEdit;
    E_NOTA_CORRELACAO: TEdit;
    E_ID_CALMAR: TEdit;
    E_DE_CALMAR: TEdit;
    E_ATE_CALMAR: TEdit;
    E_NOTA_CALMAR: TEdit;
    E_ID_CAGR: TEdit;
    E_DE_CAGR: TEdit;
    E_ATE_CAGR: TEdit;
    E_NOTA_CAGR: TEdit;
    E_ID_DD_FINANCEIRO: TEdit;
    E_DE_DD_FINANCEIRO: TEdit;
    E_ATE_DD_FINANCEIRO: TEdit;
    E_NOTA_DD_FINANCEIRO: TEdit;
    E_ID_RELACAO_LUCROXPERDA: TEdit;
    E_DE_RELACAO_LUCROXPERDA: TEdit;
    E_ATE_RELACAO_LUCROXPERDA: TEdit;
    E_NOTA_RELACAO_LUCROXPERDA: TEdit;
    {$endregion}
    {$region 'PROCEDURES'}
    procedure FILTRO_TABELA(tabela:String);
    procedure MakeRounded(Control: TWinControl);
    procedure SB_FILTRO_POClick(Sender: TObject);
    procedure SB_FILTRO_FLClick(Sender: TObject);
    procedure SB_FILTRO_PRClick(Sender: TObject);
    procedure SB_FILTRO_SHClick(Sender: TObject);
    procedure SB_FILTRO_COClick(Sender: TObject);
    procedure SB_FILTRO_CRClick(Sender: TObject);
    procedure SB_FILTRO_CGClick(Sender: TObject);
    procedure SB_FILTRO_DDClick(Sender: TObject);
    procedure SB_FILTRO_RLPClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    {$endregion}

  function GET_EDIT_BY_NAME(NomeDoEdit: String): TEdit;
  end;

var
  FRM_RF_Selecao: TFRM_RF_Selecao;

implementation

  uses
    UNT_RF_LookUp;

{$R *.dfm}

procedure TFRM_RF_Selecao.FILTRO_TABELA(tabela:String);
begin
  DM_Robos_Financeiros.SELECT_ALL_FROM_TABLE(tabela);

  Application.CreateForm(TFRM_Lookup, FRM_Lookup);

  with FRM_Lookup do
  begin
  Left := (Screen.Width div 2) - (FRM_LookUp.Width div 2);
  Top := (Screen.Height div 2) - (FRM_LookUp.Height div 2);
  P_TABELA.Caption := tabela;
  ShowModal;
  end;
end;

procedure TFRM_RF_Selecao.SB_FILTRO_POClick(Sender: TObject);
begin
  FILTRO_TABELA('PAYOFF');
end;

procedure TFRM_RF_Selecao.SB_FILTRO_FLClick(Sender: TObject);
begin
  FILTRO_TABELA('FATOR_LUCRO');
end;

procedure TFRM_RF_Selecao.SB_FILTRO_PRClick(Sender: TObject);
begin
  FILTRO_TABELA('FATOR_RECUPERACAO');
end;

procedure TFRM_RF_Selecao.SB_FILTRO_SHClick(Sender: TObject);
begin
  FILTRO_TABELA('SHARPE');
end;

procedure TFRM_RF_Selecao.SB_FILTRO_COClick(Sender: TObject);
begin
  FILTRO_TABELA('CORRELACAO');
end;

procedure TFRM_RF_Selecao.SB_FILTRO_CRClick(Sender: TObject);
begin
  FILTRO_TABELA('CALMAR');
end;

procedure TFRM_RF_Selecao.SB_FILTRO_CGClick(Sender: TObject);
begin
  FILTRO_TABELA('CAGR');
end;

procedure TFRM_RF_Selecao.SB_FILTRO_DDClick(Sender: TObject);
begin
  FILTRO_TABELA('DD_FINANCEIRO');
end;

procedure TFRM_RF_Selecao.SB_FILTRO_RLPClick(Sender: TObject);
begin
  FILTRO_TABELA('RELACAO_LUCROXPERDA');
end;

procedure TFRM_RF_Selecao.FormCreate(Sender: TObject);
begin
with FRM_RF_Selecao do
  begin
    Left := (Screen.Width div 2) - (FRM_RF_Selecao.Width div 2);
    Top := (Screen.Height div 2) - (FRM_RF_Selecao.Height div 2);
  end;
end;

{$region 'GET_EDIT_BY_NAME'}
function TFRM_RF_Selecao.GET_EDIT_BY_NAME(NomeDoEdit: String): TEdit;
var
i: Integer;
EndEdit: TEdit;
begin
for i := 0 to FRM_RF_Selecao.ComponentCount - 1 do
  begin
    if (FRM_RF_Selecao.Components[i] is TEdit) and (TComponent(FRM_RF_Selecao.Components[i]).Name = NomeDoEdit) then
      EndEdit := TEdit(FRM_RF_Selecao.Components[i]);
      Result := EndEdit;
  end;
end;
{$endregion}

{$region 'ARREDONDAR'}

procedure TFRM_RF_Selecao.MakeRounded(Control: TWinControl);
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
