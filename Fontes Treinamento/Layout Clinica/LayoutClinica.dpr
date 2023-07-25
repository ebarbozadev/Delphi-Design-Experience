program LayoutClinica;

uses
  System.StartUpCopy,
  FMX.Forms,
  View.Principal in 'View\View.Principal.pas' {Form1},
  View.Componente.MenuPrincipal in 'View\Componentes\View.Componente.MenuPrincipal.pas' {ComponenteMenuPrincipal},
  View.Componente.ItemMenuPrincipal in 'View\Componentes\View.Componente.ItemMenuPrincipal.pas' {ComponenteItemMenuPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TComponenteItemMenuPrincipal, ComponenteItemMenuPrincipal);
  Application.Run;
end.
