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
    layoutsubtopo: TLayout;
    Layout8: TLayout;
    Layout9: TLayout;
    Layout10: TLayout;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    LayoutMenu: TFlowLayout;
    Layout11: TLayout;
    Layout12: TLayout;
    Layout13: TLayout;
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
    Layout20: TLayout;
    Image3: TImage;
    VertScrollBox1: TVertScrollBox;
    LayoutMesas: TFlowLayout;
    SpeedButton2: TSpeedButton;
    Layout7: TLayout;
    Layout88: TLayout;
    LayoutMenuPagamento: TFlowLayout;
    Layout21: TLayout;
    Layout22: TLayout;
    Layout23: TLayout;
    Rectangle6: TRectangle;
    Layout24: TLayout;
    Layout25: TLayout;
    Line1: TLine;
    Label11: TLabel;
    Label12: TLabel;
    Layout26: TLayout;
    Layout27: TLayout;
    FramedVertScrollBox1: TFramedVertScrollBox;
    Layout28: TLayout;
    Layout29: TLayout;
    Layout30: TLayout;
    Layout31: TLayout;
    Rectangle7: TRectangle;
    Label3: TLabel;
    Rectangle8: TRectangle;
    Label4: TLabel;
    Layout32: TLayout;
    Label5: TLabel;
    Label6: TLabel;
    Layout33: TLayout;
    Label7: TLabel;
    Label8: TLabel;
    Layout34: TLayout;
    Label9: TLabel;
    Label10: TLabel;
    VertScrollBox2: TVertScrollBox;
    LayoutItens: TFlowLayout;
    procedure Circle1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1MouseEnter(Sender: TObject);
    procedure SpeedButton1MouseLeave(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    FMesas : Integer;
    FShowMesas : Boolean;
    procedure MontarMenuPrincipal;
    procedure MontarMenuMesas;
    procedure MontarCategorias;
    procedure AdicionarItens;
    procedure ClicouMenu(Sender : TObject);
    procedure OcultarBarraMesas ( Sender : TObject );
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  ItemMenuPrincipal1, ItemMenuMesa, ItemMenuCategoria, Recursos, ItemPrincipal;

{$R *.fmx}

procedure TForm1.AdicionarItens;
var
  I: Integer;
begin
  for I := 1 to 11 do
  begin
    LayoutItens.AddObject(
      TItensPrincipal1.Create(Self)
      .Recursos(I, FramedVertScrollBox1, 'bebida' + IntToStr(I), 'Café Expresso', '8,50')
      .Layout1
    );
  end;




end;

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
  AdicionarItens;
  FShowMesas := False;
end;

procedure TForm1.MontarCategorias;
begin
  LayoutCategorias.AddObject(TItemMenuCategoria1.Create(Self).Recursos('Café', 'cat_coffee').LayoutPrincipal);
  LayoutCategorias.AddObject(TItemMenuCategoria1.Create(Self).Recursos('Chá', 'cat_tea').LayoutPrincipal);
  LayoutCategorias.AddObject(TItemMenuCategoria1.Create(Self).Recursos('Cerveja', 'cat_beer').LayoutPrincipal);
  LayoutCategorias.AddObject(TItemMenuCategoria1.Create(Self).Recursos('Suco', 'cat_juice').LayoutPrincipal);
  LayoutCategorias.AddObject(TItemMenuCategoria1.Create(Self).Recursos('Vinho', 'cat_wine').LayoutPrincipal);

  LayoutMenuPagamento.AddObject(TItemMenuCategoria1.Create(Self).Recursos('Checkout', 'cat_wine', $FF4DC27B).LayoutPrincipal);
  LayoutMenuPagamento.AddObject(TItemMenuCategoria1.Create(Self).Recursos('Order', 'cat_wine', $FF4DC27B).LayoutPrincipal);
  LayoutMenuPagamento.AddObject(TItemMenuCategoria1.Create(Self).Recursos('Histórico', 'cat_wine', $FF4DC27B).LayoutPrincipal);
end;

procedure TForm1.MontarMenuMesas;
var
  I: Integer;
begin
  for I := 1 to 9 do
    LayoutMesas.AddObject(
      TItemMenuMesa1.Create(Self)
      .Recursos(I)
      .EventClick(OcultarBarraMesas)
      .LayoutPrincipal
    );

  FMesas := I-1;
end;

procedure TForm1.MontarMenuPrincipal;
begin
  LayoutMenu.AddObject(TItemMenuPrincipal.Create(Self).Recursos('Drinks', 'menu_drink', ClicouMenu).LayoutPrincipal);
  LayoutMenu.AddObject(TItemMenuPrincipal.Create(Self).Recursos('Food', 'menu_food', ClicouMenu).LayoutPrincipal);
  LayoutMenu.AddObject(TItemMenuPrincipal.Create(Self).Recursos('Bills', 'menu_pagamento', ClicouMenu).LayoutPrincipal);
  LayoutMenu.AddObject(TItemMenuPrincipal.Create(Self).Recursos('Config', 'menu_config', ClicouMenu).LayoutPrincipal);
end;

procedure TForm1.OcultarBarraMesas(Sender: TObject);
begin
  if FShowMesas then
  begin
    layoutsubtopo.Height := 105;
    FShowMesas := False;
    TRecursos.LoadImage(Image3, 'arrow_down');
  end
  else
  begin
    FShowMesas := True;
    layoutsubtopo.Height := Screen.Height - 80;
    TRecursos.LoadImage(Image3, 'arrow_up');
  end;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  FMesas := FMesas + 1;
  LayoutMesas.AddObject(
    TItemMenuMesa1.Create(Self)
      .Recursos(FMesas)
      .EventClick(OcultarBarraMesas)
      .LayoutPrincipal
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

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  OcultarBarraMesas(Sender);
end;

end.
