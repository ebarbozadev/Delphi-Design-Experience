unit frmFMXPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts, FMX.Edit,
  FMX.Effects, FMX.Filter.Effects, ItemMenuPrnc, ItemMenuMesa, ItemMenuPrncSubProduto;

type
  TForm2 = class(TForm)
    Button1: TButton;
    LyBody: TLayout;
    LyHeader: TLayout;
    LyHeaderLogo: TLayout;
    Image1: TImage;
    LyHeaderPesquisar: TLayout;
    LyHeaderPerfil: TLayout;
    LyPerfilFoto: TLayout;
    LyPerfilNome: TLayout;
    LyPesquisarEdit: TLayout;
    LyPesquisarVazio: TLayout;
    Image2: TImage;
    FillRGBEffect1: TFillRGBEffect;
    FillRGBEffect2: TFillRGBEffect;
    Edit1: TEdit;
    Rectangle1: TRectangle;
    Layout1: TLayout;
    Circle1: TCircle;
    Label1: TLabel;
    LyMain: TLayout;
    LyMainHeader: TLayout;
    LyMainSection: TLayout;
    LyMainSMain: TLayout;
    LyMainSMenu: TLayout;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    LyMHeaderVazio1: TLayout;
    LyMHeaderMesas: TLayout;
    LyMHeaderCriarMesa: TLayout;
    LyMesa04: TLayout;
    LyMesa03: TLayout;
    LyMesa02: TLayout;
    LyMesa01: TLayout;
    LyMesa08: TLayout;
    LyMesa07: TLayout;
    LyMesa06: TLayout;
    LyMesa05: TLayout;
    Label2: TLabel;
    Label3: TLabel;
    Layout2: TLayout;
    Layout3: TLayout;
    Label4: TLabel;
    Label5: TLabel;
    Layout4: TLayout;
    Label6: TLabel;
    Label7: TLabel;
    Layout5: TLayout;
    Label8: TLabel;
    Label9: TLabel;
    Layout6: TLayout;
    Label10: TLabel;
    Label11: TLabel;
    Layout7: TLayout;
    Label12: TLabel;
    Label13: TLabel;
    Layout8: TLayout;
    Label14: TLabel;
    Label15: TLabel;
    Layout9: TLayout;
    Label16: TLabel;
    Label17: TLabel;
    RoundRect1: TRoundRect;
    LyCriarMesa1: TLayout;
    LyCriarMesa2: TLayout;
    Label18: TLabel;
    LayoutMenu: TFlowLayout;
    Image3: TImage;
    LayoutMesas: TFlowLayout;
    SpeedButton1: TSpeedButton;
    LyMainClient: TLayout;
    LyMainRight: TLayout;
    MainTop: TLayout;
    MainMid: TLayout;
    FlowLayout1: TFlowLayout;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1MouseEnter(Sender: TObject);
    procedure SpeedButton1MouseLeave(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    FMesas : Integer;
    procedure MontarMenuPrincipal;
    procedure MontarSubMenu;
    procedure ClicouMenu(Sender : TObject);
    procedure ClicouSub(Sender : TObject);
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm2.ClicouMenu(Sender: TObject);
begin
  ShowMessage('Clicou no menu');
end;

procedure TForm2.ClicouSub(Sender: TObject);
begin
  ShowMessage('Clicou no sub');
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  MontarMenuPrincipal;
  MontarSubMenu;
  FMesas := 0;
end;

procedure TForm2.MontarMenuPrincipal;
begin
  LayoutMenu.AddObject(TItemMenuPrincipal.Create(Self).Recursos('Drink', 'menu_drink', ClicouMenu).LayoutPrincipal);
  LayoutMenu.AddObject(TItemMenuPrincipal.Create(Self).Recursos('Food', 'menu_food', ClicouMenu).LayoutPrincipal);
  LayoutMenu.AddObject(TItemMenuPrincipal.Create(Self).Recursos('Pagamento', 'menu_pagamento', ClicouMenu).LayoutPrincipal);
  LayoutMenu.AddObject(TItemMenuPrincipal.Create(Self).Recursos('Configura��es', 'menu_configuracao', ClicouMenu).LayoutPrincipal);
end;

procedure TForm2.MontarSubMenu;
begin
  FlowLayout1.AddObject(TForm4.Create(Self).CriaSubTopico('Caf�', 'sub_cafe', ClicouSub).Layout1);
  FlowLayout1.AddObject(TForm4.Create(Self).CriaSubTopico('Ch�', 'sub_cha', ClicouSub).Layout1);
  FlowLayout1.AddObject(TForm4.Create(Self).CriaSubTopico('Cerveja', 'sub_cerveja', ClicouSub).Layout1);
  FlowLayout1.AddObject(TForm4.Create(Self).CriaSubTopico('Suco', 'sub_suco', ClicouSub).Layout1);
  FlowLayout1.AddObject(TForm4.Create(Self).CriaSubTopico('Vinho', 'sub_vinho', ClicouSub).Layout1);
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
  FMesas := FMesas +1;
  LayoutMesas.AddObject(TForm1.Create(Self).Recursos(FMesas).LyMesa01);
end;

procedure TForm2.SpeedButton1MouseEnter(Sender: TObject);
begin
  RoundRect1.Fill.Color := TAlphaColor($FFFFFFFF); //FF000E28
  Label18.TextSettings.FontColor:= TAlphaColor($FFFF9C67);
end;

procedure TForm2.SpeedButton1MouseLeave(Sender: TObject);
begin
  RoundRect1.Fill.Color := TAlphaColor($FFFF9C67);
  Label18.TextSettings.FontColor:= TAlphaColor($FFFFFFFF);
end;

end.
