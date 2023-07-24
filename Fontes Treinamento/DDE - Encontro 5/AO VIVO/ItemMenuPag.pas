unit ItemMenuPag;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Objects, FMX.Layouts;

type
  TForm2 = class(TForm)
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
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.SpeedButton1MouseEnter(Sender: TObject);
begin
  Rectangle1.Fill.Color := TAlphaColor($FFFF9C67);
end;

procedure TForm2.SpeedButton1MouseLeave(Sender: TObject);
begin
  Rectangle1.Fill.Color := TAlphaColor($FF2A3959);
end;

end.
