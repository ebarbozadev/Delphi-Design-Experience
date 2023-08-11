unit ItemMenuPrncSubProduto;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TEventoAoClicar = procedure (Sender : TObject) of Object;

type
  TForm4 = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Label1: TLabel;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    RoundRect1: TRoundRect;
    procedure SpeedButton1MouseEnter(Sender: TObject);
    procedure SpeedButton1MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CarregarImagem(Imagem : TImage; NomeImagem : String);
    function CriaSubTopico  (Texto : String; Imagem : String; Evento : TEventoAoClicar) : TForm4;
  end;

var
  Form4: TForm4;

implementation

{$R *.fmx}

{ TForm4 }

procedure TForm4.CarregarImagem(Imagem: TImage; NomeImagem: String);
var
  _Resource : TResourceStream;
begin
  _Resource := TResourceStream.Create(HInstance, NomeImagem, RT_RCDATA);
  try
    Imagem.Bitmap.LoadFromStream(_Resource);
  finally
    _Resource.Free;
  end;
end;

function TForm4.CriaSubTopico(Texto, Imagem: String;
  Evento: TEventoAoClicar): TForm4;
begin
  Result:= Self;
  Label1.Text:= Texto;
  CarregarImagem(Image1, Imagem);
  SpeedButton1.OnClick := Evento;
end;

procedure TForm4.SpeedButton1MouseEnter(Sender: TObject);
begin
  RoundRect1.Visible:= True;
end;

procedure TForm4.SpeedButton1MouseLeave(Sender: TObject);
begin
  RoundRect1.Visible:= False;
end;

end.
