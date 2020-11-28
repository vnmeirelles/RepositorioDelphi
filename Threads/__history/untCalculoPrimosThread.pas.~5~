unit untCalculoPrimosThread;

interface

uses
  System.Classes,  Vcl.Dialogs, System.SysUtils;

type
  CalculoPrimosThread = class(TThread)
  private
  FNumero : LongInt;
  FResultado: String;
    procedure setFNumero(const Value: Integer);
    { Private declarations }
  protected
    procedure Execute; override;
    procedure AtualizaResultados;
    function EhPrimo:Boolean;
  public
    property  Numero : Integer read FNumero write setFNumero;
  end;

implementation

Uses
  untPrincipal;

{
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure CalculoPrimosThread.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end;

    or

    Synchronize(
      procedure
      begin
        Form1.Caption := 'Updated in thread via an anonymous method'
      end
      )
    );

  where an anonymous method is passed.

  Similarly, the developer can call the Queue method with similar parameters as
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.

}

{ CalculoPrimosThread }

procedure CalculoPrimosThread.Execute;
begin
  if EhPrimo then
    FResultado := IntToStr(FNumero) + ' é Primo.'
  else
    FResultado := IntToStr(FNumero) + ' não é Primo.';
  Synchronize(AtualizaResultados);
end;

procedure CalculoPrimosThread.setFNumero(const Value: Integer);
begin
  FNumero := Value;
end;

procedure CalculoPrimosThread.AtualizaResultados;
begin
   frmPrincipal.mmoDetalhes.Lines.Add(FResultado);
end;

function CalculoPrimosThread.EhPrimo: boolean;
var
  iter: integer;
begin
  result := true;
  if FNumero < 0 then
  begin
    result := false;
    exit;
 end;
 if FNumero <= 2 then
   exit;
 iter := 2;
 while (iter < FNumero) and (not Terminated) do
 begin
   if (FNumero mod iter) = 0 then
   begin
     result := false;
   end;
   iter := iter + 1;
 end;
end;


end.
