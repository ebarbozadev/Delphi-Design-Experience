unit ItemMenuMesa;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Effects,
  FMX.Filter.Effects;

type
  TForm1 = class(TForm)
    LyMesa01: TLayout;
    Layout2: TLayout;
    LbNomeMesa: TLabel;
    LbNumeroMesa: TLabel;
    RcFundo: TRectangle;
    Line1: TLine;
    SpeedButton1: TSpeedButton;
    FillRGBEffect2: TFillRGBEffect;
    FillRGBEffect1: TFillRGBEffect;
    procedure SpeedButton1MouseEnter(Sender: TObject);
    procedure SpeedButton1MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Recursos (NumeroMesa : Integer) : TForm1;
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

function TForm1.Recursos(NumeroMesa: Integer): TForm1;
begin
  Result:= Self;
  LbNumeroMesa.Text := IntToStr(NumeroMesa);
end;

procedure TForm1.SpeedButton1MouseEnter(Sender: TObject);
begin
  RcFundo.Fill.Color := TAlphaColor($FFFFFFFF);
  Line1.Visible:= True;
  FillRGBEffect1.Color:= TAlphaColor($FF000E27);
end;

procedure TForm1.SpeedButton1MouseLeave(Sender: TObject);
begin
  Line1.Visible:= False;
  FillRGBEffect1.Color:= TAlphaColor($FFFFFFFF);
  RcFundo.Fill.Color := TAlphaColor($FF000E27);
end;

end.
