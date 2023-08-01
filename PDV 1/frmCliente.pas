unit frmCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.FMTBcd,
  Data.SqlExpr, FireDAC.Comp.Client, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.Imaging.pngimage;

type
  TForm2 = class(TForm)
    pnPrincipal: TPanel;
    pnTop: TPanel;
    edtPesquisa: TEdit;
    pnMid: TPanel;
    pnTabela: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    pnButton: TPanel;
    Image1: TImage;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    Image2: TImage;
    Shape6: TShape;
    pn: TPanel;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure edtPesquisaChange(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.edtPesquisaChange(Sender: TObject);
var
  digitado    : String;
  encontrado  : String;
begin
  digitado := edtPesquisa.Text;
  if edtPesquisa.Text = '' then
  begin
    FDQuery1.Connection:= FDConnection1;
    FDQuery1.SQL.Text:= 'SELECT * FROM CLIENTE';
    FDQuery1.Open;
  end
  else
  begin
    FDQuery1.SQL.Text := ('SELECT IDCLIENTE, NOME FROM CLIENTE WHERE UPPER(NOME) LIKE :digitado');
    FDQuery1.ParamByName('digitado').AsString := '%' + UpperCase(edtPesquisa.Text) + '%';
    FDQuery1.Open;
  end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  FDQuery1.Connection := FDConnection1; // Conecte ao FDConnection (ou outro componente de conex�o)

  FDQuery1.SQL.Text := 'SELECT * FROM CLIENTE'; // Defina a consulta SQL para buscar os dados desejados
  FDQuery1.Open; // Execute a consulta e busque os dados do banco de dados
end;

procedure TForm2.Image1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm2.Image2Click(Sender: TObject);
begin
  Close;
end;

end.
