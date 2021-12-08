program RobosFinanceiros;

uses
  Vcl.Forms,
  DM_RobosFinanceiros in 'DM_RobosFinanceiros.pas' {DM_Robos_Financeiros},
  UNT_Robos_Financeiros in 'UNT_Robos_Financeiros.pas' {FRM_RobosFinanceiros},
  UNT_RF_Selecao in 'UNT_RF_Selecao.pas' {FRM_RF_Selecao},
  UNT_RF_LookUp in 'UNT_RF_LookUp.pas' {FRM_LookUp},
  UNT_GLOBAL in 'UNT_GLOBAL.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRM_RobosFinanceiros, FRM_RobosFinanceiros);
  Application.CreateForm(TFRM_RF_Selecao, FRM_RF_Selecao);
  Application.CreateForm(TDM_Robos_Financeiros, DM_Robos_Financeiros);
  Application.Run;
end.
