unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.OleCtrls, SHDocVw, System.Generics.Collections, framNavegacao,
  framNumeros1, framNumeros2, VclTee.TeeGDIPlus, Data.DB, Datasnap.DBClient,
  VCLTee.TeEngine, VCLTee.TeeProcs, VCLTee.Chart;

type
  TForm1 = class(TForm)
    pnPrincipal: TPanel;
    pnHeader: TPanel;
    Shape1: TShape;
    pnHeader1: TPanel;
    pnHeader2: TPanel;
    pnHeader1Logo: TPanel;
    Label1: TLabel;
    pnHeader1Branco: TPanel;
    pnHeader1Icones: TPanel;
    Edit1: TEdit;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image5: TImage;
    Image6: TImage;
    pnHeader2Esquerdo: TPanel;
    pnHeader2Direito: TPanel;
    pnHeader2Navegacao: TPanel;
    ScrollBox1: TScrollBox;
    pnSection1: TPanel;
    pnSection1Header: TPanel;
    pnSection1HeaderEsquerda: TPanel;
    Label2: TLabel;
    pnSection1HeaderMeio: TPanel;
    pnSection1HeaderDireita: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    pnSobrepoe: TPanel;
    ScrollBox2: TScrollBox;
    pnSection1Limpo: TPanel;
    pnSection1LimpoEsquerdo: TPanel;
    pnSectopm1LimpoTop: TPanel;
    pnSection1LimpoEsqueroCentro: TPanel;
    ScrollBox3: TScrollBox;
    pnSetcion1Numeros1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    pnSection1LimpoDireito: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FItemLista : TObjectList<TFrame>;
    FItemListaNumeros1 : TObjectList<TFrame>;
    FItemListaNumeros2 : TObjectList<TFrame>;
    procedure PreencherScroolBox;
    procedure PreencherScroolBox2;
    procedure PreencherScroolBox3;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  FItemLista:= TObjectList<TFrame>.Create;
  FItemListaNumeros1 := TObjectList<TFrame>.Create;
  FItemListaNumeros2 := TObjectList<TFrame>.Create;
  PreencherScroolBox;
  PreencherScroolBox2;
  PreencherScroolBox3;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FItemLista);
  FreeAndNil(FItemListaNumeros1);
  FreeAndNil(FItemListaNumeros2);
end;

procedure TForm1.PreencherScroolBox;
var
  I : Integer;
  Item : TFramItem;
begin

  Item:= TFramItem.Create(Self);
  Item.Name:= 'frameDashboard';
  Item.Label1.Caption:= 'Dashboard';
  Item.Align:= alRight;
  FItemLista.Add(Item);

  Item:= TFramItem.Create(Self);
  Item.Name:= 'frameWidgets';
  Item.Label1.Caption:= 'Widgets';
  Item.Align:= alRight;
  FItemLista.Add(Item);

  Item:= TFramItem.Create(Self);
  Item.Name:= 'framePages';
  Item.Label1.Caption:= 'Pages';
  Item.Align:= alRight;
  FItemLista.Add(Item);

  Item:= TFramItem.Create(Self);
  Item.Name:= 'frameCharts';
  Item.Label1.Caption:= 'Charts';
  Item.Align:= alRight;
  FItemLista.Add(Item);

  Item:= TFramItem.Create(Self);
  Item.Name:= 'frameElements';
  Item.Label1.Caption:= 'Elements';
  Item.Align:= alRight;
  FItemLista.Add(Item);

  Item:= TFramItem.Create(Self);
  Item.Name:= 'frameComponents';
  Item.Label1.Caption:= 'Components';
  Item.Align:= alRight;
  FItemLista.Add(Item);

  Item:= TFramItem.Create(Self);
  Item.Name:= 'frameForms';
  Item.Label1.Caption:= 'Forms';
  Item.Align:= alRight;
  FItemLista.Add(Item);

  Item:= TFramItem.Create(Self);
  Item.Name:= 'frameIcons';
  Item.Label1.Caption:= 'Icons';
  Item.Align:= alRight;
  FItemLista.Add(Item);


  for I := 0 to Pred(FItemLista.Count) do
    FItemLista[I].Parent := ScrollBox1;


end;

procedure TForm1.PreencherScroolBox2;
var
  Item : TFrame1;
  I    : Integer;
begin

  Item:= TFrame1.Create(Self);
  Item.Name:= 'frm1';
  Item.lbTitulo.Caption:= 'Renewed Users';
  Item.lbNumero.Caption:= '19.89K';
  Item.lbPorcentagem.Caption:= '(+25%)';
  Item.Align:= alRight;
  FItemListaNumeros1.Add(Item);

  Item:= TFrame1.Create(Self);
  Item.Name:= 'frm2';
  Item.lbTitulo.Caption:= 'New Users';
  Item.lbNumero.Caption:= '692';
  Item.lbPorcentagem.Caption:= '(+15%)';
  Item.Align:= alRight;
  FItemListaNumeros1.Add(Item);

  Item:= TFrame1.Create(Self);
  Item.Name:= 'frm3';
  Item.lbTitulo.Caption:= 'Churned Users';
  Item.lbNumero.Caption:= '286';
  Item.lbPorcentagem.Caption:= '(+08%)';
  Item.Align:= alRight;
  FItemListaNumeros1.Add(Item);

  Item:= TFrame1.Create(Self);
  Item.Name:= 'frm4';
  Item.lbTitulo.Caption:= 'Total Revenue';
  Item.lbNumero.Caption:= '2.98M';
  Item.lbPorcentagem.Caption:= '(+35%)';
  Item.Align:= alRight;
  FItemListaNumeros1.Add(Item);

  for I := 0 to Pred(FItemListaNumeros1.Count) do
      FItemListaNumeros1[I].Parent := ScrollBox2;
end;

procedure TForm1.PreencherScroolBox3;
var
  Item : TFrame2;
  I    : Integer;
begin
  Item:= TFrame2.Create(Self);
  Item.Name:= 'frm5';
  Item.Align:= alRight;
  FItemListaNumeros2.Add(Item);

  Item:= TFrame2.Create(Self);
  Item.Name:= 'frm6';
  Item.Label1.Caption:= 'Net Revenue';
  Item.Label2.Caption:= '256.8K';
  Item.Label3.Caption:= '24% last month';
  Item.Align:= alRight;
  FItemListaNumeros2.Add(Item);

  Item:= TFrame2.Create(Self);
  Item.Name:= 'frm7';
  Item.Label1.Caption:= 'New Revenue';
  Item.Label2.Caption:= '124.89K';
  Item.Label3.Caption:= '13% last month';
  Item.Align:= alRight;
  FItemListaNumeros2.Add(Item);

  Item:= TFrame2.Create(Self);
  Item.Name:= 'frm8';
  Item.Label1.Caption:= 'Add Revenue';
  Item.Label2.Caption:= '954.8K';
  Item.Label3.Caption:= '49% last month';
  Item.Align:= alRight;
  FItemListaNumeros2.Add(Item);

  for I := 0 to Pred(FItemListaNumeros2.Count) do
    FItemListaNumeros2[I].Parent := ScrollBox3;
end;

end.
