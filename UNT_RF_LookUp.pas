unit UNT_RF_LookUp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls, Data.DB;

type
  TFRM_LookUp = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    StringGrid1: TStringGrid;
    DS_PAYOFF: TDataSource;
    DS_FATOR_LUCRO: TDataSource;
    DS_FATOR_RECUPERACAO: TDataSource;
    DS_SHARPE: TDataSource;
    DS_CORRELACAO: TDataSource;
    DS_CALMAR: TDataSource;
    DS_CAGR: TDataSource;
    DS_DD_FINANCEIRO: TDataSource;
    DS_RELACAO_LUCROXPERDA: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_LookUp: TFRM_LookUp;

implementation

{$R *.dfm}

end.
