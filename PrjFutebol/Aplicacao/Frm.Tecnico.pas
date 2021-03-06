unit Frm.Tecnico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Dm.Dados, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrmTecnico = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    DsTecnico: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DsPais: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTecnico: TFrmTecnico;

implementation

{$R *.dfm}

procedure TFrmTecnico.FormCreate(Sender: TObject);
begin
  DmDados.QryTecnico.Open;
  DmDados.QryPais.Open;
end;

procedure TFrmTecnico.FormDestroy(Sender: TObject);
begin
  DmDados.QryTecnico.Close;
  DmDados.QryPais.Close;
end;

end.
