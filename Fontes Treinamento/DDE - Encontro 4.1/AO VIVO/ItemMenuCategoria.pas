unit ItemMenuCategoria;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Objects;

type
  TItemMenuCategoria1 = class(TForm)
    LayoutPrincipal: TLayout;
    Layout2: TLayout;
    Rectangle1: TRectangle;
    Image1: TImage;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1MouseEnter(Sender: TObject);
    procedure SpeedButton1MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Recursos (Texto : String; ResourceName : String) : TItemMenuCategoria1;
    procedure LoadImage(Image: TImage; Resource: String);
  end;

var
  ItemMenuCategoria1: TItemMenuCategoria1;

implementation

{$R *.fmx}

function TItemMenuCategoria1.Recursos(Texto,
  ResourceName: String): TItemMenuCategoria1;
begin
  Result := Self;
  Label1.Text := Texto;
  LoadImage(Image1, ResourceName);
end;

procedure TItemMenuCategoria1.SpeedButton1MouseEnter(Sender: TObject);
begin
  Rectangle1.Fill.Color := TAlphaColor($FFFF9C67);
end;

procedure TItemMenuCategoria1.SpeedButton1MouseLeave(Sender: TObject);
begin
  Rectangle1.Fill.Color := TAlphaColor($FF2A3959);
end;

procedure TItemMenuCategoria1.LoadImage(Image: TImage; Resource: String);
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

end.
