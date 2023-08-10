unit ItemAdicionado;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Objects, FMX.Layouts, FMX.Effects,
  FMX.Filter.Effects;

type
  TFrame1 = class(TFrame)
    Layout1: TLayout;
    Rc: TRectangle;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    Layout5: TLayout;
    Layout6: TLayout;
    Image1: TImage;
    lbDescricao: TLabel;
    lbValor: TLabel;
    lbValorTotal: TLabel;
    Layout7: TLayout;
    Layout8: TLayout;
    Layout9: TLayout;
    Layout10: TLayout;
    lbMenos: TLabel;
    Layout11: TLayout;
    lbMais: TLabel;
    Layout12: TLayout;
    lbQuantidade: TLabel;
    ColorKeyAlphaEffect1: TColorKeyAlphaEffect;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure RcMouseEnter(Sender: TObject);
    procedure RcMouseLeave(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3MouseEnter(Sender: TObject);
    procedure SpeedButton3MouseLeave(Sender: TObject);
    procedure SpeedButton4MouseEnter(Sender: TObject);
    procedure SpeedButton4MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

procedure TFrame1.RcMouseEnter(Sender: TObject);
begin
  Rc.Fill.Color := TAlphaColor($FF4cc479);
end;

procedure TFrame1.RcMouseLeave(Sender: TObject);
begin
  Rc.Fill.Color := TAlphaColor($FFFFFFFF);
end;

procedure TFrame1.SpeedButton3Click(Sender: TObject);
begin
  if (StrToInt(lbQuantidade.Text) > 0) and (StrToInt(lbQuantidade.Text) <> 1) then
  begin
    lbQuantidade.Text := IntToStr(StrToInt(lbQuantidade.Text) - 1);
    lbValorTotal.Text:= FormatCurr('R$ #,##0.00', StrToCurr(lbQuantidade.Text))
  end;

  if lbQuantidade.Text <> '0' then lbQuantidade.Text := IntToStr(StrToInt(lbQuantidade.Text) - 1);
end;

procedure TFrame1.SpeedButton3MouseEnter(Sender: TObject);
begin
  Rc.Fill.Color := TAlphaColor($FF4cc479);
end;

procedure TFrame1.SpeedButton3MouseLeave(Sender: TObject);
begin
  Rc.Fill.Color := TAlphaColor($FFFFFFFF);
end;

procedure TFrame1.SpeedButton4Click(Sender: TObject);
begin
  lbQuantidade.Text := IntToStr(StrToInt(lbQuantidade.Text) + 1);
  lbValorTotal.Text:= FormatCurr('R$ #,##0.00', (StrToCurr(lbQuantidade.Text) * StrToCurr(lbValor.Text)))
end;

procedure TFrame1.SpeedButton4MouseEnter(Sender: TObject);
begin
  Rc.Fill.Color := TAlphaColor($FF4cc479);
end;

procedure TFrame1.SpeedButton4MouseLeave(Sender: TObject);
begin
  Rc.Fill.Color := TAlphaColor($FFFFFFFF);
end;

end.
