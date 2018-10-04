program PrjFutebolFireDac;

uses
  Vcl.Forms,
  Frm.Futebol in 'Frm.Futebol.pas' {FrmFutebol},
  Dm.Conexao in 'Dm.Conexao.pas' {DmConexao: TDataModule},
  Dm.Dados in 'Dm.Dados.pas' {DmDados: TDataModule},
  Frm.Pais in 'Frm.Pais.pas' {FrmPais},
  Frm.Tatica in 'Frm.Tatica.Pas' {FrmTatica},
  Frm.Tecnico in 'Frm.Tecnico.pas' {FrmTecnico},
  Frm.Clube in 'Frm.Clube.pas' {FrmClube};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmFutebol, FrmFutebol);
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TDmDados, DmDados);
  Application.Run;
end.
