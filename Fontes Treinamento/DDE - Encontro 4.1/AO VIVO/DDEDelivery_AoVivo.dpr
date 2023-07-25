program DDEDelivery_AoVivo;

{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  Principal in 'Principal.pas' {Form1},
  ItemMenuPrincipal1 in 'ItemMenuPrincipal1.pas' {ItemMenuPrincipal},
  ItemMenuMesa in 'ItemMenuMesa.pas' {ItemMenuMesa1},
  ItemMenuCategoria in 'ItemMenuCategoria.pas' {ItemMenuCategoria1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TItemMenuPrincipal, ItemMenuPrincipal);
  Application.CreateForm(TItemMenuMesa1, ItemMenuMesa1);
  Application.CreateForm(TItemMenuCategoria1, ItemMenuCategoria1);
  Application.Run;
end.
