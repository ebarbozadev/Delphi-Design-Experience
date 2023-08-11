program Projeto;

{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  frmPrincipal in 'frmPrincipal.pas' {frmUnitPrincipal},
  frmHeader in 'frmHeader.pas' {frmUnitHeader},
  frmPrincipal.ItemMenuPrincipal in 'frmPrincipal.ItemMenuPrincipal.pas' {frmItemMenuPrincipal},
  Recursos in 'Recursos.pas',
  frmHeaderSecundario in 'frmHeaderSecundario.pas' {frmUnitHeaderSecundario},
  frmPerfil in 'frmPerfil.pas' {frmUnitPerfil},
  frmAreas in 'frmAreas.pas' {frmUnitAreas},
  frmUnitArea1 in 'frmUnitArea1.pas' {frmArea1},
  frmUnitArea2 in 'frmUnitArea2.pas' {frmArea2},
  frmUnitArea3 in 'frmUnitArea3.pas' {frmArea3},
  frmUnitArea4 in 'frmUnitArea4.pas' {frmArea4},
  frmUnitArea5 in 'frmUnitArea5.pas' {frmArea5};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmUnitPrincipal, frmUnitPrincipal);
  Application.CreateForm(TfrmUnitHeader, frmUnitHeader);
  Application.CreateForm(TfrmItemMenuPrincipal, frmItemMenuPrincipal);
  Application.CreateForm(TfrmUnitHeaderSecundario, frmUnitHeaderSecundario);
  Application.CreateForm(TfrmUnitPerfil, frmUnitPerfil);
  Application.CreateForm(TfrmUnitAreas, frmUnitAreas);
  Application.CreateForm(TfrmArea1, frmArea1);
  Application.CreateForm(TfrmArea2, frmArea2);
  Application.CreateForm(TfrmArea3, frmArea3);
  Application.CreateForm(TfrmArea4, frmArea4);
  Application.CreateForm(TfrmArea5, frmArea5);
  Application.Run;
end.
