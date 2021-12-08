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
  private
  public
  procedure SELECT_ALL_FROM_TABLE(pTabela: String);
  function GET_EDIT_BY_NAME(pForm: TForm; pNomeDoEdit: String): TEdit;
  function GeneratorIncrementado(qGenerator:String) : Integer;
  end;

var
  FRM_GLOBAL: TFRM_GLOBAL;

implementation

uses

DM_RobosFinanceiros;
{ ******* PROCEDURES GLOBAIS ******* }

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

end.
