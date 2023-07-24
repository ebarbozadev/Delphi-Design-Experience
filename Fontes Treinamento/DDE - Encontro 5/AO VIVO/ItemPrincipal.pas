unit ItemPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts;

type
  TItensPrincipal1 = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Rectangle1: TRectangle;
    Layout3: TLayout;
    Layout4: TLayout;
    Image1: TImage;
    Label22: TLabel;
    Label21: TLabel;
    Layout5: TLayout;
    SpeedButton1: TSpeedButton;
    Layout6: TLayout;
    Rectangle2: TRectangle;
    Layout7: TLayout;
    Layout8: TLayout;
    Layout9: TLayout;
    Layout10: TLayout;
    Layout11: TLayout;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
    FItem : Integer;
    FFramed : TFramedVertScrollBox;
  public
    { Public declarations }
    function Recursos(Item : Integer; Framed : TFramedVertScrollBox; ImageResource, TextDesc, Valor : String) : TItensPrincipal1;
  end;

var
  ItensPrincipal1: TItensPrincipal1;

implementation

{$R *.fmx}

uses Recursos, Frame.Item, FMX.Ani;

function TItensPrincipal1.Recursos(Item: Integer; Framed: TFramedVertScrollBox;
  ImageResource, TextDesc, Valor: String): TItensPrincipal1;
begin
  Result := Self;
  FItem := Item;
  FFramed := Framed;
  Label21.Text := TextDesc;
  Label22.Text := Valor;
  TRecursos.LoadImage(Image1, ImageResource);
end;

procedure TItensPrincipal1.SpeedButton1Click(Sender: TObject);
begin
  Layout6.Visible := True;
end;

procedure TItensPrincipal1.SpeedButton2Click(Sender: TObject);
var
  FrameItem : TFrameItem;
  LHeigth : Single;
begin
  FItem := FItem + 1;
  Layout6.Visible := False;
  FrameItem := TFrameItem.Create(Self);
  FrameItem.Name := 'FrameItem' + IntToStr(FItem);
  FrameItem.lblDecricao.Text := Self.Label21.Text;
  FrameItem.lblUnitario.Text := Self.Label22.Text;
  FrameItem.lblQuantidade.Text := Label3.Text;
  FrameItem.lblTotal.Text := FormatCurr('R$ #,##0.00', (StrToCurr(Label22.Text) * StrToCurr(Label3.Text)));
  FrameItem.Align := TAlignLayout.Bottom;
  FrameItem.Image1.Bitmap.Assign(Image1.Bitmap);
  FFramed.AddObject(FrameItem);

//#Animacao 1
//
//  FrameItem.Opacity := 0;
//  TAnimator.AnimateFloat(FrameItem, 'Opacity', 1, 1);


//#Animacao2
//
  LHeigth := FrameItem.Height;
  FrameItem.Height := 0;
  FrameItem.Opacity := 0;
  TAnimator.AnimateFloat(FrameItem, 'Opacity', 1, 0.5);
  TAnimator.AnimateFloat(FrameItem, 'Height', LHeigth, 0.5);

end;

procedure TItensPrincipal1.SpeedButton3Click(Sender: TObject);
begin
  if Label3.Text <> '0' then Label3.Text := IntToStr(StrToInt(Label3.Text) - 1);
end;

procedure TItensPrincipal1.SpeedButton4Click(Sender: TObject);
begin
  Label3.Text := IntToStr(StrToInt(Label3.Text) + 1);
end;

end.
