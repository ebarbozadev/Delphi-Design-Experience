program Projeto;









uses
  Vcl.Forms,
  frmVCLPrincipal in 'frmVCLPrincipal.pas' {Form3},
  Recursos in 'Recursos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
