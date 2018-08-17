unit UntFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Datasnap.DBClient;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox6: TGroupBox;
    edtValorFiltro: TEdit;
    btnAdcFiltro: TButton;
    btnRmvFiltro: TButton;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    btnLimparDados: TButton;
    btnIndexarId: TButton;
    btnIndexarName: TButton;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox7: TGroupBox;
    DBEdit1: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

end.
