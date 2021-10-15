program SOFTWARE;

uses
  Vcl.Forms,
  DMSOFTWARE in 'DMSOFTWARE.pas' {DM_SOFTWARE: TDataModule},
  UNT_SOFTWARE_GRIDS in 'UNT_SOFTWARE_GRIDS.pas' {FRM_SOFTWARE};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM_SOFTWARE, DM_SOFTWARE);
  Application.CreateForm(TFRM_SOFTWARE, FRM_SOFTWARE);
  Application.Run;
end.
