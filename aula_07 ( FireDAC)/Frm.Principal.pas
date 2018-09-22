unit Frm.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Dm.Conexao, Vcl.Menus, Frm.Proprietario,
  Frm.VeiculoMultas;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Proprietario1: TMenuItem;
    Veiculo1: TMenuItem;
    Sair1: TMenuItem;
    procedure Proprietario1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Veiculo1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.Proprietario1Click(Sender: TObject);
var
  vFrmProprietario : TFrmProprietario;
begin
  vFrmProprietario := TFrmProprietario.Create(nil);
  try
   vFrmProprietario.ShowModal;
  finally
   FreeAndNil(vFrmProprietario);
  end;
end;

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
  FrmPrincipal.Close;
end;

procedure TFrmPrincipal.Veiculo1Click(Sender: TObject);
var
  vFrmVeiculo: TFrmVeiculoMultas;
begin
vFrmVeiculo := TFrmVeiculoMultas.Create(nil);
  try
    vFrmVeiculo.ShowModal
  finally
    FreeAndNil(vFrmVeiculo);

  end;

end;

end.
