unit Race.View.Pages.Form.Atletas;

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
  Race.View.Pages.Form.Template,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  System.ImageList,
  Vcl.ImgList,
  Vcl.Buttons,
  Bind4D,
  Bind4D.Attributes,
  Bind4D.Types, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids,
  Race.Model.DmAtletas,
  Vcl.WinXPanels,
  Race.View.Styles.Colors, Vcl.Mask, Vcl.DBCtrls;

type
  //[ClassToBind('','','Cadastro de Atletas')]
  [FormDefault('Cadastro de Usuarios')]
  TPageAtletas = class(TFormTemplate)
    StackPanel1: TStackPanel;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    Label1: TLabel;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    DBEdit1: TDBEdit;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    Label2: TLabel;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    DBEdit2: TDBEdit;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    Label3: TLabel;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    DBEdit3: TDBEdit;

    StackPanel2: TStackPanel;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);




  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PageAtletas: TPageAtletas;

implementation

{$R *.dfm}

procedure TPageAtletas.btnExcluirClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TPageAtletas.btnFecharClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TPageAtletas.btnSalvarClick(Sender: TObject);
begin
  inherited;
  //
end;

end.
