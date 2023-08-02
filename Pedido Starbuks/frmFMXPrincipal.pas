unit frmFMXPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts, FMX.Edit,
  FMX.Effects, FMX.Filter.Effects, ItemMenuPrnc;

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
    LyMesasCentralizar: TLayout;
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
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure MontarMenuPrincipal;
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

procedure TForm2.FormCreate(Sender: TObject);
begin
  MontarMenuPrincipal
end;

procedure TForm2.MontarMenuPrincipal;
begin
  LayoutMenu.AddObject(TItemMenuPrincipal.Create(Self).Recursos('Drinks', 'food').LayoutPrincipal);
end;

end.
