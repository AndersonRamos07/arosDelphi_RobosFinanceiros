unit UNT_RF_LookUp;

interface

uses
{$region 'USES : IMPORTS'}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, StrUtils;
{$endregion}

type
  TFRM_LookUp = class(TForm)
  {$region 'ATRIBUTOS'}
    P_TABELA: TPanel;
    SB_AdicionarValor: TSpeedButton;
    SB_AceitarValor: TSpeedButton;
    SB_CancelarValor: TSpeedButton;
    DBGrid1: TDBGrid;
    P_ADD_LOOKUP: TPanel;
    E_DE: TEdit;
    E_ATE: TEdit;
    E_NOTA: TEdit;
    SB_InserirValor: TSpeedButton;
    L_DE: TLabel;
    L_ATE: TLabel;
    L_NOTA: TLabel;
    SB_Ocultar: TSpeedButton;
    {$endregion}
  {$region 'PROCEDURES'}
    procedure SB_AceitarValorClick(Sender : TObject);
    procedure SB_AdicionarValorClick(Sender: TObject);
    procedure SB_InserirValorClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SB_OcultarClick(Sender: TObject);
    procedure PreencherOsEdits(pTabela: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure E_NOTAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  {$endregion}
  end;

var
  FRM_LookUp: TFRM_LookUp;

implementation

  uses
    DM_RobosFinanceiros, UNT_RF_Selecao, UNT_GLOBAL;

{$R *.dfm}

{$region 'FormCreate'}
procedure TFRM_LookUp.FormCreate(Sender: TObject);
begin
  Width := 500;
end;
{$endregion}

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

{$region 'SB_AdicionarValorClick'}
procedure TFRM_LookUp.SB_AdicionarValorClick(Sender: TObject);
begin
  FRM_LookUp.Width := 605;
  with P_ADD_LOOKUP do
  begin
  BringToFront;
  Visible := True;
  end;
  FocusControl(E_DE);
end;
{$endregion}

{$region 'SB_InserirValorClick'}
procedure TFRM_LookUp.SB_InserirValorClick(Sender: TObject);
var
  vTabela: String;
begin
  vTabela := P_TABELA.Caption;
  with DM_Robos_Financeiros.FDQ_GLOBAL, SQL do
   begin
   Close;
   Clear;
   Add('INSERT INTO ');
   Add(vTabela);
   Add(' (ID_' + vTabela + ', DE, ATE, NOTA) ');
   Add(' VALUES (:ID_' + vTabela + ', :DE, :ATE, :NOTA)');

   Params[0].AsInteger  := FRM_GLOBAL.GeneratorIncrementado('NOVO_ID_' + vTabela);
   Params[1].AsFloat    := StrToFloat(E_DE.Text);
   Params[2].AsFloat    := StrToFloat(E_ATE.Text);
   Params[3].AsFloat    := StrToFloat(E_NOTA.Text);

   Prepare;
   ExecSQL;
   Close;
   end;
   FRM_GLOBAL.SELECT_ALL_FROM_TABLE(vTabela);
end;
{$endregion}

{$region 'SB_OcultarClick'}
procedure TFRM_LookUp.SB_OcultarClick(Sender: TObject);
begin
  FRM_LookUp.Width := 430;
  P_ADD_LOOKUP.Visible := False;
end;
{$endregion}

{$region 'FormKeyDown'}
procedure TFRM_LookUp.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_RETURN then
   perform(WM_NEXTDLGCTL,0,0);
end;
{$endregion}

{$region 'E_NOTAKeyDown'}
procedure TFRM_LookUp.E_NOTAKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_RETURN then
  if (E_DE.Text <> '') and (E_DE.Text <> '0,00')
    and (E_ATE.Text <> '') and (E_ATE.Text <> '0,00')
    and (E_NOTA.Text <> '') and (E_NOTA.Text <> '0,00') then
    begin
      SB_InserirValor.Click;
    end
    else
    begin
      showMessage('Favor insira parâmetros válidos!');
    end;
end;
{$endregion}

{$region 'PreencherOsEdits'}
procedure TFRM_LookUp.PreencherOsEdits(pTabela: String);
var
  vEdit : TEdit;
  vEdit_ID, vEdit_DE, vEdit_ATE, vEdit_NOTA, v_ID : String;

begin
  vEdit_ID := 'E_ID_' + pTabela;
  v_ID := 'ID_' + pTabela;
  vEdit := FRM_GLOBAL.GET_EDIT_BY_NAME(FRM_RF_Selecao, vEdit_ID);
  vEdit.Text := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName(v_ID).AsString;

  vEdit_DE := 'E_DE_' + pTabela;
  vEdit := FRM_GLOBAL.GET_EDIT_BY_NAME(FRM_RF_Selecao, vEdit_DE);
  vEdit.Text := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('DE').AsString;

  vEdit_ATE := 'E_ATE_' + pTabela;
  vEdit := FRM_GLOBAL.GET_EDIT_BY_NAME(FRM_RF_Selecao, vEdit_ATE);
  vEdit.Text := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('ATE').AsString;

  vEdit_NOTA := 'E_NOTA_' + pTabela;
  vEdit := FRM_GLOBAL.GET_EDIT_BY_NAME(FRM_RF_Selecao, vEdit_NOTA);
  vEdit.Text := DM_Robos_Financeiros.FDQ_GLOBAL.FieldByName('NOTA').AsString;
end;
{$endregion}

end.
