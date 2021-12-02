program RobosFinanceiros;

uses
  Vcl.Forms,
  DM_RobosFinanceiros in 'DM_RobosFinanceiros.pas' {DM_Robos_Financeiros},
  UNT_Robos_Financeiros in 'UNT_Robos_Financeiros.pas' {FRM_RobosFinanceiros},
  UNT_RF_Selecao in 'UNT_RF_Selecao.pas' {Form3},
  UNT_RF_LookUp in 'UNT_RF_LookUp.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRM_RobosFinanceiros, FRM_RobosFinanceiros);
  Application.CreateForm(TDM_Robos_Financeiros, DM_Robos_Financeiros);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
