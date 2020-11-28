unit srvModBaseDados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.MySQLDef, FireDAC.Phys.MySQL, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TTDSServerModuleBaseDados = class(TDataModule)
    FDConnection: TFDConnection;
    FDPhysMySQLDriverLink: TFDPhysMySQLDriverLink;
    FDQuery: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    //fun��es para o banco de dados
    function Conectar:boolean;
    function Desconectar:boolean;

    function getDataSet(strQry:string): TDataSet;
    function execSql(strQry:string): boolean;
  end;

var
  TDSServerModuleBaseDados: TTDSServerModuleBaseDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

//fun��es para o banco de dados
function TTDSServerModuleBaseDados.Conectar:boolean;
begin
  try
    FDConnection.Connected := true;
    result := true;
  except
    result := false;
  end;
end;

function TTDSServerModuleBaseDados.Desconectar:boolean;
begin
  try
    FDConnection.Connected := false;
    result := true;
  except
    result := false;
  end;
end;

//fun��es para manipular as entidades
function TTDSServerModuleBaseDados.getDataSet(strQry:string): TDataSet;
begin
  FDQuery.Close;
  FDQuery.Params.Clear;
  FDQuery.SQL.Text := strQry;
  FDQuery.Open;
  result := FDQuery;
end;

function TTDSServerModuleBaseDados.execSql(strQry:string): boolean;
Var
  msgErro:string;
begin
  result := false;
  FDQuery.Close;
  FDQuery.Params.Clear;
  FDQuery.SQL.Text := strQry;
  try
    FDQuery.ExecSQL;
    result := true;
  except
   on e: Exception do begin
     raise Exception.Create(e.Message)
   end;
  end;
end;

end.
