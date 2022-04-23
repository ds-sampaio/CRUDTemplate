unit Race.Model.DmAtletas;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI;

type
  TDataModule1 = class(TDataModule)
    qryAtletas: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    qryAtletasid: TIntegerField;
    qryAtletasnome: TWideStringField;
    qryAtletascategoria: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Providres.Connection;

{$R *.dfm}

end.
