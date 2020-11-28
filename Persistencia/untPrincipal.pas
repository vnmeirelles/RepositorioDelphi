unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmPrincipal = class(TForm)
    btnInserir: TButton;
    DBGrid1: TDBGrid;
    btnGetAll: TButton;
    DataSource: TDataSource;
    edMatricula: TEdit;
    edNome: TEdit;
    edEndereco: TEdit;
    edTelefone: TEdit;
    edCPF: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    procedure btnGetAllClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
  private
    { Private declarations }
  public


  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses srvModBaseDados, tblAluno, untGenericDAO;

procedure TfrmPrincipal.btnGetAllClick(Sender: TObject);
begin
  TDSServerModuleBaseDados.FDQuery.Close;
  TDSServerModuleBaseDados.FDQuery.SQL.Text := 'SELECT * FROM TB_CAD_ALUNO;';
  TDSServerModuleBaseDados.FDQuery.Active := True;

end;


procedure TfrmPrincipal.btnInserirClick(Sender: TObject);
Var
 aluno:TAluno;
begin

  aluno := TAluno.Create();
  aluno.Matricula := edMatricula.Text;
  aluno.Nome      := edNome.Text;
  aluno.Endereco  := edEndereco.Text;
  aluno.Telefone  := edTelefone.Text;
  aluno.CPF       := edCPF.Text;

  if TGenericDAO.Insert(aluno) then begin
    ShowMessage('Aluno inserido!');
  end else begin
    ShowMessage('Aluno n�o inserido!')
  end;

end;
end.
