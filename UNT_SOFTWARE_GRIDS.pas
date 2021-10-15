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
    DS_SOFTWARE_ANALISES: TDataSource;
    DS_SOFTWARE_ROBOS: TDataSource;
    DS_SOFTWARE_SETUPS: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Robo: TTabSheet;
    Setup: TTabSheet;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    Detalhes: TTabSheet;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    DBN_ANALISES: TcxDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    PageControl3: TPageControl;
    TabSheet2: TTabSheet;
    PageControl4: TPageControl;
    TabSheet3: TTabSheet;
    Label4: TLabel;
    DBGrid4: TDBGrid;
    TabSheet5: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Panel2: TPanel;
    cxDBNavigator2: TcxDBNavigator;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DBEdit2: TDBEdit;
    Panel3: TPanel;
    DBN_ROBOS: TcxDBNavigator;
    PageControl5: TPageControl;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    DBGrid2: TDBGrid;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    Panel4: TPanel;
    DBN_SETUPS: TcxDBNavigator;
    PageControl6: TPageControl;
    Lista: TTabSheet;
    TabSheet11: TTabSheet;
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

end.
