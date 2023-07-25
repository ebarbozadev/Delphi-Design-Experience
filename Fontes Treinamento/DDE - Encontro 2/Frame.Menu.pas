unit Frame.Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFrameMenu = class(TFrame)
    Panel1: TPanel;
    FlowPanel1: TFlowPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Image6: TImage;
    Label22: TLabel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Image7: TImage;
    Label23: TLabel;
    Panel18: TPanel;
    Panel19: TPanel;
    Image8: TImage;
    Label24: TLabel;
    Panel20: TPanel;
    Panel21: TPanel;
    Image9: TImage;
    Label25: TLabel;
    Panel22: TPanel;
    Panel23: TPanel;
    Image10: TImage;
    Label26: TLabel;
    Panel24: TPanel;
    Panel25: TPanel;
    Image11: TImage;
    Label27: TLabel;
    Panel26: TPanel;
    Panel27: TPanel;
    Image12: TImage;
    Label28: TLabel;
    Panel28: TPanel;
    Panel29: TPanel;
    Image13: TImage;
    Label29: TLabel;
    Panel30: TPanel;
    Panel31: TPanel;
    Image14: TImage;
    Label30: TLabel;
    Panel32: TPanel;
    Panel33: TPanel;
    Image15: TImage;
    Label31: TLabel;
    Panel34: TPanel;
    Panel35: TPanel;
    Image16: TImage;
    Label32: TLabel;
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
    procedure Image6MouseEnter(Sender: TObject);
    procedure Image6MouseLeave(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image7MouseEnter(Sender: TObject);
    procedure Image7MouseLeave(Sender: TObject);
    procedure Image8MouseEnter(Sender: TObject);
    procedure Image8MouseLeave(Sender: TObject);
    procedure Image9MouseEnter(Sender: TObject);
    procedure Image9MouseLeave(Sender: TObject);
    procedure Image10Click(Sender: TObject);
  private
    { Private declarations }
    procedure FormatButtonEnter(Panel : TPanel; Image : TImage; _Label : TLabel; Resource : String);
    procedure FormatButtonLeave(Panel : TPanel; Image : TImage; _Label : TLabel; Resource : String);
    procedure AddImage(Component : TImage; Resource : String);

  public
    { Public declarations }
    PanelContainer : TPanel;
  end;

implementation

uses
  Frame.Pagamento, Form.Busca;

{$R *.dfm}

procedure TFrameMenu.AddImage(Component: TImage; Resource: String);
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

procedure TFrameMenu.FormatButtonEnter(Panel: TPanel; Image: TImage;
  _Label: TLabel; Resource: String);
begin
  Panel.Color := clWhite;
  AddImage(Image, 'black_' + Resource);
  _Label.Font.Color := clWindowFrame;
end;

procedure TFrameMenu.FormatButtonLeave(Panel: TPanel; Image: TImage;
  _Label: TLabel; Resource: String);
begin
  Panel.Color := StringToColor('$00D58219');
  AddImage(Image, Resource);
  _Label.Font.Color := clWhite;
end;

procedure TFrameMenu.Image10Click(Sender: TObject);
begin
  FormBusca.Left := Round((Screen.Width - FormBusca.Width) / 2);
  FormBusca.Top := 70;
  FormBusca.ShowModal;
end;

procedure TFrameMenu.Image10MouseEnter(Sender: TObject);
begin
  FormatButtonEnter(Panel23, TImage(Sender), Label26, 'profile');
end;

procedure TFrameMenu.Image10MouseLeave(Sender: TObject);
begin
  FormatButtonLeave(Panel23, TImage(Sender), Label26, 'profile');
end;

procedure TFrameMenu.Image11MouseEnter(Sender: TObject);
begin
  FormatButtonEnter(Panel25, TImage(Sender), Label27, 'employee');

end;

procedure TFrameMenu.Image11MouseLeave(Sender: TObject);
begin
  FormatButtonLeave(Panel25, TImage(Sender), Label27, 'employee');

end;

procedure TFrameMenu.Image12MouseEnter(Sender: TObject);
begin
  FormatButtonEnter(Panel27, TImage(Sender), Label28, 'creditcard');

end;

procedure TFrameMenu.Image12MouseLeave(Sender: TObject);
begin
  FormatButtonLeave(Panel27, TImage(Sender), Label28, 'creditcard');

end;

procedure TFrameMenu.Image13MouseEnter(Sender: TObject);
begin
  FormatButtonEnter(Panel29, TImage(Sender), Label29, 'offer');

end;

procedure TFrameMenu.Image13MouseLeave(Sender: TObject);
begin
  FormatButtonLeave(Panel29, TImage(Sender), Label29, 'offer');

end;

procedure TFrameMenu.Image14MouseEnter(Sender: TObject);
begin
  FormatButtonEnter(Panel31, TImage(Sender), Label30, 'sale');

end;

procedure TFrameMenu.Image14MouseLeave(Sender: TObject);
begin
  FormatButtonLeave(Panel31, TImage(Sender), Label30, 'sale');

end;

procedure TFrameMenu.Image15MouseEnter(Sender: TObject);
begin
  FormatButtonEnter(Panel33, TImage(Sender), Label31, 'coupon');

end;

procedure TFrameMenu.Image15MouseLeave(Sender: TObject);
begin
  FormatButtonLeave(Panel33, TImage(Sender), Label31, 'coupon');

end;

procedure TFrameMenu.Image16MouseEnter(Sender: TObject);
begin
  FormatButtonEnter(Panel35, TImage(Sender), Label32, 'settings');

end;

procedure TFrameMenu.Image16MouseLeave(Sender: TObject);
begin
  FormatButtonLeave(Panel35, TImage(Sender), Label32, 'settings');

end;

procedure TFrameMenu.Image6MouseEnter(Sender: TObject);
begin
  FormatButtonEnter(Panel13, TImage(Sender), Label22, 'docs');

end;

procedure TFrameMenu.Image6MouseLeave(Sender: TObject);
begin
  FormatButtonLeave(Panel13, TImage(Sender), Label22, 'docs');

end;

procedure TFrameMenu.Image7Click(Sender: TObject);
var
  FramePagamento : TFramePagamento;
begin
  FramePagamento := TFramePagamento.Create(Self);
  FramePagamento.Parent := PanelContainer;
  FramePagamento.PanelContainer := PanelContainer;
  FramePagamento.FrameParent := Self;
  FramePagamento.IcoCard := pg_creditcard;
  PanelContainer.Width := 486;
  FramePagamento.Show;
end;

procedure TFrameMenu.Image7MouseEnter(Sender: TObject);
begin
  FormatButtonEnter(Panel17, TImage(Sender), Label23, 'bargain');

end;

procedure TFrameMenu.Image7MouseLeave(Sender: TObject);
begin
  FormatButtonLeave(Panel17, TImage(Sender), Label23, 'bargain');

end;

procedure TFrameMenu.Image8MouseEnter(Sender: TObject);
begin
  FormatButtonEnter(Panel19, TImage(Sender), Label24, 'printer');

end;

procedure TFrameMenu.Image8MouseLeave(Sender: TObject);
begin
  FormatButtonLeave(Panel19, TImage(Sender), Label24, 'printer');

end;

procedure TFrameMenu.Image9MouseEnter(Sender: TObject);
begin
  FormatButtonEnter(Panel21, TImage(Sender), Label25, 'garbage');

end;

procedure TFrameMenu.Image9MouseLeave(Sender: TObject);
begin
  FormatButtonLeave(Panel21, TImage(Sender), Label25, 'garbage');

end;

end.
