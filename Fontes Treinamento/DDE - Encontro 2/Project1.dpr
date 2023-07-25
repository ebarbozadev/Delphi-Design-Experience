program Project1;

{$R *.dres}

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Frame.Pagamento in 'Frame.Pagamento.pas' {FramePagamento: TFrame},
  Frame.Menu in 'Frame.Menu.pas' {FrameMenu: TFrame},
  Form.Busca in 'Form.Busca.pas' {FormBusca},
  Form.Fundo in 'Form.Fundo.pas' {FormFundo},
  Form.Busca.Resultado in 'Form.Busca.Resultado.pas' {FormBuscaResultado};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormBusca, FormBusca);
  Application.CreateForm(TFormFundo, FormFundo);
  Application.CreateForm(TFormBuscaResultado, FormBuscaResultado);
  Application.Run;
end.
