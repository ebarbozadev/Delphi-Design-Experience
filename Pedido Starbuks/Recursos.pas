unit Recursos;

interface

uses
  FMX.Objects, System.Classes, System.Types;

type
  iRecursos = interface
    ['{0FF0516C-7706-4CF0-8126-E006A6B039B7}']
  end;

  TRecursos = class(TInterfacedObject, iRecursos)
    private
    public
      constructor     Create;
      destructor      Destroy; override;
      class function  New : iRecursos;
      class procedure CarregarImagem(Imagem : TImage; NomeImagem : String);
  end;

implementation

{ TRecursos }

class procedure TRecursos.CarregarImagem(Imagem: TImage; NomeImagem: String);
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

constructor TRecursos.Create;
begin

end;

destructor TRecursos.Destroy;
begin

  inherited;
end;

class function TRecursos.New: iRecursos;
begin

end;

end.
