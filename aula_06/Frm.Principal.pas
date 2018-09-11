unit Frm.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Frm.Pais, Frm.Estado,
  Frm.Cidade, Frm.Produto, Dm.Cadastro.Geral, Frm.Cliente, Frm.Venda;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Localizao1: TMenuItem;
    Pas1: TMenuItem;
    Estado1: TMenuItem;
    Cidade1: TMenuItem;
    S1: TMenuItem;
    Geral1: TMenuItem;
    N1: TMenuItem;
    Produto1: TMenuItem;
    Cliente1: TMenuItem;
    Mo1: TMenuItem;
    RalizaoVenda1: TMenuItem;
    procedure Pas1Click(Sender: TObject);
    procedure Estado1Click(Sender: TObject);
    procedure Cidade1Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure RalizaoVenda1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.Cidade1Click(Sender: TObject);
var
  vFrmCidade: TFrmcidade;
begin
  vFrmCidade := TFrmcidade.Create(nil);
  try
    vFrmCidade.ShowModal;
  finally
    FreeAndNil(vFrmCidade);
  end;

end;

procedure TFrmPrincipal.Cliente1Click(Sender: TObject);
var
  vFrmCliente: TFrmcliente;
begin
  vFrmCliente := TFrmCliente.Create(nil);
  try
    vFrmCliente.ShowModal;
  finally
    FreeAndNil(vFrmCliente);
  end;
end;

procedure TFrmPrincipal.Estado1Click(Sender: TObject);
var
  vFrmEstado: TFrmEstado;
begin
  vFrmEstado := TFrmEstado.Create(nil);
  try
    vFrmEstado.ShowModal;
  finally
    FreeAndNil(vFrmEstado);
  end;

end;

procedure TFrmPrincipal.Pas1Click(Sender: TObject);
var
  vFrmPais: TFrmPais;
begin
  vFrmPais := TFrmPais.Create(nil);
  try
    vFrmPais.ShowModal;
  finally
    FreeAndNil(vFrmPais);
  end;
end;

procedure TFrmPrincipal.Produto1Click(Sender: TObject);
VAR
  vFrmProduto: TFrmProduto;
begin
  vFrmProduto := TFrmProduto.Create(nil);
  try
    vFrmProduto.ShowModal;
  finally
    FreeAndNil(vFrmProduto);
  end;

end;

procedure TFrmPrincipal.RalizaoVenda1Click(Sender: TObject);
var
  vFrmVenda: TFrmVenda;
begin
  vFrmVenda := TFrmVenda.Create(nil);
  try
    vFrmVenda.ShowModal;
  finally
    FreeAndNil(vFrmVenda);
  end;


end;

procedure TFrmPrincipal.S1Click(Sender: TObject);
begin
FrmPrincipal.Close;
end;

end.
