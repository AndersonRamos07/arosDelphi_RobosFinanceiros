program RobosFinanceiros;

uses
  Vcl.Forms,
  DM_RobosFinanceiros in 'DM_RobosFinanceiros.pas' {DM_Robos_Financeiros},
  UNT_Robos_Financeiros in 'UNT_Robos_Financeiros.pas' {FRM_RobosFinanceiros};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRM_RobosFinanceiros, FRM_RobosFinanceiros);
  Application.Run;
end.
