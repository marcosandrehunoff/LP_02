unit Frm.VeiculoMultas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Dm.Conexao, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TFrmVeiculoMultas = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel3: TPanel;
    DBNavigator2: TDBNavigator;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBGrid2: TDBGrid;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DsVeiculo: TDataSource;
    DsMulta: TDataSource;
    DsProprietario: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    DsCondutor: TDataSource;
    Label12: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVeiculoMultas: TFrmVeiculoMultas;

implementation

{$R *.dfm}

procedure TFrmVeiculoMultas.FormCreate(Sender: TObject);
begin
  DmConexao.QryMultas.Open;
  DmConexao.QryVeiculo.Open;
  DmConexao.QryProprietario.Open;
  DmConexao.QryCondutor.Open;
end;

procedure TFrmVeiculoMultas.FormDestroy(Sender: TObject);
begin
  DmConexao.QryVeiculo.Close;
  DmConexao.QryMultas.Close;
  DmConexao.QryProprietario.Close;
  DmConexao.QryCondutor.Close;

end;

end.
