unit Frm.Clube;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Dm.Dados, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrmClube = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    DsClube: TDataSource;
    DsTatica: TDataSource;
    DsTecnico: TDataSource;
    DsPais: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    DsJogador: TDataSource;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit11: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmClube: TFrmClube;

implementation

{$R *.dfm}

procedure TFrmClube.FormCreate(Sender: TObject);
begin
DmDados.QryPais.Open;
DmDados.QryTatica.Open;
DmDados.QryTecnico.Open;
DmDados.QryJogador.Open;
DmDados.QryClube.Open;
end;

procedure TFrmClube.FormDestroy(Sender: TObject);
begin
DmDados.QryPais.Close;
DmDados.QryTatica.close;
DmDados.QryTecnico.close;
DmDados.QryJogador.close;
DmDados.QryClube.close;
end;

end.
