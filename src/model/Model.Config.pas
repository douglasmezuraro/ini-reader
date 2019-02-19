unit Model.Config;

interface

uses
  Model.Config.AlternativeBalancer,
  Model.Config.Application,
  Model.Config.Balancer,
  Model.Config.Client,
  Model.Config.Database,
  Model.Config.DUnit,
  Model.Config.Log,
  Model.Config.Monitor,
  Model.Config.Scanner,
  Model.Config.Server,
  Model.Config.SPP,
  Model.Config.Update,
  Model.Config.Workflow,

  Attribute.Control,
  Attribute.Ini;

type
  TConfig = class
  private
    FWorkflow: TWorkflow;
    FMonitor: TMonitor;
    FSPP: TSPP;
    FDUnit: TDUnit;
    FBalancer: TBalancer;
    FScanner: TScanner;
    FLog: TLog;
    FDatabase: TDatabase;
    FAlternativeBalancer: TAlternativeBalancer;
    FUpdate: TUpdate;
    FApplication: TApplication;
    FServer: TServer;
    FClient: TClient;
  public
    constructor Create;
    destructor Destroy; override;

//    [TTabItemAttribute('Balanceador alternativo')]
//    [TSection('BALANCEADORALTERNATIVO')]
//    property AlternativeBalancer: TAlternativeBalancer read FAlternativeBalancer write FAlternativeBalancer;

    [TabItem('Aplica��o')]
    [Section('APLICACAO')]
    property Application: TApplication read FApplication write FApplication;

//    [TTabItemAttribute('Balanceador')]
//    [TSection('SPBALANCEADOR')]
//    property Balancer: TBalancer read FBalancer write FBalancer;

    [TabItem('Cliente')]
    [Section('CLIENTE')]
    property Client: TClient read FClient write FClient;

    [TabItem('Database')]
    [Section('DATABASE')]
    property Database: TDatabase read FDatabase write FDatabase;

    [TabItem('DUnit')]
    [Section('DUNIT')]
    property DUnit: TDUnit read FDUnit write FDUnit;

    [TabItem('LOG')]
    [Section('LOG')]
    property Log: TLog read FLog write FLog;

    [TabItem('Monitor')]
    [Section('SPMONITOR')]
    property Monitor: TMonitor read FMonitor write FMonitor;

    [TabItem('Scanner')]
    [Section('SCANNER')]
    property Scanner: TScanner read FScanner write FScanner;

    [TabItem('Servidor')]
    [Section('SERVIDOR')]
    property Server: TServer read FServer write FServer;

    [TabItem('SPP')]
    [Section('CLIENTESPP')]
    property SPP: TSPP read FSPP write FSPP;

    [TabItem('Update')]
    [Section('SPUPDATE')]
    property Update: TUpdate read FUpdate write FUpdate;

    [TabItem('Fluxo de trabalho')]
    [Section('FLUXOTRABALHO')]
    property Workflow: TWorkflow read FWorkflow write FWorkflow;
  end;

implementation

{ TConfig }

constructor TConfig.Create;
begin
  FWorkflow := TWorkflow.Create;
  FMonitor := TMonitor.Create;
  FSPP := TSPP.Create;
  FDUnit := TDUnit.Create;
  FBalancer := TBalancer.Create;
  FScanner := TScanner.Create;
  FLog := TLog.Create;
  FDatabase := TDatabase.Create;
  FAlternativeBalancer := TAlternativeBalancer.Create;
  FUpdate := TUpdate.Create;
  FApplication := TApplication.Create;
  FServer := TServer.Create;
  FClient := TClient.Create;
end;

destructor TConfig.Destroy;
begin
  FWorkflow.Free;
  FMonitor.Free;
  FSPP.Free;
  FDUnit.Free;
  FBalancer.Free;
  FScanner.Free;
  FLog.Free;
  FDatabase.Free;
  FAlternativeBalancer.Free;
  FUpdate.Free;
  FApplication.Free;
  FServer.Free;
  FClient.Free;
  inherited;
end;

end.

