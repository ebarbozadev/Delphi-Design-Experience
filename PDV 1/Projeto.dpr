program Projeto;

{$R *.dres}

uses
  Vcl.Forms,
  frmPrincipal in 'frmPrincipal.pas' {Form1},
  UnitFrameMenuLateral in 'UnitFrameMenuLateral.pas' {frameMenuLateral: TFrame},
  UnifFrameMenuConferir in 'UnifFrameMenuConferir.pas' {Frame1: TFrame},
  UnitFrameCliente in 'UnitFrameCliente.pas' {Frame2: TFrame},
  frmCliente in 'frmCliente.pas' {Form2},
  frmAllBlack in 'frmAllBlack.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown   := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
