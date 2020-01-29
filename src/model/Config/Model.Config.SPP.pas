unit Model.Config.SPP;

interface

uses
  Attribute.Component.CheckBox, Attribute.Component.Edit, Attribute.Ini.Key, Attribute.Validation.Integer,
  Attribute.Validation.Text;

type
  TSPP = class sealed
  private
    FRegisterLog: Boolean;
    FExecutionsWithoutProcess: Integer;
    FProcessBlockSize: Integer;
    FUseSPP: Boolean;
    FProcessBlock: Integer;
    FSystemName: string;
  public
    [CheckBox('Usar SPP?')]
    [Key('USARSPP')]
    property UseSPP: Boolean read FUseSPP write FUseSPP;

    [TextAttribute]
    [Edit('Nome do sistema')]
    [Key('NOMESISTEMA')]
    property SystemName: string read FSystemName write FSystemName;

    [CheckBox('Gravar log?')]
    [Key('GRAVARLOG')]
    property RegisterLog: Boolean read FRegisterLog write FRegisterLog;

    [IntegerAttribute]
    [Edit('Bloco de processamento')]
    [Key('BLOCOPROCESSAMENTO')]
    property ProcessBlock: Integer read FProcessBlock write FProcessBlock;

    [IntegerAttribute]
    [Edit('Bytes por bloco de processamento')]
    [Key('BYTESBLOCOPROCESSAMENTO')]
    property ProcessBlockSize: Integer read FProcessBlockSize write FProcessBlockSize;

    [IntegerAttribute]
    [Edit('Quantidade de execu��es sem processamento')]
    [Key('QTDEXECUCOESSEMPROCESSAMENTO')]
    property ExecutionsWithoutProcess: Integer read FExecutionsWithoutProcess write FExecutionsWithoutProcess;
  end;

implementation

end.
