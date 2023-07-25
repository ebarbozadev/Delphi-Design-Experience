unit Principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.Edit, FMX.Effects,
  FMX.Filter.Effects, FMX.StdCtrls, FMX.Ani;

type
  TForm1 = class(TForm)
    Layout1: TLayout;
    Rectangle1: TRectangle;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    Layout5: TLayout;
    Layout6: TLayout;
    Rectangle2: TRectangle;
    Image1: TImage;
    FillRGBEffect1: TFillRGBEffect;
    Image2: TImage;
    Edit1: TEdit;
    FillRGBEffect2: TFillRGBEffect;
    Circle1: TCircle;
    BitmapAnimation1: TBitmapAnimation;
    Label1: TLabel;
    Layout7: TLayout;
    Layout8: TLayout;
    Layout9: TLayout;
    Layout10: TLayout;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    LayoutMenu: TFlowLayout;
    Layout11: TLayout;
    Layout12: TLayout;
    Layout13: TLayout;
    LayoutMesas: TFlowLayout;
    Layout14: TLayout;
    Rectangle5: TRectangle;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Layout15: TLayout;
    Layout16: TLayout;
    Layout17: TLayout;
    Layout18: TLayout;
    Layout19: TLayout;
    LayoutCategorias: TFlowLayout;
    procedure Circle1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1MouseEnter(Sender: TObject);
    procedure SpeedButton1MouseLeave(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    FMesas : Integer;
    procedure MontarMenuPrincipal;
    procedure MontarMenuMesas;
    procedure MontarCategorias;
    procedure ClicouMenu(Sender : TObject);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  ItemMenuPrincipal1, ItemMenuMesa, ItemMenuCategoria;

{$R *.fmx}

procedure TForm1.Circle1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.ClicouMenu(Sender: TObject);
begin
  ShowMessage('Clicou no Menu');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FMesas := 0;
  MontarMenuPrincipal;
  MontarMenuMesas;
  MontarCategorias;
end;

procedure TForm1.MontarCategorias;
begin
  LayoutCategorias.AddObject(TItemMenuCategoria1.Create(Self).Recursos('Café', 'cat_coffee').LayoutPrincipal);
  LayoutCategorias.AddObject(TItemMenuCategoria1.Create(Self).Recursos('Chá', 'cat_tea').LayoutPrincipal);
  LayoutCategorias.AddObject(TItemMenuCategoria1.Create(Self).Recursos('Cerveja', 'cat_beer').LayoutPrincipal);
  LayoutCategorias.AddObject(TItemMenuCategoria1.Create(Self).Recursos('Suco', 'cat_juice').LayoutPrincipal);
  LayoutCategorias.AddObject(TItemMenuCategoria1.Create(Self).Recursos('Vinho', 'cat_wine').LayoutPrincipal);
end;

procedure TForm1.MontarMenuMesas;
var
  I: Integer;
begin
  for I := 1 to 9 do
    LayoutMesas.AddObject(TItemMenuMesa1.Create(Self).Recursos(I).LayoutPrincipal);

  FMesas := I-1;
end;

procedure TForm1.MontarMenuPrincipal;
begin
  LayoutMenu.AddObject(TItemMenuPrincipal.Create(Self).Recursos('Drinks', 'menu_drink', ClicouMenu).LayoutPrincipal);
  LayoutMenu.AddObject(TItemMenuPrincipal.Create(Self).Recursos('Food', 'menu_food', ClicouMenu).LayoutPrincipal);
  LayoutMenu.AddObject(TItemMenuPrincipal.Create(Self).Recursos('Bills', 'menu_pagamento', ClicouMenu).LayoutPrincipal);
  LayoutMenu.AddObject(TItemMenuPrincipal.Create(Self).Recursos('Config', 'menu_config', ClicouMenu).LayoutPrincipal);
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  FMesas := FMesas + 1;
  LayoutMesas.AddObject(
    TItemMenuMesa1.Create(Self).Recursos(FMesas).LayoutPrincipal
  );
end;

procedure TForm1.SpeedButton1MouseEnter(Sender: TObject);
begin
  Rectangle5.Fill.Color := TAlphaColor($FF000E28);
  Label2.TextSettings.FontColor := TAlphaColor($FFFF9C67);
end;

procedure TForm1.SpeedButton1MouseLeave(Sender: TObject);
begin
  Rectangle5.Fill.Color := TAlphaColor($FFFF9C67);
  Label2.TextSettings.FontColor := TAlphaColor($FFffffff);
end;

end.
