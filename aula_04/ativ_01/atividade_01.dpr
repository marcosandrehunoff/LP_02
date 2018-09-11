program atividade_01;

uses
  Vcl.Forms,
  un01 in 'un01.pas' {Formulario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormulario, Formulario);
  Application.Run;
end.
