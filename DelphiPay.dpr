program DelphiPay;

uses
  System.SysUtils, Web.HTTPApp, MVCFramework.Server, TransacaoController;

var
  WebModule: TWebModule;
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  TMVCConfig.RegisterController(TTransacaoController);

  WebModule := WebRequestHandlerFactory.GetWebModuleClass.Create(nil) as TWebModule;
  WebModule.WebModuleClass := TWebModule;
  WebModule.Initialize;

  WebModule.WebApplication.Run;

  Application.Run;
end.
