unit untCliente;

interface

Uses untEntidade, untAtributoEntidade;

type
  [TableName('CADCLI','TABLE')]
  TCliente = class(TEntidadeGenetica)
  private
    FCodigo:string;
    FNome:string;
    FDataNascimento:string;
    FEndereco:string;

    procedure setFCodigo(value:string);
    procedure setFNome(value:string);
    procedure setFDataNascimento(value:string);
    procedure setFEndereco(value:string);

  public
    [KeyField('CLI_CODCLI','INTEGER')]
    property Codigo:string read FCodigo write setFCodigo;

    [FieldName('CLI_NOMCLI','TEXT')]
    property Nome:string read FNome write setFNome;

    [FieldName('CLI_DTANSC','DATE')]
    property DataNascimento :string read FDataNascimento write setFDataNascimento;

    [FieldName('CLI_ENDERE','TEXT')]
    property Endereco :string read FEndereco write setFEndereco;

end;

implementation

procedure TCliente.setFCodigo(value:string);
begin
  FCodigo:= value;
end;

procedure TCliente.setFNome(value:string);
begin
  FNome:= value;
end;

procedure TCliente.setFDataNascimento(value:string);
begin
  FDataNascimento:= value;
end;

procedure TCliente.setFEndereco(value:string);
begin
  FEndereco:= value;
end;

end.
