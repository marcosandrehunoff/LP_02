unit Frm.Venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Dm.Movimentacao,
  Dm.Cadastro.Geral, Dm.Cadastro.Localizacao, Dm.DataBase;

type
  TFrmVenda = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVenda: TFrmVenda;

implementation

{$R *.dfm}

procedure TFrmVenda.FormCreate(Sender: TObject);
begin
  DmMovimentacao.cdsVenda.open;
  DmCadastroGeral.cdscliente.open;
  DmMovimentacao.CdsItem.open;
  DmCadastroGeral.cdsproduto.open;
end;

procedure TFrmVenda.FormDestroy(Sender: TObject);
begin
  DmMovimentacao.cdsVenda.close;
  DmCadastroGeral.cdscliente.close;
  DmMovimentacao.CdsItem.close;
  DmCadastroGeral.cdsproduto.close;
end;

end.
