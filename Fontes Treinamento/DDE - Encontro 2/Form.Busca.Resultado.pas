unit Form.Busca.Resultado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Datasnap.DBClient;

type
  TFormBuscaResultado = class(TForm)
    Panel1: TPanel;
    Shape1: TShape;
    DBGrid1: TDBGrid;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1CustNo: TFloatField;
    ClientDataSet1Company: TStringField;
    ClientDataSet1City: TStringField;
    ClientDataSet1State: TStringField;
    Panel2: TPanel;
    procedure Panel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBuscaResultado: TFormBuscaResultado;

implementation

{$R *.dfm}

uses Form.Busca;

procedure TFormBuscaResultado.Panel2Click(Sender: TObject);
begin
  FormBusca.Close;
  Self.Close;
end;

end.
