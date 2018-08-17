program Projeto_Produtos;

uses
  Vcl.Forms,
  UntFrmPrincipal in 'UntFrmPrincipal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
