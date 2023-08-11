unit Recursos;

interface

uses
  FMX.Objects, System.Classes, System.Types;

type
  TRecursos = class
    private
    public
      procedure adicionarImagem(nomeComponente : TImage; nomeImagemCarregada : String);
  end;

implementation

{ TRecursos }

procedure TRecursos.adicionarImagem(nomeComponente: TImage; nomeImagemCarregada: String);
var
  // Criando uma variável do tipo arquivo
  _Resource : TResourceStream;
begin
  // Vai receber a criação de um arquivo onde passamos:
  // HInstance          : Não sei, mas deve ser a instância
  // nomeImagemCarregada: Nome da imagem que adicionamos lá no options
  // RT_RCDATA          : Adicionamos o tipo da foto que adicionamos
  _Resource := TResourceStream.Create(HInstance, nomeImagemCarregada, RT_RCDATA);
  try
    // Colocamos o arquivo (_Resource) no componente que salvamos
    nomeComponente.Bitmap.LoadFromStream(_Resource);
  finally
    // Liberamos o arquivo para não ocupar a memória
    _Resource.Free;
  end;
end;

end.
