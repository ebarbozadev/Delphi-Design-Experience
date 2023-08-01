unit UnitFrameMenuLateral;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, UnifFrameMenuConferir, frmCliente;

type
  TframeMenuLateral = class(TFrame)
    pnPrincipal: TPanel;
    pnMDTMid: TPanel;
    pnMainDireitoTop1: TPanel;
    Image9: TImage;
    Label17: TLabel;
    pnMainDireitoTop10: TPanel;
    Image18: TImage;
    Label26: TLabel;
    pnMAinDireitoTop11: TPanel;
    Image19: TImage;
    Label27: TLabel;
    pnMainDireitoTop2: TPanel;
    Image10: TImage;
    Label18: TLabel;
    pnMainDireitoTop3: TPanel;
    Image11: TImage;
    Label19: TLabel;
    pnMainDireitoTop4: TPanel;
    Image12: TImage;
    Label20: TLabel;
    pnMainDireitoTop5: TPanel;
    Image13: TImage;
    Label21: TLabel;
    pnMainDireitoTop6: TPanel;
    Image14: TImage;
    Label22: TLabel;
    pnMainDireitoTop7: TPanel;
    Image15: TImage;
    Label23: TLabel;
    pnMainDireitoTop8: TPanel;
    Image16: TImage;
    Label24: TLabel;
    pnMainDireitoTop9: TPanel;
    Image17: TImage;
    Label25: TLabel;
    procedure Image18MouseEnter(Sender: TObject);
    procedure Image18MouseLeave(Sender: TObject);
    procedure Image9MouseEnter(Sender: TObject);
    procedure Image9MouseLeave(Sender: TObject);
    procedure Image10MouseEnter(Sender: TObject);
    procedure Image10MouseLeave(Sender: TObject);
    procedure Image11MouseEnter(Sender: TObject);
    procedure Image11MouseLeave(Sender: TObject);
    procedure Image12MouseEnter(Sender: TObject);
    procedure Image12MouseLeave(Sender: TObject);
    procedure Image13MouseEnter(Sender: TObject);
    procedure Image13MouseLeave(Sender: TObject);
    procedure Image14MouseEnter(Sender: TObject);
    procedure Image14MouseLeave(Sender: TObject);
    procedure Image15MouseEnter(Sender: TObject);
    procedure Image15MouseLeave(Sender: TObject);
    procedure Image16MouseEnter(Sender: TObject);
    procedure Image16MouseLeave(Sender: TObject);
    procedure Image17MouseLeave(Sender: TObject);
    procedure Image17MouseEnter(Sender: TObject);
    procedure Image19MouseEnter(Sender: TObject);
    procedure Image19MouseLeave(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
  private
    { Private declarations }
    // Executa quando o mouse entrar no bot�o
    procedure FormatButtonEnter(Panel: TPanel; Image : TImage; _Label : TLabel; Resource : String);
    // Executa quando o mouse sair do bot�o
    procedure FormatButtonLeave(Panel: TPanel; Image : TImage; _Label : TLabel; Resource : String);
  public
    { Public declarations }
    procedure AddImage(Component : TImage; Resource : String);
  end;

implementation

{$R *.dfm}

{ TframeMenuLateral }

procedure TframeMenuLateral.AddImage(Component: TImage; Resource: String);
var
  _Resource : TResourceStream;
begin
  _Resource := TResourceStream.Create(HInstance, Resource, RT_RCDATA);
  try
    Component.Picture.LoadFromStream(_Resource);
  finally
    _Resource.Free;
  end;
end;

// Adicionar imagem cor preta
procedure TframeMenuLateral.FormatButtonEnter(Panel: TPanel; Image: TImage;
  _Label: TLabel; Resource: String);
begin
  Panel.Color:= clWhite;
  _Label.Font.Color:= clWindowFrame;
  AddImage(Image, 'black_' + Resource);
end;

// Adicionar imagem white
procedure TframeMenuLateral.FormatButtonLeave(Panel: TPanel; Image: TImage;
  _Label: TLabel; Resource: String);
begin
  Panel.Color:= StringToColor('$00D58219');
  _Label.Font.Color:= clWhite;
  AddImage(Image, Resource);
end;


// Alterar imagens
procedure TframeMenuLateral.Image10Click(Sender: TObject);
var
  // Estamos criando o frame do pagamento
  FrameConferir : TFrame1;
begin
  // Estamos fazendo o Create passando ele mesmo
  FrameConferir := TFrame1.Create(Self);
  // O tamanho DESSE FRAME (Menu Lateral (Self)) vai receber o tamanho no frame que estamos criando
  Self.Parent.Width := FrameConferir.Width;
  // O pai do frame que est� vindo vai ser o mesmo que o do pai
  FrameConferir.Parent := Self.Parent;
  // O frame pai vai ser o self (o menu lateral)
  FrameConferir.FrameParent := Self;
  FrameConferir.IcoPag := pg_creditcard;

  FrameConferir.Show;
end;

procedure TframeMenuLateral.Image10MouseEnter(Sender: TObject);
begin
  FormatButtonEnter(pnMainDireitoTop2, Image10, Label18, 'carrinho');
end;

procedure TframeMenuLateral.Image10MouseLeave(Sender: TObject);
begin
  FormatButtonLeave(pnMainDireitoTop2, Image10, Label18, 'carrinho');
end;

procedure TframeMenuLateral.Image11MouseEnter(Sender: TObject);
begin
  FormatButtonEnter(pnMainDireitoTop3, Image11, Label19, 'impressora');
end;

procedure TframeMenuLateral.Image11MouseLeave(Sender: TObject);
begin
  FormatButtonLeave(pnMainDireitoTop3, Image11, Label19, 'impressora');
end;

procedure TframeMenuLateral.Image12MouseEnter(Sender: TObject);
begin
  FormatButtonEnter(pnMainDireitoTop4, Image12, Label20, 'lixeira');
end;

procedure TframeMenuLateral.Image12MouseLeave(Sender: TObject);
begin
  FormatButtonLeave(pnMainDireitoTop4, Image12, Label20, 'lixeira');
end;

procedure TframeMenuLateral.Image13Click(Sender: TObject);
var
  frmCliente : TForm2;
begin
  frmCliente := TForm2.Create(Self);
  frmCliente.Left:= Round((Screen.Width - frmCliente.Width) / 2);
  frmCliente.Top:= 70;
  frmCliente.ShowModal;
end;

procedure TframeMenuLateral.Image13MouseEnter(Sender: TObject);
begin
  FormatButtonEnter(pnMainDireitoTop5, Image13, Label21, 'cliente');
end;

procedure TframeMenuLateral.Image13MouseLeave(Sender: TObject);
begin
  FormatButtonLeave(pnMainDireitoTop5, Image13, Label21, 'cliente');
end;

procedure TframeMenuLateral.Image14MouseEnter(Sender: TObject);
begin
  FormatButtonEnter(pnMainDireitoTop6, Image14, Label22, 'vendedor');
end;

procedure TframeMenuLateral.Image14MouseLeave(Sender: TObject);
begin
  FormatButtonLeave(pnMainDireitoTop6, Image14, Label22, 'vendedor');
end;

procedure TframeMenuLateral.Image15MouseEnter(Sender: TObject);
begin
  FormatButtonEnter(pnMainDireitoTop7, Image15, Label23, 'cartao_de_credito');
end;

procedure TframeMenuLateral.Image15MouseLeave(Sender: TObject);
begin
  FormatButtonLeave(pnMainDireitoTop7, Image15, Label23, 'cartao_de_credito');
end;

procedure TframeMenuLateral.Image16MouseEnter(Sender: TObject);
begin
  FormatButtonEnter(pnMainDireitoTop8, Image16, Label24, 'desconto_porcentagem');
end;

procedure TframeMenuLateral.Image16MouseLeave(Sender: TObject);
begin
  FormatButtonLeave(pnMainDireitoTop8, Image16, Label24, 'desconto_porcentagem');
end;

procedure TframeMenuLateral.Image17MouseEnter(Sender: TObject);
begin
  FormatButtonEnter(pnMainDireitoTop9, Image17, Label25, 'dinheiro');
end;

procedure TframeMenuLateral.Image17MouseLeave(Sender: TObject);
begin
  FormatButtonLeave(pnMainDireitoTop9, Image17, Label25, 'dinheiro');
end;

procedure TframeMenuLateral.Image18MouseEnter(Sender: TObject);
begin
  FormatButtonEnter(pnMainDireitoTop10, Image18, Label26, 'cupom');
end;

procedure TframeMenuLateral.Image18MouseLeave(Sender: TObject);
begin
  FormatButtonLeave(pnMainDireitoTop10, Image18, Label26, 'cupom');
end;

procedure TframeMenuLateral.Image19MouseEnter(Sender: TObject);
begin
  FormatButtonEnter(pnMainDireitoTop11, Image19, Label27, 'configuracao');
end;

procedure TframeMenuLateral.Image19MouseLeave(Sender: TObject);
begin
  FormatButtonLeave(pnMainDireitoTop11, Image19, Label27, 'configuracao');
end;

procedure TframeMenuLateral.Image9MouseEnter(Sender: TObject);
begin
  FormatButtonEnter(pnMainDireitoTop1, Image9, Label17, 'papel');
end;

procedure TframeMenuLateral.Image9MouseLeave(Sender: TObject);
begin
  FormatButtonLeave(pnMainDireitoTop1, Image9, Label17, 'papel');
end;

end.
