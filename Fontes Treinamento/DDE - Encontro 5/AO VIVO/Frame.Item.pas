unit Frame.Item;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Objects, FMX.Layouts, FMX.Effects,
  FMX.Filter.Effects;

type
  TFrameItem = class(TFrame)
    Layout1: TLayout;
    Rectangle1: TRectangle;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    Layout5: TLayout;
    Layout6: TLayout;
    Image1: TImage;
    lblDecricao: TLabel;
    lblUnitario: TLabel;
    lblTotal: TLabel;
    Layout7: TLayout;
    Layout8: TLayout;
    Layout9: TLayout;
    Label1: TLabel;
    Label2: TLabel;
    lblQuantidade: TLabel;
    ColorKeyAlphaEffect1: TColorKeyAlphaEffect;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure Rectangle1MouseEnter(Sender: TObject);
    procedure Rectangle1MouseLeave(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1MouseEnter(Sender: TObject);
    procedure SpeedButton1MouseLeave(Sender: TObject);
    procedure SpeedButton2MouseLeave(Sender: TObject);
    procedure SpeedButton2MouseEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

procedure TFrameItem.Rectangle1MouseEnter(Sender: TObject);
begin
  Rectangle1.Fill.Color := TAlphaColor($FF4cc479);
end;

procedure TFrameItem.Rectangle1MouseLeave(Sender: TObject);
begin
  Rectangle1.Fill.Color := TAlphaColor($FFFFFFFF);
end;

procedure TFrameItem.SpeedButton1Click(Sender: TObject);
begin
  if (StrToInt(lblQuantidade.Text) > 0) and (StrToInt(lblQuantidade.Text) <> 1) then
    lblQuantidade.Text := IntToStr(StrToInt(lblQuantidade.Text) - 1);
  lblTotal.Text := FormatCurr('R$ #,##0.00', (StrToCurr(lblQuantidade.Text) * StrToCurr(lblUnitario.Text)));

end;

procedure TFrameItem.SpeedButton1MouseEnter(Sender: TObject);
begin
  Rectangle1.Fill.Color := TAlphaColor($FF4cc479);
end;

procedure TFrameItem.SpeedButton1MouseLeave(Sender: TObject);
begin
  Rectangle1.Fill.Color := TAlphaColor($FFFFFFFF);
end;

procedure TFrameItem.SpeedButton2Click(Sender: TObject);
begin
  lblQuantidade.Text := IntToStr(StrToInt(lblQuantidade.Text) + 1);
  lblTotal.Text := FormatCurr('R$ #,##0.00', (StrToCurr(lblQuantidade.Text) * StrToCurr(lblUnitario.Text)));
end;

procedure TFrameItem.SpeedButton2MouseEnter(Sender: TObject);
begin
  Rectangle1.Fill.Color := TAlphaColor($FF4cc479);
end;

procedure TFrameItem.SpeedButton2MouseLeave(Sender: TObject);
begin
  Rectangle1.Fill.Color := TAlphaColor($FFFFFFFF);
end;

end.
