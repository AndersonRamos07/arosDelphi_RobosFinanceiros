unit UNT_SOFTWARE_GRIDS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Stan.Intf, FireDAC.Comp.UI;

type
  TFRM_SOFTWARE = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DS_SOFTWARE_ANALISES: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_SOFTWARE: TFRM_SOFTWARE;

implementation

{$R *.dfm}

end.
