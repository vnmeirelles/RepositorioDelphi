unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask;
type
  TfrmPrincipal = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    MaskEdit: TMaskEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses untConexao, untGenericDAO, untCliente;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
Var
  cliente: TCliente;
begin
  cliente := TCliente.Create();
  cliente.Codigo         := '1';
  cliente.Nome           := 'Vinicius';
  cliente.DataNascimento := TGenericDAO.fFormataDataSQL(MaskEdit.Text);
  cliente.Endereco       := 'Av.Edul Rangel Rabelo, 405, Bloco 10, AP 101, Manoel Pena';

  if TGenericDAO.Insert(cliente) then
  begin
      ShowMessage('Cliente inserido!');
  end
  else
  begin
      ShowMessage('Cliente não inserido!')
  end;

end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
Var
  cliente: TCliente;
begin
  cliente := TCliente.Create();
  cliente.Codigo         := '1';
  cliente.Nome           := 'Vânia';
  cliente.DataNascimento := TGenericDAO.fFormataDataSQL(MaskEdit.Text);
  //cliente.Endereco       := 'Av.Edul Rangel Rabelo, 405, Bloco 10, AP 101, Manoel Pena';

  if TGenericDAO.Update(cliente) then
  begin
      ShowMessage('Cliente Alterado!');
  end
  else
  begin
      ShowMessage('Cliente não Alterado!')
  end;
end;

procedure TfrmPrincipal.Button3Click(Sender: TObject);
Var
  cliente: TCliente;
begin
  cliente := TCliente.Create();
  cliente.Codigo         := '1';
  // cliente.Nome           := 'Vânia';
  //cliente.DataNascimento := '1988-05-05';
  // cliente.Endereco       := 'Av.Edul Rangel Rabelo, 405, Bloco 10, AP 101, Manoel Pena';

  if TGenericDAO.Delete(cliente) then
  begin
      ShowMessage('Cliente Excluido!');
  end
  else
  begin
      ShowMessage('Não foi possivel excluir o Cliente!')
  end;
end;

procedure TfrmPrincipal.Button4Click(Sender: TObject);
begin
  showmessage(TGenericDAO.fFormataDataSQL(MaskEdit.Text));
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
Var
  FConexaoBanco: TConexaoBanco;
begin
  FConexaoBanco := TConexaoBanco.Create();
  FConexaoBanco.Destroy;
end;

{
function IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
 begin
   if Expressao then
      Result := ParteTRUE
   else
      Result := ParteFALSE;
 end;
}
end.
