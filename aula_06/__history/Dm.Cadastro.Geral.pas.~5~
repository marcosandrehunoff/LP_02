unit Dm.Cadastro.Geral;

interface

uses
  System.SysUtils, System.Classes, Dm.DataBase, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, Data.SqlExpr, Frm.Cidade, Dm.Cadastro.Localizacao;

type
  TDmCadastroGeral = class(TDataModule)
    SdsProduto: TSQLDataSet;
    DpsProduto: TDataSetProvider;
    CdsProduto: TClientDataSet;
    SdsProdutoPRO_CODIGO: TIntegerField;
    SdsProdutoPRO_DESCRICAO: TStringField;
    SdsProdutoPRO_PRECO: TFMTBCDField;
    CdsProdutoPRO_CODIGO: TIntegerField;
    CdsProdutoPRO_DESCRICAO: TStringField;
    CdsProdutoPRO_PRECO: TFMTBCDField;
    SdsCliente: TSQLDataSet;
    DpsCliente: TDataSetProvider;
    CdsCliente: TClientDataSet;
    SdsClienteCLI_BAIRRO: TStringField;
    SdsClienteCLI_CEP: TStringField;
    SdsClienteCLI_CID_CODIGO: TIntegerField;
    SdsClienteCLI_CODIGO: TIntegerField;
    SdsClienteCLI_CPFCNPJ: TStringField;
    SdsClienteCLI_EMAIL: TStringField;
    SdsClienteCLI_ENDERECO: TStringField;
    SdsClienteCLI_NOME: TStringField;
    SdsClienteCLI_TELEFONE: TStringField;
    CdsClienteCLI_CODIGO: TIntegerField;
    CdsClienteCLI_NOME: TStringField;
    CdsClienteCLI_TELEFONE: TStringField;
    CdsClienteCLI_ENDERECO: TStringField;
    CdsClienteCLI_BAIRRO: TStringField;
    CdsClienteCLI_CEP: TStringField;
    CdsClienteCLI_CPFCNPJ: TStringField;
    CdsClienteCLI_EMAIL: TStringField;
    CdsClienteCLI_CID_CODIGO: TIntegerField;
    CdsClienteCID_NAME: TStringField;
    procedure CdsProdutoAfterPost(DataSet: TDataSet);
    procedure CdsProdutoAfterDelete(DataSet: TDataSet);
    procedure CdsClienteAfterDelete(DataSet: TDataSet);
    procedure CdsClienteAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmCadastroGeral: TDmCadastroGeral;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmCadastroGeral.CdsClienteAfterDelete(DataSet: TDataSet);
begin
 Cdscliente.ApplyUpdates(0);
end;

procedure TDmCadastroGeral.CdsClienteAfterPost(DataSet: TDataSet);
begin
  Cdscliente.ApplyUpdates(0);
end;

procedure TDmCadastroGeral.CdsProdutoAfterDelete(DataSet: TDataSet);
begin
  CdsProduto.ApplyUpdates(0);
end;

procedure TDmCadastroGeral.CdsProdutoAfterPost(DataSet: TDataSet);
begin
  CdsProduto.ApplyUpdates(0);
end;

end.
