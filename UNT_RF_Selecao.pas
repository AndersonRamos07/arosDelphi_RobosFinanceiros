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
    DBE_ID_PAYOFF: TDBEdit;
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
    DBE_DE_PAYOFF: TDBEdit;
    DBE_ATE_PAYOFF: TDBEdit;
    DBE_NOTA_PAYOFF: TDBEdit;
    DBE_ID_FATOR_LUCRO: TDBEdit;
    DBE_DE_FATOR_LUCRO: TDBEdit;
    DBE_ATE_FATOR_LUCRO: TDBEdit;
    DBE_NOTA_FATOR_LUCRO: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBE_ID_DD: TDBEdit;
    DBE_DE_DD: TDBEdit;
    DBE_ATE_DD: TDBEdit;
    DBE_NOTA_DD: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
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
  end;

var
  FRM_RF_Selecao: TFRM_RF_Selecao;

implementation

  uses
    UNT_RF_LookUp;

{$R *.dfm}

procedure TFRM_RF_Selecao.FILTRO_TABELA(tabela:String);
begin
  with DM_Robos_Financeiros.FDQ_LOOKUP, SQL do
   begin
   Close;
   Clear;
   Add('SELECT * FROM ');
   Add(tabela);
   Open;
   end;

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
