unit Frm.Condutor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Dm.Conexao, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TFrmCondutor = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DsCondutor: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCondutor: TFrmCondutor;

implementation

{$R *.dfm}

procedure TFrmCondutor.FormCreate(Sender: TObject);
begin
DmConexao.QryCondutor.Open;
end;

procedure TFrmCondutor.FormDestroy(Sender: TObject);
begin
DmConexao.QryCondutor.Close;
end;

end.
