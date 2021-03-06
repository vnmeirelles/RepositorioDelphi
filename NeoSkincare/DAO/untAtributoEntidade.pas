unit untAtributoEntidade;

interface

type
  TableName = class(TCustomAttribute)
  private
    FNome: String;
    FTipo: String;
  public
    constructor Create(aNome,aTipo: String);
    property Nome: String read FNome write FNome;
    property Tipo:  String read FTipo write FTipo;
  end;

type
  KeyField = class(TCustomAttribute)
  private
    FNome: String;
    FTipo: String;
  public
    constructor Create(aNome,aTipo: String);
    property Nome: String read FNome write FNome;
    property Tipo:  String read FTipo write FTipo;
  end;

type
  FieldName = class(TCustomAttribute)
  private
    FNome: String;
    FTipo: String;
  public
    constructor Create(aNome,aTipo: String);
    property Nome: String read FNome write FNome;
    property Tipo:  String read FTipo write FTipo;
  end;

implementation

constructor TableName.Create(aNome,aTipo: String);
begin
  FNome := aNome;
  FTipo := aTipo;
end;

constructor KeyField.Create(aNome,aTipo: String);
begin
  FNome := aNome;
  FTipo := aTipo;
end;

constructor FieldName.Create(aNome,aTipo: String);
begin
  FNome := aNome;
  FTipo := aTipo;
end;

end.
