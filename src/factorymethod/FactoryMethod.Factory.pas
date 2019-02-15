unit FactoryMethod.Factory;

interface

uses
  Attribute.Control,
  Helper.Rtti,
  System.Rtti,
  System.SysUtils,
  Template.AbstractClass,
  Template.CheckBox,
  Template.ComboBox,
  Template.Edit,
  Template.TabItem;

type
  TFactoryMethod = class
  public
    class function Fabricate(const Obj: TObject; const Prop: TRttiProperty): TControlTemplate;
  end;

implementation

{ TFactory }

class function TFactoryMethod.Fabricate(const Obj: TObject; const Prop: TRttiProperty): TControlTemplate;
var
  Value: TValue;
begin
  Value := Prop.GetValue(Obj);

  if Value.IsBoolean then
  begin
    Result := TCheckBoxTemplate.Create;
    Exit;
  end;

  if Value.IsObject then
  begin
    Result := TTabItemTemplate.Create;
    Exit;
  end;

  if not Prop.GetAtribute<TControlAttribute>.Items.IsEmpty then
  begin
    Result := TComboBoxTemplate.Create;
    Exit;
  end;

  Result := TEditTemplate.Create;
end;

end.

