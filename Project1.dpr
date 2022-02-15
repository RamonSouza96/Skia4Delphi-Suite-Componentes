program Project1;

uses
  System.StartUpCopy,
  FMX.Forms,
 // Skia.FMX,
  Unit1 in 'Unit1.pas' {FrmMain};

{$R *.res}

begin
  // GlobalUseSkia := True;
  Application.Initialize;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
