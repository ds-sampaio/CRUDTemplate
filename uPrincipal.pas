unit uPrincipal;

interface

uses
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TFormPrincipal = class(TForm)
    pnMain: TPanel;
    pnMenu: TPanel;
    pnFull: TPanel;
    pnTop: TPanel;
    pnPrincipal: TPanel;
    pnLogo: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    procedure ApllyStyle;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses
  Router4D,
  Race.View.Styles.Colors,
  Race.View.Pages.Form.Principal;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  ApllyStyle;

  TRouter4D.Render<TPagePrincipal>.SetElement(pnPrincipal,pnMain)
end;

procedure TFormPrincipal.SpeedButton1Click(Sender: TObject);
begin
  TRouter4D.Link.&To('Atletas');
end;

procedure TFormPrincipal.SpeedButton2Click(Sender: TObject);
begin
   TRouter4D.Link.&To('Principal');
end;

procedure TFormPrincipal.ApllyStyle;
begin
  pnPrincipal.Color := COLOR_BACKGROUND;
  pnTop.Color := COLOR_BACKGROUND_TOP;
  pnLogo.Color := COLOR_BACKGROUND_DESTAK;
  pnMenu.Color := COLOR_BACKGROUND_MENU;
  //  pnFull.Color := ;
  self.Font.Color := FONT_COLOR;
  self.Font.Size := FONT_H6;
end;

end.
