program NeoSkincare;

uses
  Vcl.Forms,
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  untConexao in 'DAO\untConexao.pas',
  untEntidade in 'DAO\untEntidade.pas',
  untAtributoEntidade in 'DAO\untAtributoEntidade.pas',
  untGenericDAO in 'DAO\untGenericDAO.pas',
  untCliente in 'DAO\Tables\untCliente.pas',
  untDAOInterfaces in 'DAO\untDAOInterfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
