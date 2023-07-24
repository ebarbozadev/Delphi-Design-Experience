program DDEDev;

{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  Principal in 'Principal.pas' {Form1},
  ItemMenuPrincipal1 in 'ItemMenuPrincipal1.pas' {ItemMenuPrincipal},
  ItemMenuMesa in 'ItemMenuMesa.pas' {ItemMenuMesa1},
  ItemMenuCategoria in 'ItemMenuCategoria.pas' {ItemMenuCategoria1},
  Recursos in 'Recursos.pas',
  ItemPrincipal in 'ItemPrincipal.pas' {ItensPrincipal1},
  Frame.Item in 'Frame.Item.pas' {FrameItem: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TItemMenuPrincipal, ItemMenuPrincipal);
  Application.CreateForm(TItemMenuMesa1, ItemMenuMesa1);
  Application.CreateForm(TItemMenuCategoria1, ItemMenuCategoria1);
  Application.CreateForm(TItensPrincipal1, ItensPrincipal1);
  Application.Run;
end.
