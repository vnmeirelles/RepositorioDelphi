unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    edtNumero: TEdit;
    btnCalcular: TButton;
    mmoDetalhes: TMemo;
    procedure btnCalcularClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TratarEventoTerminate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    FThreadsEmExecucao: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

Uses
  untCalculoPrimosThread;

{$R *.dfm}

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
var
  NovaThread: CalculoPrimosThread;
begin
  NovaThread := CalculoPrimosThread.Create(True);
  NovaThread.FreeOnTerminate := True;
  try
    NovaThread.Numero := StrToInt(edtNumero.Text);
    FThreadsEmExecucao := FThreadsEmExecucao + 1;
    NovaThread.OnTerminate := TratarEventoTerminate;
    NovaThread.Resume;
  except on EConvertError do
    begin
      NovaThread.Free;
      ShowMessage('N�o � um n�mero v�lido!');
    end;
  end;
end;

procedure TfrmPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
 begin
   CanClose := true;
   if FThreadsEmExecucao > 0 then
   begin
    if Application.MessageBox('Existem threads em execu��o. Deseja mesmo sair?',
                              'Aten��o',MB_YESNO) = ID_NO then
                              CanClose := false;
    end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  FThreadsEmExecucao  := 0;
end;

procedure TfrmPrincipal.TratarEventoTerminate;
begin
  FThreadsEmExecucao := FThreadsEmExecucao - 1;
end;

end.
