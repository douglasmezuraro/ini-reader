program spCfg;

uses
  System.StartUpCopy,
  FMX.Forms,
  Form.Main in 'src\form\Form.Main.pas' {Main},
  Helper.Value in 'src\helper\Helper.Value.pas',
  Attribute.Ini in 'src\attribute\Attribute.Ini.pas',
  Helper.Ini in 'src\helper\Helper.Ini.pas',
  Attribute.Ident in 'src\attribute\Attribute.Ident.pas',
  Attribute.Section in 'src\attribute\Attribute.Section.pas',
  Model.Config.AlternativeBalancer in 'src\model\Model.Config.AlternativeBalancer.pas',
  Model.Config.Application in 'src\model\Model.Config.Application.pas',
  Model.Config.Balancer in 'src\model\Model.Config.Balancer.pas',
  Model.Config.Client in 'src\model\Model.Config.Client.pas',
  Model.Config.Database in 'src\model\Model.Config.Database.pas',
  Model.Config.DUnit in 'src\model\Model.Config.DUnit.pas',
  Model.Config.Log in 'src\model\Model.Config.Log.pas',
  Model.Config.Monitor in 'src\model\Model.Config.Monitor.pas',
  Model.Config in 'src\model\Model.Config.pas',
  Model.Config.Scanner in 'src\model\Model.Config.Scanner.pas',
  Model.Config.Server in 'src\model\Model.Config.Server.pas',
  Model.Config.SPP in 'src\model\Model.Config.SPP.pas',
  Model.Config.Update in 'src\model\Model.Config.Update.pas',
  Model.Config.Workflow in 'src\model\Model.Config.Workflow.pas',
  Util.Constants in 'src\util\Util.Constants.pas',
  Util.Methods in 'src\util\Util.Methods.pas',
  Attribute.Caption in 'src\attribute\Attribute.Caption.pas',
  Helper.FMX in 'src\helper\Helper.FMX.pas',
  AbstractFactory.API in 'src\abstractfactory\AbstractFactory.API.pas',
  AbstractFactory.CheckBox in 'src\abstractfactory\AbstractFactory.CheckBox.pas',
  AbstractFactory.DTO in 'src\abstractfactory\AbstractFactory.DTO.pas',
  AbstractFactory.ComboBox in 'src\abstractfactory\AbstractFactory.ComboBox.pas',
  AbstractFactory.Edit in 'src\abstractfactory\AbstractFactory.Edit.pas';

{$R *.res}

var
  Main: TMain;

begin
  Application.Initialize;
  Application.CreateForm(TMain, Main);
  Application.Run;
  ReportMemoryLeaksOnShutdown := True;
end.
