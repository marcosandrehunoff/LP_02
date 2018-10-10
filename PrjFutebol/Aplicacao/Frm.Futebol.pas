unit Frm.Futebol;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Frm.Pais, Frm.Tatica,
  Frm.Tecnico, Dm.Conexao, Frm.Clube;

type
  TFrmFutebol = class(TForm)
    MainMenu1: TMainMenu;
    Pases1: TMenuItem;
    Paises1: TMenuItem;
    aticas1: TMenuItem;
    ecnicos1: TMenuItem;
    Clubes1: TMenuItem;
    Sair1: TMenuItem;
    BancodeDados1: TMenuItem;
    Backup1: TMenuItem;
    Restore1: TMenuItem;
    procedure Paises1Click(Sender: TObject);
    procedure aticas1Click(Sender: TObject);
    procedure ecnicos1Click(Sender: TObject);
    procedure Clubes1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Backup1Click(Sender: TObject);
    procedure Restore1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFutebol: TFrmFutebol;

implementation

{$R *.dfm}

procedure TFrmFutebol.aticas1Click(Sender: TObject);
var
  vFrmtatica: TFrmTatica;
begin
  vFrmtatica := TFrmTatica.Create(nil);
  try
    vFrmtatica.ShowModal;
  finally
    FreeAndNil(vFrmtatica);
  end;
end;

procedure TFrmFutebol.Backup1Click(Sender: TObject);
begin
  DmConexao.FDConexao.Connected := false;
  DeleteFile(DmConexao.FDFBNBackup.BackupFile);
  DmConexao.FDFBNBackup.Backup;
  DmConexao.FDConexao.Connected := true;
end;

procedure TFrmFutebol.Clubes1Click(Sender: TObject);
var
  vFrmClube: TFrmClube;
begin
  vFrmClube := TFrmClube.Create(nil);
  try
    vFrmClube.ShowModal;
  finally
    FreeAndNil(vFrmClube);
  end;
end;

procedure TFrmFutebol.ecnicos1Click(Sender: TObject);
var
  vFrmTecnico: TFrmTecnico;
begin
  vFrmTecnico := TFrmTecnico.Create(nil);
  try
    vFrmTecnico.ShowModal;
  finally
    FreeAndNil(vFrmTecnico);
  end;

end;

procedure TFrmFutebol.Paises1Click(Sender: TObject);
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

procedure TFrmFutebol.Restore1Click(Sender: TObject);
begin
  DmConexao.FDConexao.Connected := false;
  DeleteFile(DmConexao.FDFBNRestore.Database );
  DmConexao.FDFBNRestore.Restore;
  DmConexao.FDConexao.Open();
end;

procedure TFrmFutebol.Sair1Click(Sender: TObject);
begin
 close;
end;

end.
