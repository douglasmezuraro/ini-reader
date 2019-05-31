unit Command.Undoable;

interface

uses
  FMX.Controls,
  Command.API,
  Command.Receiver,
  Helper.FMX;

type
  TUndoableCommand = class(TInterfacedObject, ICommand)
  private
    FReceiver: TReceiver;
  public
    constructor Create(const Receiver: TReceiver);
    procedure Execute;
  end;

implementation

{ TUndoableCommand }

constructor TUndoableCommand.Create(const Receiver: TReceiver);
begin
  FReceiver := Receiver;
end;

procedure TUndoableCommand.Execute;
var
  Control: TControl;
begin
  Control := FReceiver.Key;

  Control.Value := FReceiver.Value;

  if Control.CanFocus then
    Control.SetFocus;
end;

end.

