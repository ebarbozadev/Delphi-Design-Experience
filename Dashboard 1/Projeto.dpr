program Projeto;

uses
  Vcl.Forms,
  frmPrincipal in 'frmPrincipal.pas' {Form1},
  frame in 'frame.pas' {FramItem: TFrame},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Auric');
  Application.Title := 'DDE';
  Application.HelpFile := 'C:\Users\Public\Documents\Embarcadero\Studio\22.0\Styles\DDE.vsf';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
