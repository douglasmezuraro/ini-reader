unit Helper.FMX;

interface

uses
  FMX.Controls,
  FMX.ListBox,
  Helper.Rtti,
  System.Rtti;

type
  TControlHelper = class Helper for TControl
  private
    function GetValue: TValue;
    procedure SetValue(const Value: TValue);
  public
    property Value: TValue read GetValue write SetValue;
  end;

  TComboBoxHelper = class Helper for TComboBox
  private
    function GetValues: TArray<string>;
    procedure SetValues(const Values: TArray<string>);
  public
    property Values: TArray<string> read GetValues write SetValues;
  end;

implementation

{ TComboBoxHelper }

function TComboBoxHelper.GetValues: TArray<string>;
begin
  Result := Items.ToStringArray;
end;

procedure TComboBoxHelper.SetValues(const Values: TArray<string>);
var
  Value: string;
begin
  Self.Items.Clear;
  for Value in Values do
    Self.Items.Add(Value);
end;

{ TControlHelper }

function TControlHelper.GetValue: TValue;
begin
  Result := Data;
  if Self is TComboBox then
    Result := (Self as TComboBox).Selected.Text;
end;

procedure TControlHelper.SetValue(const Value: TValue);
begin
  Data := Value;
  if Self is TComboBox then
    (Self as TComboBox).ItemIndex := (Self as TComboBox).Items.IndexOf(Value.AsString);
end;

end.

