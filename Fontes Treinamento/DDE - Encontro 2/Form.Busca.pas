unit Form.Busca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TFormBusca = class(TForm)
    Edit1: TEdit;
    Shape1: TShape;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBusca: TFormBusca;

implementation

{$R *.dfm}

uses Form.Busca.Resultado;

procedure TFormBusca.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #$D then
  begin
    FormBuscaResultado.Left := Self.Left;
    FormBuscaResultado.Top := Self.Top + 80;
    FormBuscaResultado.Show;
  end;
end;

end.
