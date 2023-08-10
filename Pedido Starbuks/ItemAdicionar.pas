unit ItemAdicionar;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, Recursos, ItemAdicionado;

type
  TForm6 = class(TForm)
    Rectangle1: TRectangle;
    Layout1: TLayout;
    Image1: TImage;
    lbNome: TLabel;
    lbValor: TLabel;
    SpeedButton1: TSpeedButton;
    Layout3: TLayout;
    Layout4: TLayout;
    Layout5: TLayout;
    Layout6: TLayout;
    Rc: TRectangle;
    Layout11: TLayout;
    Layout7: TLayout;
    Layout8: TLayout;
    Layout9: TLayout;
    Layout10: TLayout;
    lbMenos: TLabel;
    lbMais: TLabel;
    lbQuantidade: TLabel;
    lbAdicionar: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FFramed : TFramedVertScrollBox;
    FItem   : Integer;

    function adicionarItens(Item : Integer; nomeImagem, nomeProduto, nomeValor : String; Frame : TFramedVertScrollBox) : TForm6;
  end;

var
  Form6: TForm6;

implementation

{$R *.fmx}

{ TForm6 }

function TForm6.adicionarItens(Item : Integer; nomeImagem, nomeProduto, nomeValor : String; Frame : TFramedVertScrollBox) : TForm6;
begin
  Result:= Self;
  FItem:= Item;
  lbNome.Text:= nomeProduto;
  lbValor.Text:= nomeValor;
  FFramed:= Frame;
  TRecursos.CarregarImagem(Image1, nomeImagem);
end;

procedure TForm6.SpeedButton1Click(Sender: TObject);
begin
  Layout6.Visible:= True;
  lbQuantidade.Text:= '0';
end;

procedure TForm6.SpeedButton2Click(Sender: TObject);
var
  FrameItem : TFrame1;
begin
  FItem:= FItem + 1;
  Layout6.Visible:= False;

  FrameItem:= TFrame1.Create(Self);
  FrameItem.Name:= 'FrameItem' + IntToStr(FItem);
  FrameItem.lbDescricao.Text:= Self.lbNome.Text;
  FrameItem.lbValor.Text    := Self.lbValor.Text;
  FrameItem.lbQuantidade    := lbQuantidade;
  FrameItem.lbValorTotal.Text:= FormatCurr('R$ #,##0.00', (StrToCurr(lbValor.Text) + StrToCurr(lbValor.Text)));
  FrameItem.Align:= TAlignLayout.Bottom;
  FrameItem.Image1.Bitmap.Assign(Image1.Bitmap);

  FFramed.AddObject(FrameItem);
end;

procedure TForm6.SpeedButton3Click(Sender: TObject);
begin
  if lbQuantidade.Text <> '0' then lbQuantidade.Text := IntToStr(StrToInt(lbQuantidade.Text) - 1);

end;

procedure TForm6.SpeedButton4Click(Sender: TObject);
begin
  lbQuantidade.Text := IntToStr(StrToInt(lbQuantidade.Text) + 1);
end;

end.
