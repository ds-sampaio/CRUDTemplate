unit Race.View.Pages.Form.Principal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Router4D.Interfaces;

type
  TPagePrincipal = class(TForm, iRouter4DComponent)
    Panel1: TPanel;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    function Render : TForm;
    procedure UnRender;
  end;

var
  PagePrincipal: TPagePrincipal;

implementation

{$R *.dfm}

uses Race.View.Styles.Colors;

{ TPagePrincipal }

function TPagePrincipal.Render: TForm;
begin
  Result  := Self;

  Panel1.Color := COLOR_BACKGROUND;
end;

procedure TPagePrincipal.UnRender;
begin

end;

end.
