program Projeto_Persistencia;

uses
  Vcl.Forms,
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  untTEntity in 'Framework\untTEntity.pas',
  tblAluno in 'Framework\tblAluno.pas',
  CAtribEntity in 'Framework\CAtribEntity.pas',
  srvModBaseDados in 'Framework\srvModBaseDados.pas' {TDSServerModuleBaseDados: TDataModule},
  untGenericDAO in 'Framework\untGenericDAO.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TTDSServerModuleBaseDados, TDSServerModuleBaseDados);
  Application.Run;
end.
