unit Race.View.Pages.Form.Template;

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
  Router4D.Interfaces,
  Vcl.StdCtrls,
  Vcl.Buttons,
  System.ImageList,
  Vcl.ImgList,
  Bind4D,
  Bind4D.Attributes,
  Bind4D.Types,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.StorageBin,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Race.View.Styles.Colors;

type
  TFormTemplate = class(TForm, iRouter4DComponent)
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlPrincipal: TPanel;

    [ComponentBindStyle(COLOR_C1, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlTop: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlMain: TPanel;

    [ComponentBindStyle(COLOR_C1, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlTopBody: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlMainBody: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlMainBodyData: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlMainBodyTop: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlMainBodyDataForm: TPanel;

    [ComponentBindStyle(COLOR_C2, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlMainBodyTopLine: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlMainTopBodyMenu: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlMainTopBodySearch: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND_TOP, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlMainTopBodySearchLine: TPanel;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    lblTitle: TLabel;

    [ComponentBindStyle(clBtnFace, FONT_H6, COLOR_BACKGROUND_TOP, FONT_NAME)]
    lblSearch: TLabel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, COLOR_BACKGROUND_TOP,
      FONT_NAME)]
    edtSearch: TEdit;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR4, FONT_NAME)]
    DBGrid1: TDBGrid;

    [ComponentBindStyle(clBtnFace, FONT_H7, FONT_COLOR3, FONT_NAME)]
    SpeedButton1: TSpeedButton;

    [ComponentBindStyle(clBtnFace, FONT_H7, FONT_COLOR3, FONT_NAME)]
    SpeedButton2: TSpeedButton;

    [ComponentBindStyle(clBtnFace, FONT_H7, FONT_COLOR3, FONT_NAME)]
    SpeedButton3: TSpeedButton;

    [ComponentBindStyle(clBtnFace, FONT_H7, FONT_COLOR3, FONT_NAME)]
    SpeedButton4: TSpeedButton;

    [ComponentBindStyle(clBtnFace, FONT_H7, FONT_COLOR3, FONT_NAME)]
    btnRelatorios: TSpeedButton;
    DataSource1: TDataSource;
    pnlMainCadastroBotton: TPanel;
    btnFechar: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnExcluir: TSpeedButton;
    pnlMainCadastroBottonLine: TPanel;
    ImageList1: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
    FEndPoint: String;
    FPK: String;
    FTitle: String;
    procedure ApplyStyle;
    procedure alterListForm;
  public
    { Public declarations }
    function Render: TForm;
    procedure UnRender;
    procedure GetDados;
  end;

var
  FormTemplate: TFormTemplate;

implementation

{$R *.dfm}
{ TFormeTemplate }

procedure TFormTemplate.ApplyStyle;
begin
  lblTitle.Caption := FTitle;
  pnlMainBodyDataForm.Visible := False;
  pnlMainBodyDataForm.Align := TAlign.alClient;

  DBGrid1.TitleFont.Size := FONT_H5;
  DBGrid1.TitleFont.Name := 'Segoe UI';
  DBGrid1.TitleFont.Color := FONT_COLOR4;

end;

procedure TFormTemplate.btnExcluirClick(Sender: TObject);
begin
  if DataSource1.DataSet.RecordCount >= 1 then
  begin
     DataSource1.DataSet.Delete;
     alterListForm;
     GetDados;
  end;
end;

procedure TFormTemplate.btnFecharClick(Sender: TObject);
begin
  alterListForm;
end;

procedure TFormTemplate.btnSalvarClick(Sender: TObject);
begin
   try
    if DataSource1.DataSet.State in [dsInsert, dsEdit] then
      DataSource1.DataSet.Post;
    alterListForm;
    GetDados ;
  except
     on E : Exception do
        raise Exception.Create(E.Message);
  end;

  // ApplyUpdates;
end;

procedure TFormTemplate.DBGrid1DblClick(Sender: TObject);
begin
  alterListForm; // chama tela de cadastro ou altera??o
end;

procedure TFormTemplate.FormCreate(Sender: TObject);
begin
  // TBindFormJson.New.BindClassToForm(Self, FEndPoint, FPK,FTitle);
  TBind4D.New.Form(Self).BindFormDefault(FTitle).SetStyleComponents;
  ApplyStyle;
  GetDados;
end;

procedure TFormTemplate.GetDados;
begin
  DataSource1.DataSet.Close;
  DataSource1.DataSet.Open;
end;

procedure TFormTemplate.alterListForm;
begin
  pnlMainBodyDataForm.Visible := not pnlMainBodyDataForm.Visible;
  DBGrid1.Visible := not DBGrid1.Visible;
end;

function TFormTemplate.Render: TForm;
begin
  Result := Self;
end;

procedure TFormTemplate.SpeedButton3Click(Sender: TObject);
begin
  alterListForm;
  TBind4D.New.Form(Self).ClearFieldForm;
  DataSource1.DataSet.Append;
end;

procedure TFormTemplate.UnRender;
begin
  //
end;

end.
