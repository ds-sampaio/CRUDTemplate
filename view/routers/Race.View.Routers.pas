unit Race.View.Routers;

interface

type
  TRouters = class
    private
    public
      constructor Create;
      destructor Destroy; override;
  end;

var
  Router : TRouters;

implementation

uses
  Router4D,
  Race.View.Pages.Form.Principal,
  Race.View.Pages.Form.Atletas;

{ TRouters }

constructor TRouters.Create;
begin
  TRouter4D
    .Switch
      .Router('Principal', TPagePrincipal)
      .Router('Atletas', TPageAtletas)
end;

destructor TRouters.Destroy;
begin

  inherited;
end;


initialization
  Router := TRouters.Create;

finalization
  Router.Free;

end.
