unit Recursos;

interface

uses
  FMX.Objects;

type
  iRecursos = interface
    ['{49AA613D-E597-4A0D-86D4-8A2518335B7F}']
  end;

  TRecursos = class(TInterfacedObject, iRecursos)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iRecursos;
      class procedure LoadImage(Image: TImage; Resource: String);
  end;

implementation

uses
  System.Classes, System.Types;

{ TRecursos }

constructor TRecursos.Create;
begin

end;

destructor TRecursos.Destroy;
begin

  inherited;
end;

class procedure TRecursos.LoadImage(Image: TImage; Resource: String);
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

class function TRecursos.New: iRecursos;
begin
    Result := Self.Create;
end;

end.
