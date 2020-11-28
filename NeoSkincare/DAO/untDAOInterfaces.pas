unit untDAOInterfaces;

interface

uses Data.DB, FireDAC.Stan.Param;

type
  IQuery = interface
  ['{C7A14A7D-3BE6-41EA-8E37-0DF97A875305}']
    procedure First;
    procedure Next;
    procedure AddSQL(ASQL: String);
    function Eof: Boolean;
    procedure Close;
    procedure Clear;
    procedure Open;
    procedure ExecSQL;
    function FieldByName(AField: String): TField;
    function ParambyName(AField: String): TFDParam;
    procedure MostraQuery;
  end;

  IConexao = interface
  ['{DC84DC66-55C4-4560-9819-C9EA638C3DFF}']
  function CriarQuery(): IQuery;
  end;

implementation

end.

