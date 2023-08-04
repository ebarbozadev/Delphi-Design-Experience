unit ItemMenuOpc;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects;

type
  TForm5 = class(TForm)
    Layout1: TLayout;
    Image1: TImage;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    function criarOpcao (Texto : String; Icone : String) : TForm5;
    procedure CarregarImagem(Imagem : TImage; NomeImagem : String);
  end;

var
  Form5: TForm5;

implementation

{$R *.fmx}

{ TForm5 }

procedure TForm5.CarregarImagem(Imagem: TImage; NomeImagem: String);
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

function TForm5.criarOpcao(Texto, Icone: String): TForm5;
begin
  Result:= Self;
  Label1.Text:= Texto;
  CarregarImagem(Image1, Icone);
end;

end.
