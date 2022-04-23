program pRace;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {FormPrincipal},
  Race.View.Pages.Form.Template in 'view\pages\Race.View.Pages.Form.Template.pas' {FormTemplate},
  Race.View.Styles.Colors in 'view\styles\Race.View.Styles.Colors.pas',
  Race.View.Pages.Form.Principal in 'view\pages\Race.View.Pages.Form.Principal.pas' {PagePrincipal},
  Race.View.Routers in 'view\routers\Race.View.Routers.pas',
  Race.View.Pages.Form.Atletas in 'view\pages\Race.View.Pages.Form.Atletas.pas' {PageAtletas},
  Providres.Connection in 'model\Providres.Connection.pas' {ProvidersConnection: TDataModule},
  Race.Model.DmAtletas in 'model\Race.Model.DmAtletas.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TProvidersConnection, ProvidersConnection);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
