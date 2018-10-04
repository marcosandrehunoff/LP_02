unit Dm.Dados;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Dm.Conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDmDados = class(TDataModule)
    DsMestreDetalhe: TDataSource;
    QryPais: TFDQuery;
    QryClube: TFDQuery;
    QryTatica: TFDQuery;
    QryJogador: TFDQuery;
    QryTecnico: TFDQuery;
    QryPaisPAI_CODIGO: TIntegerField;
    QryPaisPAI_NOME: TStringField;
    QryTaticaTAT_CODIGO: TIntegerField;
    QryTaticaTAT_DESCRICAO: TStringField;
    QryTaticaTAT_ESQUEMA: TStringField;
    QryJogadorJOG_NUMERO: TIntegerField;
    QryJogadorPAI_CODIGO: TIntegerField;
    QryJogadorCLB_CODIGO: TIntegerField;
    QryJogadorJOG_NOME: TStringField;
    QryJogadorJOG_POSICAO: TStringField;
    QryJogadorJOG_IDADE: TIntegerField;
    QryJogadorJOG_LADO: TStringField;
    QryJogadorJOG_TITULAR: TStringField;
    QryJogadorJOG_CARACTERISTICA: TStringField;
    QryTecnicoTEC_CODIGO: TIntegerField;
    QryTecnicoPAI_CODIGO: TIntegerField;
    QryTecnicoTEC_NOME: TStringField;
    QryClubeCLB_CODIGO: TIntegerField;
    QryClubeTAT_CODIGO: TIntegerField;
    QryClubeTEC_CODIGO: TIntegerField;
    QryClubePAI_CODIGO: TIntegerField;
    QryClubeCLB_NOME: TStringField;
    QryClubeCLB_ESTADIO: TStringField;
    QryClubeCLB_DTFUNDACAO: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmDados: TDmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
