unit Frm.Cidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Dm.Cadastro.Localizacao, Data.DB,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Dm.DataBase, Frm.Estado;

type
  TFrmCidade = class(TForm)
    DsCidade: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    DsEstado: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCidade: TFrmCidade;

implementation

{$R *.dfm}

procedure TFrmCidade.FormCreate(Sender: TObject);
begin
  DmCadastroLocalizacao.CdsCidade.Open;
end;

procedure TFrmCidade.FormDestroy(Sender: TObject);
begin
  DmCadastroLocalizacao.CdsCidade.Close;
end;

end.
