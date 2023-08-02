unit frmVCLPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, frmFMXPrincipal;

type
  TForm3 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
  frmFMXPrincipal : TForm2;
begin
  frmFMXPrincipal := TForm2.Create(Self);
  try
    frmFMXPrincipal.ShowModal;
  finally
    frmFMXPrincipal.Free;
  end;
end;

end.
