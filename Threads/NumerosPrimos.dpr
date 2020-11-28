program NumerosPrimos;

uses
  Vcl.Forms,
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  untCalculoPrimosThread in 'untCalculoPrimosThread.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
