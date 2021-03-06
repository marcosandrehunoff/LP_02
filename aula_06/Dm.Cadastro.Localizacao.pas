unit Dm.Cadastro.Localizacao;

interface

uses
  System.SysUtils, System.Classes, Dm.DataBase, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, Data.SqlExpr;

type
  TDmCadastroLocalizacao = class(TDataModule)
    SdsPais: TSQLDataSet;
    DspPais: TDataSetProvider;
    CdsPais: TClientDataSet;
    SdsPaisPAI_CODIGO: TIntegerField;
    SdsPaisPAI_NOME: TStringField;
    SdsPaisPAI_SIGLA: TStringField;
    SdsPaisPAI_BACEN: TIntegerField;
    CdsPaisPAI_CODIGO: TIntegerField;
    CdsPaisPAI_NOME: TStringField;
    CdsPaisPAI_SIGLA: TStringField;
    CdsPaisPAI_BACEN: TIntegerField;
    SdsEstado: TSQLDataSet;
    DspEstado: TDataSetProvider;
    CdsEstado: TClientDataSet;
    SdsEstadoEST_CODIGO: TIntegerField;
    SdsEstadoEST_NOME: TStringField;
    SdsEstadoEST_PAI_CODIGO: TIntegerField;
    SdsEstadoEST_SIGLA: TStringField;
    CdsEstadoEST_CODIGO: TIntegerField;
    CdsEstadoEST_NOME: TStringField;
    CdsEstadoEST_PAI_CODIGO: TIntegerField;
    CdsEstadoEST_SIGLA: TStringField;
    CdsEstadoPAI_NOME: TStringField;
    SdsCidade: TSQLDataSet;
    DspCidade: TDataSetProvider;
    SdsCidadeCID_CODIGO: TIntegerField;
    SdsCidadeCID_EST_CODIGO: TIntegerField;
    SdsCidadeCID_IBGE: TIntegerField;
    SdsCidadeCID_NOME: TStringField;
    CdsCidade: TClientDataSet;
    CdsCidadeCID_CODIGO: TIntegerField;
    CdsCidadeCID_EST_CODIGO: TIntegerField;
    CdsCidadeCID_IBGE: TIntegerField;
    CdsCidadeCID_NOME: TStringField;
    CdsCidadeEST_NOME: TStringField;
    procedure CdsPaisAfterPost(DataSet: TDataSet);
    procedure CdsPaisAfterDelete(DataSet: TDataSet);
    procedure CdsEstadoAfterDelete(DataSet: TDataSet);
    procedure CdsEstadoAfterPost(DataSet: TDataSet);
    procedure CdsCidadeAfterPost(DataSet: TDataSet);
    procedure CdsCidadeBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmCadastroLocalizacao: TDmCadastroLocalizacao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmCadastroLocalizacao.CdsCidadeAfterPost(DataSet: TDataSet);
begin
     CdsCidade.ApplyUpdates(0);
end;

procedure TDmCadastroLocalizacao.CdsCidadeBeforeDelete(DataSet: TDataSet);
begin
  CdsCidade.ApplyUpdates(0);
end;

procedure TDmCadastroLocalizacao.CdsEstadoAfterDelete(DataSet: TDataSet);
begin
  CdsEstado.ApplyUpdates(0);
end;

procedure TDmCadastroLocalizacao.CdsEstadoAfterPost(DataSet: TDataSet);
begin
  CdsEstado.ApplyUpdates(0);
end;

procedure TDmCadastroLocalizacao.CdsPaisAfterDelete(DataSet: TDataSet);
begin
  CdsPais.ApplyUpdates(0);
end;

procedure TDmCadastroLocalizacao.CdsPaisAfterPost(DataSet: TDataSet);
begin
  CdsPais.ApplyUpdates(0);
end;

end.
