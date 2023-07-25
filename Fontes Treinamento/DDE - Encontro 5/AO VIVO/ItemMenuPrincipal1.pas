unit ItemMenuPrincipal1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Effects,
  FMX.Filter.Effects, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects,
  FMX.Layouts;

type
  TEventClick = procedure (Sender : TObject) of Object;

  TItemMenuPrincipal = class(TForm)
    LayoutPrincipal: TLayout;
    Line1: TLine;
    Image1: TImage;
    Label1: TLabel;
    FillRGBEffect1: TFillRGBEffect;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1MouseEnter(Sender: TObject);
    procedure SpeedButton1MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Recursos(Texto : String; ResourceImage : String; EventClick : TEventClick) : TItemMenuPrincipal;
    procedure LoadImage(Image : TImage; Resource : String);
  end;

var
  ItemMenuPrincipal: TItemMenuPrincipal;

implementation

{$R *.fmx}

procedure TItemMenuPrincipal.LoadImage(Image: TImage; Resource: String);
var
  _Resource : TResourceStream;
begin
  _Resource := TResourceStream.Create(HInstance, Resource, RT_RCDATA);
  try
    Image.Bitmap.LoadFromStream(_Resource);
  finally
    _Resource.Free;
  end;
end;

function TItemMenuPrincipal.Recursos(Texto : String; ResourceImage : String; EventClick : TEventClick) : TItemMenuPrincipal;
begin
  Result := Self;
  Label1.Text := Texto;
  LoadImage(Image1, ResourceImage);
  SpeedButton1.OnClick := EventClick;
end;

procedure TItemMenuPrincipal.SpeedButton1MouseEnter(Sender: TObject);
begin
  FillRGBEffect1.Color := TAlphaColor($FFFF9C67);
  Line1.Visible := True;
end;

procedure TItemMenuPrincipal.SpeedButton1MouseLeave(Sender: TObject);
begin
   FillRGBEffect1.Color := TAlphaColor($FFffffff);
   Line1.Visible := False;
end;

end.