program Projeto;

uses
  Vcl.Forms,
  frmPrincipal in 'frmPrincipal.pas' {Form1},
  frame in 'frame.pas' {FramItem: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
