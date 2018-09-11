unit Dm.Movimentacao;

interface

uses
  System.SysUtils, System.Classes, Dm.DataBase, Dm.Cadastro.Geral, Data.FMTBcd,
  Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr;

type
  TDmMovimentacao = class(TDataModule)
    SdsVenda: TSQLDataSet;
    DspVenda: TDataSetProvider;
    CdsVenda: TClientDataSet;
    SdsVendaVEN_CLI_CODIGO: TIntegerField;
    SdsVendaVEN_CODIGO: TIntegerField;
    SdsVendaVEN_DATA: TDateField;
    SdsVendaVEN_OBS: TStringField;
    CdsVendaVEN_CODIGO: TIntegerField;
    CdsVendaVEN_DATA: TDateField;
    CdsVendaVEN_OBS: TStringField;
    CdsVendaVEN_CLI_CODIGO: TIntegerField;
    CdsVendaCLI_NOME: TStringField;
    DsMestre: TDataSource;
    SdsItem: TSQLDataSet;
    CdsItem: TClientDataSet;
    CdsItemVEN_CODIGO: TIntegerField;
    CdsItemVEN_DATA: TDateField;
    CdsItemVEN_OBS: TStringField;
    CdsItemVEN_CLI_CODIGO: TIntegerField;
    CdsItemSdsItem: TDataSetField;
    SdsItemVEI_CODIGO: TIntegerField;
    SdsItemVEI_QUANTIDADE: TFMTBCDField;
    SdsItemVEI_UNITARIO: TFMTBCDField;
    SdsItemVEI_TOTAL: TFMTBCDField;
    SdsItemVEI_VEN_CODIGO: TIntegerField;
    SdsItemVEI_PRO_CODIGO: TIntegerField;
    CdsItemPRO_NOME: TStringField;
    CdsVendaSdsItem: TDataSetField;
    CdsItemVEI_CODIGO: TIntegerField;
    CdsItemVEI_QUANTIDADE: TFMTBCDField;
    CdsItemVEI_UNITARIO: TFMTBCDField;
    CdsItemVEI_TOTAL: TFMTBCDField;
    CdsItemVEI_VEN_CODIGO: TIntegerField;
    CdsItemVEI_PRO_CODIGO: TIntegerField;
    procedure CdsVendaAfterPost(DataSet: TDataSet);
    procedure CdsVendaAfterDelete(DataSet: TDataSet);
    procedure CdsItemAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmMovimentacao: TDmMovimentacao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmMovimentacao.CdsItemAfterInsert(DataSet: TDataSet);
begin
  CdsItemVEI_VEN_CODIGO.AsInteger := CdsVendaVEN_CODIGO.AsInteger;
end;

procedure TDmMovimentacao.CdsVendaAfterDelete(DataSet: TDataSet);
begin
  CdsVenda.ApplyUpdates(0);
end;

procedure TDmMovimentacao.CdsVendaAfterPost(DataSet: TDataSet);
begin
  CdsVenda.ApplyUpdates(0);
end;

end.
