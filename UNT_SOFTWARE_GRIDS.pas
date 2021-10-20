unit UNT_SOFTWARE_GRIDS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Stan.Intf, FireDAC.Comp.UI,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.StdCtrls,
  cxNavigator, cxDBNavigator, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TFRM_SOFTWARE = class(TForm)
    PageControl1: TPageControl;
    Analise: TTabSheet;
    Robo: TTabSheet;
    Setup: TTabSheet;
    Panel1: TPanel;
    DBN_ANALISES: TcxDBNavigator;
    Panel3: TPanel;
    DBN_ROBOS: TcxDBNavigator;
    PC_Robo: TPageControl;
    TS_Robo_Lista: TTabSheet;
    TS_Robo_Detalhes: TTabSheet;
    DBGrid2: TDBGrid;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    Panel4: TPanel;
    DBN_SETUPS: TcxDBNavigator;
    PC_Setup: TPageControl;
    TS_Setup_Lista: TTabSheet;
    TS_Setup_Detalhes: TTabSheet;
    DBGrid3: TDBGrid;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
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
    Label1: TLabel;
    DBEdit29: TDBEdit;
    TABELA_ATUAL: TPanel;
    PC_Analise: TPageControl;
    TS_Analise_Lista: TTabSheet;
    L_LISTA_ANALISES: TLabel;
    DBGrid1: TDBGrid;
    Detalhes: TTabSheet;
    DBEdit1: TDBEdit;
    PageControl3: TPageControl;
    TabSheet2: TTabSheet;
    PageControl4: TPageControl;
    TabSheet3: TTabSheet;
    Label4: TLabel;
    DBGrid4: TDBGrid;
    TS_Analise_Detalhes: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit2: TDBEdit;
    Panel2: TPanel;
    cxDBNavigator2: TcxDBNavigator;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    DBEdit4: TDBEdit;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_SOFTWARE: TFRM_SOFTWARE;

implementation

{$R *.dfm}

uses DMSOFTWARE;


procedure TFRM_SOFTWARE.FormActivate(Sender: TObject);
begin
  DM_SOFTWARE.FDQ_SOFTWARE_A.Open;
  DM_SOFTWARE.FDQ_SOFTWARE_R.Open;
  DM_SOFTWARE.FDQ_SOFTWARE_S.Open;
end;

end.
