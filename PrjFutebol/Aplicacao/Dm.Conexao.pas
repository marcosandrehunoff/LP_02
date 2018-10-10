unit Dm.Conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Comp.UI,
  Data.DB, FireDAC.Comp.Client, FireDAC.Moni.Base, FireDAC.Moni.FlatFile,
  FireDAC.Phys.IBWrapper, System.INIFILES;

type
  TDmConexao = class(TDataModule)
    FDConexao: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDMoniFlatFileClientLink1: TFDMoniFlatFileClientLink;
    FDFBNBackup: TFDFBNBackup;
    FDFBNRestore: TFDFBNRestore;
    procedure DataModuleDestroy(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var

  DmConexao: TDmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}



procedure TDmConexao.DataModuleCreate(Sender: TObject);
VAR
  vDBIniFile: TIniFile;
begin
  vDBIniFile := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'DBConexao.ini');

  try
    FDConexao.Connected := False;
    FDConexao.Params.Values['Database'] := vDBIniFile.ReadString('Configuracao',
      'Database', '');

    FDFBNBackup.Database := vDBIniFile.ReadString('Configuracao',
      'Database', '');
    FDFBNBackup.BackupFile := vDBIniFile.ReadString('Configuracao',
      'BackupFile', '');

    FDFBNRestore.Database := vDBIniFile.ReadString('Configuracao',
      'Database', '');
    FDFBNRestore.BackupFiles.Text := vDBIniFile.ReadString('Configuracao',
      'BackupFile', '');

    FDConexao.Connected := True;
  finally
    FreeAndNil(vDBIniFile);
  end;
end;

procedure TDmConexao.DataModuleDestroy(Sender: TObject);
begin
  DmConexao.FDConexao.Connected := False;
end;

end.
