unit Model.Config.Application;

interface

uses
  Attribute.Control,
  Attribute.Ini,
  Attribute.Validation;

type
  TApplication = class
  private
    FName: string;
  public
    [StringAttribute]
    [Edit('Nome de aplica��o para monitoramento')]
    [Key('NOMEAPLICACAOPARAMONITORAMENTO')]
    property Name: string read FName write FName;
  end;

implementation

end.

